Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cmd?download=true
inline.NumInlined: 50
inline.NumDeleted: 17
begin_hunk_0
@.str.167 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.168 = private unnamed_addr constant [25 x i8] c"write_blif _sis_out.blif\00", align 1
@.str.169 = private unnamed_addr constant [58 x i8] c"The following command has returned non-zero exit status:\0A\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"_sis_out.blif\00", align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"Cannot open SIS output file \22%s\22.\0A\00", align 1
@.str.173 = private unnamed_addr constant [23 x i8] c"Usage: sis [-h] <com>\0A\00", align 1
@.str.174 = private unnamed_addr constant [58 x i8] c"         invokes SIS command for the current ABC network\0A\00", align 1
@.str.175 = private unnamed_addr constant [66 x i8] c"         (the executable of SIS should be in the same directory)\0A\00", align 1
@.str.176 = private unnamed_addr constant [34 x i8] c"   -h  : print the command usage\0A\00", align 1
@.str.177 = private unnamed_addr constant [78 x i8] c" <com> : a SIS command (or a semicolon-separated list of commands in quotes)\0A\00", align 1
@.str.178 = private unnamed_addr constant [37 x i8] c"         Example 1: sis eliminate 0\0A\00", align 1
@.str.179 = private unnamed_addr constant [42 x i8] c"         Example 2: sis \22ps; rd; fx; ps\22\0A\00", align 1
@.str.180 = private unnamed_addr constant [46 x i8] c"         Example 3: sis source script.rugged\0A\00", align 1
@.str.181 = private unnamed_addr constant [10 x i8] c"mvsis.exe\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"mvsiswin\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"mvsisunix\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"_mvsis_in.blif\00", align 1
@.str.186 = private unnamed_addr constant [25 x i8] c"read_blif _mvsis_in.blif\00", align 1
@.str.187 = private unnamed_addr constant [27 x i8] c"write_blif _mvsis_out.blif\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"_mvsis_out.blif\00", align 1
@.str.189 = private unnamed_addr constant [37 x i8] c"Cannot open MVSIS output file \22%s\22.\0A\00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c"Usage: mvsis [-h] <com>\0A\00", align 1
@.str.191 = private unnamed_addr constant [60 x i8] c"         invokes MVSIS command for the current ABC network\0A\00", align 1
@.str.192 = private unnamed_addr constant [68 x i8] c"         (the executable of MVSIS should be in the same directory)\0A\00", align 1
@.str.193 = private unnamed_addr constant [80 x i8] c" <com> : a MVSIS command (or a semicolon-separated list of commands in quotes)\0A\00", align 1
@.str.194 = private unnamed_addr constant [39 x i8] c"         Example 1: mvsis fraig_sweep\0A\00", align 1
@.str.195 = private unnamed_addr constant [41 x i8] c"         Example 2: mvsis \22ps; fxu; ps\22\0A\00", align 1
@.str.196 = private unnamed_addr constant [47 x i8] c"         Example 3: mvsis source mvsis.rugged\0A\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"capo.exe\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"capowin\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"capounix\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"_capo_in.blif\00", align 1
@.str.202 = private unnamed_addr constant [34 x i8] c"%s -f _capo_in.blif -log out.txt \00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"-plot\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"%s.plt\00", align 1
@.str.205 = private unnamed_addr constant [24 x i8] c"Usage: capo [-h] <com>\0A\00", align 1
@.str.206 = private unnamed_addr constant [62 x i8] c"         peforms placement of the current network using Capo\0A\00", align 1
@.str.207 = private unnamed_addr constant [64 x i8] c"         a Capo binary should be present in the same directory\0A\00", align 1
@.str.208 = private unnamed_addr constant [67 x i8] c"         (if plotting, the Gnuplot binary should also be present)\0A\00", align 1
@.str.209 = private unnamed_addr constant [25 x i8] c" <com> : a Capo command\0A\00", align 1
@.str.210 = private unnamed_addr constant [26 x i8] c"         Example 1: capo\0A\00", align 1
@.str.211 = private unnamed_addr constant [63 x i8] c"                    (performs placement with default options)\0A\00", align 1
@.str.212 = private unnamed_addr constant [78 x i8] c"         Example 2: capo -AR <aspec_ratio> -WS <whitespace_percentage> -save\0A\00", align 1
@.str.213 = private unnamed_addr constant [69 x i8] c"                    (specifies the aspect ratio [default = 1.0] and\0A\00", align 1
@.str.214 = private unnamed_addr constant [78 x i8] c"                    the whitespace percentage [0%%; 100%%) [default = 15%%])\0A\00", align 1
@.str.215 = private unnamed_addr constant [48 x i8] c"         Example 3: capo -plot <base_fileName>\0A\00", align 1
@.str.216 = private unnamed_addr constant [83 x i8] c"                    (produces <base_fileName.plt> and visualize it using Gnuplot)\0A\00", align 1
@.str.217 = private unnamed_addr constant [32 x i8] c"         Example 4: capo -help\0A\00", align 1
@.str.218 = private unnamed_addr constant [75 x i8] c"                    (prints the default usage message of the Capo binary)\0A\00", align 1
@.str.219 = private unnamed_addr constant [71 x i8] c"         Please refer to the Capo webpage for additional information:\0A\00", align 1
@.str.220 = private unnamed_addr constant [52 x i8] c"         http://vlsicad.eecs.umich.edu/BK/PDtools/\0A\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"PCvh\00", align 1
@.str.222 = private unnamed_addr constant [79 x i8] c"Command line switch \22-C\22 should be followed by a string (possibly in quotes).\0A\00", align 1
@.str.223 = private unnamed_addr constant [52 x i8] c"The file name should be given on the command line.\0A\00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"open_path\00", align 1
@.str.225 = private unnamed_addr constant [30 x i8] c"Cannot open input file \22%s\22. \00", align 1
@.str.226 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c".scr\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c".script\00", align 1
@.str.229 = private unnamed_addr constant [19 x i8] c"Did you mean \22%s\22?\00", align 1
@.str.230 = private unnamed_addr constant [47 x i8] c"usage: starter [-P num] [-C cmd] [-vh] <file>\0A\00", align 1
@.str.231 = private unnamed_addr constant [74 x i8] c"\09         runs command lines listed in <file> concurrently on <num> CPUs\0A\00", align 1
@.str.232 = private unnamed_addr constant [81 x i8] c"\09-P num : the number of concurrent jobs including the controller [default = %d]\0A\00", align 1
@.str.233 = private unnamed_addr constant [74 x i8] c"\09-C cmd : (optional) ABC command line to execute on benchmarks in <file>\0A\00", align 1
@.str.234 = private unnamed_addr constant [62 x i8] c"\09-v     : toggle printing verbose information [default = %s]\0A\00", align 1
@.str.235 = private unnamed_addr constant [35 x i8] c"\09-h     : print the command usage\0A\00", align 1
@.str.236 = private unnamed_addr constant [84 x i8] c"\09<file> : file name with ABC command lines (or benchmark names, if <cmd> is given)\0A\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"NCFvh\00", align 1
@.str.238 = private unnamed_addr constant [79 x i8] c"Command line switch \22-F\22 should be followed by a string (possibly in quotes).\0A\00", align 1
@.str.239 = private unnamed_addr constant [60 x i8] c"File containing configuration for autotuning is not given.\0A\00", align 1
@.str.240 = private unnamed_addr constant [59 x i8] c"File contining list of files for autotuning is not given.\0A\00", align 1
@.str.241 = private unnamed_addr constant [38 x i8] c"Cannot open configuration file \22%s\22. \00", align 1
@.str.242 = private unnamed_addr constant [33 x i8] c"Cannot open the file list \22%s\22. \00", align 1
@.str.243 = private unnamed_addr constant [53 x i8] c"usage: autotuner [-N num] [-C file] [-F file] [-vh]\0A\00", align 1
@.str.244 = private unnamed_addr constant [31 x i8] c"\09         performs autotuning\0A\00", align 1
@.str.245 = private unnamed_addr constant [81 x i8] c"\09-N num : the number of concurrent jobs including the controller [default = %d]\0A\00", align 1
@.str.246 = private unnamed_addr constant [59 x i8] c"\09-C cmd : configuration file with settings for autotuning\0A\00", align 1
@.str.247 = private unnamed_addr constant [57 x i8] c"\09-F cmd : list of AIGER files to be used for autotuning\0A\00", align 1
@.str.248 = private unnamed_addr constant [35 x i8] c"The current AIG is not available.\0A\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c"./solver\00", align 1
@.str.250 = private unnamed_addr constant [30 x i8] c"which solver > /dev/null 2>&1\00", align 16
@.str.251 = private unnamed_addr constant [7 x i8] c"solver\00", align 1
@.str.252 = private unnamed_addr constant [66 x i8] c"Cannot find \22solver\22 binary in the current directory or in PATH.\0A\00", align 1
@.str.253 = private unnamed_addr constant [9 x i8] c"%08X.aig\00", align 1
@.str.254 = private unnamed_addr constant [43 x i8] c"Failed to create temporary AIG file \22%s\22.\0A\00", align 1
@.str.256 = private unnamed_addr constant [23 x i8] c"Executing command: %s\0A\00", align 1
@.str.257 = private unnamed_addr constant [35 x i8] c"The following command has failed:\0A\00", align 1
@.str.258 = private unnamed_addr constant [24 x i8] c"\09usage: &solver <args>\0A\00", align 1
@.str.259 = private unnamed_addr constant [63 x i8] c"\09           run the external solver binary on the current AIG\0A\00", align 1
@.str.260 = private unnamed_addr constant [37 x i8] c"\09-h      :  print the command usage\0A\00", align 1
@.str.261 = private unnamed_addr constant [45 x i8] c"\09<args>  :  arguments to pass to the solver\0A\00", align 1
@.str.262 = private unnamed_addr constant [65 x i8] c"\09           The current AIG will be written to a temporary file\0A\00", align 1
@.str.263 = private unnamed_addr constant [60 x i8] c"\09           and passed as the last argument to the solver.\0A\00", align 1
@.str.264 = private unnamed_addr constant [32 x i8] c"\09           Example: solver -h\0A\00", align 1
@.str.265 = private unnamed_addr constant [25 x i8] c"\09usage: &solver2 <args>\0A\00", align 1
@.str.266 = private unnamed_addr constant [56 x i8] c"\09           run the external solver as \22solver <args>\22\0A\00", align 1
@.str.267 = private unnamed_addr constant [53 x i8] c"\09<args>  :  all arguments passed directly to solver\0A\00", align 1
@.str.268 = private unnamed_addr constant [21 x i8] c"usage: version [-h]\0A\00", align 1
@.str.269 = private unnamed_addr constant [35 x i8] c"         print the version string\0A\00", align 1
@.str.270 = private unnamed_addr constant [5 x i8] c"NIvh\00", align 1
@.str.271 = private unnamed_addr constant [79 x i8] c"Command line switch \22-I\22 should be followed by a string (possibly in quotes).\0A\00", align 1
@.str.272 = private unnamed_addr constant [30 x i8] c"There is no current network.\0A\00", align 1
@.str.273 = private unnamed_addr constant [36 x i8] c"The current network is not an AIG.\0A\00", align 1
@.str.274 = private unnamed_addr constant [37 x i8] c"usage: sgen [-N num] [-I num] [-vh]\0A\00", align 1
@.str.275 = private unnamed_addr constant [45 x i8] c"\09         experiment with script generation\0A\00", align 1
@.str.276 = private unnamed_addr constant [56 x i8] c"\09-N num : the number of commands to use [default = %d]\0A\00", align 1
@.str.277 = private unnamed_addr constant [62 x i8] c"\09-I num : the number of iterations to perform [default = %d]\0A\00", align 1
@str = private unnamed_addr constant [52 x i8] c"The current network is unmapped before calling SIS.\00", align 1
@str.1 = private unnamed_addr constant [54 x i8] c"The current network is unmapped before calling MVSIS.\00", align 1
@str.2 = private unnamed_addr constant [53 x i8] c"The current network is unmapped before calling Capo.\00", align 1
@str.3 = private unnamed_addr constant [25 x i8] c"Error opening directory.\00", align 1

