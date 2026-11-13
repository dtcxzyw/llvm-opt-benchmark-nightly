Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-img?download=true
inline.NumInlined: 83
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.QemuOptsList = type { ptr, ptr, i8, %union.anon, [0 x %struct.QemuOptDesc] }
%union.anon = type { %struct.QTailQLink }
%struct.QTailQLink = type { ptr, ptr }
%struct.QemuOptDesc = type { ptr, i32, ptr, ptr }
%struct.img_cmd_t = type { ptr, ptr, ptr }
%struct.BlockDriver = type { ptr, i32, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.10, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.10 = type { ptr, ptr }
%struct.QEnumLookup = type { ptr, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.BenchData = type { ptr, i64, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i32, i8, i64 }
%struct.timeval = type { i64, i64 }
%struct.anon.15 = type { ptr, ptr }
%struct.CommonBlockJobCBInfo = type { ptr, ptr }
%struct.BlockDriverInfo = type { i32, i32, i64, i8, i8 }
%struct.ImgConvertState = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i64, i32, i64, ptr, i8, i8, i8, i8, i64, i8, i8, i8, i8, i32, i32, i64, i64, i64, i32, [16 x ptr], [16 x i64], %struct.CoMutex, i32 }
%struct.CoMutex = type { i32, ptr, %struct.anon.9, %struct.anon.9, i32, i32, ptr }
%struct.anon.9 = type { ptr }
%struct.DdInfo = type { i32, i64 }
%struct.DdIo = type { i32, ptr, ptr, i64 }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.MapEntry = type { i64, i64, i8, i8, i8, i64, i8, i8, i64, ptr }
%struct.QEMUSnapshotInfo = type { [128 x i8], [256 x i8], i64, i32, i32, i64, i64 }
%struct.BdrvCheckResult = type { i32, i32, i32, i32, i32, i64, %struct.BlockFragInfo }
%struct.BlockFragInfo = type { i64, i64, i64, i64 }
%struct.ThrottleConfig = type { [6 x %struct.LeakyBucket], i64 }
%struct.LeakyBucket = type { i64, i64, double, double, i64 }

@main.long_options = internal constant [4 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr null, i32 86, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.2, i32 1, [4 x i8] zeroinitializer, ptr null, i32 84, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@error_fatal = external global ptr, align 8
@qemu_trace_opts = external global %struct.QemuOptsList, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"+hVT:\00", align 1
@.str.4 = private unnamed_addr constant [508 x i8] c"qemu-img version 11.1.0 (v11.1.0)\0ACopyright (c) 2003-2026 Fabrice Bellard and the QEMU Project developers\0AQEMU disk image utility.  Usage:\0A\0A  qemu-img [standard options] COMMAND [--help | command options]\0A\0AStandard options:\0A  -h, --help\0A     display this help and exit\0A  -V, --version\0A     display version info and exit\0A  -T,--trace TRACE\0A     specify tracing options:\0A        [[enable=]<pattern>][,events=<file>][,file=<file>]\0A\0ARecognized commands (run qemu-img COMMAND --help for command-specific help):\0A\0A\00", align 1
@img_cmds = internal constant [16 x %struct.img_cmd_t] [%struct.img_cmd_t { ptr @.str.16, ptr @img_amend, ptr @.str.17 }, %struct.img_cmd_t { ptr @.str.18, ptr @img_bench, ptr @.str.19 }, %struct.img_cmd_t { ptr @.str.20, ptr @img_bitmap, ptr @.str.21 }, %struct.img_cmd_t { ptr @.str.22, ptr @img_check, ptr @.str.23 }, %struct.img_cmd_t { ptr @.str.24, ptr @img_commit, ptr @.str.25 }, %struct.img_cmd_t { ptr @.str.26, ptr @img_compare, ptr @.str.27 }, %struct.img_cmd_t { ptr @.str.28, ptr @img_convert, ptr @.str.29 }, %struct.img_cmd_t { ptr @.str.30, ptr @img_create, ptr @.str.31 }, %struct.img_cmd_t { ptr @.str.32, ptr @img_dd, ptr @.str.33 }, %struct.img_cmd_t { ptr @.str.34, ptr @img_info, ptr @.str.35 }, %struct.img_cmd_t { ptr @.str.36, ptr @img_map, ptr @.str.37 }, %struct.img_cmd_t { ptr @.str.38, ptr @img_measure, ptr @.str.39 }, %struct.img_cmd_t { ptr @.str.40, ptr @img_rebase, ptr @.str.41 }, %struct.img_cmd_t { ptr @.str.42, ptr @img_resize, ptr @.str.43 }, %struct.img_cmd_t { ptr @.str.44, ptr @img_snapshot, ptr @.str.45 }, %struct.img_cmd_t zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [11 x i8] c"  %s - %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"\0ASupported image formats:\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [133 x i8] c"\0ASee <https://qemu.org/contribute/report-a-bug> for how to report bugs.\0AMore information on the QEMU project at <https://qemu.org>.\0A\00", align 1
@.str.9 = private unnamed_addr constant [107 x i8] c"qemu-img version 11.1.0 (v11.1.0)\0ACopyright (c) 2003-2026 Fabrice Bellard and the QEMU Project developers\0A\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"Not enough arguments\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Command not found: %s\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@qemu_source_opts = internal global { ptr, ptr, i8, [7 x i8], %union.anon, [1 x %struct.QemuOptDesc] } { ptr @.str.13, ptr @.str.14, i8 0, [7 x i8] zeroinitializer, %union.anon { %struct.QTailQLink { ptr null, ptr getelementptr (i8, ptr @qemu_source_opts, i64 24) } }, [1 x %struct.QemuOptDesc] zeroinitializer }, align 8
@.str.16 = private unnamed_addr constant [6 x i8] c"amend\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"Update format-specific options of the image\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"bench\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Run a simple image benchmark\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"bitmap\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"Perform modifications of the persistent bitmap in the image\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Check basic image integrity\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Commit image to its backing file\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Check if two images have the same contents\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"convert\00", align 1
@.str.29 = private unnamed_addr constant [67 x i8] c"Copy one or more images to another with optional format conversion\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"Create and format a new image file\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.33 = private unnamed_addr constant [53 x i8] c"Copy input to output with optional format conversion\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Display information about the image\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"Dump image metadata\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"measure\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"Calculate the file size required for a new image\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Change the backing file of the image\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"resize\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"Resize the image\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"List or manipulate snapshots in the image\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@img_amend.long_options = internal constant [10 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.47, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.51, i32 0, [4 x i8] zeroinitializer, ptr null, i32 276, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.47 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"image-opts\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"ho:f:t:pq\00", align 1
@.str.56 = private unnamed_addr constant [99 x i8] c"-o FMT_OPTS [-f FMT | --image-opts]\0A        [-t CACHE] [--force] [-p] [-q] [--object OBJDEF] FILE\0A\00", align 1
@.str.57 = private unnamed_addr constant [660 x i8] c"  -o, --options FMT_OPTS\0A     FMT-specfic format options (required)\0A  -f, --format FMT\0A     specify FILE format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  -t, --cache CACHE\0A     cache mode for FILE (default: writeback)\0A  --force\0A     allow certain unsafe operations\0A  -p, --progres\0A     show operation progress\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or option string (key=value,..)\0A     with --image-opts, to operate on\0A\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"Must specify options (-o)\00", align 1
@.str.59 = private unnamed_addr constant [30 x i8] c"Expecting one image file name\00", align 1
@.str.60 = private unnamed_addr constant [25 x i8] c"Invalid cache option: %s\00", align 1
@.str.61 = private unnamed_addr constant [53 x i8] c"Format driver '%s' does not support option amendment\00", align 1
@.str.62 = private unnamed_addr constant [20 x i8] c"bs->drv->amend_opts\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"../qemu-img.c\00", align 1
@__PRETTY_FUNCTION__.img_amend = private unnamed_addr constant [47 x i8] c"int img_amend(const img_cmd_t *, int, char **)\00", align 1
@error_abort = external global ptr, align 8
@.str.64 = private unnamed_addr constant [50 x i8] c"This option is only supported for image creation\0A\00", align 1
@.str.65 = private unnamed_addr constant [81 x i8] c"Usage:\0A  %s %s %s\0A%s.\0A\0AArguments:\0A  -h, --help\0A     print this help and exit\0A%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"qemu-img\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"Invalid option list: %s\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@.str.69 = private unnamed_addr constant [25 x i8] c"Unknown file format '%s'\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"drv->amend_opts\00", align 1
@__PRETTY_FUNCTION__.print_amend_option_help = private unnamed_addr constant [42 x i8] c"int print_amend_option_help(const char *)\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"Amend options for '%s':\0A\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"--image-opts and --format are mutually exclusive\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"force-share\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"--force-share/-U conflicts with image options\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"Could not open '%s': \00", align 1
@.str.77 = private unnamed_addr constant [25 x i8] c"!obj || obj->base.refcnt\00", align 1
@.str.78 = private unnamed_addr constant [52 x i8] c"/opt-bench/work/qemu/qemu/include/qobject/qobject.h\00", align 1
@__PRETTY_FUNCTION__.qobject_unref_impl = private unnamed_addr constant [35 x i8] c"void qobject_unref_impl(QObject *)\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@img_bench.long_options = internal constant [19 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.80, i32 1, [4 x i8] zeroinitializer, ptr null, i32 99, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.81, i32 1, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.82, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.83, i32 1, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.84, i32 1, [4 x i8] zeroinitializer, ptr null, i32 83, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.85, i32 0, [4 x i8] zeroinitializer, ptr null, i32 119, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.86, i32 1, [4 x i8] zeroinitializer, ptr null, i32 260, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.87, i32 1, [4 x i8] zeroinitializer, ptr null, i32 261, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.88, i32 0, [4 x i8] zeroinitializer, ptr null, i32 262, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.89, i32 1, [4 x i8] zeroinitializer, ptr null, i32 105, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.90, i32 0, [4 x i8] zeroinitializer, ptr null, i32 110, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.80 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"buffer-size\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"step-size\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"flush-interval\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"no-drain\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"aio\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"native\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"hf:t:c:d:o:s:S:wi:nUq\00", align 1
@.str.92 = private unnamed_addr constant [221 x i8] c"[-f FMT | --image-opts] [-t CACHE]\0A        [-c COUNT] [-d DEPTH] [-o OFFSET] [-s BUFFER_SIZE] [-S STEP_SIZE]\0A        [-w [--pattern PATTERN] [--flush-interval INTERVAL [--no-drain]]]\0A        [-i AIO] [-n] [-U] [-q] FILE\0A\00", align 1
@.str.93 = private unnamed_addr constant [1441 x i8] c"  -f, --format FMT\0A     specify FILE format explicitly\0A  --image-opts\0A     indicates that FILE is a complete image specification\0A     instead of a file name (incompatible with --format)\0A  -t, --cache CACHE\0A     cache mode for FILE (default: writeback)\0A  -c, --count COUNT\0A     number of I/O requests to perform\0A  -d, --depth DEPTH\0A     number of requests to perform in parallel\0A  -o, --offset OFFSET\0A     start first request at this OFFSET\0A  -s, --buffer-size BUFFER_SIZE[bkKMGTPE]\0A     size of each I/O request, with optional multiplier suffix\0A     (powers of 1024, default is 4K)\0A  -S, --step-size STEP_SIZE[bkKMGTPE]\0A     each next request offset increment, with optional multiplier suffix\0A     (powers of 1024, default is the same as BUFFER_SIZE)\0A  -w, --write\0A     perform write test (default is read)\0A  --pattern PATTERN\0A     write this pattern byte instead of zero\0A  --flush-interval FLUSH_INTERVAL\0A     issue flush after this number of requests\0A  --no-drain\0A     do not wait when flushing pending requests\0A  -i, --aio AIO\0A     async-io backend (threads, native, io_uring)\0A  -n, --native\0A     use native AIO backend if possible\0A  -U, --force-share\0A     open images in shared mode for concurrent access\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or option string (key=value,..)\0A     with --image-opts, to operate on\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"Invalid cache mode\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"request count\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"queue depth\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c"Invalid aio option: %s\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"buffer size\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"step size\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"pattern byte\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"flush interval\00", align 1
@.str.102 = private unnamed_addr constant [50 x i8] c"--flush-interval is only available in write tests\00", align 1
@.str.103 = private unnamed_addr constant [43 x i8] c"Flush interval can't be smaller than depth\00", align 1
@.str.104 = private unnamed_addr constant [94 x i8] c"Sending %d %s requests, %d bytes each, %d in parallel (starting at offset %ld, step size %d)\0A\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.106 = private unnamed_addr constant [33 x i8] c"Sending flush every %d requests\0A\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"Run completed in %3.3f seconds.\0A\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"Invalid %s specified: '%s'\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"Invalid %s specified. Must be between %ld and %ld.\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"Failed request: %s\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"b->in_flight == 0\00", align 1
@__PRETTY_FUNCTION__.bench_cb = private unnamed_addr constant [27 x i8] c"void bench_cb(void *, int)\00", align 1
@.str.112 = private unnamed_addr constant [30 x i8] c"Failed to issue flush request\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"Failed to issue request\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"Failed flush request: %s\00", align 1
@img_bitmap.long_options = internal constant [15 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.115, i32 0, [4 x i8] zeroinitializer, ptr null, i32 269, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.116, i32 1, [4 x i8] zeroinitializer, ptr null, i32 103, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.117, i32 0, [4 x i8] zeroinitializer, ptr null, i32 270, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.118, i32 0, [4 x i8] zeroinitializer, ptr null, i32 279, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.119, i32 0, [4 x i8] zeroinitializer, ptr null, i32 271, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.120, i32 0, [4 x i8] zeroinitializer, ptr null, i32 272, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.121, i32 0, [4 x i8] zeroinitializer, ptr null, i32 273, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.122, i32 1, [4 x i8] zeroinitializer, ptr null, i32 274, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.123, i32 1, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.124, i32 1, [4 x i8] zeroinitializer, ptr null, i32 70, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.115 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"granularity\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"remove-all\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"source-file\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"source-format\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"hf:g:b:F:\00", align 1
@.str.126 = private unnamed_addr constant [208 x i8] c"[-f FMT | --image-opts]\0A        ( --add [-g SIZE] | --remove | --remove-all | --clear | --enable |\0A          --disable | --merge SOURCE [-b SRC_FILE [-F SRC_FMT]] )..\0A        [--object OBJDEF] FILE [BITMAP]\0A\00", align 1
@.str.127 = private unnamed_addr constant [1115 x i8] c"  -f, --format FMT\0A     specify FILE format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  --add\0A     creates BITMAP in FILE, enables to record future edits\0A  -g, --granularity SIZE[bKMGTPE]\0A     sets non-default granularity for the bitmap being added,\0A     with optional multiplier suffix (in powers of 1024)\0A  --remove\0A     removes BITMAP from FILE\0A  --remove-all\0A     removes all bitmaps from FILE\0A  --clear\0A     clears BITMAP in FILE\0A  --enable, --disable\0A     starts and stops recording future edits to BITMAP in FILE\0A  --merge SOURCE\0A     merges contents of the SOURCE bitmap into BITMAP in FILE\0A  -b, --source-file SRC_FILE\0A     select alternative source file for --merge\0A  -F, --source-format SRC_FMT\0A     specify format for SRC_FILE explicitly\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or option string (key=value,..)\0A     with --image-opts, to operate on\0A  BITMAP\0A     name of the bitmap to add, remove, clear, enable, disable or merge to\0A\00", align 1
@.str.128 = private unnamed_addr constant [93 x i8] c"Need at least one of --add, --remove, --remove-all, --clear, --enable, --disable, or --merge\00", align 1
@.str.129 = private unnamed_addr constant [38 x i8] c"granularity only supported with --add\00", align 1
@.str.130 = private unnamed_addr constant [26 x i8] c"-F only supported with -b\00", align 1
@.str.131 = private unnamed_addr constant [53 x i8] c"Merge bitmap source file only supported with --merge\00", align 1
@.str.132 = private unnamed_addr constant [35 x i8] c"Expecting filename and bitmap name\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"Expecting filename\00", align 1
@__func__.img_bitmap = private unnamed_addr constant [11 x i8] c"img_bitmap\00", align 1
@.str.134 = private unnamed_addr constant [35 x i8] c"Operation %s on bitmap %s failed: \00", align 1
@.str.135 = private unnamed_addr constant [34 x i8] c"Error while closing the image: %s\00", align 1
@img_check.long_options = internal constant [10 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr null, i32 84, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.136, i32 1, [4 x i8] zeroinitializer, ptr null, i32 114, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.137, i32 1, [4 x i8] zeroinitializer, ptr null, i32 256, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.136 = private unnamed_addr constant [7 x i8] c"repair\00", align 1
@.str.137 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"hf:T:r:Uq\00", align 1
@.str.139 = private unnamed_addr constant [119 x i8] c"[-f FMT | --image-opts] [-T CACHE_MODE] [-r leaks|all]\0A        [-U] [--output human|json] [-q] [--object OBJDEF] FILE\0A\00", align 1
@.str.140 = private unnamed_addr constant [806 x i8] c"  -f, --format FMT\0A     specifies the format of the image explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  -T, --cache CACHE_MODE\0A     cache mode (default: writeback)\0A  -r, --repair leaks|all\0A     repair errors of the given category in the image (image will be\0A     opened in read-write mode, incompatible with -U|--force-share)\0A  -U, --force-share\0A     open image in shared mode for concurrent access\0A  --output human|json\0A     output format (default: human)\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or an option string (key=value,..)\0A     with --image-opts, to operate on\0A\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"leaks\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.143 = private unnamed_addr constant [49 x i8] c"--repair (-r) expects 'leaks' or 'all', not '%s'\00", align 1
@.str.144 = private unnamed_addr constant [32 x i8] c"Invalid source cache option: %s\00", align 1
@.str.145 = private unnamed_addr constant [42 x i8] c"This image format does not support checks\00", align 1
@.str.146 = private unnamed_addr constant [141 x i8] c"The following inconsistencies were found and repaired:\0A\0A    %ld leaked clusters\0A    %ld corruptions\0A\0ADouble checking the fixed image now...\0A\00", align 1
@.str.147 = private unnamed_addr constant [17 x i8] c"Check failed: %s\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"Check failed\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"human\00", align 1
@.str.151 = private unnamed_addr constant [45 x i8] c"--output expects 'human' or 'json', not '%s'\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.152 = private unnamed_addr constant [36 x i8] c"No errors were found on the image.\0A\00", align 1
@.str.153 = private unnamed_addr constant [108 x i8] c"\0A%ld errors were found on the image.\0AData may be corrupted, or further writes to the image may corrupt it.\0A\00", align 1
@.str.154 = private unnamed_addr constant [100 x i8] c"\0A%ld leaked clusters were found on the image.\0AThis means waste of disk space, but no harm to data.\0A\00", align 1
@.str.155 = private unnamed_addr constant [54 x i8] c"\0A%ld internal errors have occurred during the check.\0A\00", align 1
@.str.156 = private unnamed_addr constant [78 x i8] c"%ld/%ld = %0.2f%% allocated, %0.2f%% fragmented, %0.2f%% compressed clusters\0A\00", align 1
@.str.157 = private unnamed_addr constant [23 x i8] c"Image end offset: %ld\0A\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@__PRETTY_FUNCTION__.dump_json_image_check = private unnamed_addr constant [48 x i8] c"void dump_json_image_check(ImageCheck *, _Bool)\00", align 1
@.str.159 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@img_commit.long_options = internal constant [11 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.160, i32 0, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.161, i32 1, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.162, i32 1, [4 x i8] zeroinitializer, ptr null, i32 114, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.160 = private unnamed_addr constant [5 x i8] c"drop\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"rate-limit\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"hf:t:db:r:pq\00", align 1
@.str.164 = private unnamed_addr constant [106 x i8] c"[-f FMT | --image-opts] [-t CACHE_MODE] [-b BASE_IMG]\0A        [-d] [-r RATE] [-q] [--object OBJDEF] FILE\0A\00", align 1
@.str.165 = private unnamed_addr constant [802 x i8] c"  -f, --format FMT\0A     specify FILE image format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  -t, --cache CACHE_MODE image cache mode (default: writeback)\0A  -d, --drop\0A     skip emptying FILE on completion\0A  -b, --base BASE_IMG\0A     image in the backing chain to commit change to\0A     (default: immediate backing file; implies --drop)\0A  -r, --rate-limit RATE\0A     I/O rate limit, in bytes per second\0A  -p, --progress\0A     display progress information\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or an option string (key=value,..)\0A     with --image-opts, to operate on\0A\00", align 1
@.str.166 = private unnamed_addr constant [11 x i8] c"rate limit\00", align 1
@__func__.img_commit = private unnamed_addr constant [11 x i8] c"img_commit\00", align 1
@.str.167 = private unnamed_addr constant [47 x i8] c"Did not find '%s' in the backing chain of '%s'\00", align 1
@.str.168 = private unnamed_addr constant [35 x i8] c"Image does not have a backing file\00", align 1
@.str.169 = private unnamed_addr constant [4 x i8] c"job\00", align 1
@__PRETTY_FUNCTION__.img_commit = private unnamed_addr constant [48 x i8] c"int img_commit(const img_cmd_t *, int, char **)\00", align 1
@.str.170 = private unnamed_addr constant [30 x i8] c"Error while closing the image\00", align 1
@.str.171 = private unnamed_addr constant [18 x i8] c"Image committed.\0A\00", align 1
@__func__.common_block_job_cb = private unnamed_addr constant [20 x i8] c"common_block_job_cb\00", align 1
@.str.172 = private unnamed_addr constant [17 x i8] c"Block job failed\00", align 1
@img_compare.long_options = internal constant [11 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.173, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.174, i32 1, [4 x i8] zeroinitializer, ptr null, i32 70, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.175, i32 0, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr null, i32 84, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.173 = private unnamed_addr constant [9 x i8] c"a-format\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"b-format\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@.str.176 = private unnamed_addr constant [12 x i8] c"hf:F:sT:Upq\00", align 1
@.str.177 = private unnamed_addr constant [105 x i8] c"[[-f FMT] [-F FMT] | --image-opts] [-s] [-T CACHE]\0A        [-U] [-p] [-q] [--object OBJDEF] FILE1 FILE2\0A\00", align 1
@.str.178 = private unnamed_addr constant [829 x i8] c"  -f, --a-format FMT\0A     specify FILE1 image format explicitly (default: probing is used)\0A  -F, --b-format FMT\0A     specify FILE2 image format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE1 and FILE2 as option strings (key=value,..), not file names\0A     (incompatible with -f|--a-format and -F|--b-format)\0A  -s, --strict\0A     strict mode, also check if sizes are equal\0A  -T, --cache CACHE_MODE\0A     images caching mode (default: writeback)\0A  -U, --force-share\0A     open images in shared mode for concurrent access\0A  -p, --progress\0A     display progress information\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE1, FILE2\0A     names of the image files, or option strings (key=value,..)\0A     with --image-opts, to compare\0A\00", align 1
@.str.179 = private unnamed_addr constant [31 x i8] c"Expecting two image file names\00", align 1
@.str.180 = private unnamed_addr constant [25 x i8] c"Can't get size of %s: %s\00", align 1
@.str.181 = private unnamed_addr constant [35 x i8] c"Strict mode: Image size mismatch!\0A\00", align 1
@.str.182 = private unnamed_addr constant [37 x i8] c"Sector allocation test failed for %s\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"pnum1 && pnum2\00", align 1
@__PRETTY_FUNCTION__.img_compare = private unnamed_addr constant [49 x i8] c"int img_compare(const img_cmd_t *, int, char **)\00", align 1
@.str.184 = private unnamed_addr constant [48 x i8] c"Strict mode: Offset %ld block status mismatch!\0A\00", align 1
@.str.185 = private unnamed_addr constant [41 x i8] c"Error while reading offset %ld of %s: %s\00", align 1
@.str.186 = private unnamed_addr constant [33 x i8] c"Content mismatch at offset %ld!\0A\00", align 1
@.str.187 = private unnamed_addr constant [31 x i8] c"Warning: Image size mismatch!\0A\00", align 1
@.str.188 = private unnamed_addr constant [23 x i8] c"Images are identical.\0A\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"bytes > 0\00", align 1
@__PRETTY_FUNCTION__.compare_buffers = private unnamed_addr constant [84 x i8] c"int compare_buffers(const uint8_t *, const uint8_t *, int64_t, uint64_t, int64_t *)\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"unsafe\00", align 1
@img_convert.long_options = internal constant [26 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.124, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.191, i32 1, [4 x i8] zeroinitializer, ptr null, i32 84, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.44, i32 1, [4 x i8] zeroinitializer, ptr null, i32 108, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.192, i32 0, [4 x i8] zeroinitializer, ptr null, i32 275, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.193, i32 0, [4 x i8] zeroinitializer, ptr null, i32 277, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.194, i32 0, [4 x i8] zeroinitializer, ptr null, i32 267, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.195, i32 1, [4 x i8] zeroinitializer, ptr null, i32 79, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.196, i32 0, [4 x i8] zeroinitializer, ptr null, i32 263, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.197, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.198, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.199, i32 1, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.200, i32 1, [4 x i8] zeroinitializer, ptr null, i32 70, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.201, i32 1, [4 x i8] zeroinitializer, ptr null, i32 83, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.202, i32 0, [4 x i8] zeroinitializer, ptr null, i32 110, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.203, i32 0, [4 x i8] zeroinitializer, ptr null, i32 268, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.162, i32 1, [4 x i8] zeroinitializer, ptr null, i32 114, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.204, i32 1, [4 x i8] zeroinitializer, ptr null, i32 109, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.205, i32 0, [4 x i8] zeroinitializer, ptr null, i32 87, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.206, i32 0, [4 x i8] zeroinitializer, ptr null, i32 67, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.191 = private unnamed_addr constant [13 x i8] c"source-cache\00", align 1
@.str.192 = private unnamed_addr constant [8 x i8] c"bitmaps\00", align 1
@.str.193 = private unnamed_addr constant [20 x i8] c"skip-broken-bitmaps\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"salvage\00", align 1
@.str.195 = private unnamed_addr constant [14 x i8] c"target-format\00", align 1
@.str.196 = private unnamed_addr constant [18 x i8] c"target-image-opts\00", align 1
@.str.197 = private unnamed_addr constant [22 x i8] c"target-format-options\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"target-cache\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"backing\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"backing-format\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"sparse-size\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"no-create\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"target-is-zero\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"oob-writes\00", align 1
@.str.206 = private unnamed_addr constant [22 x i8] c"copy-range-offloading\00", align 1
@.str.207 = private unnamed_addr constant [33 x i8] c"hf:O:b:B:CcF:o:l:S:pt:T:nm:WUr:q\00", align 1
@.str.208 = private unnamed_addr constant [407 x i8] c"[-f SRC_FMT | --image-opts] [-T SRC_CACHE]\0A        [-l SNAPSHOT] [--bitmaps [--skip-broken-bitmaps]] [--salvage]\0A        [-O TGT_FMT | --target-image-opts] [-o TGT_FMT_OPTS] [-t TGT_CACHE]\0A        [-b BACKING_FILE [-F BACKING_FMT]] [-S SPARSE_SIZE]\0A        [-n] [--target-is-zero] [-c]\0A        [-U] [-r RATE] [-m NUM_PARALLEL] [-W] [-C] [-p] [-q] [--object OBJDEF]\0A        SRC_FILE [SRC_FILE2...] TGT_FILE\0A\00", align 1
@.str.209 = private unnamed_addr constant [2351 x i8] c"  -f, --source-format SRC_FMT\0A     specify format of all SRC_FILEs explicitly (default: probing is used)\0A  --image-opts\0A     treat each SRC_FILE as an option string (key=value,...), not a file name\0A     (incompatible with -f|--source-format)\0A  -T, --source-cache SRC_CACHE\0A     source image(s) cache mode (writeback)\0A  -l, --snapshot SNAPSHOT\0A     specify source snapshot\0A  --bitmaps\0A     also copy any persistent bitmaps present in source\0A  --skip-broken-bitmaps\0A     skip (do not error out) any broken bitmaps\0A  --salvage\0A     ignore errors on input (convert unreadable areas to zeros)\0A  -O, --target-format TGT_FMT\0A     specify TGT_FILE image format (default: raw)\0A  --target-image-opts\0A     treat TGT_FILE as an option string (key=value,...), not a file name\0A     (incompatible with -O|--target-format)\0A  -o, --target-format-options TGT_FMT_OPTS\0A     TGT_FMT-specific options\0A  -t, --target-cache TGT_CACHE\0A     cache mode when opening output image (default: unsafe)\0A  -b, --backing BACKING_FILE (was -B in <= 10.0)\0A     create target image to be a CoW on top of BACKING_FILE\0A  -F, --backing-format BACKING_FMT\0A     specify BACKING_FILE image format explicitly (default: probing is used)\0A  -S, --sparse-size SPARSE_SIZE[bkKMGTPE]\0A     specify number of consecutive zero bytes to treat as a gap on output\0A     (rounded down to nearest 512 bytes), with optional multiplier suffix\0A  -n, --no-create\0A     omit target volume creation (e.g. on rbd)\0A  --target-is-zero\0A     indicates that the target volume is pre-zeroed\0A  -c, --compress\0A     create compressed output image (qcow and qcow2 formats only)\0A  -U, --force-share\0A     open images in shared mode for concurrent access\0A  -r, --rate-limit RATE\0A     I/O rate limit, in bytes per second\0A  -m, --parallel NUM_PARALLEL\0A     specify parallelism (default: 8)\0A  -C, --copy-range-offloading\0A     try to use copy offloading\0A  -W, --oob-writes\0A     enable out-of-order writes to improve performance\0A  -p, --progress\0A     display progress information\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  SRC_FILE...\0A     one or more source image file names,\0A     or option strings (key=value,..) with --source-image-opts\0A  TGT_FILE\0A     target (output) image file name,\0A     or option string (key=value,..) with --target-image-opts\0A\00", align 1
@.str.210 = private unnamed_addr constant [10 x i8] c"snapshot.\00", align 1
@internal_snapshot_opts = external global %struct.QemuOptsList, align 8
@.str.211 = private unnamed_addr constant [38 x i8] c"Failed in parsing snapshot param '%s'\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"buffer size for sparse output\00", align 1
@.str.213 = private unnamed_addr constant [158 x i8] c"Invalid buffer size for sparse output specified. Valid sizes are multiples of %llu up to %llu. Select 0 to disable sparse detection (fully allocates output).\00", align 1
@.str.214 = private unnamed_addr constant [21 x i8] c"number of coroutines\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.216 = private unnamed_addr constant [48 x i8] c"Use of --skip-broken-bitmaps requires --bitmaps\00", align 1
@.str.217 = private unnamed_addr constant [46 x i8] c"Cannot enable copy offloading when -c is used\00", align 1
@.str.218 = private unnamed_addr constant [46 x i8] c"Cannot enable copy offloading when -S is used\00", align 1
@.str.219 = private unnamed_addr constant [45 x i8] c"Cannot use copy offloading in salvaging mode\00", align 1
@.str.220 = private unnamed_addr constant [44 x i8] c"--target-image-opts requires use of -n flag\00", align 1
@.str.221 = private unnamed_addr constant [46 x i8] c"-o has no effect when skipping image creation\00", align 1
@.str.222 = private unnamed_addr constant [41 x i8] c"--target-is-zero requires use of -n flag\00", align 1
@.str.223 = private unnamed_addr constant [43 x i8] c"Option help requires a format be specified\00", align 1
@.str.224 = private unnamed_addr constant [29 x i8] c"Must specify image file name\00", align 1
@.str.225 = private unnamed_addr constant [29 x i8] c"Could not get size of %s: %s\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"snapshot.id\00", align 1
@.str.227 = private unnamed_addr constant [14 x i8] c"snapshot.name\00", align 1
@.str.228 = private unnamed_addr constant [47 x i8] c"No support for concatenating multiple snapshot\00", align 1
@.str.229 = private unnamed_addr constant [26 x i8] c"Failed to load snapshot: \00", align 1
@.str.230 = private unnamed_addr constant [51 x i8] c"Format driver '%s' does not support image creation\00", align 1
@.str.231 = private unnamed_addr constant [53 x i8] c"Protocol driver '%s' does not support image creation\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.233 = private unnamed_addr constant [13 x i8] c"backing_file\00", align 1
@.str.234 = private unnamed_addr constant [74 x i8] c"Cannot use --target-is-zero when the destination image has a backing file\00", align 1
@.str.235 = private unnamed_addr constant [93 x i8] c"Having a backing file for the target makes no sense when concatenating multiple input images\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"backing_fmt\00", align 1
@.str.237 = private unnamed_addr constant [53 x i8] c"Use of backing file requires explicit backing format\00", align 1
@.str.238 = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"encrypt.format\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"preallocation\00", align 1
@.str.241 = private unnamed_addr constant [47 x i8] c"Compression not supported for this file format\00", align 1
@.str.242 = private unnamed_addr constant [58 x i8] c"Compression and encryption not supported at the same time\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.244 = private unnamed_addr constant [61 x i8] c"Compression and preallocation not supported at the same time\00", align 1
@.str.245 = private unnamed_addr constant [49 x i8] c"Copying bitmaps only possible with single source\00", align 1
@.str.246 = private unnamed_addr constant [32 x i8] c"%s: error while converting %s: \00", align 1
@.str.247 = private unnamed_addr constant [44 x i8] c"Format driver '%s' does not support bitmaps\00", align 1
@.str.248 = private unnamed_addr constant [27 x i8] c"is_power_of_2(s.alignment)\00", align 1
@__PRETTY_FUNCTION__.img_convert = private unnamed_addr constant [49 x i8] c"int img_convert(const img_cmd_t *, int, char **)\00", align 1
@.str.249 = private unnamed_addr constant [38 x i8] c"unable to get output image length: %s\00", align 1
@.str.250 = private unnamed_addr constant [39 x i8] c"output file is smaller than input file\00", align 1
@.str.251 = private unnamed_addr constant [32 x i8] c"could not get block driver info\00", align 1
@.str.252 = private unnamed_addr constant [20 x i8] c"Supported options:\0A\00", align 1
@.str.253 = private unnamed_addr constant [23 x i8] c"Supported %s options:\0A\00", align 1
@.str.254 = private unnamed_addr constant [104 x i8] c"\0AThe protocol level may support further options.\0ASpecify the target filename to include those options.\0A\00", align 1
@.str.255 = private unnamed_addr constant [48 x i8] c"Backing file not supported for file format '%s'\00", align 1
@.str.256 = private unnamed_addr constant [55 x i8] c"Backing file format not supported for file format '%s'\00", align 1
@.str.257 = private unnamed_addr constant [13 x i8] c"coroutine_fn\00", section "llvm.metadata"
@.str.258 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/qemu/qemu/include/block/block_int-common.h\00", section "llvm.metadata"
@.str.259 = private unnamed_addr constant [28 x i8] c"Source lacks bitmap support\00", align 1
@.str.260 = private unnamed_addr constant [37 x i8] c"Cannot copy inconsistent bitmap '%s'\00", align 1
@.str.261 = private unnamed_addr constant [75 x i8] c"Try --skip-broken-bitmaps, or use 'qemu-img bitmap --remove' to delete it\0A\00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"key-secret\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"img_convert\00", align 1
@.str.264 = private unnamed_addr constant [21 x i8] c"invalid cluster size\00", align 1
@.str.265 = private unnamed_addr constant [30 x i8] c"s->total_sectors > sector_num\00", align 1
@__PRETTY_FUNCTION__.convert_iteration_sectors = private unnamed_addr constant [58 x i8] c"int convert_iteration_sectors(ImgConvertState *, int64_t)\00", align 1
@.str.266 = private unnamed_addr constant [51 x i8] c"error while reading block status at offset %lu: %s\00", align 1
@.str.267 = private unnamed_addr constant [22 x i8] c"*src_cur < s->src_num\00", align 1
@__PRETTY_FUNCTION__.convert_select_part = private unnamed_addr constant [71 x i8] c"void convert_select_part(ImgConvertState *, int64_t, int *, int64_t *)\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"index >= 0\00", align 1
@__PRETTY_FUNCTION__.convert_co_do_copy = private unnamed_addr constant [32 x i8] c"void convert_co_do_copy(void *)\00", align 1
@.str.269 = private unnamed_addr constant [37 x i8] c"error while reading at byte %lld: %s\00", align 1
@.str.270 = private unnamed_addr constant [37 x i8] c"error while writing at byte %lld: %s\00", align 1
@.str.271 = private unnamed_addr constant [29 x i8] c"nb_sectors <= s->buf_sectors\00", align 1
@__PRETTY_FUNCTION__.convert_co_read = private unnamed_addr constant [64 x i8] c"int convert_co_read(ImgConvertState *, int64_t, int, uint8_t *)\00", align 1
@.str.272 = private unnamed_addr constant [35 x i8] c"error while reading offset %lu: %s\00", align 1
@.str.273 = private unnamed_addr constant [22 x i8] c"s->target_has_backing\00", align 1
@__PRETTY_FUNCTION__.convert_co_write = private unnamed_addr constant [93 x i8] c"int convert_co_write(ImgConvertState *, int64_t, int, uint8_t *, enum ImgConvertBlockStatus)\00", align 1
@.str.274 = private unnamed_addr constant [23 x i8] c"!s->target_has_backing\00", align 1
@.str.275 = private unnamed_addr constant [34 x i8] c"Skipping inconsistent bitmap '%s'\00", align 1
@.str.276 = private unnamed_addr constant [29 x i8] c"Failed to create bitmap %s: \00", align 1
@.str.277 = private unnamed_addr constant [31 x i8] c"Failed to populate bitmap %s: \00", align 1
@img_create.long_options = internal constant [9 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.47, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.199, i32 1, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.200, i32 1, [4 x i8] zeroinitializer, ptr null, i32 66, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.278, i32 0, [4 x i8] zeroinitializer, ptr null, i32 117, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.278 = private unnamed_addr constant [15 x i8] c"backing-unsafe\00", align 1
@.str.279 = private unnamed_addr constant [14 x i8] c"hf:o:b:F:B:uq\00", align 1
@.str.280 = private unnamed_addr constant [115 x i8] c"[-f FMT] [-o FMT_OPTS]\0A        [-b BACKING_FILE [-B BACKING_FMT]] [-u]\0A        [-q] [--object OBJDEF] FILE [SIZE]\0A\00", align 1
@.str.281 = private unnamed_addr constant [785 x i8] c"  -f, --format FMT\0A     specifies the format of the new image (default: raw)\0A  -o, --options FMT_OPTS\0A     format-specific options (specify '-o help' for help)\0A  -b, --backing BACKING_FILE\0A     create target image to be a CoW on top of BACKING_FILE\0A  -B, --backing-format BACKING_FMT (was -F in <= 10.0)\0A     specifies the format of BACKING_FILE (default: probing is used)\0A  -u, --backing-unsafe\0A     do not fail if BACKING_FILE can not be read\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file to create (will be overritten if already exists)\0A  SIZE[bKMGTPE]\0A     image size with optional multiplier suffix (powers of 1024)\0A     (required unless BACKING_FILE is specified)\0A\00", align 1
@.str.282 = private unnamed_addr constant [26 x i8] c"Expecting image file name\00", align 1
@.str.283 = private unnamed_addr constant [11 x i8] c"image size\00", align 1
@.str.284 = private unnamed_addr constant [24 x i8] c"Unexpected argument: %s\00", align 1
@.str.285 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@__const.img_dd.out = private unnamed_addr constant { i32, [4 x i8], ptr, ptr, i64 } { i32 512, [4 x i8] zeroinitializer, ptr null, ptr null, i64 0 }, align 8
@.str.286 = private unnamed_addr constant [3 x i8] c"bs\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.288 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@__const.img_dd.options = private unnamed_addr constant [6 x { ptr, ptr, i32, [4 x i8] }] [{ ptr, ptr, i32, [4 x i8] } { ptr @.str.286, ptr @img_dd_bs, i32 1, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.80, ptr @img_dd_count, i32 2, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.287, ptr @img_dd_if, i32 4, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.288, ptr @img_dd_of, i32 8, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } { ptr @.str.289, ptr @img_dd_skip, i32 16, [4 x i8] zeroinitializer }, { ptr, ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.290 = private unnamed_addr constant [14 x i8] c"output-format\00", align 1
@__const.img_dd.long_options = private unnamed_addr constant [7 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.290, i32 1, [4 x i8] zeroinitializer, ptr null, i32 79, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.291 = private unnamed_addr constant [7 x i8] c"hf:O:U\00", align 1
@.str.292 = private unnamed_addr constant [120 x i8] c"[-f FMT|--image-opts] [-O OUTPUT_FMT] [-U]\0A        [--object OBJDEF] [bs=BLOCK_SIZE] [count=BLOCKS] if=INPUT of=OUTPUT\0A\00", align 1
@.str.293 = private unnamed_addr constant [794 x i8] c"  -f, --format FMT\0A     specify format for INPUT explicitly (default: probing is used)\0A  --image-opts\0A     treat INPUT as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  -O, --output-format OUTPUT_FMT\0A     format of the OUTPUT (default: raw)\0A  -U, --force-share\0A     open images in shared mode for concurrent access\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  bs=BLOCK_SIZE[bKMGTP]\0A     size of the I/O block, with optional multiplier suffix (powers of 1024)\0A     (default: 512)\0A  count=COUNT\0A     number of blocks to convert (default whole INPUT)\0A  if=INPUT\0A     name of the file, or option string (key=value,..)\0A     with --image-opts, to use for input\0A  of=OUTPUT\0A     output file name to create (will be overridden if alrady exists)\0A\00", align 1
@.str.294 = private unnamed_addr constant [24 x i8] c"unrecognized operand %s\00", align 1
@.str.295 = private unnamed_addr constant [41 x i8] c"Must specify both input and output files\00", align 1
@.str.296 = private unnamed_addr constant [20 x i8] c"Unknown file format\00", align 1
@.str.297 = private unnamed_addr constant [28 x i8] c"Failed to get size for '%s'\00", align 1
@.str.298 = private unnamed_addr constant [40 x i8] c"%s: error while creating output image: \00", align 1
@.str.299 = private unnamed_addr constant [36 x i8] c"%s: cannot skip to specified offset\00", align 1
@.str.300 = private unnamed_addr constant [46 x i8] c"error while reading from input image file: %s\00", align 1
@.str.301 = private unnamed_addr constant [45 x i8] c"error while writing to output image file: %s\00", align 1
@img_info.long_options = internal constant [10 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.302, i32 0, [4 x i8] zeroinitializer, ptr null, i32 257, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.303, i32 0, [4 x i8] zeroinitializer, ptr null, i32 278, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.137, i32 1, [4 x i8] zeroinitializer, ptr null, i32 256, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.302 = private unnamed_addr constant [14 x i8] c"backing-chain\00", align 1
@.str.303 = private unnamed_addr constant [7 x i8] c"limits\00", align 1
@.str.304 = private unnamed_addr constant [7 x i8] c"hf:t:U\00", align 1
@.str.305 = private unnamed_addr constant [101 x i8] c"[-f FMT | --image-opts] [--backing-chain] [-U]\0A        [--output human|json] [--object OBJDEF] FILE\0A\00", align 1
@.str.306 = private unnamed_addr constant [756 x i8] c"  -f, --format FMT\0A     specify FILE image format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  --backing-chain\0A     display information about the backing chain for copy-on-write overlays\0A  -t, --cache CACHE\0A     cache mode for FILE (default: writeback)\0A  -U, --force-share\0A     open image in shared mode for concurrent access\0A  --limits\0A     show detected block limits (may depend on options, e.g. cache mode)\0A  --output human|json\0A     specify output format (default: human)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or option string (key=value,..)\0A     with --image-opts, to operate on\0A\00", align 1
@.str.307 = private unnamed_addr constant [44 x i8] c"Backing file '%s' creates an infinite loop.\00", align 1
@.str.308 = private unnamed_addr constant [81 x i8] c"Could not determine absolute backing filename, but backing filename '%s' present\00", align 1
@.str.309 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.310 = private unnamed_addr constant [23 x i8] c"%*sChild node '%s%s':\0A\00", align 1
@.str.311 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1
@__PRETTY_FUNCTION__.dump_json_block_graph_info_list = private unnamed_addr constant [59 x i8] c"void dump_json_block_graph_info_list(BlockGraphInfoList *)\00", align 1
@__PRETTY_FUNCTION__.dump_json_block_graph_info = private unnamed_addr constant [50 x i8] c"void dump_json_block_graph_info(BlockGraphInfo *)\00", align 1
@img_map.long_options = internal constant [9 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.313, i32 1, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.314, i32 1, [4 x i8] zeroinitializer, ptr null, i32 108, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.137, i32 1, [4 x i8] zeroinitializer, ptr null, i32 256, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.313 = private unnamed_addr constant [13 x i8] c"start-offset\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"max-length\00", align 1
@.str.315 = private unnamed_addr constant [9 x i8] c"hf:s:l:U\00", align 1
@.str.316 = private unnamed_addr constant [137 x i8] c"[-f FMT | --image-opts]\0A        [--start-offset OFFSET] [--max-length LENGTH]\0A        [--output human|json] [-U] [--object OBJDEF] FILE\0A\00", align 1
@.str.317 = private unnamed_addr constant [706 x i8] c"  -f, --format FMT\0A     specify FILE image format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  -s, --start-offset OFFSET\0A     start at the given OFFSET in the image, not at the beginning\0A  -l, --max-length LENGTH\0A     process at most LENGTH bytes instead of up to the end of the image\0A  --output human|json\0A     specify output format name (default: human)\0A  -U, --force-share\0A     open image in shared mode for concurrent access\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     the image file name, or option string (key=value,..)\0A     with --image-opts, to operate on\0A\00", align 1
@.str.318 = private unnamed_addr constant [13 x i8] c"start offset\00", align 1
@.str.319 = private unnamed_addr constant [11 x i8] c"max length\00", align 1
@.str.320 = private unnamed_addr constant [19 x i8] c"%-16s%-16s%-16s%s\0A\00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.322 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.323 = private unnamed_addr constant [10 x i8] c"Mapped to\00", align 1
@.str.324 = private unnamed_addr constant [5 x i8] c"File\00", align 1
@.str.325 = private unnamed_addr constant [33 x i8] c"Could not read file metadata: %s\00", align 1
@.str.326 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.327 = private unnamed_addr constant [22 x i8] c"qemu_in_main_thread()\00", align 1
@__PRETTY_FUNCTION__.get_block_status = private unnamed_addr constant [71 x i8] c"int get_block_status(BlockDriverState *, int64_t, int64_t, MapEntry *)\00", align 1
@.str.328 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@.str.329 = private unnamed_addr constant [58 x i8] c"File contains external, encrypted or compressed clusters.\00", align 1
@.str.330 = private unnamed_addr constant [25 x i8] c"%#-16lx%#-16lx%#-16lx%s\0A\00", align 1
@.str.331 = private unnamed_addr constant [101 x i8] c"{ \22start\22: %ld, \22length\22: %ld, \22depth\22: %ld, \22present\22: %s, \22zero\22: %s, \22data\22: %s, \22compressed\22: %s\00", align 1
@.str.332 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.334 = private unnamed_addr constant [16 x i8] c", \22offset\22: %ld\00", align 1
@.str.335 = private unnamed_addr constant [2 x i8] c",\00", align 1
@img_measure.long_options = internal constant [14 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.124, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.336, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.44, i32 1, [4 x i8] zeroinitializer, ptr null, i32 108, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.195, i32 1, [4 x i8] zeroinitializer, ptr null, i32 79, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.197, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.47, i32 1, [4 x i8] zeroinitializer, ptr null, i32 111, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.137, i32 1, [4 x i8] zeroinitializer, ptr null, i32 256, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.232, i32 1, [4 x i8] zeroinitializer, ptr null, i32 115, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.336 = private unnamed_addr constant [18 x i8] c"source-image-opts\00", align 1
@.str.337 = private unnamed_addr constant [13 x i8] c"hf:l:O:o:Us:\00", align 1
@.str.338 = private unnamed_addr constant [149 x i8] c"[-f FMT|--image-opts] [-l SNAPSHOT]\0A       [-O TARGET_FMT] [-o TARGET_FMT_OPTS] [--output human|json]\0A       [--object OBJDEF] (--size SIZE | FILE)\0A\00", align 1
@.str.339 = private unnamed_addr constant [883 x i8] c"  -f, --format\0A     specify format of FILE explicitly (default: probing is used)\0A  --image-opts\0A     indicates that FILE is a complete image specification\0A     instead of a file name (incompatible with --format)\0A  -l, --snapshot SNAPSHOT\0A     use this snapshot in FILE as source\0A  -O, --target-format TARGET_FMT\0A     desired target/output image format (default: raw)\0A  -o TARGET_FMT_OPTS\0A     options specific to TARGET_FMT\0A  --output human|json\0A     output format (default: human)\0A  -U, --force-share\0A     open images in shared mode for concurrent access\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  -s, --size SIZE[bKMGTPE]\0A     measure file size for given image size,\0A     with optional multiplier suffix (powers of 1024)\0A  FILE\0A     measure file size required to convert from FILE (either a file name\0A     or an option string (key=value,..) with --image-options)\0A\00", align 1
@.str.340 = private unnamed_addr constant [42 x i8] c"At most one filename argument is allowed.\00", align 1
@.str.341 = private unnamed_addr constant [54 x i8] c"--image-opts, -f, and -l require a filename argument.\00", align 1
@.str.342 = private unnamed_addr constant [50 x i8] c"--size N cannot be used together with a filename.\00", align 1
@.str.343 = private unnamed_addr constant [51 x i8] c"Either --size N or one filename must be specified.\00", align 1
@bdrv_file = external local_unnamed_addr global %struct.BlockDriver, align 8
@.str.344 = private unnamed_addr constant [37 x i8] c"Invalid options for file format '%s'\00", align 1
@.str.345 = private unnamed_addr constant [20 x i8] c"required size: %lu\0A\00", align 1
@.str.346 = private unnamed_addr constant [27 x i8] c"fully allocated size: %lu\0A\00", align 1
@.str.347 = private unnamed_addr constant [19 x i8] c"bitmaps size: %lu\0A\00", align 1
@__PRETTY_FUNCTION__.dump_json_block_measure_info = private unnamed_addr constant [54 x i8] c"void dump_json_block_measure_info(BlockMeasureInfo *)\00", align 1
@img_rebase.long_options = internal constant [14 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.50, i32 1, [4 x i8] zeroinitializer, ptr null, i32 116, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.348, i32 0, [4 x i8] zeroinitializer, ptr null, i32 99, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.199, i32 1, [4 x i8] zeroinitializer, ptr null, i32 98, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.200, i32 1, [4 x i8] zeroinitializer, ptr null, i32 66, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.349, i32 1, [4 x i8] zeroinitializer, ptr null, i32 84, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.278, i32 0, [4 x i8] zeroinitializer, ptr null, i32 117, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.52, i32 0, [4 x i8] zeroinitializer, ptr null, i32 112, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.348 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.349 = private unnamed_addr constant [14 x i8] c"backing-cache\00", align 1
@.str.350 = private unnamed_addr constant [19 x i8] c"hf:t:cb:F:B:T:uUpq\00", align 1
@.str.351 = private unnamed_addr constant [154 x i8] c"[-f FMT | --image-opts] [-t CACHE]\0A        [-b BACKING_FILE [-B BACKING_FMT] [-T BACKING_CACHE]] [-u]\0A        [-c] [-U] [-p] [-q] [--object OBJDEF] FILE\0A\00", align 1
@.str.352 = private unnamed_addr constant [1067 x i8] c"  -f, --format FMT\0A     specify FILE format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  -t, --cache CACHE\0A     cache mode for FILE (default: writeback)\0A  -b, --backing BACKING_FILE|\22\22\0A     rebase onto this file (specify empty name for no backing file)\0A  -B, --backing-format BACKING_FMT (was -F in <=10.0)\0A     specify format for BACKING_FILE explicitly (default: probing is used)\0A  -T, --backing-cache CACHE\0A     BACKING_FILE cache mode (default: writeback)\0A  -u, --backing-unsafe\0A     do not fail if BACKING_FILE can not be read\0A  -c, --compress\0A     compress image (when image supports this)\0A  -U, --force-share\0A     open image in shared mode for concurrent access\0A  -p, --progress\0A     display progress information\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or option string (key=value,..)\0A     with --image-opts, to operate on\0A\00", align 1
@.str.353 = private unnamed_addr constant [55 x i8] c"Must specify backing file (-b) or use unsafe mode (-u)\00", align 1
@.str.354 = private unnamed_addr constant [31 x i8] c"(src_flags & BDRV_O_RDWR) == 0\00", align 1
@__PRETTY_FUNCTION__.img_rebase = private unnamed_addr constant [48 x i8] c"int img_rebase(const img_cmd_t *, int, char **)\00", align 1
@.str.355 = private unnamed_addr constant [26 x i8] c"Invalid format name: '%s'\00", align 1
@.str.356 = private unnamed_addr constant [40 x i8] c"Could not reuse old backing file '%s': \00", align 1
@.str.357 = private unnamed_addr constant [37 x i8] c"Could not resolve backing filename: \00", align 1
@.str.358 = private unnamed_addr constant [36 x i8] c"Could not reuse backing file '%s': \00", align 1
@.str.359 = private unnamed_addr constant [39 x i8] c"Could not open new backing file '%s': \00", align 1
@.str.360 = private unnamed_addr constant [31 x i8] c"Could not get size of '%s': %s\00", align 1
@.str.361 = private unnamed_addr constant [39 x i8] c"error while reading image metadata: %s\00", align 1
@.str.362 = private unnamed_addr constant [71 x i8] c"!bdrv_is_allocated(unfiltered_bs, offset, n, &n_alloc) && n_alloc == n\00", align 1
@.str.363 = private unnamed_addr constant [42 x i8] c"error while reading from old backing file\00", align 1
@.str.364 = private unnamed_addr constant [42 x i8] c"error while reading from new backing file\00", align 1
@.str.365 = private unnamed_addr constant [30 x i8] c"written + pnum <= IO_BUF_SIZE\00", align 1
@.str.366 = private unnamed_addr constant [37 x i8] c"Error while writing to COW image: %s\00", align 1
@.str.367 = private unnamed_addr constant [76 x i8] c"Could not change the backing file to '%s': No space left in the file header\00", align 1
@.str.368 = private unnamed_addr constant [76 x i8] c"Could not change the backing file to '%s': backing format must be specified\00", align 1
@.str.369 = private unnamed_addr constant [46 x i8] c"Could not change the backing file to '%s': %s\00", align 1
@img_resize.resize_options = internal global { ptr, ptr, i8, [7 x i8], %union.anon, [2 x { ptr, i32, [4 x i8], ptr, ptr }] } { ptr @.str.370, ptr null, i8 0, [7 x i8] zeroinitializer, %union.anon { %struct.QTailQLink { ptr null, ptr getelementptr (i8, ptr @img_resize.resize_options, i64 24) } }, [2 x { ptr, i32, [4 x i8], ptr, ptr }] [{ ptr, i32, [4 x i8], ptr, ptr } { ptr @.str.232, i32 3, [4 x i8] zeroinitializer, ptr @.str.371, ptr null }, { ptr, i32, [4 x i8], ptr, ptr } zeroinitializer] }, align 8
@.str.370 = private unnamed_addr constant [15 x i8] c"resize_options\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"Virtual disk size\00", align 1
@img_resize.long_options = internal constant [8 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.240, i32 1, [4 x i8] zeroinitializer, ptr null, i32 265, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.372, i32 0, [4 x i8] zeroinitializer, ptr null, i32 266, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.372 = private unnamed_addr constant [7 x i8] c"shrink\00", align 1
@.str.373 = private unnamed_addr constant [6 x i8] c"-hf:q\00", align 1
@.str.374 = private unnamed_addr constant [118 x i8] c"[-f FMT | --image-opts] [--preallocation PREALLOC] [--shrink]\0A        [-q] [--object OBJDEF] FILE [+-]SIZE[bkKMGTPE]\0A\00", align 1
@.str.375 = private unnamed_addr constant [760 x i8] c"  -f, --format FMT\0A     specify FILE format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,...), not a file name\0A     (incompatible with -f|--format)\0A  --shrink\0A     allow operation when the new size is smaller than the original\0A  --preallocation PREALLOC\0A     specify FMT-specific preallocation type for the new areas\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or option string (key=value,..)\0A     with --image-opts, to operate on\0A  [+-]SIZE[bkKMGTPE]\0A     new image size or amount by which to shrink (-)/grow (+),\0A     with optional multiplier suffix (powers of 1024, default is bytes)\0A\00", align 1
@PreallocMode_lookup = external constant %struct.QEnumLookup, align 8
@.str.376 = private unnamed_addr constant [32 x i8] c"Invalid preallocation mode '%s'\00", align 1
@.str.377 = private unnamed_addr constant [34 x i8] c"Extra argument(s) in command line\00", align 1
@.str.378 = private unnamed_addr constant [35 x i8] c"Expecting image file name and size\00", align 1
@.str.379 = private unnamed_addr constant [43 x i8] c"Failed to inquire current image length: %s\00", align 1
@.str.380 = private unnamed_addr constant [32 x i8] c"New image size must be positive\00", align 1
@.str.381 = private unnamed_addr constant [50 x i8] c"Preallocation can only be used for growing images\00", align 1
@.str.382 = private unnamed_addr constant [55 x i8] c"Use the --shrink option to perform a shrink operation.\00", align 1
@.str.383 = private unnamed_addr constant [154 x i8] c"Shrinking an image will delete all data beyond the shrunken image's end. Before performing such an operation, make sure there is no important data there.\00", align 1
@.str.384 = private unnamed_addr constant [16 x i8] c"Image resized.\0A\00", align 1
@img_snapshot.long_options = internal constant [11 x { ptr, i32, [4 x i8], ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str, i32 0, [4 x i8] zeroinitializer, ptr null, i32 104, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.48, i32 1, [4 x i8] zeroinitializer, ptr null, i32 102, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.49, i32 0, [4 x i8] zeroinitializer, ptr null, i32 259, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.385, i32 0, [4 x i8] zeroinitializer, ptr null, i32 108, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.386, i32 1, [4 x i8] zeroinitializer, ptr null, i32 97, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.30, i32 1, [4 x i8] zeroinitializer, ptr null, i32 99, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.387, i32 1, [4 x i8] zeroinitializer, ptr null, i32 100, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.73, i32 0, [4 x i8] zeroinitializer, ptr null, i32 85, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.53, i32 0, [4 x i8] zeroinitializer, ptr null, i32 113, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } { ptr @.str.54, i32 1, [4 x i8] zeroinitializer, ptr null, i32 258, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8], ptr, i32, [4 x i8] } zeroinitializer], align 16
@.str.385 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.386 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.387 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.388 = private unnamed_addr constant [13 x i8] c"hf:la:c:d:Uq\00", align 1
@.str.389 = private unnamed_addr constant [91 x i8] c"[-f FMT | --image-opts] [-l | -a|-c|-d SNAPSHOT]\0A        [-U] [-q] [--object OBJDEF] FILE\0A\00", align 1
@.str.390 = private unnamed_addr constant [800 x i8] c"  -f, --format FMT\0A     specify FILE format explicitly (default: probing is used)\0A  --image-opts\0A     treat FILE as an option string (key=value,..), not a file name\0A     (incompatible with -f|--format)\0A  -l, --list\0A     list snapshots in FILE (default action if no -l|-c|-a|-d is given)\0A  -c, --create SNAPSHOT\0A     create named snapshot\0A  -a, --apply SNAPSHOT\0A     apply named snapshot to the base\0A  -d, --delete SNAPSHOT\0A     delete named snapshot\0A  (only one of -l|-c|-a|-d can be specified)\0A  -U, --force-share\0A     open image in shared mode for concurrent access\0A  -q, --quiet\0A     quiet mode (produce only error messages if any)\0A  --object OBJDEF\0A     defines QEMU user-creatable object\0A  FILE\0A     name of the image file, or option string (key=value,..)\0A     with --image-opts) to operate on\0A\00", align 1
@.str.391 = private unnamed_addr constant [34 x i8] c"Cannot mix '-l', '-a', '-c', '-d'\00", align 1
@.str.392 = private unnamed_addr constant [35 x i8] c"Could not create snapshot '%s': %s\00", align 1
@.str.393 = private unnamed_addr constant [32 x i8] c"Could not apply snapshot '%s': \00", align 1
@.str.394 = private unnamed_addr constant [51 x i8] c"Could not delete snapshot '%s': snapshot not found\00", align 1
@.str.395 = private unnamed_addr constant [33 x i8] c"Could not delete snapshot '%s': \00", align 1
@.str.396 = private unnamed_addr constant [16 x i8] c"Snapshot list:\0A\00", align 1
@.str.397 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.398 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.399 = private unnamed_addr constant [38 x i8] c"Try '%s --help' for more information\0A\00", align 1
@.str.400 = private unnamed_addr constant [16 x i8] c"no_coroutine_fn\00", section "llvm.metadata"
@.str.401 = private unnamed_addr constant [70 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-global-state.h\00", section "llvm.metadata"
@.str.402 = private unnamed_addr constant [60 x i8] c"/opt-bench/work/qemu/qemu/include/system/block-backend-io.h\00", section "llvm.metadata"
@.str.403 = private unnamed_addr constant [19 x i8] c"coroutine_mixed_fn\00", section "llvm.metadata"
@.str.404 = private unnamed_addr constant [51 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-io.h\00", section "llvm.metadata"
@.str.405 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/qemu/qemu/include/block/block-global-state.h\00", section "llvm.metadata"
@.str.406 = private unnamed_addr constant [45 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/aio.h\00", section "llvm.metadata"
@.str.407 = private unnamed_addr constant [14 x i8] c"../qemu-img.c\00", section "llvm.metadata"
@.str.408 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/qemu/qemu/include/qemu/coroutine-core.h\00", section "llvm.metadata"
@.str.409 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/qemu/qemu/include/block/graph-lock.h\00", section "llvm.metadata"
@llvm.global.annotations = appending global [49 x { ptr, ptr, ptr, i32, ptr }] [{ ptr, ptr, ptr, i32, ptr } { ptr @blk_unref, ptr @.str.400, ptr @.str.401, i32 46, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_new_open, ptr @.str.400, ptr @.str.401, i32 36, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_getlength, ptr @.str.400, ptr @.str.402, i32 90, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_getlength, ptr @.str.403, ptr @.str.402, i32 90, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_check, ptr @.str.400, ptr @.str.404, i32 368, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_check, ptr @.str.403, ptr @.str.404, i32 368, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_new_with_bs, ptr @.str.400, ptr @.str.401, i32 28, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_unref, ptr @.str.400, ptr @.str.405, i32 249, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @aio_poll, ptr @.str.400, ptr @.str.406, i32 538, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status_above, ptr @.str.400, ptr @.str.404, i32 144, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status_above, ptr @.str.403, ptr @.str.404, i32 144, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pread, ptr @.str.400, ptr @.str.402, i32 148, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pread, ptr @.str.403, ptr @.str.402, i32 148, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_get_info, ptr @.str.400, ptr @.str.404, i32 202, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_get_info, ptr @.str.403, ptr @.str.404, i32 202, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_create, ptr @.str.400, ptr @.str.405, i32 66, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_nb_sectors, ptr @.str.403, ptr @.str.404, i32 83, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_has_zero_init, ptr @.str.403, ptr @.str.405, i32 208, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @convert_iteration_sectors, ptr @.str.403, ptr @.str.407, i32 1714, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @convert_co_do_copy, ptr @.str.257, ptr @.str.407, i32 1969, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pwrite_compressed, ptr @.str.400, ptr @.str.402, i32 191, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pwrite_compressed, ptr @.str.403, ptr @.str.402, i32 191, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_lock, ptr @.str.257, ptr @.str.408, i32 146, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_co_mutex_unlock, ptr @.str.257, ptr @.str.408, i32 152, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @graph_lockable_auto_lock, ptr @.str.257, ptr @.str.409, i32 222, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @graph_lockable_auto_unlock, ptr @.str.257, ptr @.str.409, i32 229, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @convert_co_read, ptr @.str.257, ptr @.str.407, i32 1820, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @qemu_coroutine_yield, ptr @.str.257, ptr @.str.408, i32 101, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @convert_co_copy_range, ptr @.str.257, ptr @.str.407, i32 1938, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @convert_co_write, ptr @.str.257, ptr @.str.407, i32 1874, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_graph_co_rdlock, ptr @.str.257, ptr @.str.409, i32 157, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_graph_co_rdunlock, ptr @.str.257, ptr @.str.409, i32 166, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_pread, ptr @.str.257, ptr @.str.402, i32 151, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_copy_range, ptr @.str.257, ptr @.str.402, i32 125, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_pwrite, ptr @.str.257, ptr @.str.402, i32 172, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_co_pwrite_zeroes, ptr @.str.257, ptr @.str.402, i32 200, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pwrite, ptr @.str.400, ptr @.str.402, i32 169, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pwrite, ptr @.str.403, ptr @.str.402, i32 169, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.400, ptr @.str.404, i32 136, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_block_status, ptr @.str.403, ptr @.str.404, i32 136, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_is_allocated, ptr @.str.400, ptr @.str.404, i32 152, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_is_allocated, ptr @.str.403, ptr @.str.404, i32 152, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_is_allocated_above, ptr @.str.400, ptr @.str.404, i32 160, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_is_allocated_above, ptr @.str.403, ptr @.str.404, i32 160, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pwrite_zeroes, ptr @.str.400, ptr @.str.402, i32 197, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_pwrite_zeroes, ptr @.str.403, ptr @.str.402, i32 197, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @bdrv_change_backing_file, ptr @.str.400, ptr @.str.404, i32 221, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_truncate, ptr @.str.400, ptr @.str.402, i32 233, ptr null }, { ptr, ptr, ptr, i32, ptr } { ptr @blk_truncate, ptr @.str.403, ptr @.str.402, i32 233, ptr null }], section "llvm.metadata"

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = tail call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #22 ; 0 uses
  %i.c = tail call i32 @socket_init() #22         ; 0 uses
  %i.d = load ptr, ptr %1, align 8
  tail call void @error_init(ptr noundef %i.d) #22
  tail call void @module_call_init(i32 noundef 5) #22
  %i.e = load ptr, ptr %1, align 8
  tail call void @qemu_init_exec_dir(ptr noundef %i.e) #22
  %i.f = tail call i32 @qemu_init_main_loop(ptr noundef nonnull @error_fatal) #22 ; 0 uses
  %i.g = tail call i32 @qcrypto_init(ptr noundef nonnull @error_fatal) #22 ; 0 uses
  tail call void @module_call_init(i32 noundef 4) #22
  tail call void @bdrv_init() #22
  tail call void @qemu_add_opts(ptr noundef nonnull @qemu_source_opts) #22
  tail call void @qemu_add_opts(ptr noundef nonnull @qemu_trace_opts) #22
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.h = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @main.long_options, ptr noundef null) #22
  switch i32 %i.h, label %bb.h [
    i32 -1, label %bb.i
    i32 104, label %bb.c
    i32 86, label %bb.f
    i32 84, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.4) #22 ; 0 uses
  %i.j = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #22 ; 0 uses
  %i.k = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #22 ; 0 uses
  %i.l = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #22 ; 0 uses
  %i.m = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #22 ; 0 uses
  %i.n = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #22 ; 0 uses
  %i.o = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #22 ; 0 uses
  %i.p = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #22 ; 0 uses
  %i.q = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31) #22 ; 0 uses
  %i.r = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #22 ; 0 uses
  %i.s = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #22 ; 0 uses
  %i.t = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37) #22 ; 0 uses
  %i.u = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #22 ; 0 uses
  %i.v = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #22 ; 0 uses
  %i.w = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #22 ; 0 uses
  %i.x = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #22 ; 0 uses
  %i.y = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.6) #22 ; 0 uses
  store i32 99, ptr %i.a, align 4
  call void @bdrv_iterate_format(ptr noundef nonnull @format_print, ptr noundef nonnull %i.a, i1 noundef zeroext false) #22
  %i.z = load i32, ptr %i.a, align 4
  %.not37 = icmp eq i32 %i.z, 0
  br i1 %.not37, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.7) #22 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
end_hunk_0
begin_hunk_1_@img_create:bb.a
  %.027.ph124 = phi i1 [ %.027.ph, %.outer ], [ %.027.ph131, %bb.g ]
  %.0.ph125 = phi i32 [ %.0.ph, %.outer ], [ %.0.ph134, %bb.g ]
  br label %.outer126

.outer126:                                        ; preds = %.outer121, %bb.f
  %.029.ph127 = phi ptr [ %.029.ph123, %.outer121 ], [ %i.k, %bb.f ] ; 3 uses
  %.027.ph128 = phi i1 [ %.027.ph124, %.outer121 ], [ %.027.ph131, %bb.f ]
  %.0.ph129 = phi i32 [ %.0.ph125, %.outer121 ], [ %.0.ph134, %bb.f ]
  br label %.outer130

.outer130:                                        ; preds = %bb.b, %.outer126
  %.027.ph131 = phi i1 [ %.027.ph128, %.outer126 ], [ true, %bb.b ] ; 4 uses
  %.0.ph132 = phi i32 [ %.0.ph129, %.outer126 ], [ %.0.ph134, %bb.b ] ; 2 uses
  %i.d = or i32 %.0.ph132, 256
  br label %.outer133

.outer133:                                        ; preds = %bb.b, %.outer130
  %.0.ph134 = phi i32 [ %.0.ph132, %.outer130 ], [ %i.d, %bb.b ] ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.outer133
  %i.e = tail call i32 @getopt_long(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.279, ptr noundef nonnull @img_create.long_options, ptr noundef null) #22
  switch i32 %i.e, label %bb.i [
    i32 -1, label %bb.j
    i32 104, label %bb.c
    i32 102, label %bb.d
    i32 111, label %bb.e
    i32 98, label %bb.f
    i32 70, label %bb.g
    i32 66, label %bb.g
    i32 117, label %.outer133
    i32 113, label %.outer130
    i32 258, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %.val = load ptr, ptr %0, align 8
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val49 = load ptr, ptr %i.f, align 8
  tail call fastcc void @cmd_help(ptr %.val, ptr %.val49, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.281) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @optarg, align 8
  br label %.outer

bb.e:                                             ; preds = %bb.b
  %i.h = load ptr, ptr @optarg, align 8
  %i.i = call fastcc i32 @accumulate_options(ptr noundef %i.b, ptr noundef %i.h)
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.h
  br label %bb.b

bb.f:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @optarg, align 8
  br label %.outer126

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.l = load ptr, ptr @optarg, align 8
  br label %.outer121

bb.h:                                             ; preds = %bb.b
  %i.m = load ptr, ptr @optarg, align 8
  tail call void @user_creatable_process_cmdline(ptr noundef %i.m) #22
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8
  tail call fastcc void @tryhelp(ptr noundef %i.n) #23
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.o = load i32, ptr @optind, align 4           ; 3 uses
  %i.p = icmp slt i32 %i.o, %1
  br i1 %i.p, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %2, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.t = phi ptr [ %i.s, %bb.k ], [ null, %bb.j ] ; 3 uses
  %i.u = load ptr, ptr %i.b, align 8              ; 4 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = tail call zeroext i1 @has_help_option(ptr noundef nonnull %i.u) #22
  br i1 %i.v, label %bb.n, label %._crit_edge

._crit_edge:                                      ; preds = %bb.m
  %.pre = load i32, ptr @optind, align 4
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @g_free(ptr noundef nonnull %i.u) #22
  %i.w = tail call fastcc i32 @print_block_option_help(ptr noundef %i.t, ptr noundef %.033.ph)
  br label %bb.aa

bb.o:                                             ; preds = %._crit_edge, %bb.l
  %i.x = phi i32 [ %.pre, %._crit_edge ], [ %i.o, %bb.l ] ; 3 uses
  %.not46 = icmp slt i32 %i.x, %1
  br i1 %.not46, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.y = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @error_exit(ptr noundef %i.y, ptr noundef nonnull @.str.282) #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.z = add nsw i32 %i.x, 1                      ; 4 uses
  store i32 %i.z, ptr @optind, align 4
  %i.aa = icmp slt i32 %i.z, %1
  br i1 %i.aa, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.ab = add nsw i32 %i.x, 2
  store i32 %i.ab, ptr @optind, align 4
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !annotation !11
  %i.af = call i32 @qemu_strtosz(ptr noundef %i.ae, ptr noundef null, ptr noundef nonnull %i.a) #22 ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  %i.ah = icmp ne i32 %i.af, -34                  ; 2 uses
  %or.cond.i.i = and i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.283, ptr noundef %i.ae) #22
  br label %cvtnum.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.ai = load i64, ptr %i.a, align 8             ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  %or.cond.not.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.not.i, label %cvtnum.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.283, i64 noundef 0, i64 noundef 9223372036854775807) #22
  br label %cvtnum.exit.thread

cvtnum.exit.thread:                               ; preds = %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

cvtnum.exit:                                      ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.pre81 = load i32, ptr @optind, align 4
  br label %bb.v

bb.v:                                             ; preds = %cvtnum.exit, %bb.q
  %i.ak = phi i32 [ %.pre81, %cvtnum.exit ], [ %i.z, %bb.q ] ; 2 uses
  %.035 = phi i64 [ %i.ai, %cvtnum.exit ], [ -1, %bb.q ]
  %.not47 = icmp eq i32 %i.ak, %1
  br i1 %.not47, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = load ptr, ptr %2, align 8
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8
  call void (ptr, ptr, ...) @error_exit(ptr noundef %i.al, ptr noundef nonnull @.str.284, ptr noundef %i.ao) #23
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @bdrv_img_create(ptr noundef %i.t, ptr noundef %.033.ph, ptr noundef %.029.ph127, ptr noundef %.031.ph122, ptr noundef %i.u, i64 noundef %.035, i32 noundef %.0.ph134, i1 noundef zeroext %.027.ph131, ptr noundef nonnull %i.c) #22
  %i.ap = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not48 = icmp eq ptr %i.ap, null
  br i1 %.not48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @error_reportf_err(ptr noundef nonnull %i.ap, ptr noundef nonnull @.str.285, ptr noundef %i.t) #22
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.aq = load ptr, ptr %i.b, align 8
  call void @g_free(ptr noundef %i.aq) #22
  br label %bb.aa

.loopexit:                                        ; preds = %bb.e, %cvtnum.exit.thread, %bb.y
  %i.ar = load ptr, ptr %i.b, align 8
  call void @g_free(ptr noundef %i.ar) #22
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit, %bb.z, %bb.n
  %.036 = phi i32 [ %i.w, %bb.n ], [ 1, %.loopexit ], [ 0, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i32 %.036
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef range(i32 0, 2) i32 @img_dd(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %3 = alloca ptr, align 8                        ; 7 uses
  %4 = alloca %struct.DdInfo, align 8             ; 10 uses
  %5 = alloca %struct.DdIo, align 8               ; 15 uses
  %6 = alloca %struct.DdIo, align 8               ; 7 uses
  %7 = alloca [7 x %struct.option], align 16      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr null, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) @__const.img_dd.out, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @__const.img_dd.out, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) %7, ptr noundef nonnull align 16 dereferenceable(224) @__const.img_dd.long_options, i64 224, i1 false)
  %i.a = call i32 @getopt_long(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.291, ptr noundef nonnull %7, ptr noundef null) #22 ; 2 uses
  %i.b = add i32 %i.a, 1
  %or.cond191 = icmp ult i32 %i.b, 2
  br i1 %or.cond191, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.c = phi i32 [ %i.i, %bb.h ], [ %i.a, %bb.a ]
  %.099195 = phi i1 [ %.1100, %bb.h ], [ false, %bb.a ] ; 4 uses
  %.0106194 = phi ptr [ %.1107, %bb.h ], [ null, %bb.a ] ; 4 uses
  %.0108193 = phi ptr [ %.1109, %bb.h ], [ @.str.215, %bb.a ] ; 4 uses
  %.0111192 = phi i1 [ %.1112, %bb.h ], [ false, %bb.a ] ; 4 uses
  switch i32 %i.c, label %bb.g [
    i32 104, label %bb.b
    i32 102, label %bb.c
    i32 259, label %bb.h
    i32 79, label %bb.d
    i32 85, label %bb.e
    i32 258, label %bb.f
  ]

bb.b:                                             ; preds = %.lr.ph
  %.val = load ptr, ptr %0, align 8
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val163 = load ptr, ptr %i.d, align 8
  call fastcc void @cmd_help(ptr %.val, ptr %.val163, ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.293) #23
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.e = load ptr, ptr @optarg, align 8
  br label %bb.h

bb.d:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr @optarg, align 8
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.g = load ptr, ptr @optarg, align 8
  call void @user_creatable_process_cmdline(ptr noundef %i.g) #22
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %2, align 8
  call fastcc void @tryhelp(ptr noundef %i.h) #23
  unreachable

bb.h:                                             ; preds = %.lr.ph, %bb.f, %bb.e, %bb.d, %bb.c
  %.1112 = phi i1 [ %.0111192, %bb.c ], [ %.0111192, %bb.f ], [ %.0111192, %bb.d ], [ %.0111192, %bb.e ], [ true, %.lr.ph ] ; 2 uses
  %.1109 = phi ptr [ %.0108193, %bb.c ], [ %.0108193, %bb.f ], [ %i.f, %bb.d ], [ %.0108193, %bb.e ], [ %.0108193, %.lr.ph ] ; 2 uses
  %.1107 = phi ptr [ %i.e, %bb.c ], [ %.0106194, %bb.f ], [ %.0106194, %bb.d ], [ %.0106194, %bb.e ], [ %.0106194, %.lr.ph ] ; 2 uses
  %.1100 = phi i1 [ %.099195, %bb.c ], [ %.099195, %bb.f ], [ %.099195, %bb.d ], [ true, %bb.e ], [ %.099195, %.lr.ph ] ; 2 uses
  %i.i = call i32 @getopt_long(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.291, ptr noundef nonnull %7, ptr noundef null) #22 ; 2 uses
  %i.j = add i32 %i.i, 1
  %or.cond = icmp ult i32 %i.j, 2
  br i1 %or.cond, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.0111.lcssa = phi i1 [ false, %bb.a ], [ %.1112, %bb.h ]
  %.0108.lcssa = phi ptr [ @.str.215, %bb.a ], [ %.1109, %bb.h ] ; 2 uses
  %.0106.lcssa = phi ptr [ null, %bb.a ], [ %.1107, %bb.h ]
  %.099.lcssa = phi i1 [ false, %bb.a ], [ %.1100, %bb.h ]
  %i.k = load i32, ptr @optind, align 4           ; 2 uses
  %i.l = icmp slt i32 %i.k, %1
  br i1 %i.l, label %.lr.ph202.preheader, label %._crit_edge203

.lr.ph202.preheader:                              ; preds = %._crit_edge
  %i.m = sext i32 %i.k to i64
  br label %.lr.ph202

.lr.ph202:                                        ; preds = %bb.q, %.lr.ph202.preheader
  %indvars.iv = phi i64 [ %i.m, %.lr.ph202.preheader ], [ %indvars.iv.next, %bb.q ] ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noalias ptr @g_strdup(ptr noundef %i.o) #22 ; 12 uses
  %i.q = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 61) #25 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph202
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.294, ptr noundef nonnull %i.p) #22
  br label %.thread

bb.j:                                             ; preds = %.lr.ph202
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %i.q, align 1
  %8 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(3) @.str.286) #25
  %.not154 = icmp eq i32 %8, 0
  br i1 %.not154, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(6) @.str.80) #25
  %.not154.1 = icmp eq i32 %i.t, 0
  br i1 %.not154.1, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(3) @.str.287) #25
  %.not154.2 = icmp eq i32 %i.u, 0
  br i1 %.not154.2, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(3) @.str.288) #25
  %.not154.3 = icmp eq i32 %i.v, 0
  br i1 %.not154.3, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(5) @.str.289) #25
  %.not154.4 = icmp eq i32 %i.w, 0
  br i1 %.not154.4, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.294, ptr noundef nonnull %i.p) #22
  br label %.thread

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.lcssa214 = phi ptr [ @__const.img_dd.options, %bb.j ], [ getelementptr inbounds nuw (i8, ptr @__const.img_dd.options, i64 24), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @__const.img_dd.options, i64 48), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @__const.img_dd.options, i64 72), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @__const.img_dd.options, i64 96), %bb.n ] ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.lcssa214, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = call i32 %10(ptr noundef nonnull %i.s, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %4) #22
  %.not155 = icmp eq i32 %11, 0
  br i1 %.not155, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %12 = getelementptr inbounds nuw i8, ptr %.lcssa214, i64 16
  %13 = load i32, ptr %12, align 8
  %14 = load i32, ptr %4, align 8
  %15 = or i32 %14, %13
  store i32 %15, ptr %4, align 8
  call void @g_free(ptr noundef nonnull %i.p) #22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge203, label %.lr.ph202, !llvm.loop !23

