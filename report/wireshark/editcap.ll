Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/editcap?download=true
inline.NumInlined: 27
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0
@.str.80 = private unnamed_addr constant [13 x i8] c"Packet: %lu\0A\00", align 1
@previous_time = internal global %struct.nstime_t zeroinitializer, align 8
@strict_time_adj.0 = internal unnamed_addr global i64 0, align 8
@strict_time_adj.1 = internal unnamed_addr global i32 0, align 8
@strict_time_adj.2 = internal unnamed_addr global i1 false, align 8
@time_adj.0 = internal unnamed_addr global i64 0, align 8
@time_adj.1 = internal unnamed_addr global i32 0, align 8
@time_adj.2 = internal unnamed_addr global i1 false, align 8
@.str.81 = private unnamed_addr constant [34 x i8] c"Skipped: %lu, Len: %u, MD5 Hash: \00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@cur_dup_entry = internal unnamed_addr global i32 0, align 4
@.str.83 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"Packet: %lu, Len: %u, MD5 Hash: \00", align 1
@.str.85 = private unnamed_addr constant [34 x i8] c"New timestamp for packet %lu: %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [56 x i8] c"Couldn't use replacement timestamp \22%s\22 for packet %lu\0A\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"Total selected: %lu\0A\00", align 1
@.str.88 = private unnamed_addr constant [78 x i8] c"%lu packet%s seen, %lu packet%s skipped with duplicate window of %i packets.\0A\00", align 1
@.str.89 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.91 = private unnamed_addr constant [109 x i8] c"%lu packet%s seen, %lu packet%s skipped with duplicate time window equal to or less than %ld.%09ld seconds.\0A\00", align 1
@relative_time_window = internal global %struct.nstime_t zeroinitializer, align 8
@.str.92 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"ssh\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"wg\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"opcua\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"esp\00", align 1
@secrets_types = internal unnamed_addr constant [5 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.93, i32 1414288203, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.94, i32 1397966923, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.95, i32 1464290124, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.96, i32 1430342476, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.97, i32 1163087955, [4 x i8] zeroinitializer }], align 16
@.str.99 = private unnamed_addr constant [79 x i8] c"editcap: The available output compress type(s) for the \22--compress\22 flag are:\0A\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"   %s\0A\00", align 1
@.str.101 = private unnamed_addr constant [66 x i8] c"editcap: The available capture file types for the \22-F\22 flag are:\0A\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"    %s - %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [79 x i8] c"Usage: editcap [options] ... <infile> <outfile> [ <packet#>[-<packet#>] ... ]\0A\00", align 1
@.str.104 = private unnamed_addr constant [75 x i8] c"<infile> and <outfile> must both be present; use '-' for stdin or stdout.\0A\00", align 1
@.str.105 = private unnamed_addr constant [56 x i8] c"A single packet or a range of packets can be selected.\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"Packet selection:\0A\00", align 1
@.str.107 = private unnamed_addr constant [80 x i8] c"  -r                     keep the selected packets; default is to delete them.\0A\00", align 1
@.str.108 = private unnamed_addr constant [79 x i8] c"  -A <start time>        only read packets whose timestamp is after (or equal\0A\00", align 1
@.str.109 = private unnamed_addr constant [46 x i8] c"                         to) the given time.\0A\00", align 1
@.str.110 = private unnamed_addr constant [74 x i8] c"  -B <stop time>         only read packets whose timestamp is before the\0A\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"                         given time.\0A\00", align 1
@.str.112 = private unnamed_addr constant [62 x i8] c"                         Time format for -A/-B/-R options is\0A\00", align 1
@.str.113 = private unnamed_addr constant [69 x i8] c"                         YYYY-MM-DDThh:mm:ss[.nnnnnnnnn][Z|+-hh:mm]\0A\00", align 1
@.str.114 = private unnamed_addr constant [68 x i8] c"                         Unix epoch timestamps are also supported.\0A\00", align 1
@.str.115 = private unnamed_addr constant [27 x i8] c"Duplicate packet removal:\0A\00", align 1
@.str.116 = private unnamed_addr constant [88 x i8] c"  --novlan               remove vlan info from packets before checking for duplicates.\0A\00", align 1
@.str.117 = private unnamed_addr constant [69 x i8] c"  -d                     remove packet if duplicate (window == %d).\0A\00", align 1
@.str.118 = private unnamed_addr constant [81 x i8] c"  -D <dup window>        remove packet if duplicate; configurable <dup window>.\0A\00", align 1
@.str.119 = private unnamed_addr constant [65 x i8] c"                         Valid <dup window> values are 0 to %d.\0A\00", align 1
@.str.120 = private unnamed_addr constant [80 x i8] c"                         NOTE: A <dup window> of 0 with -V (verbose option) is\0A\00", align 1
@.str.121 = private unnamed_addr constant [54 x i8] c"                         useful to print MD5 hashes.\0A\00", align 1
@.str.122 = private unnamed_addr constant [81 x i8] c"  -w <dup time window>   remove packet if duplicate packet is found EQUAL TO OR\0A\00", align 1
@.str.123 = private unnamed_addr constant [79 x i8] c"                         LESS THAN <dup time window> prior to current packet.\0A\00", align 1
@.str.124 = private unnamed_addr constant [79 x i8] c"                         A <dup time window> is specified in relative seconds\0A\00", align 1
@.str.125 = private unnamed_addr constant [43 x i8] c"                         (e.g. 0.000001).\0A\00", align 1
@.str.126 = private unnamed_addr constant [73 x i8] c"           NOTE: The use of the 'Duplicate packet removal' options with\0A\00", align 1
@.str.127 = private unnamed_addr constant [77 x i8] c"           other editcap options except -V may not always work as expected.\0A\00", align 1
@.str.128 = private unnamed_addr constant [80 x i8] c"           Specifically the -r, -t or -S options will very likely NOT have the\0A\00", align 1
@.str.129 = private unnamed_addr constant [62 x i8] c"           desired effect if combined with the -d, -D or -w.\0A\00", align 1
@.str.130 = private unnamed_addr constant [84 x i8] c"  --skip-radiotap-header skip radiotap header when checking for packet duplicates.\0A\00", align 1
@.str.131 = private unnamed_addr constant [85 x i8] c"                         Useful when processing packets captured by multiple radios\0A\00", align 1
@.str.132 = private unnamed_addr constant [77 x i8] c"                         on the same channel in the vicinity of each other.\0A\00", align 1
@.str.133 = private unnamed_addr constant [68 x i8] c"  --set-unused           set unused byts to zero in sll link addr.\0A\00", align 1
@.str.134 = private unnamed_addr constant [22 x i8] c"Packet manipulation:\0A\00", align 1
@.str.135 = private unnamed_addr constant [80 x i8] c"  -s <snaplen>           truncate each packet to max. <snaplen> bytes of data.\0A\00", align 1
@.str.136 = private unnamed_addr constant [82 x i8] c"  --sctp-split           split SCTP bundled DATA chunks into individual packets.\0A\00", align 1
@.str.137 = private unnamed_addr constant [79 x i8] c"  -C [offset:]<choplen>  chop each packet by <choplen> bytes. Positive values\0A\00", align 1
@.str.138 = private unnamed_addr constant [79 x i8] c"                         chop at the packet beginning, negative values at the\0A\00", align 1
@.str.139 = private unnamed_addr constant [81 x i8] c"                         packet end. If an optional offset precedes the length,\0A\00", align 1
@.str.140 = private unnamed_addr constant [81 x i8] c"                         then the bytes chopped will be offset from that value.\0A\00", align 1
@.str.141 = private unnamed_addr constant [74 x i8] c"                         Positive offsets are from the packet beginning,\0A\00", align 1
@.str.142 = private unnamed_addr constant [80 x i8] c"                         negative offsets are from the packet end. You can use\0A\00", align 1
@.str.143 = private unnamed_addr constant [80 x i8] c"                         this option more than once, allowing up to 2 chopping\0A\00", align 1
@.str.144 = private unnamed_addr constant [75 x i8] c"                         regions within a packet provided that at least 1\0A\00", align 1
@.str.145 = private unnamed_addr constant [74 x i8] c"                         choplen is positive and at least 1 is negative.\0A\00", align 1
@.str.146 = private unnamed_addr constant [80 x i8] c"  -L                     adjust the frame (i.e. reported) length when chopping\0A\00", align 1
@.str.147 = private unnamed_addr constant [43 x i8] c"                         and/or snapping.\0A\00", align 1
@.str.148 = private unnamed_addr constant [72 x i8] c"  -R <framenum>:<time>   replace the timestamp for given frame number.\0A\00", align 1
@.str.149 = private unnamed_addr constant [81 x i8] c"                         Accept the same time format as used for -A/-B options.\0A\00", align 1
@.str.150 = private unnamed_addr constant [63 x i8] c"  -t <time adjustment>   adjust the timestamp of each packet.\0A\00", align 1
@.str.151 = private unnamed_addr constant [80 x i8] c"                         <time adjustment> is in relative seconds (e.g. -0.5).\0A\00", align 1
@.str.152 = private unnamed_addr constant [77 x i8] c"  -S <strict adjustment> adjust timestamp of packets if necessary to ensure\0A\00", align 1
@.str.153 = private unnamed_addr constant [77 x i8] c"                         strict chronological increasing order. The <strict\0A\00", align 1
@.str.154 = private unnamed_addr constant [76 x i8] c"                         adjustment> is specified in relative seconds with\0A\00", align 1
@.str.155 = private unnamed_addr constant [77 x i8] c"                         values of 0 or 0.000001 being the most reasonable.\0A\00", align 1
@.str.156 = private unnamed_addr constant [80 x i8] c"                         A negative adjustment value will modify timestamps so\0A\00", align 1
@.str.157 = private unnamed_addr constant [78 x i8] c"                         that each packet's delta time is the absolute value\0A\00", align 1
@.str.158 = private unnamed_addr constant [78 x i8] c"                         of the adjustment specified. A value of -0 will set\0A\00", align 1
@.str.159 = private unnamed_addr constant [76 x i8] c"                         all packets to the timestamp of the first packet.\0A\00", align 1
@.str.160 = private unnamed_addr constant [79 x i8] c"  -E <error probability> set the probability (between 0.0 and 1.0 incl.) that\0A\00", align 1
@.str.161 = private unnamed_addr constant [77 x i8] c"                         a particular packet byte will be randomly changed.\0A\00", align 1
@.str.162 = private unnamed_addr constant [85 x i8] c"  -o <change offset>     When used in conjunction with -E, skip some bytes from the\0A\00", align 1
@.str.163 = private unnamed_addr constant [84 x i8] c"                         beginning of the packet. This allows one to preserve some\0A\00", align 1
@.str.164 = private unnamed_addr constant [74 x i8] c"                         bytes, in order to have some headers untouched.\0A\00", align 1
@.str.165 = private unnamed_addr constant [84 x i8] c"  --seed <seed>          When used in conjunction with -E, set the seed to use for\0A\00", align 1
@.str.166 = private unnamed_addr constant [81 x i8] c"                         the pseudo-random number generator. This allows one to\0A\00", align 1
@.str.167 = private unnamed_addr constant [66 x i8] c"                         repeat a particular sequence of errors.\0A\00", align 1
@.str.168 = private unnamed_addr constant [80 x i8] c"  -I <bytes to ignore>   ignore the specified number of bytes at the beginning\0A\00", align 1
@.str.169 = private unnamed_addr constant [79 x i8] c"                         of the frame during MD5 hash calculation, unless the\0A\00", align 1
@.str.170 = private unnamed_addr constant [75 x i8] c"                         frame is too short, then the full frame is used.\0A\00", align 1
@.str.171 = private unnamed_addr constant [71 x i8] c"                         Useful to remove duplicated packets taken on\0A\00", align 1
@.str.172 = private unnamed_addr constant [71 x i8] c"                         several routers (different mac addresses for\0A\00", align 1
@.str.173 = private unnamed_addr constant [36 x i8] c"                         example).\0A\00", align 1
@.str.174 = private unnamed_addr constant [69 x i8] c"                         e.g. -I 26 in case of Ether/IP will ignore\0A\00", align 1
@.str.175 = private unnamed_addr constant [79 x i8] c"                         ether(14) and IP header(20 - 4(src ip) - 4(dst ip)).\0A\00", align 1
@.str.176 = private unnamed_addr constant [81 x i8] c"  -a <framenum>:<comment> Add or replace packet comment for given frame number.\0A\00", align 1
@.str.177 = private unnamed_addr constant [79 x i8] c"                         Any pre-existing packet comments from the input file\0A\00", align 1
@.str.178 = private unnamed_addr constant [79 x i8] c"                         for the specified frame will be replaced unless used\0A\00", align 1
@.str.179 = private unnamed_addr constant [76 x i8] c"                         in conjunction with \22--preserve-packet-comments\22.\0A\00", align 1
@.str.180 = private unnamed_addr constant [29 x i8] c"  --discard-packet-comments\0A\00", align 1
@.str.181 = private unnamed_addr constant [82 x i8] c"                         Discard all pre-existing packet comments from the input\0A\00", align 1
@.str.182 = private unnamed_addr constant [79 x i8] c"                         file when writing the output file.  Does not discard\0A\00", align 1
@.str.183 = private unnamed_addr constant [79 x i8] c"                         new comments added by \22-a\22 in the same command line.\0A\00", align 1
@.str.184 = private unnamed_addr constant [30 x i8] c"  --preserve-packet-comments\0A\00", align 1
@.str.185 = private unnamed_addr constant [79 x i8] c"                         Preserve from the input file all pre-existing packet\0A\00", align 1
@.str.186 = private unnamed_addr constant [79 x i8] c"                         comments when adding a new packet comment with \22-a\22.\0A\00", align 1
@.str.187 = private unnamed_addr constant [73 x i8] c"                         Without this option each \22-a\22 will cause to be\0A\00", align 1
@.str.188 = private unnamed_addr constant [80 x i8] c"                         discarded any pre-existing comments for the specified\0A\00", align 1
@.str.189 = private unnamed_addr constant [33 x i8] c"                         frame.\0A\00", align 1
@.str.190 = private unnamed_addr constant [17 x i8] c"Output File(s):\0A\00", align 1
@.str.191 = private unnamed_addr constant [77 x i8] c"                         if the output file(s) have the .gz extension, then\0A\00", align 1
@.str.192 = private unnamed_addr constant [56 x i8] c"                         gzip compression will be used\0A\00", align 1
@.str.193 = private unnamed_addr constant [78 x i8] c"  -c <packets per file>  split the packet output to different files based on\0A\00", align 1
@.str.194 = private unnamed_addr constant [66 x i8] c"                         uniform packet counts with a maximum of\0A\00", align 1
@.str.195 = private unnamed_addr constant [51 x i8] c"                         <packets per file> each.\0A\00", align 1
@.str.196 = private unnamed_addr constant [78 x i8] c"  -i <seconds per file>  split the packet output to different files based on\0A\00", align 1
@.str.197 = private unnamed_addr constant [67 x i8] c"                         uniform time intervals with a maximum of\0A\00", align 1
@.str.198 = private unnamed_addr constant [51 x i8] c"                         <seconds per file> each.\0A\00", align 1
@.str.199 = private unnamed_addr constant [71 x i8] c"  -F <capture type>      set the output file type; default is pcapng.\0A\00", align 1
@.str.200 = private unnamed_addr constant [73 x i8] c"                         An empty \22-F\22 option will list the file types.\0A\00", align 1
@.str.201 = private unnamed_addr constant [81 x i8] c"  -T <encap type>        set the output file encapsulation type; default is the\0A\00", align 1
@.str.202 = private unnamed_addr constant [76 x i8] c"                         same as the input file. An empty \22-T\22 option will\0A\00", align 1
@.str.203 = private unnamed_addr constant [56 x i8] c"                         list the encapsulation types.\0A\00", align 1
@.str.204 = private unnamed_addr constant [79 x i8] c"  --inject-secrets <type>,<file>  Insert decryption secrets from <file>. List\0A\00", align 1
@.str.205 = private unnamed_addr constant [79 x i8] c"                         supported secret types with \22--inject-secrets help\22.\0A\00", align 1
@.str.206 = private unnamed_addr constant [83 x i8] c"  --extract-secrets      Extract decryption secrets into the output file instead.\0A\00", align 1
@.str.207 = private unnamed_addr constant [70 x i8] c"                         Incompatible with other options besides -V.\0A\00", align 1
@.str.208 = private unnamed_addr constant [77 x i8] c"  --discard-all-secrets  Discard all decryption secrets from the input file\0A\00", align 1
@.str.209 = private unnamed_addr constant [74 x i8] c"                         when writing the output file.  Does not discard\0A\00", align 1
@.str.210 = private unnamed_addr constant [74 x i8] c"                         secrets added by \22--inject-secrets\22 in the same\0A\00", align 1
@.str.211 = private unnamed_addr constant [40 x i8] c"                         command line.\0A\00", align 1
@.str.212 = private unnamed_addr constant [29 x i8] c"  --discard-name-resolution\0A\00", align 1
@.str.213 = private unnamed_addr constant [77 x i8] c"                         Discard all name resolution records from the input\0A\00", align 1
@.str.214 = private unnamed_addr constant [61 x i8] c"                         file when writing the output file.\0A\00", align 1
@.str.215 = private unnamed_addr constant [31 x i8] c"  --capture-comment <comment>\0A\00", align 1
@.str.216 = private unnamed_addr constant [68 x i8] c"                         Add a capture file comment, if supported.\0A\00", align 1
@.str.217 = private unnamed_addr constant [29 x i8] c"  --discard-capture-comment\0A\00", align 1
@.str.218 = private unnamed_addr constant [76 x i8] c"                         Discard capture file comments from the input file\0A\00", align 1
@.str.219 = private unnamed_addr constant [76 x i8] c"                         comments added by \22--capture-comment\22 in the same\0A\00", align 1
@.str.220 = private unnamed_addr constant [86 x i8] c"  --compress <type>      Compress the output file using the type compression format.\0A\00", align 1
@.str.221 = private unnamed_addr constant [16 x i8] c"Miscellaneous:\0A\00", align 1
@.str.222 = private unnamed_addr constant [54 x i8] c"  -h, --help             display this help and exit.\0A\00", align 1
@.str.223 = private unnamed_addr constant [42 x i8] c"  -V                     verbose output.\0A\00", align 1
@.str.224 = private unnamed_addr constant [74 x i8] c"                         If -V is used with any of the 'Duplicate Packet\0A\00", align 1
@.str.225 = private unnamed_addr constant [78 x i8] c"                         Removal' options (-d, -D or -w) then Packet lengths\0A\00", align 1
@.str.226 = private unnamed_addr constant [72 x i8] c"                         and MD5 hashes are printed to standard-error.\0A\00", align 1
@.str.227 = private unnamed_addr constant [62 x i8] c"  -v, --version          print version information and exit.\0A\00", align 1
@.str.228 = private unnamed_addr constant [45 x i8] c"editcap: \22%s\22 isn't a valid time adjustment\0A\00", align 1
@.str.229 = private unnamed_addr constant [67 x i8] c"editcap: The available encapsulation types for the \22-T\22 flag are:\0A\00", align 1
@.str.230 = private unnamed_addr constant [47 x i8] c"1: editcap: \22%s\22 isn't a valid rel time value\0A\00", align 1
@.str.231 = private unnamed_addr constant [47 x i8] c"2: editcap: \22%s\22 isn't a valid rel time value\0A\00", align 1
@.str.232 = private unnamed_addr constant [47 x i8] c"3: editcap: \22%s\22 isn't a valid rel time value\0A\00", align 1
@.str.233 = private unnamed_addr constant [24 x i8] c"editcap: Out of memory\0A\00", align 1
@.str.235 = private unnamed_addr constant [53 x i8] c"Writing secrets type \22%s\22 (0x%08x) to standard out.\0A\00", align 1
@.str.236 = private unnamed_addr constant [45 x i8] c"Writing secrets type \22%s\22 (0x%08x) to \22%s\22.\0A\00", align 1
@.str.237 = private unnamed_addr constant [12 x i8] c"-----BEGIN \00", align 1
@.str.238 = private unnamed_addr constant [110 x i8] c"editcap: Warning: \22%s\22 is not a key log file, but an unsupported private key file. Decryption will not work.\0A\00", align 1
@.str.239 = private unnamed_addr constant [36 x i8] c"Out of room for packet selections.\0A\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"Add_Selected: %s\0A\00", align 1
@.str.241 = private unnamed_addr constant [18 x i8] c"Not inclusive ...\00", align 1
@selectfrm = internal global [512 x %struct.select_item] zeroinitializer, align 16
@.str.242 = private unnamed_addr constant [14 x i8] c"packet number\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c" %lu\0A\00", align 1
@.str.244 = private unnamed_addr constant [14 x i8] c"Inclusive ...\00", align 1
@.str.245 = private unnamed_addr constant [26 x i8] c"beginning of packet range\00", align 1
@.str.246 = private unnamed_addr constant [20 x i8] c"end of packet range\00", align 1
@.str.247 = private unnamed_addr constant [11 x i8] c" %lu, %lu\0A\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"%05u\00", align 1
@.str.249 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.250 = private unnamed_addr constant [13 x i8] c"%Y%m%d%H%M%S\00", align 1
@.str.251 = private unnamed_addr constant [57 x i8] c"change offset %u is longer than caplen %u in packet %lu\0A\00", align 1
@.str.252 = private unnamed_addr constant [63 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\00", align 1
@.str.253 = private unnamed_addr constant [20 x i8] c"Original frame: %lu\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden range(i32 0, 4) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 9 uses
  %i.i = alloca i32, align 4                      ; 31 uses
  %i.j = alloca ptr, align 8                      ; 9 uses
  %i.k = alloca ptr, align 8                      ; 31 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %2 = alloca %struct._chop_t, align 8            ; 10 uses
  %i.n = alloca i64, align 8                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 15 uses
  %i.p = alloca i64, align 8                      ; 8 uses
  %3 = alloca %struct.nstime_t, align 8           ; 11 uses
  %4 = alloca %struct.nstime_t, align 8           ; 11 uses
  %i.q = alloca ptr, align 8                      ; 8 uses
  %i.r = alloca ptr, align 8                      ; 8 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.wtap_rec, align 8           ; 26 uses
  %6 = alloca %struct.wtap_dump_params, align 8   ; 19 uses
  %i.t = alloca ptr, align 8                      ; 3 uses
  %i.u = alloca i32, align 4                      ; 7 uses
  %i.v = alloca i32, align 4                      ; 14 uses
  %i.w = alloca ptr, align 8                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 7 uses
  %i.z = alloca i64, align 8                      ; 6 uses
  %i.aa = alloca i32, align 4                     ; 7 uses
  %7 = alloca %struct.nstime_t, align 8           ; 6 uses
  %i.ab = alloca i32, align 4                     ; 6 uses
  %i.ac = alloca i32, align 4                     ; 9 uses
  %i.ad = alloca double, align 8                  ; 5 uses
  %i.ae = alloca i64, align 8                     ; 5 uses
  %i.af = alloca i32, align 4                     ; 9 uses
  %8 = alloca %struct.nstime_t, align 8           ; 5 uses
  %i.ag = alloca ptr, align 8                     ; 8 uses
  %i.ah = alloca i64, align 8                     ; 6 uses
  %i.ai = alloca ptr, align 8                     ; 5 uses
  %i.aj = alloca ptr, align 8                     ; 7 uses
  %9 = alloca %struct.nstime_t, align 8           ; 4 uses
  %10 = alloca %struct.nstime_t, align 8          ; 5 uses
  %11 = alloca %struct.nstime_t, align 8          ; 6 uses
  %12 = alloca %struct.nstime_t, align 8          ; 6 uses
  store i32 %0, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  store i32 0, ptr %i.m, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  store i64 0, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef align 8 dereferenceable(16) @__const.main.block_next, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) @__const.main.block_next, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  store ptr null, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  store ptr null, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #18
  store i32 0, ptr %i.s, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %6, i8 0, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #18
  store i32 0, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #18
  store i32 4, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #18
  tail call void @g_set_prgname(ptr noundef @.str.26)
  tail call void @cmdarg_err_init(ptr noundef @stderr_cmdarg_err, ptr noundef @stderr_cmdarg_err_cont)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %5, i8 noundef 0, i64 noundef 296, i1 noundef false) #18
  tail call void @ws_log_init(ptr noundef @vcmdarg_err, ptr noundef @.str.27)
  %i.ak = call i32 @ws_log_parse_args(ptr noundef nonnull %i.g, ptr noundef %1, ptr noundef @main.optstring, ptr noundef @main.long_options, ptr noundef @vcmdarg_err, i32 noundef 1) ; 0 uses
  call void @init_process_policies()
  %i.al = load ptr, ptr %1, align 8
  %i.am = call ptr @configuration_init(ptr noundef %i.al, ptr noundef @.str.28) ; 3 uses
  %.not457 = icmp eq ptr %i.am, null
  br i1 %.not457, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.29, ptr noundef nonnull %i.am)
  call void @g_free(ptr noundef nonnull %i.am)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @ws_init_version_info(ptr noundef @.str.30, ptr noundef null, ptr noundef @application_get_vcs_version_info, ptr noundef null, ptr noundef null)
  call void @init_report_failure_message(ptr noundef @.str.26)
  call void @application_file_extensions(ptr noundef nonnull %i.w, ptr noundef nonnull %i.x)
  %i.an = call ptr @application_configuration_environment_prefix()
  %i.ao = load ptr, ptr %i.w, align 8
  %i.ap = load i32, ptr %i.x, align 4
  call void @wtap_init(i1 noundef zeroext true, ptr noundef %i.an, ptr noundef %i.ao, i32 noundef %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.backedge2059, %bb.c
  %.0329 = phi ptr [ null, %bb.c ], [ %.0329.be, %.backedge2059 ] ; 37 uses
  %.0323 = phi ptr [ null, %bb.c ], [ %.0323.be, %.backedge2059 ] ; 41 uses
  %.0310 = phi i1 [ false, %bb.c ], [ %.0310.be, %.backedge2059 ] ; 35 uses
  %.0308 = phi i1 [ false, %bb.c ], [ %.1309, %.backedge2059 ] ; 3 uses
  %.0306 = phi i1 [ false, %bb.c ], [ %.0306.be, %.backedge2059 ] ; 35 uses
  %.0298 = phi i8 [ 0, %bb.c ], [ %.0298.be, %.backedge2059 ] ; 35 uses
  %13 = phi i32 [ 0, %bb.c ], [ %.be, %.backedge2059 ] ; 39 uses
  %14 = phi i32 [ 0, %bb.c ], [ %.be2065, %.backedge2059 ] ; 39 uses
  %15 = phi i32 [ 0, %bb.c ], [ %.be2066, %.backedge2059 ] ; 38 uses
  %16 = phi i32 [ 0, %bb.c ], [ %.be2067, %.backedge2059 ] ; 39 uses
  %17 = phi i32 [ 0, %bb.c ], [ %.be2068, %.backedge2059 ] ; 39 uses
  %18 = phi i32 [ 0, %bb.c ], [ %.be2069, %.backedge2059 ] ; 38 uses
  %i.aw = load i32, ptr %i.g, align 4
  %i.ax = call i32 @ws_getopt_long(i32 noundef %i.aw, ptr noundef %1, ptr noundef @main.optstring, ptr noundef @main.long_options, ptr noundef null) ; 4 uses
  switch i32 %i.ax, label %bb.e [
    i32 -1, label %bb.ef
    i32 3011, label %bb.f
    i32 86, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.d, %bb.e
  %.1309 = phi i1 [ true, %bb.e ], [ %.0308, %bb.d ], [ %.0308, %bb.d ]
  switch i32 %i.ax, label %bb.dz [
    i32 3001, label %bb.g
    i32 3002, label %bb.h
    i32 3003, label %bb.i
    i32 3004, label %bb.k
    i32 3005, label %bb.z
    i32 3014, label %bb.aa
    i32 3006, label %bb.ab
    i32 3007, label %bb.af
    i32 3008, label %bb.ag
    i32 3009, label %bb.ah
    i32 3010, label %bb.ai
    i32 3011, label %bb.aj
    i32 3012, label %bb.ak
    i32 3013, label %.backedge2059
    i32 97, label %bb.am
    i32 65, label %bb.at
    i32 66, label %bb.at
    i32 99, label %bb.aw
    i32 67, label %bb.ax
    i32 100, label %bb.bi
    i32 68, label %bb.bj
    i32 69, label %bb.bm
    i32 70, label %bb.bo
    i32 104, label %bb.bq
    i32 105, label %bb.br
    i32 73, label %bb.bv
    i32 76, label %bb.bw
    i32 111, label %bb.bx
    i32 114, label %bb.by
    i32 82, label %bb.cb
    i32 115, label %bb.cj
    i32 83, label %bb.ck
    i32 116, label %bb.cw
    i32 84, label %bb.dh
    i32 86, label %bb.dj
    i32 118, label %bb.dm
    i32 119, label %bb.dn
  ]

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @rem_vlan, align 1
  br label %.backedge2059

bb.h:                                             ; preds = %bb.f
  store i1 true, ptr @skip_radiotap, align 1
  br label %.backedge2059

bb.i:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr @ws_optarg, align 8
  %i.az = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ay, ptr noundef @.str.31, ptr noundef nonnull %i.u) #18
  %.not504 = icmp eq i32 %i.az, 1
  br i1 %.not504, label %.backedge2059, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.32, ptr noundef %i.ba)
  br label %.thread649