; Function Attrs: nounwind uwtable
define void @Cmd_Init(ptr noundef initializes((16, 48)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @st__init_table(ptr noundef nonnull @strcmp, ptr noundef nonnull @st__strhash) #19
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.b, align 8, !tbaa !27
  %i.c = tail call ptr @st__init_table(ptr noundef nonnull @strcmp, ptr noundef nonnull @st__strhash) #19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8, !tbaa !28
  %i.e = tail call ptr @st__init_table(ptr noundef nonnull @strcmp, ptr noundef nonnull @st__strhash) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.e, ptr %i.f, align 8, !tbaa !29
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.h, align 4, !tbaa !32
  store i32 100, ptr %i.g, align 8, !tbaa !33
  %i.i = tail call noalias dereferenceable_or_null(800) ptr @malloc(i64 noundef 800) #20
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.k, align 8, !tbaa !35
  tail call void @Cmd_HistoryRead(ptr noundef %0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @CmdCommandTime, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef nonnull @CmdCommandSleep, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @CmdCommandEcho, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef nonnull @CmdCommandQuit, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @CmdCommandAbcrc, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @CmdCommandHistory, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @CmdCommandHistory, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, ptr noundef nonnull @CmdCommandAlias, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef nonnull @CmdCommandUnalias, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, ptr noundef nonnull @CmdCommandHelp, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, ptr noundef nonnull @CmdCommandSource, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, ptr noundef nonnull @CmdCommandSetVariable, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef nonnull @CmdCommandUnsetVariable, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, ptr noundef nonnull @CmdCommandUndo, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, ptr noundef nonnull @CmdCommandRecall, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, ptr noundef nonnull @CmdCommandEmpty, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, ptr noundef nonnull @CmdCommandScrGenLinux, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, ptr noundef nonnull @CmdCommandVersion, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, ptr noundef nonnull @CmdCommandSGen, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @CmdCommandSis, i32 noundef 1) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, ptr noundef nonnull @CmdCommandMvsis, i32 noundef 1) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.23, ptr noundef nonnull @CmdCommandCapo, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.24, ptr noundef nonnull @CmdCommandStarter, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.25, ptr noundef nonnull @CmdCommandAutoTuner, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.26, ptr noundef nonnull @CmdCommandSolver, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.27, ptr noundef nonnull @CmdCommandSolver2, i32 noundef 0) #19
  tail call void @Cmd_CommandAdd(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.28, ptr noundef nonnull @Cmd_CommandAbcLoadPlugIn, i32 noundef 0) #19
  ret void
}