._crit_edge203:                                   ; preds = %bb.q, %._crit_edge
  %16 = load i32, ptr %4, align 8
  %i.x = and i32 %16, 12
  %or.cond157.not = icmp eq i32 %i.x, 12
  br i1 %or.cond157.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge203
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.295) #22
  br label %.thread

bb.s:                                             ; preds = %._crit_edge203
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %18 = load ptr, ptr %17, align 8
  %i.y = call fastcc ptr @img_open(i1 noundef zeroext %.0111.lcssa, ptr noundef %18, ptr noundef %.0106.lcssa, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %.099.lcssa) ; 15 uses
  %.not143 = icmp eq ptr %i.y, null
  br i1 %.not143, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = call ptr @bdrv_find_format(ptr noundef %.0108.lcssa) #22 ; 4 uses
  %.not144 = icmp eq ptr %i.z, null
  br i1 %.not144, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.296) #22
  br label %.thread

bb.v:                                             ; preds = %bb.t
  %19 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %20 = load ptr, ptr %19, align 8
  %i.aa = call ptr @bdrv_find_protocol(ptr noundef %20, i1 noundef zeroext true, ptr noundef nonnull %3) #22 ; 3 uses
  %.not145 = icmp eq ptr %i.aa, null
  br i1 %.not145, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ab = load ptr, ptr %3, align 8
  call void @error_report_err(ptr noundef %i.ab) #22
  br label %.thread