bb.k:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #18
  store i32 0, ptr %i.y, align 4
  %i.bb = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  %i.bc = call i32 @strcmp(ptr noundef dereferenceable(5) @.str.6, ptr noundef %i.bb) #19
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr @stdout, align 8          ; 5 uses
  %i.bf = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.be, i32 noundef 2, ptr noundef @.str.92, ptr noundef @.str.93) ; 0 uses
  %i.bg = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.be, i32 noundef 2, ptr noundef @.str.92, ptr noundef @.str.94) ; 0 uses
  %i.bh = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.be, i32 noundef 2, ptr noundef @.str.92, ptr noundef @.str.95) ; 0 uses
  %i.bi = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.be, i32 noundef 2, ptr noundef @.str.92, ptr noundef @.str.96) ; 0 uses
  %i.bj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.be, i32 noundef 2, ptr noundef @.str.92, ptr noundef @.str.97) ; 0 uses
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.bk = call ptr @g_strsplit(ptr noundef %i.bb, ptr noundef @.str.33, i32 noundef 2) ; 6 uses
  %i.bl = load ptr, ptr %i.bk, align 8            ; 9 uses
  %.not501 = icmp eq ptr %i.bl, null
  br i1 %.not501, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = load i8, ptr %i.bl, align 1             ; 3 uses
  %.not502 = icmp eq i8 %i.bm, 0
  br i1 %.not502, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = call i32 @strcmp(ptr noundef dereferenceable(4) @.str.93, ptr noundef nonnull readonly dereferenceable(1) %i.bl) #19
  %.not.i540 = icmp eq i32 %i.bn, 0
  br i1 %.not.i540, label %lookup_secrets_type.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = call i32 @strcmp(ptr noundef dereferenceable(4) @.str.94, ptr noundef nonnull readonly dereferenceable(1) %i.bl) #19
  %.not.1.i = icmp eq i32 %i.bo, 0
  br i1 %.not.1.i, label %lookup_secrets_type.exit, label %sub_0