declare ptr @st__init_table(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) #2

declare i32 @st__strhash(ptr noundef, i32 noundef) #1

declare void @Cmd_HistoryRead(ptr noundef) local_unnamed_addr #1

declare void @Cmd_CommandAdd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CmdCommandTime(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  tail call void (...) @Extra_UtilGetoptReset() #19
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.c ]     ; 2 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.43) #19
  switch i32 %i.a, label %.loopexit [
    i32 -1, label %bb.d
    i32 99, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !58

bb.d:                                             ; preds = %bb.b
  %.not21 = icmp eq i32 %.0, 0
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168
  %3 = load <2 x double>, ptr %i.c, align 8, !tbaa !59
  %4 = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %3)
  store double %4, ptr %i.d, align 8, !tbaa !60
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !61
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.e = load i32, ptr @globalUtilOptind, align 4, !tbaa !37
  %.not22 = icmp eq i32 %1, %i.e
  br i1 %.not22, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !59 ; 2 uses
  %i.i = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.h) ; 2 uses
  store double %i.i, ptr %i.g, align 8, !tbaa !60
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = extractelement <2 x double> %i.h, i64 0
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.k, ptr noundef nonnull @.str.44, double noundef %i.l, double noundef %i.i) #19 ; 0 uses
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !61
  br label %bb.h