bb.x:                                             ; preds = %bb.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not146 = icmp eq ptr %i.ad, null
  br i1 %.not146, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ae = load ptr, ptr %i.z, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.230, ptr noundef %i.ae) #22
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8
  %.not147 = icmp eq ptr %i.ag, null
  br i1 %.not147, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ah = load ptr, ptr %i.aa, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.231, ptr noundef %i.ah) #22
  br label %.thread

bb.ab:                                            ; preds = %bb.z
  %i.ai = call ptr @qemu_opts_append(ptr noundef null, ptr noundef nonnull %i.ad) #22
  %i.aj = load ptr, ptr %i.af, align 8
  %i.ak = call ptr @qemu_opts_append(ptr noundef %i.ai, ptr noundef %i.aj) #22 ; 9 uses
  %i.al = call ptr @qemu_opts_create(ptr noundef %i.ak, ptr noundef null, i32 noundef 0, ptr noundef nonnull @error_abort) #22 ; 10 uses
  %i.am = call i64 @blk_getlength(ptr noundef nonnull %i.y) #22 ; 4 uses
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %21 = load ptr, ptr %17, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.297, ptr noundef %21) #22
  br label %.thread

bb.ad:                                            ; preds = %bb.ab
  %22 = load i32, ptr %4, align 8                 ; 2 uses
  %i.ao = and i32 %22, 2
  %.not148 = icmp eq i32 %i.ao, 0
  %.pre.pre = load i32, ptr %5, align 8           ; 2 uses
  br i1 %.not148, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %24 = load i64, ptr %23, align 8                ; 2 uses
  %25 = sext i32 %.pre.pre to i64                 ; 2 uses
  %i.ap = sdiv i64 9223372036854775807, %25
  %.not149 = icmp sgt i64 %24, %i.ap
  br i1 %.not149, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aq = mul i64 %24, %25
  %spec.select = call i64 @llvm.smin.i64(i64 %i.aq, i64 %i.am)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %.0105 = phi i64 [ %i.am, %bb.ad ], [ %spec.select, %bb.af ], [ %i.am, %bb.ae ] ; 7 uses
  %i.ar = and i32 %22, 16
  %.not150 = icmp eq i32 %i.ar, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre226 = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.pre = sext i32 %.pre.pre to i64               ; 3 uses
  br i1 %.not150, label %._crit_edge225, label %bb.ah