sub_0:                                            ; preds = %bb.p
  %i.bp = zext i8 %i.bm to i32
  %i.bq = sub nsw i32 119, %i.bp
  %.not1056.a = icmp eq i8 %i.bm, 119
  br i1 %.not1056.a, label %sub_1, label %.tail

sub_1:                                            ; preds = %sub_0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  %i.bt = zext i8 %i.bs to i32
  %i.bu = sub nsw i32 103, %i.bt
  %.not1057.a = icmp eq i8 %i.bs, 103
  br i1 %.not1057.a, label %sub_2, label %.tail

sub_2:                                            ; preds = %sub_1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = zext i8 %i.bw to i32
  %i.by = sub nsw i32 0, %i.bx
  br label %.tail

.tail:                                            ; preds = %sub_0, %sub_1, %sub_2
  %i.bz = phi i32 [ %i.bq, %sub_0 ], [ %i.bu, %sub_1 ], [ %i.by, %sub_2 ]
  %.not.2.i = icmp eq i32 %i.bz, 0
  br i1 %.not.2.i, label %lookup_secrets_type.exit, label %bb.q

bb.q:                                             ; preds = %.tail
  %i.ca = call i32 @strcmp(ptr noundef dereferenceable(6) @.str.96, ptr noundef nonnull readonly dereferenceable(1) %i.bl) #19
  %.not.3.i = icmp eq i32 %i.ca, 0
  br i1 %.not.3.i, label %lookup_secrets_type.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = call i32 @strcmp(ptr noundef dereferenceable(4) @.str.97, ptr noundef nonnull readonly dereferenceable(1) %i.bl) #19
  %.not.4.i = icmp eq i32 %i.cb, 0
  br i1 %.not.4.i, label %lookup_secrets_type.exit, label %lookup_secrets_type.exit.thread