.loopexit:                                        ; preds = %bb.b, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.45, i64 18, i64 1, ptr %i.o) ; 0 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !39
  %fwrite23 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 46, i64 1, ptr %i.p) ; 0 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !39
  %fwrite24 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 52, i64 1, ptr %i.q) ; 0 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !39
  %fwrite25 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 32, i64 1, ptr %i.r) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.g, %bb.e
  %.019 = phi i32 [ 1, %.loopexit ], [ 0, %bb.e ], [ 0, %bb.g ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CmdCommandSleep(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  tail call void (...) @Extra_UtilGetoptReset() #19
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.g, %bb.e ]     ; 3 uses
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.49) #19
  switch i32 %i.a, label %.loopexit31 [
    i32 -1, label %bb.f
    i32 78, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr @globalUtilOptind, align 4, !tbaa !37 ; 3 uses
  %.not25 = icmp slt i32 %i.b, %1
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -1, ptr noundef nonnull @.str.50)
  br label %.loopexit31

bb.e:                                             ; preds = %bb.c
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.f = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.e, ptr noundef null, i32 noundef 10) #19, !inline_history !0
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = add nsw i32 %i.b, 1
  store i32 %i.h, ptr @globalUtilOptind, align 4, !tbaa !37
  %i.i = icmp slt i32 %i.g, 0
  br i1 %i.i, label %.loopexit31, label %bb.b, !llvm.loop !62