._crit_edge225:                                   ; preds = %bb.ag
  %.pre232 = mul i64 %.pre226, %.pre
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.as = sdiv i64 9223372036854775807, %.pre
  %i.at = icmp sgt i64 %.pre226, %i.as
  %i.au = mul i64 %.pre226, %.pre                 ; 2 uses
  %i.av = icmp slt i64 %.0105, %i.au
  %or.cond159 = or i1 %i.at, %i.av
  br i1 %or.cond159, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge225, %bb.ah
  %.pre-phi233 = phi i64 [ %.pre232, %._crit_edge225 ], [ %i.au, %bb.ah ]
  %i.aw = sub i64 %.0105, %.pre-phi233
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sink = phi i64 [ %i.aw, %bb.ai ], [ 0, %bb.ah ]
  %i.ax = call zeroext i1 @qemu_opt_set_number(ptr noundef %i.al, ptr noundef nonnull @.str.232, i64 noundef %.sink, ptr noundef nonnull @error_abort) #22 ; 0 uses
  %26 = load ptr, ptr %19, align 8
  %i.ay = call i32 @bdrv_create(ptr noundef nonnull %i.z, ptr noundef %26, ptr noundef %i.al, ptr noundef nonnull %3) #22 ; 3 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %27 = load ptr, ptr %3, align 8
  %i.ba = load ptr, ptr %19, align 8
  call void (ptr, ptr, ...) @error_reportf_err(ptr noundef %27, ptr noundef nonnull @.str.298, ptr noundef %i.ba) #22
  br label %.thread