lookup_secrets_type.exit.thread:                  ; preds = %bb.r
  store i32 0, ptr %i.y, align 4
  br label %.loopexit666

lookup_secrets_type.exit:                         ; preds = %bb.o, %bb.p, %.tail, %bb.q, %bb.r
  %.lcssa.i = phi ptr [ @secrets_types, %bb.o ], [ getelementptr inbounds nuw (i8, ptr @secrets_types, i64 16), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @secrets_types, i64 32), %.tail ], [ getelementptr inbounds nuw (i8, ptr @secrets_types, i64 48), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @secrets_types, i64 64), %bb.r ]
  %i.cc = getelementptr i8, ptr %.lcssa.i, i64 8
  %i.cd = load i32, ptr %i.cc, align 8            ; 2 uses
  store i32 %i.cd, ptr %i.y, align 4
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.loopexit666, label %bb.s

.loopexit666:                                     ; preds = %lookup_secrets_type.exit, %lookup_secrets_type.exit.thread
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.34, ptr noundef nonnull %i.bl)
  call void @g_strfreev(ptr noundef %i.bk)
  br label %.thread

bb.s:                                             ; preds = %lookup_secrets_type.exit
  %i.cf = getelementptr i8, ptr %i.bk, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.35)
  call void @g_strfreev(ptr noundef %i.bk)
  br label %.thread

bb.v:                                             ; preds = %bb.n, %bb.m
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.36)
  call void @g_strfreev(ptr noundef %i.bk)
  br label %.thread

bb.w:                                             ; preds = %bb.t
  %.not503 = icmp eq ptr %.0323, null
  br i1 %.not503, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ck = call ptr @g_array_new(i32 noundef 0, i32 noundef 0, i32 noundef 4)
  %i.cl = call ptr @g_ptr_array_new_with_free_func(ptr noundef @g_free)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1330 = phi ptr [ %.0329, %bb.w ], [ %i.ck, %bb.x ] ; 2 uses
  %.1324 = phi ptr [ %.0323, %bb.w ], [ %i.cl, %bb.x ] ; 2 uses
  %i.cm = call ptr @g_array_append_vals(ptr noundef %.1330, ptr noundef nonnull %i.y, i32 noundef 1) ; 0 uses
  %i.cn = call noalias ptr @g_strdup(ptr noundef nonnull %i.cg)
  call void @g_ptr_array_add(ptr noundef %.1324, ptr noundef %i.cn)
  call void @g_strfreev(ptr noundef %i.bk)
end_hunk_0
begin_hunk_1_@main:bb.a
  %i.co = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  %i.cp = call i64 @strlen(ptr noundef %i.co) #19
  %i.cq = icmp ugt i64 %i.cp, 65535
  %i.cr = load ptr, ptr @capture_comments, align 8 ; 3 uses
  br i1 %i.cq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = load i32, ptr %i.cs, align 8
  %i.cu = add i32 %i.ct, 1
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.37, i32 noundef %i.cu)
  br label %.thread649

bb.ad:                                            ; preds = %bb.ab
  %.not500 = icmp eq ptr %i.cr, null
  br i1 %.not500, label %bb.ae, label %g_strdup_inline.exit534

bb.ae:                                            ; preds = %bb.ad
  %i.cv = call ptr @g_ptr_array_new_with_free_func(ptr noundef @g_free) ; 2 uses
  store ptr %i.cv, ptr @capture_comments, align 8
  %.pre1383 = load ptr, ptr @ws_optarg, align 8
  br label %g_strdup_inline.exit534

g_strdup_inline.exit534:                          ; preds = %bb.ae, %bb.ad
  %i.cw = phi ptr [ %.pre1383, %bb.ae ], [ %i.co, %bb.ad ]
  %i.cx = phi ptr [ %i.cv, %bb.ae ], [ %i.cr, %bb.ad ]
  %i.cy = call noalias ptr @g_strdup(ptr noundef %i.cw)
  call void @g_ptr_array_add(ptr noundef %i.cx, ptr noundef %i.cy)
  br label %.backedge2059

bb.af:                                            ; preds = %bb.f
  store i1 true, ptr @discard_cap_comments, align 1
  br label %.backedge2059

bb.ag:                                            ; preds = %bb.f
  store i1 true, ptr @set_unused, align 1
  br label %.backedge2059

bb.ah:                                            ; preds = %bb.f
  store i1 true, ptr @discard_pkt_comments, align 1
  br label %.backedge2059

bb.ai:                                            ; preds = %bb.f
  store i1 true, ptr @preserve_pkt_comments, align 1
  br label %.backedge2059

bb.aj:                                            ; preds = %bb.f
  store i1 true, ptr @do_extract_secrets, align 1
  br label %.backedge2059

bb.ak:                                            ; preds = %bb.f
  %i.cz = load ptr, ptr @ws_optarg, align 8
  %i.da = call i32 @ws_name_to_compression_type(ptr noundef %i.cz) ; 2 uses
  store i32 %i.da, ptr %i.v, align 4
  %i.db = icmp eq i32 %i.da, 4
  br i1 %i.db, label %bb.al, label %.backedge2059

bb.al:                                            ; preds = %bb.ak
  %i.dc = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.38, ptr noundef %i.dc)
  %i.dd = load ptr, ptr @stderr, align 8
  %i.de = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dd, i32 noundef 2, ptr noundef @.str.99) ; 0 uses
  %i.df = call ptr @ws_get_all_output_compression_type_names_list() ; 3 uses
  %.not6.i = icmp eq ptr %i.df, null
  br i1 %.not6.i, label %list_output_compression_types.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.al, %.lr.ph.i
  %.07.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %i.df, %bb.al ] ; 2 uses
  %i.dg = load ptr, ptr @stderr, align 8
  %i.dh = load ptr, ptr %.07.i, align 8
  %i.di = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dg, i32 noundef 2, ptr noundef @.str.100, ptr noundef %i.dh) ; 0 uses
  %i.dj = getelementptr i8, ptr %.07.i, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8            ; 2 uses
  %.not.i541 = icmp eq ptr %i.dk, null
  br i1 %.not.i541, label %list_output_compression_types.exit, label %.lr.ph.i, !llvm.loop !0

list_output_compression_types.exit:               ; preds = %.lr.ph.i, %bb.al
  call void @g_slist_free(ptr noundef %i.df)
  br label %.thread649

bb.am:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #18
  store i32 0, ptr %i.aa, align 4
  %i.dl = load ptr, ptr @ws_optarg, align 8
  %i.dm = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.dl, ptr noundef @.str.39, ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #18
  %i.dn = icmp slt i32 %i.dm, 1
  %i.do = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  %or.cond3 = select i1 %i.dn, i1 true, i1 %i.dp
  %i.dq = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  br i1 %or.cond3, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.40, ptr noundef %i.dq)
  br label %.thread602

bb.ao:                                            ; preds = %bb.am
  %i.dr = sext i32 %i.do to i64
  %i.ds = getelementptr i8, ptr %i.dq, i64 %i.dr
  %i.dt = call i64 @strlen(ptr noundef %i.ds) #19
  %i.du = icmp ugt i64 %i.dt, 65535
  br i1 %i.du, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dv = load i64, ptr %i.z, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.41, i64 noundef %i.dv)
  br label %.thread602