bb.f:                                             ; preds = %bb.b
  %i.j = load i32, ptr @globalUtilOptind, align 4, !tbaa !37 ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  %i.l = icmp eq i32 %1, %i.k
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.p = tail call noalias ptr @fopen(ptr noundef %i.o, ptr noundef nonnull @.str.51) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.i, !llvm.loop !63

bb.i:                                             ; preds = %bb.h
  %i.r = tail call i32 @fclose(ptr noundef nonnull %i.p) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.s = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #19
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %Abc_Clock.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = load i64, ptr %4, align 8, !tbaa !67
  %i.v = mul nsw i64 %i.u, 1000000
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68
  %i.y = sdiv i64 %i.x, 1000
  %i.z = add nsw i64 %i.y, %i.v
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.j, %bb.k
  %.0.i = phi i64 [ %i.z, %bb.k ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.aa = zext nneg i32 %.0 to i64
  %i.ab = mul nuw nsw i64 %i.aa, 1000000
  %i.ac = add nsw i64 %.0.i, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.l

bb.l:                                             ; preds = %Abc_Clock.exit30, %Abc_Clock.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.ae = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #19
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %Abc_Clock.exit30, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %3, align 8, !tbaa !67
  %i.ah = mul nsw i64 %i.ag, 1000000
  %i.ai = load i64, ptr %i.ad, align 8, !tbaa !68
  %i.aj = sdiv i64 %i.ai, 1000
  %i.ak = add nsw i64 %i.aj, %i.ah
  br label %Abc_Clock.exit30

Abc_Clock.exit30:                                 ; preds = %bb.l, %bb.m
  %.0.i29 = phi i64 [ %i.ak, %bb.m ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.al = icmp slt i64 %.0.i29, %i.ac
  br i1 %i.al, label %bb.l, label %.loopexit, !llvm.loop !64

.loopexit31:                                      ; preds = %bb.b, %bb.e, %bb.d
  %.1 = phi i32 [ %.0, %bb.d ], [ %.0, %bb.b ], [ %i.g, %bb.e ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !39
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.52, i64 41, i64 1, ptr %i.an) ; 0 uses
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !39
  %fwrite26 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 47, i64 1, ptr %i.ao) ; 0 uses
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !39
  %i.aq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ap, ptr noundef nonnull @.str.54, i32 noundef %.1) #19 ; 0 uses
  %i.ar = load ptr, ptr %i.am, align 8, !tbaa !39
  %fwrite27 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 49, i64 1, ptr %i.ar) ; 0 uses
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !39
  %fwrite28 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 67, i64 1, ptr %i.as) ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %Abc_Clock.exit30, %.loopexit31
  %.019 = phi i32 [ 1, %.loopexit31 ], [ 0, %Abc_Clock.exit30 ]
  ret i32 %.019
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @CmdCommandEcho(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
.peel.begin:
  tail call void (...) @Extra_UtilGetoptReset() #19
  %i.a = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.59) #19
  switch i32 %i.a, label %.loopexit [
    i32 -1, label %.loopexit37
    i32 110, label %.peel.next
  ]