bb.al:                                            ; preds = %bb.aj
  %28 = load ptr, ptr %19, align 8
  %i.bb = call fastcc ptr @img_open_file(ptr noundef %28, ptr noundef null, ptr noundef %.0108.lcssa, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext false) ; 7 uses
  %.not151 = icmp eq ptr %i.bb, null
  br i1 %.not151, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %29 = load i32, ptr %4, align 8
  %30 = and i32 %29, 16
  %.not152 = icmp eq i32 %30, 0
  %.phi.trans.insert228 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.pre229 = load i64, ptr %.phi.trans.insert228, align 8 ; 3 uses
  %.pre230 = load i32, ptr %5, align 8
  %.pre234 = sext i32 %.pre230 to i64             ; 4 uses
  br i1 %.not152, label %._crit_edge227, label %bb.an

._crit_edge227:                                   ; preds = %bb.am
  %.pre236 = mul i64 %.pre229, %.pre234
  br label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.bc = sdiv i64 9223372036854775807, %.pre234
  %i.bd = icmp sgt i64 %.pre229, %i.bc
  %i.be = mul i64 %.pre229, %.pre234              ; 2 uses
  %i.bf = icmp slt i64 %.0105, %i.be
  %or.cond161 = or i1 %i.bd, %i.bf
  br i1 %or.cond161, label %.thread258, label %bb.ao