bb.aq:                                            ; preds = %bb.ao
  %i.dw = load ptr, ptr @frames_user_comments, align 8
  %.not499 = icmp eq ptr %i.dw, null
  br i1 %.not499, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.dx = call ptr @g_tree_new_full(ptr noundef @framenum_compare, ptr noundef null, ptr noundef @g_free, ptr noundef @g_free)
  store ptr %i.dx, ptr @frames_user_comments, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.dy = call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #20 ; 2 uses
  %i.dz = load i64, ptr %i.z, align 8
  store i64 %i.dz, ptr %i.dy, align 8
  %i.ea = load ptr, ptr @frames_user_comments, align 8
  %i.eb = load ptr, ptr @ws_optarg, align 8
  %i.ec = load i32, ptr %i.aa, align 4
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr i8, ptr %i.eb, i64 %i.ed
  %i.ef = call noalias ptr @g_strdup(ptr noundef %i.ee)
  call void @g_tree_replace(ptr noundef %i.ea, ptr noundef %i.dy, ptr noundef %i.ef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  br label %.backedge2059

.thread602:                                       ; preds = %bb.an, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #18
  br label %.thread649

bb.at:                                            ; preds = %bb.f, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  store i1 true, ptr @check_startstop, align 1
  %i.eg = load ptr, ptr @ws_optarg, align 8
  %i.eh = call ptr @iso8601_to_nstime(ptr noundef nonnull %7, ptr noundef %i.eg, i32 noundef 0)
  %.not497 = icmp eq ptr %i.eh, null
  br i1 %.not497, label %bb.au, label %.thread606

bb.au:                                            ; preds = %bb.at
  %i.ei = load ptr, ptr @ws_optarg, align 8
  %i.ej = call ptr @unix_epoch_to_nstime(ptr noundef nonnull %7, ptr noundef %i.ei)
  %.not498 = icmp eq ptr %i.ej, null
  br i1 %.not498, label %bb.av, label %.thread606

.thread606:                                       ; preds = %bb.au, %bb.at
  %i.ek = icmp eq i32 %i.ax, 65                   ; 2 uses
  %starttime.stoptime = select i1 %i.ek, ptr @starttime, ptr @stoptime
  %have_starttime.have_stoptime = select i1 %i.ek, ptr @have_starttime, ptr @have_stoptime
  call void @nstime_copy(ptr noundef %starttime.stoptime, ptr noundef nonnull %7)
  store i1 true, ptr %have_starttime.have_stoptime, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.backedge2059

bb.av:                                            ; preds = %bb.au
  %i.el = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.42, ptr noundef %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.thread649

bb.aw:                                            ; preds = %bb.f
  %i.em = load ptr, ptr @ws_optarg, align 8
  %i.en = call zeroext i1 @get_nonzero_uint64(ptr noundef %i.em, ptr noundef @.str.43, ptr noundef nonnull %i.p)
  br i1 %i.en, label %.backedge2059, label %.thread649

bb.ax:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #18
  store i32 0, ptr %i.ab, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #18
  store i32 0, ptr %i.ac, align 4
  %i.eo = load ptr, ptr @ws_optarg, align 8
  %i.ep = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.eo, ptr noundef @.str.44, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ab) #18
  switch i32 %i.ep, label %bb.bh [
    i32 1, label %bb.ay
    i32 2, label %thread-pre-split
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.eq = load i32, ptr %i.ac, align 4
  store i32 0, ptr %i.ac, align 4
  br label %bb.az

thread-pre-split:                                 ; preds = %bb.ax
  %.pr = load i32, ptr %i.ab, align 4
  br label %bb.az

bb.az:                                            ; preds = %thread-pre-split, %bb.ay
  %i.er = phi i32 [ %.pr, %thread-pre-split ], [ %i.eq, %bb.ay ] ; 4 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.et = add i32 %i.er, %18                      ; 3 uses
  store i32 %i.et, ptr %2, align 8
  %i.eu = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.ew = add i32 %i.eu, %17                      ; 2 uses
  store i32 %i.ew, ptr %i.av, align 4
  br label %.thread610

bb.bc:                                            ; preds = %bb.ba
  %i.ex = add i32 %i.eu, %16                      ; 2 uses
  store i32 %i.ex, ptr %i.au, align 8
  br label %.thread610

bb.bd:                                            ; preds = %bb.az
  %i.ey = icmp slt i32 %i.er, 0
  br i1 %i.ey, label %bb.be, label %.thread610

bb.be:                                            ; preds = %bb.bd
  %i.ez = add i32 %i.er, %15                      ; 3 uses
  store i32 %i.ez, ptr %i.ar, align 4
  %i.fa = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.fb = icmp sgt i32 %i.fa, 0
  br i1 %i.fb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fc = add i32 %i.fa, %14                      ; 2 uses
  store i32 %i.fc, ptr %i.at, align 8
  br label %.thread610

bb.bg:                                            ; preds = %bb.be
  %i.fd = add i32 %i.fa, %13                      ; 2 uses
  store i32 %i.fd, ptr %i.as, align 4
  br label %.thread610

.thread610:                                       ; preds = %bb.bd, %bb.bg, %bb.bf, %bb.bb, %bb.bc
  %.ph = phi i32 [ %13, %bb.bc ], [ %13, %bb.bb ], [ %13, %bb.bf ], [ %i.fd, %bb.bg ], [ %13, %bb.bd ]
  %.ph610 = phi i32 [ %14, %bb.bc ], [ %14, %bb.bb ], [ %i.fc, %bb.bf ], [ %14, %bb.bg ], [ %14, %bb.bd ]
  %.ph611 = phi i32 [ %15, %bb.bc ], [ %15, %bb.bb ], [ %i.ez, %bb.bf ], [ %i.ez, %bb.bg ], [ %15, %bb.bd ]
  %.ph612 = phi i32 [ %i.ex, %bb.bc ], [ %16, %bb.bb ], [ %16, %bb.bf ], [ %16, %bb.bg ], [ %16, %bb.bd ]
  %.ph613 = phi i32 [ %17, %bb.bc ], [ %i.ew, %bb.bb ], [ %17, %bb.bf ], [ %17, %bb.bg ], [ %17, %bb.bd ]
  %.ph614 = phi i32 [ %i.et, %bb.bc ], [ %i.et, %bb.bb ], [ %18, %bb.bf ], [ %18, %bb.bg ], [ %18, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #18
  br label %.backedge2059

bb.bh:                                            ; preds = %bb.ax
  %i.fe = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.45, ptr noundef %i.fe)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #18
  br label %.thread649

bb.bi:                                            ; preds = %bb.f
  store i1 true, ptr @dup_detect, align 1
  store i1 false, ptr @dup_detect_by_time, align 1
  store i32 5, ptr @dup_window, align 4
  br label %.backedge2059

bb.bj:                                            ; preds = %bb.f
  store i1 true, ptr @dup_detect, align 1
  store i1 false, ptr @dup_detect_by_time, align 1
  %i.ff = load ptr, ptr @ws_optarg, align 8
  %i.fg = call zeroext i1 @get_uint32(ptr noundef %i.ff, ptr noundef @.str.46, ptr noundef @dup_window)
  br i1 %i.fg, label %bb.bk, label %.thread649

bb.bk:                                            ; preds = %bb.bj
  %i.fh = load i32, ptr @dup_window, align 4      ; 2 uses
  %i.fi = icmp ugt i32 %i.fh, 1000000
  br i1 %i.fi, label %bb.bl, label %.backedge2059

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.47, i32 noundef %i.fh, i32 noundef 1000000)
  br label %.thread649

bb.bm:                                            ; preds = %bb.f
  %i.fj = load ptr, ptr @ws_optarg, align 8
  %i.fk = call double @g_ascii_strtod(ptr noundef %i.fj, ptr noundef nonnull %i.l) ; 3 uses
  store double %i.fk, ptr @err_prob, align 8
  %i.fl = load ptr, ptr %i.l, align 8
  %i.fm = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  %i.fo = fcmp olt double %i.fk, 0.000000e+00
  %i.fp = fcmp ogt double %i.fk, 1.000000e+00
  %i.fq = or i1 %i.fo, %i.fp
  %or.cond7 = select i1 %i.fn, i1 true, i1 %i.fq
  br i1 %or.cond7, label %bb.bn, label %.backedge2059

bb.bn:                                            ; preds = %bb.bm
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.48, ptr noundef %i.fm)
  br label %.thread649

bb.bo:                                            ; preds = %bb.f
  %i.fr = load ptr, ptr @ws_optarg, align 8
  %i.fs = call i32 @wtap_name_to_file_type_subtype(ptr noundef %i.fr) ; 2 uses
  store i32 %i.fs, ptr @out_file_type_subtype, align 4
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %bb.bp, label %.backedge2059

bb.bp:                                            ; preds = %bb.bo
  %i.fu = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.49, ptr noundef %i.fu)
  %i.fv = load ptr, ptr @stderr, align 8
  call fastcc void @list_capture_types(ptr noundef %i.fv)
  br label %.thread649

bb.bq:                                            ; preds = %bb.f
  call void @show_help_header(ptr noundef @.str.50)
  %i.fw = load ptr, ptr @stdout, align 8
  call fastcc void @print_usage(ptr noundef %i.fw)
  br label %.thread649

bb.br:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #18
  %i.fx = load ptr, ptr @ws_optarg, align 8
  %i.fy = call zeroext i1 @get_positive_double(ptr noundef %i.fx, ptr noundef @.str.51, ptr noundef nonnull %i.ad)
  br i1 %i.fy, label %bb.bs, label %.thread614

bb.bs:                                            ; preds = %bb.br
  %i.fz = load double, ptr %i.ad, align 8         ; 2 uses
  %i.ga = fcmp oeq double %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.52)
  br label %.thread614

.thread614:                                       ; preds = %bb.br, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  br label %.thread649

bb.bu:                                            ; preds = %bb.bs
  %i.gb = call { double, double } @llvm.modf.f64(double %i.fz) ; 2 uses
  %i.gc = extractvalue { double, double } %i.gb, 0
  %i.gd = extractvalue { double, double } %i.gb, 1
  %i.ge = fptosi double %i.gd to i64
  store i64 %i.ge, ptr %3, align 8
  %i.gf = fmul double %i.gc, 1.000000e+09
  %i.gg = fptosi double %i.gf to i32
  store i32 %i.gg, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #18
  br label %.backedge2059

bb.bv:                                            ; preds = %bb.f
  %i.gh = load ptr, ptr @ws_optarg, align 8
  %i.gi = call zeroext i1 @get_uint32(ptr noundef %i.gh, ptr noundef @.str.53, ptr noundef @ignored_bytes)
  br i1 %i.gi, label %.backedge2059, label %.thread649

bb.bw:                                            ; preds = %bb.f
  br label %.backedge2059

bb.bx:                                            ; preds = %bb.f
  %i.gj = load ptr, ptr @ws_optarg, align 8
  %i.gk = call zeroext i1 @get_uint32(ptr noundef %i.gj, ptr noundef @.str.54, ptr noundef nonnull %i.s)
  br i1 %i.gk, label %.backedge2059, label %.thread649

bb.by:                                            ; preds = %bb.f
  %.b440 = load i1, ptr @keep_em, align 1
  br i1 %.b440, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.55)
  br label %.thread649

bb.ca:                                            ; preds = %bb.by
  store i1 true, ptr @keep_em, align 1
  br label %.backedge2059

bb.cb:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #18
  store i32 0, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.gl = load ptr, ptr @ws_optarg, align 8
  %i.gm = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.gl, ptr noundef @.str.39, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.af) #18
  %i.gn = icmp slt i32 %i.gm, 1
  %i.go = load i32, ptr %i.af, align 4            ; 2 uses
  %i.gp = icmp eq i32 %i.go, 0
  %or.cond9 = select i1 %i.gn, i1 true, i1 %i.gp
  %i.gq = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  br i1 %or.cond9, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.56, ptr noundef %i.gq)
  br label %.thread618

bb.cd:                                            ; preds = %bb.cb
  %i.gr = sext i32 %i.go to i64
  %i.gs = getelementptr i8, ptr %i.gq, i64 %i.gr
  %i.gt = call ptr @iso8601_to_nstime(ptr noundef nonnull %8, ptr noundef %i.gs, i32 noundef 0)
  %.not494 = icmp eq ptr %i.gt, null
  br i1 %.not494, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.gu = load ptr, ptr @ws_optarg, align 8
  %i.gv = load i32, ptr %i.af, align 4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr i8, ptr %i.gu, i64 %i.gw
  %i.gy = call ptr @unix_epoch_to_nstime(ptr noundef nonnull %8, ptr noundef %i.gx)
  %.not495 = icmp eq ptr %i.gy, null
  br i1 %.not495, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.gz = load ptr, ptr @ws_optarg, align 8
  %i.ha = load i32, ptr %i.af, align 4
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr i8, ptr %i.gz, i64 %i.hb
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.42, ptr noundef %i.hc)
  br label %.thread618

bb.cg:                                            ; preds = %bb.cd, %bb.ce
  %i.hd = load ptr, ptr @frames_replace_timestamp, align 8
  %.not496 = icmp eq ptr %i.hd, null
  br i1 %.not496, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.he = call ptr @g_tree_new_full(ptr noundef @framenum_compare, ptr noundef null, ptr noundef @g_free, ptr noundef @g_free)
  store ptr %i.he, ptr @frames_replace_timestamp, align 8
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.hf = call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #20 ; 2 uses
  %i.hg = load i64, ptr %i.ae, align 8
  store i64 %i.hg, ptr %i.hf, align 8
  %i.hh = load ptr, ptr @frames_replace_timestamp, align 8
  %i.hi = load ptr, ptr @ws_optarg, align 8
  %i.hj = load i32, ptr %i.af, align 4
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr i8, ptr %i.hi, i64 %i.hk
  %i.hm = call noalias ptr @g_strdup(ptr noundef %i.hl)
  call void @g_tree_replace(ptr noundef %i.hh, ptr noundef %i.hf, ptr noundef %i.hm)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #18
  br label %.backedge2059

.thread618:                                       ; preds = %bb.cc, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #18
  br label %.thread649

end_hunk_1
begin_hunk_2_@main:bb.a
  %i.ky = trunc i64 %.2.lcssa.i558 to i32
  store i32 %i.ky, ptr @time_adj.1, align 8
  br label %set_time_adjustment.exit.thread

set_time_adjustment.exit.thread:                  ; preds = %._crit_edge.i557, %bb.cw, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.backedge2059