.peel.next:                                       ; preds = %.peel.begin, %.peel.next
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.59) #19
  switch i32 %i.b, label %.loopexit [
    i32 -1, label %.loopexit37
    i32 110, label %.peel.next
  ], !llvm.loop !69

.loopexit37:                                      ; preds = %.peel.next, %.peel.begin
  %.not25.lcssa35 = phi i1 [ false, %.peel.begin ], [ true, %.peel.next ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load i32, ptr @globalUtilOptind, align 4, !tbaa !37 ; 3 uses
  %i.h = icmp slt i32 %i.g, %1                    ; 2 uses
  br i1 %i.f, label %bb.a, label %bb.c

bb.a:                                             ; preds = %.loopexit37
  br i1 %i.h, label %.lr.ph33.preheader, label %._crit_edge34

.lr.ph33.preheader:                               ; preds = %bb.a
  %i.i = sext i32 %i.g to i64
  %wide.trip.count42 = sext i32 %1 to i64
  br label %.lr.ph33

.lr.ph33:                                         ; preds = %.lr.ph33.preheader, %.lr.ph33
  %indvars.iv39 = phi i64 [ %i.i, %.lr.ph33.preheader ], [ %indvars.iv.next40, %.lr.ph33 ] ; 2 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv39
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.60, ptr noundef %i.k)
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %._crit_edge34, label %.lr.ph33, !llvm.loop !70

._crit_edge34:                                    ; preds = %.lr.ph33, %bb.a
  br i1 %.not25.lcssa35, label %bb.f, label %bb.b

bb.b:                                             ; preds = %._crit_edge34
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.61)
  br label %bb.f

bb.c:                                             ; preds = %.loopexit37
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = sext i32 %i.g to i64
  %wide.trip.count = sext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