.thread258:                                       ; preds = %bb.an
  %31 = load ptr, ptr %17, align 8
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.299, ptr noundef %31) #22
  %.pre231 = load i32, ptr %5, align 8
  %.pre238 = sext i32 %.pre231 to i64
  %i.bg = call noalias ptr @g_malloc(i64 noundef %.pre238) #28
  %32 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.bg, ptr %32, align 8
  br label %.thread

bb.ao:                                            ; preds = %bb.an, %._crit_edge227
  %.0101 = phi i64 [ %i.be, %bb.an ], [ %.pre236, %._crit_edge227 ] ; 2 uses
  %i.bh = call noalias ptr @g_malloc(i64 noundef %.pre234) #28
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.bh, ptr %33, align 8
  %i.bi = icmp slt i64 %.0101, %.0105
  br i1 %i.bi, label %.lr.ph207, label %.thread

.lr.ph207:                                        ; preds = %bb.ao, %bb.as
  %.1102205 = phi i64 [ %i.bx, %bb.as ], [ %.0101, %bb.ao ] ; 4 uses
  %.0103204 = phi i64 [ %i.by, %bb.as ], [ 0, %bb.ao ] ; 2 uses
  %34 = load i32, ptr %5, align 8                 ; 2 uses
  %35 = sext i32 %34 to i64
  %i.bj = add i64 %.1102205, %35
  %i.bk = icmp sgt i64 %i.bj, %.0105
  %i.bl = sub i64 %.0105, %.1102205
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = select i1 %i.bk, i32 %i.bm, i32 %34
  %i.bo = sext i32 %i.bn to i64                   ; 4 uses
  %36 = load ptr, ptr %33, align 8
  %i.bp = call i32 @blk_pread(ptr noundef nonnull %i.y, i64 noundef %.1102205, i64 noundef %i.bo, ptr noundef %36, i32 noundef 0) #22 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph207
  %i.br = sub i32 0, %i.bp
  %i.bs = call ptr @strerror(i32 noundef %i.br) #22
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.300, ptr noundef %i.bs) #22
  br label %.thread