set_time_adjustment.exit:                         ; preds = %bb.de, %bb.df, %bb.cz, %bb.da
  %i.kz = load ptr, ptr @stderr, align 8
  %i.la = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.kz, i32 noundef 2, ptr noundef @.str.228, ptr noundef %.140.i550) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %.thread649

bb.dh:                                            ; preds = %bb.f
  %i.lb = load ptr, ptr @ws_optarg, align 8
  %i.lc = call i32 @wtap_name_to_encap(ptr noundef %i.lb) ; 2 uses
  store i32 %i.lc, ptr @out_frame_type, align 4
  %i.ld = icmp slt i32 %i.lc, 0
  br i1 %i.ld, label %bb.di, label %.backedge2059

bb.di:                                            ; preds = %bb.dh
  %i.le = load ptr, ptr @ws_optarg, align 8
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.58, ptr noundef %i.le)
  %i.lf = load ptr, ptr @stderr, align 8
  call fastcc void @list_encap_types(ptr noundef %i.lf)
  br label %.thread649

bb.dj:                                            ; preds = %bb.f
  %.b453 = load i1, ptr @verbose, align 1
  br i1 %.b453, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.59)
  br label %.thread649

bb.dl:                                            ; preds = %bb.dj
  store i1 true, ptr @verbose, align 1
  br label %.backedge2059

bb.dm:                                            ; preds = %bb.f
  call void @show_version()
  br label %.thread649

bb.dn:                                            ; preds = %bb.f
  store i1 false, ptr @dup_detect, align 1
  store i1 true, ptr @dup_detect_by_time, align 1
  store i32 1000000, ptr @dup_window, align 4
  %i.lg = load ptr, ptr @ws_optarg, align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %.not.i566 = icmp eq ptr %i.lg, null
  br i1 %.not.i566, label %set_rel_time.exit.thread, label %.preheader.i567

.preheader.i567:                                  ; preds = %bb.dn, %.critedge.i586
  %.039.i568 = phi ptr [ %i.li, %.critedge.i586 ], [ %i.lg, %bb.dn ] ; 4 uses
  %i.lh = load i8, ptr %.039.i568, align 1        ; 2 uses
  switch i8 %i.lh, label %.loopexit.i570 [
    i8 32, label %.critedge.i586
    i8 9, label %.critedge.i586
    i8 45, label %bb.do
  ]

.critedge.i586:                                   ; preds = %.preheader.i567, %.preheader.i567
  %i.li = getelementptr i8, ptr %.039.i568, i64 1
  br label %.preheader.i567, !llvm.loop !15

bb.do:                                            ; preds = %.preheader.i567
  %i.lj = getelementptr i8, ptr %.039.i568, i64 1 ; 2 uses
  %.pr.i569 = load i8, ptr %i.lj, align 1
  br label %.loopexit.i570

.loopexit.i570:                                   ; preds = %.preheader.i567, %bb.do
  %i.lk = phi i8 [ %.pr.i569, %bb.do ], [ %i.lh, %.preheader.i567 ]
  %.140.i571 = phi ptr [ %i.lj, %bb.do ], [ %.039.i568, %.preheader.i567 ] ; 5 uses
  %i.ll = icmp eq i8 %i.lk, 46
  br i1 %i.ll, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %.loopexit.i570
  store ptr %.140.i571, ptr %i.a, align 8
  br label %bb.dt

bb.dq:                                            ; preds = %.loopexit.i570
  %i.lm = call i64 @strtol(ptr noundef %.140.i571, ptr noundef nonnull %i.a, i32 noundef 10) #18 ; 3 uses
  %i.ln = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %set_rel_time.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.lp = icmp eq ptr %i.ln, %.140.i571
  %i.lq = add i64 %i.lm, -9223372036854775807
  %i.lr = icmp ult i64 %i.lq, 2
  %or.cond3.i572 = select i1 %i.lp, i1 true, i1 %i.lr
  br i1 %or.cond3.i572, label %set_rel_time.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ls = icmp slt i64 %i.lm, 0
  br i1 %i.ls, label %set_rel_time.exit, label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dp
  %i.lt = phi ptr [ %.140.i571, %bb.dp ], [ %i.ln, %bb.ds ] ; 6 uses
  %.038.i573 = phi i64 [ 0, %bb.dp ], [ %i.lm, %bb.ds ]
  store i64 %.038.i573, ptr @relative_time_window, align 8
  %i.lu = load i8, ptr %i.lt, align 1
  %.not48.i574 = icmp eq i8 %i.lu, 0
  br i1 %.not48.i574, label %set_rel_time.exit.thread, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.lv = getelementptr i8, ptr %i.lt, i64 1      ; 3 uses
  %i.lw = call i64 @strtol(ptr noundef %i.lv, ptr noundef nonnull %i.b, i32 noundef 10) #18
  %i.lx = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ly = ptrtoint ptr %i.lx to i64
  %i.lz = ptrtoint ptr %i.lv to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = icmp sgt i64 %i.ma, 9
  br i1 %i.mb, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.mc = getelementptr i8, ptr %i.lt, i64 10
  store i8 116, ptr %i.mc, align 1
  %i.md = call i64 @strtol(ptr noundef %i.lv, ptr noundef nonnull %i.b, i32 noundef 10) #18
  %.pre.i585 = load ptr, ptr %i.b, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.me = phi ptr [ %.pre.i585, %bb.dv ], [ %i.lx, %bb.du ] ; 3 uses
  %.1.i575 = phi i64 [ %i.md, %bb.dv ], [ %i.lw, %bb.du ] ; 4 uses
  %i.mf = load i8, ptr %i.lt, align 1
  %i.mg = icmp ne i8 %i.mf, 46
  %i.mh = icmp eq ptr %i.me, null
  %or.cond5.i576 = select i1 %i.mg, i1 true, i1 %i.mh
  br i1 %or.cond5.i576, label %set_rel_time.exit, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.mi = icmp eq ptr %i.me, %i.lt
  %i.mj = icmp ugt i64 %.1.i575, 999999999
  %or.cond13.i577 = select i1 %i.mi, i1 true, i1 %i.mj
  br i1 %or.cond13.i577, label %set_rel_time.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.mk = ptrtoint ptr %i.me to i64               ; 3 uses
  %i.ml = ptrtoint ptr %i.lt to i64               ; 3 uses
  %i.mm = xor i64 %i.ml, -1
  %i.mn = add i64 %i.mk, %i.mm                    ; 3 uses
  %i.mo = icmp ult i64 %i.mn, 9
  br i1 %i.mo, label %.lr.ph.i581.preheader, label %._crit_edge.i578

.lr.ph.i581.preheader:                            ; preds = %bb.dy
  %i.mp = add i64 %i.ml, 2
  %i.mq = sub i64 %i.mp, %i.mk
  %i.mr = add i64 %i.ml, 9
  %i.ms = sub i64 %i.mr, %i.mk
  %xtraiter = and i64 %i.mq, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i581.prol.loopexit, label %.lr.ph.i581.prol

.lr.ph.i581.prol:                                 ; preds = %.lr.ph.i581.preheader, %.lr.ph.i581.prol
  %.052.i582.prol = phi i64 [ %i.mu, %.lr.ph.i581.prol ], [ %i.mn, %.lr.ph.i581.preheader ]
  %.251.i583.prol = phi i64 [ %i.mt, %.lr.ph.i581.prol ], [ %.1.i575, %.lr.ph.i581.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i581.prol ], [ 0, %.lr.ph.i581.preheader ]
  %i.mt = mul i64 %.251.i583.prol, 10             ; 3 uses
  %i.mu = add nuw nsw i64 %.052.i582.prol, 1      ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i581.prol.loopexit, label %.lr.ph.i581.prol, !llvm.loop !16

.lr.ph.i581.prol.loopexit:                        ; preds = %.lr.ph.i581.prol, %.lr.ph.i581.preheader
  %.lcssa2063.unr = phi i64 [ poison, %.lr.ph.i581.preheader ], [ %i.mt, %.lr.ph.i581.prol ]
  %.052.i582.unr = phi i64 [ %i.mn, %.lr.ph.i581.preheader ], [ %i.mu, %.lr.ph.i581.prol ]
  %.251.i583.unr = phi i64 [ %.1.i575, %.lr.ph.i581.preheader ], [ %i.mt, %.lr.ph.i581.prol ]
  %i.mv = icmp ult i64 %i.ms, 7
  br i1 %i.mv, label %._crit_edge.i578, label %.lr.ph.i581

.lr.ph.i581:                                      ; preds = %.lr.ph.i581.prol.loopexit, %.lr.ph.i581
  %.052.i582 = phi i64 [ %i.mx, %.lr.ph.i581 ], [ %.052.i582.unr, %.lr.ph.i581.prol.loopexit ]
  %.251.i583 = phi i64 [ %i.mw, %.lr.ph.i581 ], [ %.251.i583.unr, %.lr.ph.i581.prol.loopexit ]
  %i.mw = mul i64 %.251.i583, 100000000           ; 2 uses
  %i.mx = add nuw nsw i64 %.052.i582, 8           ; 2 uses
  %exitcond.not.i584.7 = icmp eq i64 %i.mx, 9
  br i1 %exitcond.not.i584.7, label %._crit_edge.i578, label %.lr.ph.i581, !llvm.loop !17

._crit_edge.i578:                                 ; preds = %.lr.ph.i581.prol.loopexit, %.lr.ph.i581, %bb.dy
  %.2.lcssa.i579 = phi i64 [ %.1.i575, %bb.dy ], [ %.lcssa2063.unr, %.lr.ph.i581.prol.loopexit ], [ %i.mw, %.lr.ph.i581 ]
  %i.my = trunc i64 %.2.lcssa.i579 to i32
  store i32 %i.my, ptr getelementptr inbounds nuw (i8, ptr @relative_time_window, i64 8), align 8
  br label %set_rel_time.exit.thread

set_rel_time.exit.thread:                         ; preds = %._crit_edge.i578, %bb.dn, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.backedge2059