end_hunk_0
begin_hunk_1_@CmdCommandPrint
declare void @CmdCommandPrint(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @CmdFileOpen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @clearerr(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @CmdHistorySubstitution(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

declare void @Cmd_HistoryAddCommand(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @Cmd_CommandExecute(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Extra_UtilStrsav(ptr noundef) local_unnamed_addr #1

declare i32 @st__insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Abc_FrameSetCurrentNetwork(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_NtkDup(ptr noundef) local_unnamed_addr #1

declare void @Abc_FrameDeleteAllNetworks(ptr noundef) local_unnamed_addr #1

declare void @Abc_FrameRestart(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #15

declare ptr @Extra_TimeStamp(...) local_unnamed_addr #1

declare ptr @Extra_FileNameGenericAppend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadNtk(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadOut(ptr noundef) local_unnamed_addr #1

declare ptr @Abc_FrameReadErr(ptr noundef) local_unnamed_addr #1

declare i32 @Abc_NtkMapToSop(ptr noundef) local_unnamed_addr #1

declare i32 @Abc_NtkToSop(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Abc_NtkToNetlist(ptr noundef) local_unnamed_addr #1

declare void @Io_WriteBlif(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_NtkDelete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #14

declare i32 @Util_SignalSystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare ptr @Io_Read(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_FrameReplaceCurrentNetwork(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Io_FileOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Extra_FileGetSimilarName(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @Cmd_RunStarter(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Cmd_RunAutoTuner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #13

declare void @Gia_AigerWrite(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @Abc_UtilsGetVersion(ptr noundef) local_unnamed_addr #1

declare void @Cmd_CommandSGen(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr, i32) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nounwind }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !36}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"p1 _ZTS9st__table", !10, i64 0}
!13 = !{!"p1 _ZTS10Vec_Ptr_t_", !10, i64 0}
!14 = !{!"p1 _ZTS10Abc_Ntk_t_", !10, i64 0}
!15 = !{!"float", !6, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!17 = !{!"double", !6, i64 0}
!18 = !{!"p1 _ZTS10Vec_Int_t_", !10, i64 0}
!19 = !{!"p1 _ZTS10Gia_Man_t_", !10, i64 0}
!20 = !{!"p1 _ZTS10Abc_Cex_t_", !10, i64 0}
!21 = !{!"p1 _ZTS10Abc_Nam_t_", !10, i64 0}
!22 = !{!"p1 _ZTS10Vec_Wec_t_", !10, i64 0}
!23 = !{!"p1 _ZTS13Hsh_VecMan_t_", !10, i64 0}
!24 = !{!"p1 _ZTS9DdManager", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"Abc_Frame_t_", !11, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !13, i64 40, !7, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !14, i64 112, !15, i64 120, !15, i64 124, !7, i64 128, !7, i64 132, !16, i64 136, !16, i64 144, !16, i64 152, !17, i64 160, !17, i64 168, !13, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !6, i64 208, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288, !11, i64 296, !15, i64 304, !18, i64 312, !7, i64 320, !19, i64 328, !19, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !20, i64 392, !20, i64 400, !13, i64 408, !13, i64 416, !18, i64 424, !18, i64 432, !7, i64 440, !7, i64 444, !13, i64 448, !13, i64 456, !13, i64 464, !11, i64 472, !10, i64 480, !10, i64 488, !10, i64 496, !10, i64 504, !10, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !10, i64 544, !18, i64 552, !10, i64 560, !10, i64 568, !10, i64 576, !10, i64 584, !21, i64 592, !22, i64 600, !23, i64 608, !24, i64 616, !19, i64 624, !19, i64 632, !18, i64 640, !18, i64 648, !18, i64 656, !18, i64 664, !25, i64 672, !25, i64 680, !10, i64 688, !25, i64 696, !10, i64 704}
!27 = !{!26, !12, i64 16}
!28 = !{!26, !12, i64 24}
!29 = !{!26, !12, i64 32}
!30 = !{!"any p2 pointer", !10, i64 0}
!31 = !{!"Vec_Ptr_t_", !7, i64 0, !7, i64 4, !30, i64 8}
!32 = !{!31, !7, i64 4}
!33 = !{!31, !7, i64 0}
!34 = !{!31, !30, i64 8}
!35 = !{!26, !13, i64 40}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!7, !7, i64 0}
!38 = !{!26, !16, i64 136}
!39 = !{!26, !16, i64 144}
!40 = !{!11, !11, i64 0}
!41 = !{!"llvm.loop.peeled.count", i32 1}
!42 = !{!16, !16, i64 0}
!43 = !{!6, !6, i64 0}
!44 = !{!10, !10, i64 0}
!45 = !{!26, !16, i64 152}
!46 = !{!26, !14, i64 56}
!47 = !{!"p1 _ZTS9Nm_Man_t_", !10, i64 0}
!48 = !{!"p1 _ZTS10Abc_Des_t_", !10, i64 0}
!49 = !{!"Vec_Int_t_", !7, i64 0, !7, i64 4, !25, i64 8}
!50 = !{!"p1 _ZTS12Mem_Fixed_t_", !10, i64 0}
!51 = !{!"p1 _ZTS11Mem_Step_t_", !10, i64 0}
!52 = !{!"p1 _ZTS14Abc_ManTime_t_", !10, i64 0}
!53 = !{!"p1 float", !10, i64 0}
!54 = !{!"Abc_Ntk_t_", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !47, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !6, i64 96, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !14, i64 160, !7, i64 168, !48, i64 176, !14, i64 184, !7, i64 192, !7, i64 196, !7, i64 200, !17, i64 208, !7, i64 216, !49, i64 224, !50, i64 240, !51, i64 248, !10, i64 256, !52, i64 264, !10, i64 272, !15, i64 280, !7, i64 284, !18, i64 288, !13, i64 296, !25, i64 304, !20, i64 312, !13, i64 320, !14, i64 328, !10, i64 336, !10, i64 344, !14, i64 352, !10, i64 360, !10, i64 368, !18, i64 376, !18, i64 384, !11, i64 392, !53, i64 400, !13, i64 408, !18, i64 416, !18, i64 424, !13, i64 432, !18, i64 440, !18, i64 448, !18, i64 456}
!55 = !{!54, !7, i64 0}
!56 = !{!54, !7, i64 4}
!57 = !{!54, !11, i64 16}
!58 = distinct !{!58, !36}
!59 = !{!17, !17, i64 0}
!60 = !{!26, !17, i64 168}
!61 = !{!26, !17, i64 160}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
!64 = distinct !{!64, !36}
!65 = !{!"long", !6, i64 0}
!66 = !{!"timespec", !65, i64 0, !65, i64 8}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 8}
!69 = distinct !{!69, !36, !41}
!70 = distinct !{!70, !36}
!71 = distinct !{!71, !36}
!72 = distinct !{!72, !36}
!73 = distinct !{!73, !36}
!74 = distinct !{!74, !36}
!75 = distinct !{!75, !36}
!76 = distinct !{!76, !36}
!77 = distinct !{!77, !36, !41}
!78 = distinct !{!78, !36}
!79 = distinct !{!79, !36}
!80 = distinct !{!80, !36}
!81 = !{!26, !7, i64 92}
!82 = distinct !{!82, !36}
!83 = distinct !{!83, !36}
!84 = !{!54, !14, i64 160}
!85 = !{!26, !7, i64 88}
!86 = !{!14, !14, i64 0}
!87 = !{!54, !7, i64 168}
!88 = distinct !{!88, !36}
!89 = distinct !{!89, !36}
!90 = distinct !{!90, !36, !97, !98}
!91 = distinct !{!91, !36, !97, !98}
!92 = distinct !{!92, !36, !98, !97}
!93 = distinct !{!93, !36, !97, !98}
!94 = distinct !{!94, !36, !97, !98}
!95 = distinct !{!95, !36, !98, !97}
!96 = distinct !{!96, !36}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = !{!"branch_weights", i32 8, i32 24}
!100 = distinct !{!100, !36}
!101 = distinct !{!101, !36}
!102 = distinct !{!102, !36}
!103 = distinct !{!103, !36}
!104 = distinct !{!104, !36}
!105 = !{!26, !11, i64 8}
!106 = distinct !{!106, !36}
!107 = distinct !{!107, !36}
!108 = !{!26, !19, i64 328}
!109 = distinct !{!109, !36}
!110 = distinct !{!110, !36}
!111 = distinct !{!111, !36}
!112 = distinct !{!112, !36}
!113 = distinct !{!113, !36}
!114 = !{!"p2 _ZTS6dirent", !30, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"p1 _ZTS6dirent", !10, i64 0}
!117 = !{!116, !116, i64 0}
!118 = distinct !{!118, i1 true, !"vprintf"}
!119 = distinct !{!119, !118, !"vprintf: argument 0"}
!120 = distinct !{null}
!121 = !{!119}
end_hunk_1
