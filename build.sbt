name := "travis-build-test"

version := "1.0.0"

scalaVersion := "2.13.1"

scalacOptions ++= Seq(
  "-deprecation",
  "-encoding", "UTF-8",
  "-unchecked",
  "-feature",
  "-language:implicitConversions",
  "-language:postfixOps",
  "-Ywarn-dead-code",
  "-Ywarn-value-discard",
  "-Xlint",
  "-Xfatal-warnings",
)