.backedge2059:                                    ; preds = %set_rel_time.exit.thread, %set_time_adjustment.exit.thread, %bb.ci, %bb.bu, %.thread610, %.thread606, %bb.as, %bb.y, %bb.f, %bb.i, %bb.dz, %bb.dh, %bb.cj, %bb.bx, %bb.bv, %bb.bo, %bb.bm, %bb.bk, %bb.aw, %bb.ak, %bb.dl, %bb.cv, %bb.ca, %bb.bw, %bb.bi, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %g_strdup_inline.exit534, %bb.aa, %bb.z, %bb.h, %bb.g
  %.0329.be = phi ptr [ %.0329, %bb.dz ], [ %.0329, %bb.g ], [ %.0329, %bb.h ], [ %.0329, %set_rel_time.exit.thread ], [ %.1330, %bb.y ], [ %.0329, %bb.z ], [ %.0329, %bb.aa ], [ %.0329, %g_strdup_inline.exit534 ], [ %.0329, %bb.af ], [ %.0329, %bb.ag ], [ %.0329, %bb.ah ], [ %.0329, %bb.ai ], [ %.0329, %bb.aj ], [ %.0329, %bb.ak ], [ %.0329, %bb.i ], [ %.0329, %bb.as ], [ %.0329, %.thread606 ], [ %.0329, %bb.aw ], [ %.0329, %.thread610 ], [ %.0329, %bb.bi ], [ %.0329, %bb.bk ], [ %.0329, %bb.bm ], [ %.0329, %bb.bo ], [ %.0329, %bb.bu ], [ %.0329, %bb.bv ], [ %.0329, %bb.bw ], [ %.0329, %bb.bx ], [ %.0329, %bb.ca ], [ %.0329, %bb.ci ], [ %.0329, %bb.cj ], [ %.0329, %bb.cv ], [ %.0329, %set_time_adjustment.exit.thread ], [ %.0329, %bb.dh ], [ %.0329, %bb.dl ], [ %.0329, %bb.f ]
  %.0323.be = phi ptr [ %.0323, %bb.dz ], [ %.0323, %bb.g ], [ %.0323, %bb.h ], [ %.0323, %set_rel_time.exit.thread ], [ %.1324, %bb.y ], [ %.0323, %bb.z ], [ %.0323, %bb.aa ], [ %.0323, %g_strdup_inline.exit534 ], [ %.0323, %bb.af ], [ %.0323, %bb.ag ], [ %.0323, %bb.ah ], [ %.0323, %bb.ai ], [ %.0323, %bb.aj ], [ %.0323, %bb.ak ], [ %.0323, %bb.i ], [ %.0323, %bb.as ], [ %.0323, %.thread606 ], [ %.0323, %bb.aw ], [ %.0323, %.thread610 ], [ %.0323, %bb.bi ], [ %.0323, %bb.bk ], [ %.0323, %bb.bm ], [ %.0323, %bb.bo ], [ %.0323, %bb.bu ], [ %.0323, %bb.bv ], [ %.0323, %bb.bw ], [ %.0323, %bb.bx ], [ %.0323, %bb.ca ], [ %.0323, %bb.ci ], [ %.0323, %bb.cj ], [ %.0323, %bb.cv ], [ %.0323, %set_time_adjustment.exit.thread ], [ %.0323, %bb.dh ], [ %.0323, %bb.dl ], [ %.0323, %bb.f ]
  %.0310.be = phi i1 [ %.0310, %bb.dz ], [ %.0310, %bb.g ], [ %.0310, %bb.h ], [ %.0310, %set_rel_time.exit.thread ], [ %.0310, %bb.y ], [ %.0310, %bb.z ], [ %.0310, %bb.aa ], [ %.0310, %g_strdup_inline.exit534 ], [ %.0310, %bb.af ], [ %.0310, %bb.ag ], [ %.0310, %bb.ah ], [ %.0310, %bb.ai ], [ %.0310, %bb.aj ], [ %.0310, %bb.ak ], [ true, %bb.i ], [ %.0310, %bb.as ], [ %.0310, %.thread606 ], [ %.0310, %bb.aw ], [ %.0310, %.thread610 ], [ %.0310, %bb.bi ], [ %.0310, %bb.bk ], [ %.0310, %bb.bm ], [ %.0310, %bb.bo ], [ %.0310, %bb.bu ], [ %.0310, %bb.bv ], [ %.0310, %bb.bw ], [ %.0310, %bb.bx ], [ %.0310, %bb.ca ], [ %.0310, %bb.ci ], [ %.0310, %bb.cj ], [ %.0310, %bb.cv ], [ %.0310, %set_time_adjustment.exit.thread ], [ %.0310, %bb.dh ], [ %.0310, %bb.dl ], [ %.0310, %bb.f ]
  %.0306.be = phi i1 [ %.0306, %bb.dz ], [ %.0306, %bb.g ], [ %.0306, %bb.h ], [ %.0306, %set_rel_time.exit.thread ], [ %.0306, %bb.y ], [ %.0306, %bb.z ], [ %.0306, %bb.aa ], [ %.0306, %g_strdup_inline.exit534 ], [ %.0306, %bb.af ], [ %.0306, %bb.ag ], [ %.0306, %bb.ah ], [ %.0306, %bb.ai ], [ %.0306, %bb.aj ], [ %.0306, %bb.ak ], [ %.0306, %bb.i ], [ %.0306, %bb.as ], [ %.0306, %.thread606 ], [ %.0306, %bb.aw ], [ %.0306, %.thread610 ], [ %.0306, %bb.bi ], [ %.0306, %bb.bk ], [ %.0306, %bb.bm ], [ %.0306, %bb.bo ], [ %.0306, %bb.bu ], [ %.0306, %bb.bv ], [ %.0306, %bb.bw ], [ %.0306, %bb.bx ], [ %.0306, %bb.ca ], [ %.0306, %bb.ci ], [ %.0306, %bb.cj ], [ %.0306, %bb.cv ], [ %.0306, %set_time_adjustment.exit.thread ], [ %.0306, %bb.dh ], [ %.0306, %bb.dl ], [ true, %bb.f ]
  %.0298.be = phi i8 [ %.0298, %bb.dz ], [ %.0298, %bb.g ], [ %.0298, %bb.h ], [ %.0298, %set_rel_time.exit.thread ], [ %.0298, %bb.y ], [ %.0298, %bb.z ], [ %.0298, %bb.aa ], [ %.0298, %g_strdup_inline.exit534 ], [ %.0298, %bb.af ], [ %.0298, %bb.ag ], [ %.0298, %bb.ah ], [ %.0298, %bb.ai ], [ %.0298, %bb.aj ], [ %.0298, %bb.ak ], [ %.0298, %bb.i ], [ %.0298, %bb.as ], [ %.0298, %.thread606 ], [ %.0298, %bb.aw ], [ %.0298, %.thread610 ], [ %.0298, %bb.bi ], [ %.0298, %bb.bk ], [ %.0298, %bb.bm ], [ %.0298, %bb.bo ], [ %.0298, %bb.bu ], [ %.0298, %bb.bv ], [ 1, %bb.bw ], [ %.0298, %bb.bx ], [ %.0298, %bb.ca ], [ %.0298, %bb.ci ], [ %.0298, %bb.cj ], [ %.0298, %bb.cv ], [ %.0298, %set_time_adjustment.exit.thread ], [ %.0298, %bb.dh ], [ %.0298, %bb.dl ], [ %.0298, %bb.f ]
  %.be = phi i32 [ %13, %bb.dz ], [ %13, %bb.g ], [ %13, %bb.h ], [ %13, %set_rel_time.exit.thread ], [ %13, %bb.y ], [ %13, %bb.z ], [ %13, %bb.aa ], [ %13, %g_strdup_inline.exit534 ], [ %13, %bb.af ], [ %13, %bb.ag ], [ %13, %bb.ah ], [ %13, %bb.ai ], [ %13, %bb.aj ], [ %13, %bb.ak ], [ %13, %bb.i ], [ %13, %bb.as ], [ %13, %.thread606 ], [ %13, %bb.aw ], [ %.ph, %.thread610 ], [ %13, %bb.bi ], [ %13, %bb.bk ], [ %13, %bb.bm ], [ %13, %bb.bo ], [ %13, %bb.bu ], [ %13, %bb.bv ], [ %13, %bb.bw ], [ %13, %bb.bx ], [ %13, %bb.ca ], [ %13, %bb.ci ], [ %13, %bb.cj ], [ %13, %bb.cv ], [ %13, %set_time_adjustment.exit.thread ], [ %13, %bb.dh ], [ %13, %bb.dl ], [ %13, %bb.f ]
  %.be2065 = phi i32 [ %14, %bb.dz ], [ %14, %bb.g ], [ %14, %bb.h ], [ %14, %set_rel_time.exit.thread ], [ %14, %bb.y ], [ %14, %bb.z ], [ %14, %bb.aa ], [ %14, %g_strdup_inline.exit534 ], [ %14, %bb.af ], [ %14, %bb.ag ], [ %14, %bb.ah ], [ %14, %bb.ai ], [ %14, %bb.aj ], [ %14, %bb.ak ], [ %14, %bb.i ], [ %14, %bb.as ], [ %14, %.thread606 ], [ %14, %bb.aw ], [ %.ph610, %.thread610 ], [ %14, %bb.bi ], [ %14, %bb.bk ], [ %14, %bb.bm ], [ %14, %bb.bo ], [ %14, %bb.bu ], [ %14, %bb.bv ], [ %14, %bb.bw ], [ %14, %bb.bx ], [ %14, %bb.ca ], [ %14, %bb.ci ], [ %14, %bb.cj ], [ %14, %bb.cv ], [ %14, %set_time_adjustment.exit.thread ], [ %14, %bb.dh ], [ %14, %bb.dl ], [ %14, %bb.f ]
  %.be2066 = phi i32 [ %15, %bb.dz ], [ %15, %bb.g ], [ %15, %bb.h ], [ %15, %set_rel_time.exit.thread ], [ %15, %bb.y ], [ %15, %bb.z ], [ %15, %bb.aa ], [ %15, %g_strdup_inline.exit534 ], [ %15, %bb.af ], [ %15, %bb.ag ], [ %15, %bb.ah ], [ %15, %bb.ai ], [ %15, %bb.aj ], [ %15, %bb.ak ], [ %15, %bb.i ], [ %15, %bb.as ], [ %15, %.thread606 ], [ %15, %bb.aw ], [ %.ph611, %.thread610 ], [ %15, %bb.bi ], [ %15, %bb.bk ], [ %15, %bb.bm ], [ %15, %bb.bo ], [ %15, %bb.bu ], [ %15, %bb.bv ], [ %15, %bb.bw ], [ %15, %bb.bx ], [ %15, %bb.ca ], [ %15, %bb.ci ], [ %15, %bb.cj ], [ %15, %bb.cv ], [ %15, %set_time_adjustment.exit.thread ], [ %15, %bb.dh ], [ %15, %bb.dl ], [ %15, %bb.f ]
  %.be2067 = phi i32 [ %16, %bb.dz ], [ %16, %bb.g ], [ %16, %bb.h ], [ %16, %set_rel_time.exit.thread ], [ %16, %bb.y ], [ %16, %bb.z ], [ %16, %bb.aa ], [ %16, %g_strdup_inline.exit534 ], [ %16, %bb.af ], [ %16, %bb.ag ], [ %16, %bb.ah ], [ %16, %bb.ai ], [ %16, %bb.aj ], [ %16, %bb.ak ], [ %16, %bb.i ], [ %16, %bb.as ], [ %16, %.thread606 ], [ %16, %bb.aw ], [ %.ph612, %.thread610 ], [ %16, %bb.bi ], [ %16, %bb.bk ], [ %16, %bb.bm ], [ %16, %bb.bo ], [ %16, %bb.bu ], [ %16, %bb.bv ], [ %16, %bb.bw ], [ %16, %bb.bx ], [ %16, %bb.ca ], [ %16, %bb.ci ], [ %16, %bb.cj ], [ %16, %bb.cv ], [ %16, %set_time_adjustment.exit.thread ], [ %16, %bb.dh ], [ %16, %bb.dl ], [ %16, %bb.f ]
  %.be2068 = phi i32 [ %17, %bb.dz ], [ %17, %bb.g ], [ %17, %bb.h ], [ %17, %set_rel_time.exit.thread ], [ %17, %bb.y ], [ %17, %bb.z ], [ %17, %bb.aa ], [ %17, %g_strdup_inline.exit534 ], [ %17, %bb.af ], [ %17, %bb.ag ], [ %17, %bb.ah ], [ %17, %bb.ai ], [ %17, %bb.aj ], [ %17, %bb.ak ], [ %17, %bb.i ], [ %17, %bb.as ], [ %17, %.thread606 ], [ %17, %bb.aw ], [ %.ph613, %.thread610 ], [ %17, %bb.bi ], [ %17, %bb.bk ], [ %17, %bb.bm ], [ %17, %bb.bo ], [ %17, %bb.bu ], [ %17, %bb.bv ], [ %17, %bb.bw ], [ %17, %bb.bx ], [ %17, %bb.ca ], [ %17, %bb.ci ], [ %17, %bb.cj ], [ %17, %bb.cv ], [ %17, %set_time_adjustment.exit.thread ], [ %17, %bb.dh ], [ %17, %bb.dl ], [ %17, %bb.f ]
  %.be2069 = phi i32 [ %18, %bb.dz ], [ %18, %bb.g ], [ %18, %bb.h ], [ %18, %set_rel_time.exit.thread ], [ %18, %bb.y ], [ %18, %bb.z ], [ %18, %bb.aa ], [ %18, %g_strdup_inline.exit534 ], [ %18, %bb.af ], [ %18, %bb.ag ], [ %18, %bb.ah ], [ %18, %bb.ai ], [ %18, %bb.aj ], [ %18, %bb.ak ], [ %18, %bb.i ], [ %18, %bb.as ], [ %18, %.thread606 ], [ %18, %bb.aw ], [ %.ph614, %.thread610 ], [ %18, %bb.bi ], [ %18, %bb.bk ], [ %18, %bb.bm ], [ %18, %bb.bo ], [ %18, %bb.bu ], [ %18, %bb.bv ], [ %18, %bb.bw ], [ %18, %bb.bx ], [ %18, %bb.ca ], [ %18, %bb.ci ], [ %18, %bb.cj ], [ %18, %bb.cv ], [ %18, %set_time_adjustment.exit.thread ], [ %18, %bb.dh ], [ %18, %bb.dl ], [ %18, %bb.f ]
  br label %bb.d, !llvm.loop !18