bb.aq:                                            ; preds = %.lr.ph207
  %37 = load ptr, ptr %33, align 8
  %i.bt = call i32 @blk_pwrite(ptr noundef nonnull %i.bb, i64 noundef %.0103204, i64 noundef %i.bo, ptr noundef %37, i32 noundef 0) #22 ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.bv = sub i32 0, %i.bt
  %i.bw = call ptr @strerror(i32 noundef %i.bv) #22
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.301, ptr noundef %i.bw) #22
  br label %.thread

bb.as:                                            ; preds = %bb.aq
  %i.bx = add i64 %.1102205, %i.bo                ; 2 uses
  %i.by = add i64 %.0103204, %i.bo
  %i.bz = icmp slt i64 %i.bx, %.0105
  br i1 %i.bz, label %.lr.ph207, label %.thread

.thread:                                          ; preds = %bb.p, %bb.as, %.thread258, %bb.ao, %bb.ar, %bb.ap, %bb.o, %bb.i, %bb.al, %bb.s, %bb.ak, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.r
  %.4 = phi i32 [ -1, %bb.al ], [ -1, %bb.ac ], [ -1, %bb.ak ], [ %i.ay, %.thread258 ], [ -1, %bb.ap ], [ -1, %bb.s ], [ -1, %bb.aa ], [ -1, %bb.y ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.r ], [ -1, %bb.i ], [ -1, %bb.o ], [ -1, %bb.ar ], [ %i.ay, %bb.ao ], [ %i.bt, %bb.as ], [ -1, %bb.p ]
  %.2119 = phi ptr [ null, %bb.al ], [ null, %bb.ac ], [ null, %bb.ak ], [ null, %.thread258 ], [ null, %bb.ap ], [ null, %bb.s ], [ null, %bb.aa ], [ null, %bb.y ], [ null, %bb.w ], [ null, %bb.u ], [ null, %bb.r ], [ %i.p, %bb.i ], [ %i.p, %bb.o ], [ null, %bb.ar ], [ null, %bb.ao ], [ null, %bb.as ], [ %i.p, %bb.p ]
  %.0116 = phi ptr [ %i.y, %bb.al ], [ %i.y, %bb.ac ], [ %i.y, %bb.ak ], [ %i.y, %.thread258 ], [ %i.y, %bb.ap ], [ null, %bb.s ], [ %i.y, %bb.aa ], [ %i.y, %bb.y ], [ %i.y, %bb.w ], [ %i.y, %bb.u ], [ null, %bb.r ], [ null, %bb.i ], [ null, %bb.o ], [ %i.y, %bb.ar ], [ %i.y, %bb.ao ], [ %i.y, %bb.as ], [ null, %bb.p ]
  %.0115 = phi ptr [ null, %bb.al ], [ null, %bb.ac ], [ null, %bb.ak ], [ %i.bb, %.thread258 ], [ %i.bb, %bb.ap ], [ null, %bb.s ], [ null, %bb.aa ], [ null, %bb.y ], [ null, %bb.w ], [ null, %bb.u ], [ null, %bb.r ], [ null, %bb.i ], [ null, %bb.o ], [ %i.bb, %bb.ar ], [ %i.bb, %bb.ao ], [ %i.bb, %bb.as ], [ null, %bb.p ]
  %.0114 = phi ptr [ %i.al, %bb.al ], [ %i.al, %bb.ac ], [ %i.al, %bb.ak ], [ %i.al, %.thread258 ], [ %i.al, %bb.ap ], [ null, %bb.s ], [ null, %bb.aa ], [ null, %bb.y ], [ null, %bb.w ], [ null, %bb.u ], [ null, %bb.r ], [ null, %bb.i ], [ null, %bb.o ], [ %i.al, %bb.ar ], [ %i.al, %bb.ao ], [ %i.al, %bb.as ], [ null, %bb.p ]
  %.0113 = phi ptr [ %i.ak, %bb.al ], [ %i.ak, %bb.ac ], [ %i.ak, %bb.ak ], [ %i.ak, %.thread258 ], [ %i.ak, %bb.ap ], [ null, %bb.s ], [ null, %bb.aa ], [ null, %bb.y ], [ null, %bb.w ], [ null, %bb.u ], [ null, %bb.r ], [ null, %bb.i ], [ null, %bb.o ], [ %i.ak, %bb.ar ], [ %i.ak, %bb.ao ], [ %i.ak, %bb.as ], [ null, %bb.p ]
  call void @g_free(ptr noundef %.2119) #22
  call void @qemu_opts_del(ptr noundef %.0114) #22
  call void @qemu_opts_free(ptr noundef %.0113) #22
  call void @blk_unref(ptr noundef %.0116) #22
  call void @blk_unref(ptr noundef %.0115) #22
  %38 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %39 = load ptr, ptr %38, align 8
  call void @g_free(ptr noundef %39) #22
  %40 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %41 = load ptr, ptr %40, align 8
  call void @g_free(ptr noundef %41) #22
  %42 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %43 = load ptr, ptr %42, align 8
  call void @g_free(ptr noundef %43) #22
  %44 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %45 = load ptr, ptr %44, align 8
  call void @g_free(ptr noundef %45) #22
  %.4.fr = freeze i32 %.4
  %.not156 = icmp ne i32 %.4.fr, 0
  %spec.select173 = zext i1 %.not156 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i32 %spec.select173
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @img_info(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 12 uses
  %i.f = alloca i32, align 4                      ; 10 uses
  %i.g = alloca i8, align 1                       ; 10 uses
  %i.h = alloca ptr, align 8                      ; 16 uses
  br label %parse_output_format.exit

parse_output_format.exit:                         ; preds = %parse_output_format.exit.backedge, %bb.a
  %.034 = phi i32 [ 1, %bb.a ], [ %.034.be, %parse_output_format.exit.backedge ] ; 8 uses
  %.032 = phi i1 [ false, %bb.a ], [ %.032.be, %parse_output_format.exit.backedge ] ; 10 uses
  %.030 = phi ptr [ null, %bb.a ], [ %.030.be, %parse_output_format.exit.backedge ] ; 10 uses
  %.028 = phi ptr [ @.str.46, %bb.a ], [ %.028.be, %parse_output_format.exit.backedge ] ; 10 uses
  %.026 = phi i1 [ false, %bb.a ], [ %.026.be, %parse_output_format.exit.backedge ] ; 10 uses
  %.024 = phi i1 [ false, %bb.a ], [ %.024.be, %parse_output_format.exit.backedge ] ; 11 uses
  %.0 = phi i1 [ false, %bb.a ], [ %.0.be, %parse_output_format.exit.backedge ] ; 11 uses
  %i.i = tail call i32 @getopt_long(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.304, ptr noundef nonnull @img_info.long_options, ptr noundef null) #22
  switch i32 %i.i, label %bb.l [
    i32 -1, label %bb.m
    i32 104, label %bb.b
    i32 102, label %bb.c
    i32 259, label %parse_output_format.exit.backedge
    i32 257, label %bb.d
    i32 116, label %bb.e
    i32 85, label %bb.f
    i32 278, label %bb.g
    i32 256, label %bb.h
    i32 258, label %bb.k
  ]

bb.b:                                             ; preds = %parse_output_format.exit
  %.val = load ptr, ptr %0, align 8
  %i.j = getelementptr i8, ptr %0, i64 16
  %.val41 = load ptr, ptr %i.j, align 8
  tail call fastcc void @cmd_help(ptr %.val, ptr %.val41, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.306) #23
  unreachable

bb.c:                                             ; preds = %parse_output_format.exit
  %i.k = load ptr, ptr @optarg, align 8
  br label %parse_output_format.exit.backedge

bb.d:                                             ; preds = %parse_output_format.exit
  br label %parse_output_format.exit.backedge

bb.e:                                             ; preds = %parse_output_format.exit
  %i.l = load ptr, ptr @optarg, align 8
  br label %parse_output_format.exit.backedge

bb.f:                                             ; preds = %parse_output_format.exit
  br label %parse_output_format.exit.backedge

bb.g:                                             ; preds = %parse_output_format.exit
  br label %parse_output_format.exit.backedge

bb.h:                                             ; preds = %parse_output_format.exit
  %i.m = load ptr, ptr @optarg, align 8           ; 3 uses
  %i.n = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(5) @.str.149) #25
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %parse_output_format.exit.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(6) @.str.150) #25
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %parse_output_format.exit.backedge, label %bb.j