set_rel_time.exit:                                ; preds = %bb.dw, %bb.dx, %bb.ds, %bb.dq, %bb.dr
  %.str.230.sink = phi ptr [ @.str.231, %bb.ds ], [ @.str.230, %bb.dq ], [ @.str.230, %bb.dr ], [ @.str.232, %bb.dx ], [ @.str.232, %bb.dw ]
  %i.mz = load ptr, ptr @stderr, align 8
  %i.na = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.mz, i32 noundef 2, ptr noundef %.str.230.sink, ptr noundef %.140.i571) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread649

bb.dz:                                            ; preds = %bb.f
  %i.nb = call zeroext i1 @ws_log_is_wslog_arg(i32 noundef %i.ax)
  br i1 %i.nb, label %.backedge2059, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.nc = load i32, ptr @ws_optopt, align 4
  switch i32 %i.nc, label %bb.ee [
    i32 70, label %bb.eb
    i32 84, label %bb.ec
    i32 3012, label %bb.ed
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.nd = load ptr, ptr @stdout, align 8
  call fastcc void @list_capture_types(ptr noundef %i.nd)
  br label %.thread649

bb.ec:                                            ; preds = %bb.ea
  %i.ne = load ptr, ptr @stdout, align 8
  call fastcc void @list_encap_types(ptr noundef %i.ne)
  br label %.thread649

bb.ed:                                            ; preds = %bb.ea
  call fastcc void @list_output_compression_types()
  br label %.thread649

bb.ee:                                            ; preds = %bb.ea
  %i.nf = load ptr, ptr @stderr, align 8
  call fastcc void @print_usage(ptr noundef %i.nf)
  br label %.thread649

bb.ef:                                            ; preds = %bb.d
  %i.ng = load i32, ptr %i.g, align 4
  %i.nh = load i32, ptr @ws_optind, align 4
  %i.ni = sub i32 %i.ng, %i.nh
  %i.nj = icmp slt i32 %i.ni, 2
  br i1 %i.nj, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.nk = load ptr, ptr @stderr, align 8
  call fastcc void @print_usage(ptr noundef %i.nk)
  br label %.thread649

bb.eh:                                            ; preds = %bb.ef
  %i.nl = load i32, ptr @out_file_type_subtype, align 4
  %i.nm = icmp eq i32 %i.nl, -1
  br i1 %i.nm, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.nn = call i32 @wtap_pcapng_file_type_subtype()
  store i32 %i.nn, ptr @out_file_type_subtype, align 4
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %i.no = load i64, ptr %i.p, align 8
  %.not459 = icmp eq i64 %i.no, 0
  br i1 %.not459, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.np = call zeroext i1 @nstime_is_unset(ptr noundef nonnull %3)
  br i1 %i.np, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.nq = load i32, ptr @ws_optind, align 4
  %i.nr = add i32 %i.nq, 1
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr [8 x i8], ptr %1, i64 %i.ns
  %i.nu = load ptr, ptr %i.nt, align 8
  %i.nv = call fastcc zeroext i1 @fileset_extract_prefix_suffix(ptr noundef %i.nu, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.v)
  br i1 %i.nv, label %.thread-pre-split624_crit_edge, label %.thread649

.thread-pre-split624_crit_edge:                   ; preds = %bb.el
  %.pr625.pre = load i32, ptr %i.v, align 4
  br label %thread-pre-split624

bb.em:                                            ; preds = %bb.ek
  %i.nw = load i32, ptr %i.v, align 4             ; 2 uses
  %i.nx = icmp eq i32 %i.nw, 4
  br i1 %i.nx, label %bb.en, label %.thread626

bb.en:                                            ; preds = %bb.em
  %i.ny = load i32, ptr @ws_optind, align 4
  %i.nz = add i32 %i.ny, 1
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr [8 x i8], ptr %1, i64 %i.oa
  %i.oc = load ptr, ptr %i.ob, align 8
  %i.od = call ptr @strrchr(ptr noundef %i.oc, i32 noundef 46) #19 ; 2 uses
  %.not460 = icmp eq ptr %i.od, null
  br i1 %.not460, label %.thread629, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.oe = getelementptr i8, ptr %i.od, i64 1
  %i.of = call i32 @ws_extension_to_compression_type(ptr noundef %i.oe) ; 2 uses
  store i32 %i.of, ptr %i.v, align 4
  br label %thread-pre-split624

thread-pre-split624:                              ; preds = %.thread-pre-split624_crit_edge, %bb.eo
  %.pr628 = phi i32 [ %i.of, %bb.eo ], [ %.pr625.pre, %.thread-pre-split624_crit_edge ] ; 2 uses
  %i.og = icmp eq i32 %.pr628, 4
  br i1 %i.og, label %.thread629, label %.thread626

.thread626:                                       ; preds = %thread-pre-split624, %bb.em
  %i.oh = phi i32 [ %i.nw, %bb.em ], [ %.pr628, %thread-pre-split624 ] ; 3 uses
  %i.oi = call zeroext i1 @ws_can_write_compression_type(i32 noundef %i.oh)
  br i1 %i.oi, label %bb.eq, label %bb.ep

.thread629:                                       ; preds = %bb.en, %thread-pre-split624
  store i32 0, ptr %i.v, align 4
  %i.oj = call zeroext i1 @ws_can_write_compression_type(i32 noundef 0)
  br i1 %i.oj, label %.thread630, label %bb.ep

bb.ep:                                            ; preds = %.thread629, %.thread626
  %i.ok = phi i32 [ 0, %.thread629 ], [ %i.oh, %.thread626 ]
  %i.ol = call ptr @ws_compression_type_description(i32 noundef %i.ok)
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.60, ptr noundef %i.ol)
  br label %.thread649

bb.eq:                                            ; preds = %.thread626
  %.not461 = icmp eq i32 %i.oh, 0
  br i1 %.not461, label %.thread630, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.om = load i32, ptr @out_file_type_subtype, align 4
  %i.on = call zeroext i1 @wtap_dump_can_compress(i32 noundef %i.om)
  br i1 %i.on, label %.thread630, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.oo = load i32, ptr @out_file_type_subtype, align 4
  %i.op = call ptr @wtap_file_type_subtype_name(i32 noundef %i.oo)
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.61, ptr noundef %i.op)
  br label %.thread649

.thread630:                                       ; preds = %.thread629, %bb.er, %bb.eq
  %i.oq = load double, ptr @err_prob, align 8
  %i.or = fcmp ult double %i.oq, 0.000000e+00
  br i1 %i.or, label %bb.ey, label %bb.et

bb.et:                                            ; preds = %.thread630
  br i1 %.0310, label %._crit_edge1384, label %bb.eu

._crit_edge1384:                                  ; preds = %bb.et
  %.pre1380.pre = load i32, ptr %i.u, align 4
  br label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.os = call i64 @time(ptr noundef null) #18
  %i.ot = call i32 @getpid() #18
  %i.ou = trunc i64 %i.os to i32
  %i.ov = add i32 %i.ot, %i.ou                    ; 2 uses
  store i32 %i.ov, ptr %i.u, align 4
  br label %bb.ev

bb.ev:                                            ; preds = %._crit_edge1384, %bb.eu
  %.pre1380 = phi i32 [ %.pre1380.pre, %._crit_edge1384 ], [ %i.ov, %bb.eu ] ; 2 uses
  %.b452 = load i1, ptr @verbose, align 1
  br i1 %.b452, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ow = load ptr, ptr @stderr, align 8
  %i.ox = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ow, i32 noundef 2, ptr noundef @.str.62, i32 noundef %.pre1380) ; 0 uses
  %.pre = load i32, ptr %i.u, align 4
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.oy = phi i32 [ %.pre, %bb.ew ], [ %.pre1380, %bb.ev ]
  call void @srand(i32 noundef %i.oy) #18
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %.thread630
  %.b426 = load i1, ptr @have_starttime, align 1
  %.b428 = load i1, ptr @have_stoptime, align 1
  %or.cond11 = select i1 %.b426, i1 %.b428, i1 false
  br i1 %or.cond11, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.oz = call i32 @nstime_cmp(ptr noundef @starttime, ptr noundef @stoptime)
  %i.pa = icmp sgt i32 %i.oz, 0
  br i1 %i.pa, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  call void (ptr, ...) @cmdarg_err(ptr noundef @.str.63)
  br label %.thread649

bb.fb:                                            ; preds = %bb.ez, %bb.ey
  %i.pb = load i64, ptr %i.p, align 8
  %.not462 = icmp eq i64 %i.pb, 0
  br i1 %.not462, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pc = call zeroext i1 @nstime_is_unset(ptr noundef nonnull %3)
end_hunk_2