parse_output_format.exit.backedge:                ; preds = %bb.i, %bb.h, %parse_output_format.exit, %bb.k, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.034.be = phi i32 [ %.034, %bb.c ], [ %.034, %bb.k ], [ %.034, %bb.d ], [ %.034, %bb.e ], [ %.034, %bb.f ], [ %.034, %bb.g ], [ %.034, %parse_output_format.exit ], [ 0, %bb.h ], [ 1, %bb.i ]
  %.032.be = phi i1 [ %.032, %bb.c ], [ %.032, %bb.k ], [ true, %bb.d ], [ %.032, %bb.e ], [ %.032, %bb.f ], [ %.032, %bb.g ], [ %.032, %parse_output_format.exit ], [ %.032, %bb.h ], [ %.032, %bb.i ]
  %.030.be = phi ptr [ %i.k, %bb.c ], [ %.030, %bb.k ], [ %.030, %bb.d ], [ %.030, %bb.e ], [ %.030, %bb.f ], [ %.030, %bb.g ], [ %.030, %parse_output_format.exit ], [ %.030, %bb.h ], [ %.030, %bb.i ]
  %.028.be = phi ptr [ %.028, %bb.c ], [ %.028, %bb.k ], [ %.028, %bb.d ], [ %i.l, %bb.e ], [ %.028, %bb.f ], [ %.028, %bb.g ], [ %.028, %parse_output_format.exit ], [ %.028, %bb.h ], [ %.028, %bb.i ]
  %.026.be = phi i1 [ %.026, %bb.c ], [ %.026, %bb.k ], [ %.026, %bb.d ], [ %.026, %bb.e ], [ %.026, %bb.f ], [ %.026, %bb.g ], [ true, %parse_output_format.exit ], [ %.026, %bb.h ], [ %.026, %bb.i ]
  %.024.be = phi i1 [ %.024, %bb.c ], [ %.024, %bb.k ], [ %.024, %bb.d ], [ %.024, %bb.e ], [ true, %bb.f ], [ %.024, %bb.g ], [ %.024, %parse_output_format.exit ], [ %.024, %bb.h ], [ %.024, %bb.i ]
  %.0.be = phi i1 [ %.0, %bb.c ], [ %.0, %bb.k ], [ %.0, %bb.d ], [ %.0, %bb.e ], [ %.0, %bb.f ], [ true, %bb.g ], [ %.0, %parse_output_format.exit ], [ %.0, %bb.h ], [ %.0, %bb.i ]
  br label %parse_output_format.exit

bb.j:                                             ; preds = %bb.i
  %i.p = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @error_exit(ptr noundef %i.p, ptr noundef nonnull @.str.151, ptr noundef nonnull %i.m) #23
  unreachable

bb.k:                                             ; preds = %parse_output_format.exit
  %i.q = load ptr, ptr @optarg, align 8
  tail call void @user_creatable_process_cmdline(ptr noundef %i.q) #22
  br label %parse_output_format.exit.backedge

bb.l:                                             ; preds = %parse_output_format.exit
  %i.r = load ptr, ptr %2, align 8
  tail call fastcc void @tryhelp(ptr noundef %i.r) #23
  unreachable

bb.m:                                             ; preds = %parse_output_format.exit
  %i.s = load i32, ptr @optind, align 4           ; 3 uses
  %i.t = add i32 %1, -1
  %.not = icmp eq i32 %i.s, %i.t
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ...) @error_exit(ptr noundef %i.u, ptr noundef nonnull @.str.59) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.v = add i32 %i.s, 1
  store i32 %i.v, ptr @optind, align 4
  %i.w = sext i32 %i.s to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr null, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i8 0, ptr %i.g, align 1
  %i.z = call i32 @bdrv_parse_cache_mode(ptr noundef %.028, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #22
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.60, ptr noundef %.028) #22
  br label %collect_image_info_list.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.ab = call ptr @g_hash_table_new_full(ptr noundef nonnull @g_str_hash, ptr noundef nonnull @str_equal_func, ptr noundef null, ptr noundef null) #22 ; 9 uses
  %.not61.i = icmp eq ptr %i.y, null
  br i1 %.not61.i, label %collect_image_info_list.exit.thread51, label %.lr.ph.i

collect_image_info_list.exit.thread51:            ; preds = %bb.q
  call void @g_hash_table_destroy(ptr noundef %i.ab) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  br label %bb.as

.lr.ph.i:                                         ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store ptr null, ptr %i.h, align 8
  %i.ac = call i32 @g_hash_table_lookup_extended(ptr noundef %i.ab, ptr noundef nonnull %i.y, ptr noundef null, ptr noundef null) #22
  %.not41.us.peel.i = icmp eq i32 %i.ac, 0        ; 2 uses
  br i1 %.032, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  br i1 %.not41.us.peel.i, label %bb.r, label %.split.us.i

bb.r:                                             ; preds = %.lr.ph.split.us.preheader.i
  %i.ad = call i32 @g_hash_table_insert(ptr noundef %i.ab, ptr noundef nonnull %i.y, ptr noundef null) #22 ; 0 uses
  %i.ae = load i32, ptr %i.f, align 4
  %i.af = or i32 %i.ae, 65792
  %i.ag = load i8, ptr %i.g, align 1, !range !12, !noundef !13
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = call fastcc ptr @img_open(i1 noundef zeroext %.026, ptr noundef nonnull %i.y, ptr noundef %.030, i32 noundef %i.af, i1 noundef zeroext %i.ah, i1 noundef zeroext %.024) ; 4 uses
  %.not42.us.peel.i = icmp eq ptr %i.ai, null
  br i1 %.not42.us.peel.i, label %.loopexit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = call ptr @blk_bs(ptr noundef nonnull %i.ai) #22
  call void @bdrv_graph_rdlock_main_loop() #22
  call void @bdrv_query_block_graph_info(ptr noundef %i.aj, ptr noundef nonnull %i.h, i1 noundef zeroext %.0, ptr noundef nonnull %i.e) #22
  call void @bdrv_graph_rdunlock_main_loop() #22
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not43.us.peel.i = icmp eq ptr %i.ak, null
  br i1 %.not43.us.peel.i, label %bb.t, label %.split67.us.i

bb.t:                                             ; preds = %bb.s
  %i.al = call noalias dereferenceable_or_null(16) ptr @g_malloc0(i64 noundef 16) #28 ; 9 uses
  %i.am = load ptr, ptr %i.h, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.am, ptr %i.an, align 8
  call void @blk_unref(ptr noundef nonnull %i.ai) #22
  %i.ao = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not44.us.peel.i = icmp eq ptr %i.aq, null
  br i1 %.not44.us.peel.i, label %bb.u, label %.lr.ph.split.us.i

bb.u:                                             ; preds = %bb.t
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not45.us.peel.i = icmp eq ptr %i.as, null
  br i1 %.not45.us.peel.i, label %collect_image_info_list.exit.thread55, label %.split71.us.i

.lr.ph.split.us.i:                                ; preds = %bb.t, %bb.x
  %.sink106.i = phi ptr [ %i.bi, %bb.x ], [ %i.ao, %bb.t ]
  %.02665.us.i = phi ptr [ %i.bh, %bb.x ], [ %i.al, %bb.t ] ; 2 uses
  %.03063.us.i = phi ptr [ %i.bk, %bb.x ], [ %i.aq, %bb.t ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sink106.i, i64 80
  %i.au = load ptr, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store ptr null, ptr %i.h, align 8, !annotation !11
  %i.av = call i32 @g_hash_table_lookup_extended(ptr noundef %i.ab, ptr noundef nonnull %.03063.us.i, ptr noundef null, ptr noundef null) #22
  %.not41.us.i = icmp eq i32 %i.av, 0
  br i1 %.not41.us.i, label %bb.v, label %.split.us.i
end_hunk_1
