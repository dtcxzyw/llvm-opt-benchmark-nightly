Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/upack?download=true
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_exe_section = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzmastate = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Upack: EP: %08x original:  %08X || %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Upack: context bits out of bounds\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Upack: Context Bits parameter used with lzma: %02x, %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Upack: loc_edi > end_edi breaks cli_rebuildpe() bb#11216\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Upack: data initialized, before upack lzma call!\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Upack: EP: %08x original %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Upack: something's wrong, report back\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Upack: %p %p %08x %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Upack: EBX: %08x\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Upack: DEST: %08x, %08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Upack: probably hand-crafted data, report back\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"Upack: ecx counter: %08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Upack: before_fixing\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Upack v 1.1/1.2\0A\00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"Upack(alt begin): loc_edi > end_edi breaks cli_rebuildpe() bb#11216\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Upack: alvalue out of bounds\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Upack: loops: %08x search value: %02x\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Upack: callfixerr %p %08x = %p, %p\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Upack: callfixerr\0A\00", align 1
@.str.19 = private unnamed_addr constant [82 x i8] c"Upack: Rebuilt section exceeds allocated buffer; breaks cli_rebuildpe() bb#11282\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Upack: Rebuilding failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"\0A\09p0: %p\0A\09p1: %08x\0A\09p2: %08x\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"state[%d] = %08x\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @unupack(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.cli_exe_section, align 4    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  %.not = icmp eq i32 %0, 0                       ; 2 uses
  br i1 %.not, label %bb.bi, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.b = load i8, ptr %i.a, align 1, !tbaa !8
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8
  %i.f = icmp eq i8 %i.e, 54
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.g = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.b ] ; 2 uses
  %.not1076 = phi i32 [ 3, %bb.d ], [ 2, %bb.c ], [ 2, %bb.b ]
  %.0875 = phi i32 [ 3, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.i = load i32, ptr %i.h, align 1, !tbaa !8
  %i.j = sub i32 %i.i, %4
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 3 uses
  %i.m = icmp ugt i32 %2, 11
  br i1 %i.m, label %bb.f, label %.thread1181

bb.f:                                             ; preds = %bb.e
  %i.n = zext i32 %2 to i64                       ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 19 uses
  %i.q = add i64 %i.o, 12                         ; 2 uses
  %i.r = add i64 %i.n, %i.p                       ; 32 uses
  %.not1053 = icmp ule i64 %i.q, %i.r
  %i.s = icmp ugt i64 %i.q, %i.p
  %or.cond = and i1 %.not1053, %i.s
  %i.t = icmp ugt i64 %i.r, %i.o
  %or.cond1114 = and i1 %i.t, %or.cond
  br i1 %or.cond1114, label %bb.g, label %.thread1181

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.l, align 1, !tbaa !8    ; 2 uses
  %i.v = sub i32 %i.u, %4                         ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %i.v, i32 noundef %i.u) #4
  br i1 %i.g, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load i32, ptr %i.w, align 1, !tbaa !8
  %i.y = sub i32 %i.x, %4
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = zext i32 %5 to i64                      ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = add i64 %i.ae, 2                        ; 2 uses
  %.not1058 = icmp ule i64 %i.af, %i.r
  %i.ag = icmp ugt i64 %i.af, %i.p
  %or.cond1115 = and i1 %.not1058, %i.ag
  %i.ah = icmp ugt i64 %i.r, %i.ae
  %or.cond1116 = and i1 %i.ah, %or.cond1115
  br i1 %or.cond1116, label %bb.i, label %.thread1181

bb.i:                                             ; preds = %bb.h
  %i.ai = add i32 %5, 10
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %.not1059 = icmp eq i8 %i.al, -21
  br i1 %.not1059, label %bb.j, label %.thread1181

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 11
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = sext i8 %i.an to i64
  %i.ap = add nsw i64 %i.ao, %i.ab                ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 38 ; 2 uses
  %.not1060 = icmp slt i64 %i.ap, -38
  br i1 %.not1060, label %.thread1181, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = add i64 %i.as, 2                        ; 2 uses
  %.not1061 = icmp ule i64 %i.at, %i.r
  %i.au = icmp ugt i64 %i.at, %i.p
  %or.cond1117 = and i1 %.not1061, %i.au
  %i.av = icmp ugt i64 %i.r, %i.as
  %or.cond1118 = and i1 %i.av, %or.cond1117
  br i1 %or.cond1118, label %bb.l, label %.thread1181

bb.l:                                             ; preds = %bb.k
  %i.aw = load i8, ptr %i.ar, align 1, !tbaa !8
  %.not1062 = icmp eq i8 %i.aw, -21
  br i1 %.not1062, label %bb.m, label %.thread1181

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 39 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !8
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  br label %bb.q

bb.n:                                             ; preds = %bb.g
  %i.bc = zext i32 %5 to i64                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 7
  %i.bf = ptrtoint ptr %i.be to i64               ; 2 uses
  %i.bg = add i64 %i.bf, 5                        ; 2 uses
  %.not1055 = icmp ule i64 %i.bg, %i.r
  %i.bh = icmp ugt i64 %i.bg, %i.p
  %or.cond1119 = and i1 %.not1055, %i.bh
  %i.bi = icmp ugt i64 %i.r, %i.bf
  %or.cond1120 = and i1 %i.bi, %or.cond1119
  br i1 %or.cond1120, label %bb.o, label %.thread1181

bb.o:                                             ; preds = %bb.n
  %i.bj = add i32 %5, 7
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8
  %.not1056 = icmp eq i8 %i.bm, -23
  br i1 %.not1056, label %bb.p, label %.thread1181

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bo = load i32, ptr %i.bn, align 1, !tbaa !8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %1, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bc ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 49
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.m
  %.pn = phi ptr [ %i.aq, %bb.m ], [ %i.br, %bb.p ] ; 8 uses
  %.0911 = phi ptr [ %i.aa, %bb.m ], [ null, %bb.p ] ; 42 uses
  %.0899 = phi ptr [ %i.bb, %bb.m ], [ %i.bs, %bb.p ] ; 4 uses
  %.0872 = phi i32 [ 8, %bb.m ], [ 10, %bb.p ]    ; 2 uses
  %.0919 = getelementptr inbounds nuw i8, ptr %.pn, i64 12 ; 2 uses
  %.not1063 = icmp ult ptr %.0899, %1
  br i1 %.not1063, label %.thread1181, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = ptrtoint ptr %.0899 to i64              ; 2 uses
  %i.bu = add i64 %i.bt, 2                        ; 2 uses
  %.not1064 = icmp ule i64 %i.bu, %i.r
  %i.bv = icmp ugt i64 %i.bu, %i.p
  %or.cond1121 = and i1 %.not1064, %i.bv
  %i.bw = icmp ugt i64 %i.r, %i.bt
  %or.cond1122 = and i1 %i.bw, %or.cond1121
  br i1 %or.cond1122, label %bb.s, label %.thread1181

bb.s:                                             ; preds = %bb.r
  %i.bx = load i8, ptr %.0899, align 1, !tbaa !8
  %.not1065 = icmp eq i8 %i.bx, -75
  br i1 %.not1065, label %bb.t, label %.thread1181

bb.t:                                             ; preds = %bb.s
  %i.by = getelementptr inbounds nuw i8, ptr %.0899, i64 1 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8   ; 2 uses
  %i.ca = zext i8 %i.bz to i32                    ; 3 uses
  %i.cb = or disjoint i32 %.0872, 5               ; 2 uses
  %.not1066 = icmp ugt i32 %i.cb, %2
  br i1 %.not1066, label %.thread1181, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.ce = add i64 %i.cc, %i.cd                    ; 2 uses
  %.not1068 = icmp ule i64 %i.ce, %i.r
  %i.cf = icmp ugt i64 %i.ce, %i.p
  %or.cond1123 = and i1 %.not1068, %i.cf
  %i.cg = icmp ugt i64 %i.r, %i.cd
  %or.cond1124 = and i1 %i.cg, %or.cond1123
  br i1 %or.cond1124, label %bb.v, label %.thread1181

bb.v:                                             ; preds = %bb.u
  %i.ch = zext nneg i32 %.0872 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !8
  %.not1069 = icmp eq i8 %i.cj, -23
  br i1 %.not1069, label %bb.w, label %.thread1181

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  %i.cl = load i32, ptr %i.ck, align 1, !tbaa !8  ; 2 uses
  br i1 %i.g, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %10 = zext i32 %i.cl to i64
  %11 = ptrtoint ptr %.0919 to i64
  %12 = sub i64 %11, %i.p
  %13 = add nsw i64 %12, %10
  %i.cm = getelementptr inbounds nuw i8, ptr %.pn, i64 39
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %14 = sext i8 %i.cn to i64
  %15 = add nsw i64 %13, %14
  %16 = trunc i64 %15 to i32
  %i.co = add i32 %16, 52
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %17 = ptrtoint ptr %.0919 to i64
  %18 = sub i64 %17, %i.p
  %i.cp = trunc i64 %18 to i32
  %i.cq = add i32 %i.cp, 53
  %i.cr = add i32 %i.cq, %i.cl
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0881 = phi i32 [ %i.co, %bb.x ], [ %i.cr, %bb.y ]
  %i.cs = zext i32 %.0881 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 42 ; 2 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = add i64 %i.cv, 2                        ; 2 uses
  %.not1071 = icmp ule i64 %i.cw, %i.r
  %i.cx = icmp ugt i64 %i.cw, %i.p
  %or.cond1125 = and i1 %.not1071, %i.cx
  %i.cy = icmp ugt i64 %i.r, %i.cv
  %or.cond1126 = and i1 %i.cy, %or.cond1125
  br i1 %or.cond1126, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 43
  %i.da = load i8, ptr %i.cu, align 1, !tbaa !8
  %.not1072 = icmp eq i8 %i.da, -29
  br i1 %.not1072, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.db = getelementptr inbounds nuw i8, ptr %i.ct, i64 45 ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64               ; 2 uses
  %i.dd = add i64 %i.dc, 2                        ; 2 uses
  %.not1074 = icmp ule i64 %i.dd, %i.r
  %i.de = icmp ugt i64 %i.dd, %i.p
  %or.cond1127 = and i1 %.not1074, %i.de
  %i.df = icmp ugt i64 %i.r, %i.dc
  %or.cond1128 = and i1 %i.df, %or.cond1127
  br i1 %or.cond1128, label %bb.ac, label %.thread1181

bb.ac:                                            ; preds = %bb.ab
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ct, i64 46
  %i.dh = load i8, ptr %i.db, align 1, !tbaa !8
  %.not1075 = icmp eq i8 %i.dh, -29
  br i1 %.not1075, label %bb.ad, label %.thread1181

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.1900 = phi ptr [ %i.cz, %bb.aa ], [ %i.dg, %bb.ac ] ; 2 uses
  %.1876 = phi i32 [ %.0875, %bb.aa ], [ %.not1076, %bb.ac ]
  %.0874 = phi i32 [ 8, %bb.aa ], [ 7, %bb.ac ]   ; 3 uses
  %.0873 = phi i64 [ 24, %bb.aa ], [ 26, %bb.ac ]
  %i.di = load i8, ptr %.1900, align 1, !tbaa !8
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.1900, i64 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1 ; 4 uses
  %.not1077 = icmp ult ptr %i.dl, %1
  br i1 %.not1077, label %.thread1181, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.dn = add nuw nsw i32 %.0874, 5
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = add i64 %i.dm, %i.do                    ; 2 uses
  %.not1078 = icmp ule i64 %i.dp, %i.r
  %i.dq = icmp ugt i64 %i.dp, %i.p
  %or.cond1129 = and i1 %.not1078, %i.dq
  %i.dr = icmp ugt i64 %i.r, %i.dm
  %or.cond1130 = and i1 %i.dr, %or.cond1129
  br i1 %or.cond1130, label %bb.af, label %.thread1181

bb.af:                                            ; preds = %bb.ae
  %i.ds = zext nneg i32 %.0874 to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ds ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %.not1079 = icmp eq i8 %i.du, -23
  br i1 %.not1079, label %bb.ag, label %.thread1181

bb.ag:                                            ; preds = %bb.af
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  %i.dw = load i32, ptr %i.dv, align 1, !tbaa !8
  %i.dx = or disjoint i32 %.0874, 32
  %i.dy = add i32 %i.dx, %i.dw
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dz
  %i.eb = icmp eq i32 %.1876, 3                   ; 4 uses
  %spec.select.idx = select i1 %i.eb, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.ea, i64 %spec.select.idx
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.0873 ; 4 uses
  %i.ed = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ee = add i64 %i.ed, 3                        ; 2 uses
  %.not1081 = icmp ule i64 %i.ee, %i.r
  %i.ef = icmp ugt i64 %i.ee, %i.p
  %or.cond1131 = and i1 %.not1081, %i.ef
  %i.eg = icmp ugt i64 %i.r, %i.ed
  %or.cond1132 = and i1 %i.eg, %or.cond1131
  br i1 %or.cond1132, label %bb.ah, label %.thread1181

bb.ah:                                            ; preds = %bb.ag
  %i.eh = load i8, ptr %i.ec, align 1, !tbaa !8
  %.not1082 = icmp eq i8 %i.eh, -63
  br i1 %.not1082, label %bb.ai, label %.thread1181

bb.ai:                                            ; preds = %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8
  %.not1083 = icmp eq i8 %i.ej, -19
  br i1 %.not1083, label %bb.aj, label %.thread1181

bb.aj:                                            ; preds = %bb.ai
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !8   ; 2 uses
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %i.en = shl nuw nsw i32 %i.ca, 8                ; 2 uses
  %i.eo = add i8 %i.el, -9
  %or.cond26 = icmp ult i8 %i.eo, -7
  br i1 %or.cond26, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #4
  br label %.thread1181

bb.al:                                            ; preds = %bb.aj
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.em, i32 noundef %i.en) #4
  br i1 %i.eb, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn, i64 18 ; 3 uses
  %.not1087 = icmp ult ptr %i.ep, %1
  br i1 %.not1087, label %.thread1181, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.er = add i64 %i.eq, 10                       ; 2 uses
  %.not1088 = icmp ule i64 %i.er, %i.r
  %i.es = icmp ugt i64 %i.er, %i.p
  %or.cond1133 = and i1 %.not1088, %i.es
  %i.et = icmp ugt i64 %i.r, %i.eq
  %or.cond1134 = and i1 %i.et, %or.cond1133
  br i1 %or.cond1134, label %bb.ao, label %.thread1181

bb.ao:                                            ; preds = %bb.an
  %i.eu = load i8, ptr %i.ep, align 1, !tbaa !8
  %.not1089 = icmp eq i8 %i.eu, -66
  br i1 %.not1089, label %bb.ap, label %.thread1181

bb.ap:                                            ; preds = %bb.ao
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn, i64 23
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !8
  %.not1090 = icmp eq i8 %i.ew, -65
  br i1 %.not1090, label %bb.aq, label %.thread1181

bb.aq:                                            ; preds = %bb.ap
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn, i64 19
  %i.ey = load i32, ptr %i.ex, align 1, !tbaa !8  ; 3 uses
  %i.ez = icmp ult i32 %i.ey, %6
  %i.fa = icmp ugt i32 %i.ey, %4
  %or.cond1135 = or i1 %i.ez, %i.fa
  br i1 %or.cond1135, label %.thread1181, label %bb.au

bb.ar:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn, i64 19 ; 3 uses
  %.not1084 = icmp ult ptr %i.fb, %1
  br i1 %.not1084, label %.thread1181, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fc = ptrtoint ptr %i.fb to i64               ; 2 uses
  %i.fd = add i64 %i.fc, 5                        ; 2 uses
  %.not1085 = icmp ule i64 %i.fd, %i.r
  %i.fe = icmp ugt i64 %i.fd, %i.p
  %or.cond1136 = and i1 %.not1085, %i.fe
  %i.ff = icmp ugt i64 %i.r, %i.fc
  %or.cond1137 = and i1 %i.ff, %or.cond1136
  br i1 %or.cond1137, label %bb.at, label %.thread1181

bb.at:                                            ; preds = %bb.as
  %i.fg = load i8, ptr %i.fb, align 1, !tbaa !8
  %.not1086 = icmp eq i8 %i.fg, -66
  br i1 %.not1086, label %bb.ay, label %.thread1181

bb.au:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %i.fi = load i32, ptr %i.fh, align 1, !tbaa !8
  %i.fj = sub i32 %i.fi, %4
  %i.fk = zext i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 %i.fk ; 24 uses
  %i.fm = sub nuw i32 %i.ey, %6
  %.pn10911177 = zext i32 %i.fm to i64
  %.19201178 = getelementptr inbounds nuw i8, ptr %1, i64 %.pn10911177 ; 24 uses
  %i.fn = shl nuw nsw i32 %i.ca, 10
  %i.fo = or disjoint i32 %i.fn, 112              ; 2 uses
  %.not1097 = icmp ugt i32 %i.fo, %2
  br i1 %.not1097, label %.thread1181, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fp = zext nneg i32 %i.fo to i64
  %i.fq = ptrtoint ptr %i.fl to i64               ; 2 uses
  %i.fr = add i64 %i.fq, %i.fp                    ; 2 uses
  %.not1099 = icmp ule i64 %i.fr, %i.r
  %i.fs = icmp ugt i64 %i.fr, %i.p
  %or.cond1138 = and i1 %.not1099, %i.fs
  br i1 %or.cond1138, label %bb.aw, label %.thread1181

bb.aw:                                            ; preds = %bb.av
  %i.ft = icmp ugt i64 %i.r, %i.fq
  %i.fu = icmp ugt i32 %2, 191
end_hunk_0
begin_hunk_1_@unupack:bb.a
  %i.nq = load i32, ptr %i.np, align 1, !tbaa !8
  %i.nr = getelementptr inbounds i8, ptr %.4915, i64 -4
  %i.ns = load i32, ptr %i.nr, align 1, !tbaa !8
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 1>, ptr %.4915, align 1, !tbaa !8
  %i.nt = getelementptr inbounds nuw i8, ptr %.4915, i64 16
  store i32 1, ptr %i.nt, align 1, !tbaa !8
  %i.nu = getelementptr inbounds nuw i8, ptr %.4915, i64 20
  store i32 1, ptr %i.nu, align 1, !tbaa !8
  %i.nv = zext i32 %i.ns to i64
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 %i.nv
  %i.nx = zext i32 %4 to i64                      ; 2 uses
  %i.ny = sub nsw i64 0, %i.nx                    ; 3 uses
  %i.nz = getelementptr inbounds i8, ptr %i.nw, i64 %i.ny
  %.not1293.a = icmp eq i8 %i.bz, 0
  br i1 %.not1293.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit
  %i.oa = getelementptr inbounds nuw i8, ptr %.4915, i64 24
  %i.ob = add nsw i32 %i.en, -8
  %i.oc = zext i32 %i.ob to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.lr.ph.preheader
  %index = phi i64 [ 0, %.lr.ph.preheader ], [ %index.next, %vector.body ] ; 3 uses
  %i.od = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.oa, i64 %i.od ; 2 uses
  %i.oe = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1024), ptr %next.gep, align 1, !tbaa !8
  store <4 x i32> splat (i32 1024), ptr %i.oe, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 8
  %i.of = icmp eq i64 %index, %i.oc
  br i1 %i.of, label %._crit_edge, label %vector.body, !llvm.loop !10

._crit_edge:                                      ; preds = %vector.body, %.loopexit
  %i.og = getelementptr inbounds nuw i8, ptr %.4923, i64 12
  %i.oh = load i32, ptr %i.og, align 1, !tbaa !8
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds i8, ptr %1, i64 %i.oi
  %i.ok = getelementptr inbounds i8, ptr %i.oj, i64 %i.ny
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 %i.nx
  %i.om = zext i32 %6 to i64
  %i.on = sub nsw i64 0, %i.om
  %i.oo = getelementptr inbounds i8, ptr %i.ol, i64 %i.on
  %.7918 = select i1 %i.eb, ptr %i.oo, ptr %i.ok  ; 3 uses
  br i1 %i.eb, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %._crit_edge
  %i.op = getelementptr inbounds nuw i8, ptr %.4923, i64 100
  %i.oq = getelementptr inbounds nuw i8, ptr %.4923, i64 64
  %i.or = load i32, ptr %i.oq, align 1, !tbaa !8
  br label %bb.bf

bb.be:                                            ; preds = %._crit_edge
  %i.os = getelementptr inbounds nuw i8, ptr %.4923, i64 52
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn1103.in.in = phi ptr [ %i.op, %bb.bd ], [ %i.os, %bb.be ]
  %.0887 = phi i32 [ %i.or, %bb.bd ], [ %i.nq, %bb.be ]
  %.pn1103.in = load i32, ptr %.pn1103.in.in, align 1, !tbaa !8
  %.pn1103 = sext i32 %.pn1103.in to i64
  %.pn1102 = getelementptr inbounds i8, ptr %1, i64 %.pn1103
  %.0905 = getelementptr inbounds i8, ptr %.pn1102, i64 %i.ny ; 3 uses
  %i.ot = icmp ugt ptr %.7918, %.0905
  br i1 %i.ot, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #4
  br label %.thread1181

bb.bh:                                            ; preds = %bb.bf
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #4
  %i.ou = tail call i32 @unupack399(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0, ptr noundef nonnull %.4915, i32 noundef 0, ptr noundef %.7918, ptr noundef %.0905, i32 noundef %i.em, ptr noundef %i.nz)
  %.not1220 = icmp eq i32 %i.ou, -1
  br i1 %.not1220, label %.thread1181, label %bb.ct

bb.bi:                                            ; preds = %bb.a
  %i.ov = zext i32 %4 to i64                      ; 2 uses
  %i.ow = zext i32 %5 to i64                      ; 3 uses
  %i.ox = add nuw nsw i64 %i.ow, %i.ov            ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ox ; 8 uses
  %i.oz = load i8, ptr %3, align 1, !tbaa !8
  %i.pa = icmp eq i8 %i.oz, -66
  br i1 %i.pa, label %bb.bj, label %.thread1190

bb.bj:                                            ; preds = %bb.bi
  %i.pb = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !8
  %i.pd = icmp eq i8 %i.pc, -83
  br i1 %i.pd, label %bb.bk, label %.thread1190

bb.bk:                                            ; preds = %bb.bj
  %i.pe = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !8
  %i.pg = icmp eq i8 %i.pf, -117
  br i1 %i.pg, label %bb.bl, label %.thread1190

bb.bl:                                            ; preds = %bb.bk
  %i.ph = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !8
  %i.pj = icmp eq i8 %i.pi, -8
  br i1 %i.pj, label %bb.bm, label %.thread1190

.thread1190:                                      ; preds = %bb.bj, %bb.bk, %bb.bi, %bb.bl
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.thread1190
  %.sink = phi i64 [ 449, %.thread1190 ], [ 388, %bb.bl ]
  %i.pk = phi i1 [ true, %.thread1190 ], [ false, %bb.bl ] ; 2 uses
  %i.pl = phi i1 [ false, %.thread1190 ], [ true, %bb.bl ] ; 2 uses
  %.0868 = phi i32 [ 535, %.thread1190 ], [ 420, %bb.bl ] ; 3 uses
  %.0867 = phi i64 [ 58, %.thread1190 ], [ 27, %bb.bl ]
  %.0866 = phi i64 [ 95, %.thread1190 ], [ 65, %bb.bl ]
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.sink ; 3 uses
  %i.pn = zext i32 %2 to i64                      ; 4 uses
  %.not1021 = icmp eq i32 %2, 0
  br i1 %.not1021, label %.thread1181, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.po = add nuw nsw i32 %.0868, 4               ; 2 uses
  %.not1022 = icmp ugt i32 %i.po, %2
  br i1 %.not1022, label %.thread1181, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.pp = zext nneg i32 %i.po to i64
  %i.pq = ptrtoint ptr %i.oy to i64               ; 2 uses
  %i.pr = ptrtoint ptr %1 to i64                  ; 12 uses
  %i.ps = add i64 %i.pp, %i.pq                    ; 2 uses
  %i.pt = add i64 %i.pn, %i.pr                    ; 20 uses
  %.not1024 = icmp ule i64 %i.ps, %i.pt
  %i.pu = icmp ugt i64 %i.ps, %i.pr
  %or.cond1146 = and i1 %.not1024, %i.pu
  %i.pv = icmp ugt i64 %i.pt, %i.pq
  %or.cond1147 = and i1 %i.pv, %or.cond1146
  br i1 %or.cond1147, label %bb.bp, label %.thread1181

bb.bp:                                            ; preds = %bb.bo
  %i.pw = zext nneg i32 %.0868 to i64
  %i.px = getelementptr inbounds nuw i8, ptr %i.oy, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 1, !tbaa !8
  %i.pz = add i32 %4, 4
  %i.qa = add i32 %i.pz, %5
  %i.qb = add i32 %i.qa, %.0868
  %i.qc = add i32 %i.qb, %i.py                    ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef %i.qc) #4
  %i.qd = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.0866
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !8   ; 2 uses
  %i.qf = zext i8 %i.qe to i32
  %i.qg = sub nsw i32 8, %i.qf                    ; 3 uses
  %i.qh = icmp ult i32 %i.qg, 2
  %i.qi = icmp ugt i8 %i.qe, 8
  %or.cond46 = or i1 %i.qi, %i.qh
  br i1 %or.cond46, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #4
  br label %.thread1181

bb.br:                                            ; preds = %bb.bp
  %i.qj = getelementptr inbounds nuw i8, ptr %i.oy, i64 %.0867
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !8   ; 3 uses
  %i.ql = zext i8 %i.qk to i32                    ; 2 uses
  %i.qm = shl nuw nsw i32 %i.ql, 8                ; 4 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.2, i32 noundef %i.qg, i32 noundef %i.qm) #4
  br i1 %i.pk, label %bb.bs, label %bb.ck

bb.bs:                                            ; preds = %bb.br
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oy, i64 6 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 1, !tbaa !8  ; 2 uses
  store i32 0, ptr %i.qn, align 1, !tbaa !8
  %.not1028 = icmp eq i32 %i.qo, 0
  br i1 %.not1028, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.6) #4
  br label %.thread1181

bb.bu:                                            ; preds = %bb.bs
  %i.qp = add i32 %i.qo, -2
  %i.qq = zext i32 %i.qp to i64                   ; 2 uses
  %i.qr = sub nsw i64 4, %i.qq                    ; 2 uses
  %i.qs = getelementptr inbounds i8, ptr %i.oy, i64 %i.qr ; 7 uses
  %i.qt = add nsw i64 %i.qr, %i.ox                ; 2 uses
  %.not1029 = icmp slt i64 %i.qt, 0
  br i1 %.not1029, label %.thread1181, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qu = ptrtoint ptr %i.qs to i64               ; 2 uses
  %i.qv = add i64 %i.qu, 12                       ; 2 uses
  %.not1030 = icmp ule i64 %i.qv, %i.pt
  %i.qw = icmp ugt i64 %i.qv, %i.pr
  %or.cond1148 = and i1 %.not1030, %i.qw
  %i.qx = icmp ugt i64 %i.pt, %i.qu
  %or.cond1149 = and i1 %i.qx, %or.cond1148
  br i1 %or.cond1149, label %bb.bw, label %.thread1181

bb.bw:                                            ; preds = %bb.bv
  %i.qy = load i32, ptr %i.qs, align 1, !tbaa !8
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.qs, ptr noundef nonnull %1, i32 noundef %i.qy, i32 noundef %6) #4
  %i.qz = load i32, ptr %i.qs, align 1, !tbaa !8
  %19 = zext i32 %i.qz to i64
  %i.ra = zext i32 %6 to i64                      ; 5 uses
  %i.rb = sub nsw i64 0, %i.ra                    ; 2 uses
  %.neg = sub nsw i64 %i.ra, %19
  %gepdiff = add nsw i64 %.neg, %i.qt             ; 2 uses
  %20 = trunc i64 %gepdiff to i32                 ; 2 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.8, i32 noundef %20) #4
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  %i.rd = load i32, ptr %i.rc, align 1, !tbaa !8  ; 3 uses
  %i.re = sext i32 %i.rd to i64                   ; 3 uses
  %i.rf = sub nsw i64 %i.re, %i.ra                ; 2 uses
  %i.rg = getelementptr inbounds i8, ptr %1, i64 %i.rf ; 10 uses
  %i.rh = sub i32 %i.rd, %6
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.9, i32 noundef %i.rd, i32 noundef %i.rh) #4
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.rj = load i32, ptr %i.ri, align 1, !tbaa !8  ; 10 uses
  %i.rk = icmp slt i32 %i.rj, 0
  br i1 %i.rk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.10) #4
  br label %.thread1181

bb.by:                                            ; preds = %bb.bw
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qs, i64 12 ; 5 uses
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.rj) #4
  %narrow = add nuw i32 %i.rj, %i.qm              ; 2 uses
  %i.rm = icmp ugt i32 %narrow, 1073741823
  br i1 %i.rm, label %.thread1181, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.rn = shl nuw nsw i32 %i.rj, 2                ; 2 uses
  %.not1031 = icmp eq i32 %i.rj, 0
  %.not1032 = icmp ugt i32 %i.rn, %2
  %or.cond1150 = select i1 %.not1031, i1 true, i1 %.not1032
  br i1 %or.cond1150, label %.thread1181, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ro = zext nneg i32 %i.rn to i64
  %i.rp = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.rq = add i64 %i.ro, %i.rp                    ; 2 uses
  %.not1034 = icmp ule i64 %i.rq, %i.pt
  %i.rr = icmp ugt i64 %i.rq, %i.pr
  %or.cond1151 = and i1 %.not1034, %i.rr
  %i.rs = icmp ugt i64 %i.pt, %i.rp
  %or.cond1152 = and i1 %i.rs, %or.cond1151
  br i1 %or.cond1152, label %bb.cb, label %.thread1181

bb.cb:                                            ; preds = %bb.ca
  %i.rt = shl nuw i32 %narrow, 2                  ; 2 uses
  %i.ru = zext i32 %i.rt to i64
  %.not1036 = icmp ugt i32 %i.rt, %2
  br i1 %.not1036, label %.thread1181, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rv = ptrtoint ptr %i.rg to i64               ; 3 uses
  %.not1037 = icmp slt i64 %i.rf, 0
  br i1 %.not1037, label %.thread1181, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rw = add i64 %i.ru, %i.rv                    ; 2 uses
  %.not1038 = icmp ule i64 %i.rw, %i.pt
  %i.rx = icmp ugt i64 %i.rw, %i.pr
  %or.cond1154 = and i1 %.not1038, %i.rx
  %i.ry = icmp ugt i64 %i.pt, %i.rv
  %or.cond1155 = select i1 %or.cond1154, i1 %i.ry, i1 false
  br i1 %or.cond1155, label %.lr.ph1266.preheader, label %.thread1181

.lr.ph1266.preheader:                             ; preds = %bb.cd
  %i.rz = zext nneg i32 %i.rj to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.rj, 20
  br i1 %min.iters.check, label %.lr.ph1266.preheader1407, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1266.preheader
  %i.sa = add nsw i64 %i.re, %i.qq
  %i.sb = add nuw nsw i64 %i.ra, %i.ow
  %i.sc = add nuw nsw i64 %i.sb, %i.ov
  %i.sd = sub nsw i64 %i.sa, %i.sc
  %i.se = add nsw i64 %i.sd, -17
  %diff.check = icmp ult i64 %i.se, 31
  br i1 %diff.check, label %.lr.ph1266.preheader1407, label %vector.ph1377

vector.ph1377:                                    ; preds = %vector.memcheck
  %n.vec1378 = and i64 %i.rz, 1073741816          ; 4 uses
  %i.sf = shl nuw nsw i64 %n.vec1378, 2           ; 2 uses
  %i.sg = getelementptr i8, ptr %i.rg, i64 %i.sf  ; 2 uses
  %i.sh = getelementptr i8, ptr %i.rl, i64 %i.sf
  %i.si = trunc nuw nsw i64 %n.vec1378 to i32
  %i.sj = sub nsw i32 %i.rj, %i.si
  br label %vector.body1379

vector.body1379:                                  ; preds = %vector.body1379, %vector.ph1377
  %index1380 = phi i64 [ 0, %vector.ph1377 ], [ %index.next1384, %vector.body1379 ] ; 2 uses
  %i.sk = shl i64 %index1380, 2                   ; 2 uses
  %next.gep1381.a = getelementptr i8, ptr %i.rg, i64 %i.sk ; 2 uses
  %next.gep1382 = getelementptr i8, ptr %i.rl, i64 %i.sk ; 2 uses
  %i.sl = getelementptr i8, ptr %next.gep1382, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep1382, align 1, !tbaa !8
  %wide.load1383 = load <4 x i32>, ptr %i.sl, align 1, !tbaa !8
  %i.sm = getelementptr i8, ptr %next.gep1381.a, i64 16
  store <4 x i32> %wide.load, ptr %next.gep1381.a, align 1, !tbaa !8
  store <4 x i32> %wide.load1383, ptr %i.sm, align 1, !tbaa !8
  %index.next1384 = add nuw i64 %index1380, 8     ; 2 uses
  %i.sn = icmp eq i64 %index.next1384, %n.vec1378
  br i1 %i.sn, label %middle.block1385, label %vector.body1379, !llvm.loop !11

middle.block1385:                                 ; preds = %vector.body1379
  %cmp.n1386 = icmp eq i64 %n.vec1378, %i.rz
  br i1 %cmp.n1386, label %._crit_edge1267, label %.lr.ph1266.preheader1407

.lr.ph1266.preheader1407:                         ; preds = %vector.memcheck, %.lr.ph1266.preheader, %middle.block1385
  %.91265.ph = phi ptr [ %i.rg, %vector.memcheck ], [ %i.rg, %.lr.ph1266.preheader ], [ %i.sg, %middle.block1385 ] ; 2 uses
  %.59241264.ph = phi ptr [ %i.rl, %vector.memcheck ], [ %i.rl, %.lr.ph1266.preheader ], [ %i.sh, %middle.block1385 ] ; 2 uses
  %.49311263.ph = phi i32 [ %i.rj, %vector.memcheck ], [ %i.rj, %.lr.ph1266.preheader ], [ %i.sj, %middle.block1385 ] ; 4 uses
  %i.so = add nsw i32 %.49311263.ph, -1
  %xtraiter = and i32 %.49311263.ph, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1266.prol.loopexit, label %.lr.ph1266.prol

.lr.ph1266.prol:                                  ; preds = %.lr.ph1266.preheader1407, %.lr.ph1266.prol
  %.91265.prol = phi ptr [ %i.sr, %.lr.ph1266.prol ], [ %.91265.ph, %.lr.ph1266.preheader1407 ] ; 2 uses
  %.59241264.prol = phi ptr [ %i.ss, %.lr.ph1266.prol ], [ %.59241264.ph, %.lr.ph1266.preheader1407 ] ; 2 uses
  %.49311263.prol = phi i32 [ %i.sp, %.lr.ph1266.prol ], [ %.49311263.ph, %.lr.ph1266.preheader1407 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph1266.prol ], [ 0, %.lr.ph1266.preheader1407 ]
  %i.sp = add nsw i32 %.49311263.prol, -1         ; 2 uses
  %i.sq = load i32, ptr %.59241264.prol, align 1, !tbaa !8
  store i32 %i.sq, ptr %.91265.prol, align 1, !tbaa !8
  %i.sr = getelementptr inbounds nuw i8, ptr %.91265.prol, i64 4 ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.59241264.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1266.prol.loopexit, label %.lr.ph1266.prol, !llvm.loop !12

.lr.ph1266.prol.loopexit:                         ; preds = %.lr.ph1266.prol, %.lr.ph1266.preheader1407
  %.lcssa1408.unr = phi ptr [ poison, %.lr.ph1266.preheader1407 ], [ %i.sr, %.lr.ph1266.prol ]
  %.91265.unr = phi ptr [ %.91265.ph, %.lr.ph1266.preheader1407 ], [ %i.sr, %.lr.ph1266.prol ]
  %.59241264.unr = phi ptr [ %.59241264.ph, %.lr.ph1266.preheader1407 ], [ %i.ss, %.lr.ph1266.prol ]
  %.49311263.unr = phi i32 [ %.49311263.ph, %.lr.ph1266.preheader1407 ], [ %i.sp, %.lr.ph1266.prol ]
  %i.st = icmp ult i32 %i.so, 7
  br i1 %i.st, label %._crit_edge1267, label %.lr.ph1266

.lr.ph1266:                                       ; preds = %.lr.ph1266.prol.loopexit, %.lr.ph1266
  %.91265 = phi ptr [ %i.tr, %.lr.ph1266 ], [ %.91265.unr, %.lr.ph1266.prol.loopexit ] ; 9 uses
  %.59241264 = phi ptr [ %i.ts, %.lr.ph1266 ], [ %.59241264.unr, %.lr.ph1266.prol.loopexit ] ; 9 uses
  %.49311263 = phi i32 [ %i.tp, %.lr.ph1266 ], [ %.49311263.unr, %.lr.ph1266.prol.loopexit ]
  %i.su = load i32, ptr %.59241264, align 1, !tbaa !8
  store i32 %i.su, ptr %.91265, align 1, !tbaa !8
  %i.sv = getelementptr inbounds nuw i8, ptr %.91265, i64 4
  %i.sw = getelementptr inbounds nuw i8, ptr %.59241264, i64 4
  %i.sx = load i32, ptr %i.sw, align 1, !tbaa !8
  store i32 %i.sx, ptr %i.sv, align 1, !tbaa !8
  %i.sy = getelementptr inbounds nuw i8, ptr %.91265, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %.59241264, i64 8
  %i.ta = load i32, ptr %i.sz, align 1, !tbaa !8
  store i32 %i.ta, ptr %i.sy, align 1, !tbaa !8
  %i.tb = getelementptr inbounds nuw i8, ptr %.91265, i64 12
  %i.tc = getelementptr inbounds nuw i8, ptr %.59241264, i64 12
  %i.td = load i32, ptr %i.tc, align 1, !tbaa !8
  store i32 %i.td, ptr %i.tb, align 1, !tbaa !8
  %i.te = getelementptr inbounds nuw i8, ptr %.91265, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %.59241264, i64 16
  %i.tg = load i32, ptr %i.tf, align 1, !tbaa !8
  store i32 %i.tg, ptr %i.te, align 1, !tbaa !8
  %i.th = getelementptr inbounds nuw i8, ptr %.91265, i64 20
  %i.ti = getelementptr inbounds nuw i8, ptr %.59241264, i64 20
  %i.tj = load i32, ptr %i.ti, align 1, !tbaa !8
  store i32 %i.tj, ptr %i.th, align 1, !tbaa !8
  %i.tk = getelementptr inbounds nuw i8, ptr %.91265, i64 24
  %i.tl = getelementptr inbounds nuw i8, ptr %.59241264, i64 24
  %i.tm = load i32, ptr %i.tl, align 1, !tbaa !8
  store i32 %i.tm, ptr %i.tk, align 1, !tbaa !8
  %i.tn = getelementptr inbounds nuw i8, ptr %.91265, i64 28
  %i.to = getelementptr inbounds nuw i8, ptr %.59241264, i64 28
  %i.tp = add nsw i32 %.49311263, -8              ; 2 uses
  %i.tq = load i32, ptr %i.to, align 1, !tbaa !8
  store i32 %i.tq, ptr %i.tn, align 1, !tbaa !8
  %i.tr = getelementptr inbounds nuw i8, ptr %.91265, i64 32 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.59241264, i64 32
  %.not1039.7 = icmp eq i32 %i.tp, 0
  br i1 %.not1039.7, label %._crit_edge1267, label %.lr.ph1266, !llvm.loop !13

._crit_edge1267:                                  ; preds = %.lr.ph1266.prol.loopexit, %.lr.ph1266, %middle.block1385
  %.lcssa1366 = phi ptr [ %i.sg, %middle.block1385 ], [ %.lcssa1408.unr, %.lr.ph1266.prol.loopexit ], [ %i.tr, %.lr.ph1266 ]
  %i.tt = add i64 %i.rv, 8                        ; 2 uses
  %.not1040 = icmp ule i64 %i.tt, %i.pt
  %i.tu = icmp ugt i64 %i.tt, %i.pr
  %or.cond1156 = and i1 %.not1040, %i.tu
  br i1 %or.cond1156, label %bb.ce, label %.thread1181

bb.ce:                                            ; preds = %._crit_edge1267
  %i.tv = load i32, ptr %i.rg, align 1, !tbaa !8
  %21 = and i64 %gepdiff, 4294967295              ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.tx = add nuw nsw i64 %21, 4
  %i.ty = add i32 %i.tv, -1
  %i.tz = zext i32 %i.ty to i64
  %i.ua = mul i64 %i.tx, %i.tz
  %i.ub = add i64 %i.ua, %i.re
  %i.uc = add i64 %i.ub, %21
  %i.ud = add i64 %i.uc, 4
  %i.ue = sub i64 %i.ud, %i.ra
  %scevgep = getelementptr i8, ptr %1, i64 %i.ue  ; 4 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %scevgep, i64 4 ; 3 uses
  %.not1042 = icmp ult ptr %i.uf, %1
  br i1 %.not1042, label %.thread1181, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ug = ptrtoint ptr %i.uf to i64               ; 2 uses
  %i.uh = add i64 %i.ug, 4                        ; 2 uses
  %.not1043 = icmp ule i64 %i.uh, %i.pt
  %i.ui = icmp ugt i64 %i.uh, %i.pr
  %or.cond1157 = and i1 %.not1043, %i.ui
  %i.uj = icmp ugt i64 %i.pt, %i.ug
  %or.cond1158 = and i1 %i.uj, %or.cond1157
  br i1 %or.cond1158, label %bb.cg, label %.thread1181

bb.cg:                                            ; preds = %bb.cf
  %.not1295 = icmp eq i8 %i.qk, 0
  br i1 %.not1295, label %._crit_edge1273, label %vector.ph1390

vector.ph1390:                                    ; preds = %bb.cg
  %i.uk = load i32, ptr %i.uf, align 1, !tbaa !8
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.uk, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ul = add nsw i32 %i.qm, -8
  %i.um = zext i32 %i.ul to i64
  br label %vector.body1392

vector.body1392:                                  ; preds = %vector.body1392, %vector.ph1390
  %index1393 = phi i64 [ 0, %vector.ph1390 ], [ %index.next1395, %vector.body1392 ] ; 3 uses
  %i.un = shl i64 %index1393, 2
  %next.gep1394 = getelementptr i8, ptr %.lcssa1366, i64 %i.un ; 2 uses
  %i.uo = getelementptr i8, ptr %next.gep1394, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep1394, align 1, !tbaa !8
  store <4 x i32> %broadcast.splat, ptr %i.uo, align 1, !tbaa !8
  %index.next1395 = add nuw i64 %index1393, 8
  %i.up = icmp eq i64 %index1393, %i.um
  br i1 %i.up, label %._crit_edge1273, label %vector.body1392, !llvm.loop !14

._crit_edge1273:                                  ; preds = %vector.body1392, %bb.cg
  %i.uq = getelementptr inbounds nuw i8, ptr %scevgep, i64 24 ; 4 uses
  %i.ur = ptrtoint ptr %i.uq to i64               ; 3 uses
  %i.us = add i64 %i.ur, 4                        ; 2 uses
  %.not1045 = icmp ule i64 %i.us, %i.pt
  %i.ut = icmp ugt i64 %i.us, %i.pr
  %or.cond1159 = and i1 %.not1045, %i.ut
  %i.uu = icmp ugt i64 %i.pt, %i.ur
  %or.cond1160 = and i1 %i.uu, %or.cond1159
  br i1 %or.cond1160, label %bb.ch, label %.thread1181

bb.ch:                                            ; preds = %._crit_edge1273
  %i.uv = load i32, ptr %i.uq, align 1, !tbaa !8
  %i.uw = add i32 %i.uv, %20
  store i32 %i.uw, ptr %i.uq, align 1, !tbaa !8
  %i.ux = getelementptr inbounds nuw i8, ptr %scevgep, i64 28 ; 3 uses
  %i.uy = load i32, ptr %i.tw, align 1, !tbaa !8
  %i.uz = sub i32 %i.uy, %6
  %i.va = zext i32 %i.uz to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %1, i64 %i.va
  %i.vc = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12) #4
  %i.vd = add i64 %i.ur, 28                       ; 2 uses
  %.not1047 = icmp ule i64 %i.vd, %i.pt
  %i.ve = icmp ugt i64 %i.vd, %i.pr
  %or.cond1161 = and i1 %.not1047, %i.ve
  br i1 %or.cond1161, label %bb.ci, label %.thread1181

bb.ci:                                            ; preds = %bb.ch
  %i.vf = getelementptr inbounds nuw i8, ptr %i.rg, i64 44 ; 2 uses
  %i.vg = ptrtoint ptr %i.vf to i64               ; 2 uses
  %i.vh = add i64 %i.vg, 4                        ; 2 uses
  %.not1049 = icmp ule i64 %i.vh, %i.pt
  %i.vi = icmp ugt i64 %i.vh, %i.pr
  %or.cond1163 = and i1 %.not1049, %i.vi
  %i.vj = icmp ugt i64 %i.pt, %i.vg
  %or.cond1164 = and i1 %i.vj, %or.cond1163
  br i1 %or.cond1164, label %bb.cj, label %.thread1181

bb.cj:                                            ; preds = %bb.ci
  %i.vk = getelementptr inbounds nuw i8, ptr %i.rg, i64 72
  %i.vl = ptrtoint ptr %i.vk to i64               ; 2 uses
  %i.vm = add i64 %i.vl, 4                        ; 2 uses
  %.not1051 = icmp ule i64 %i.vm, %i.pt
  %i.vn = icmp ugt i64 %i.vm, %i.pr
  %or.cond1165 = and i1 %.not1051, %i.vn
  %i.vo = icmp ugt i64 %i.pt, %i.vl
  %or.cond1166 = and i1 %i.vo, %or.cond1165
  br i1 %or.cond1166, label %.preheader.preheader, label %.thread1181

.preheader.preheader:                             ; preds = %bb.cj
  %i.vp = load i32, ptr %i.uq, align 1, !tbaa !8
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds i8, ptr %1, i64 %i.vq
  %i.vs = getelementptr inbounds i8, ptr %i.vr, i64 %i.rb
  %i.vt = load i32, ptr %i.vf, align 1, !tbaa !8
  %i.vu = sext i32 %i.vt to i64
  %i.vv = getelementptr inbounds i8, ptr %1, i64 %i.vu
  %i.vw = getelementptr inbounds i8, ptr %i.vv, i64 %i.rb
  %i.vx = load i32, ptr %i.ux, align 1, !tbaa !8  ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %scevgep, i64 32 ; 2 uses
  %i.vz = load i32, ptr %i.vy, align 1, !tbaa !8
  store i32 %i.vz, ptr %i.ux, align 1, !tbaa !8
  store i32 %i.vx, ptr %i.vy, align 1, !tbaa !8
  br label %bb.cn

bb.ck:                                            ; preds = %bb.br
  br i1 %i.pl, label %bb.cl, label %.thread1191

bb.cl:                                            ; preds = %bb.ck
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13) #4
  %i.wa = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.wb = load i32, ptr %i.wa, align 1, !tbaa !8
  %i.wc = sext i32 %i.wb to i64
  %i.wd = zext i32 %6 to i64                      ; 2 uses
  %i.we = sub nsw i64 0, %i.wd                    ; 3 uses
  %i.wf = sub nsw i64 %i.wc, %i.wd                ; 2 uses
  %i.wg = getelementptr inbounds i8, ptr %1, i64 %i.wf ; 5 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.wi = load i32, ptr %i.wh, align 1, !tbaa !8
  %i.wj = zext i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 %i.wj
  %i.wl = getelementptr inbounds i8, ptr %i.wk, i64 %i.we
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wg, i64 4 ; 3 uses
  %i.wo = shl nuw nsw i32 %i.ql, 10
  %i.wp = or disjoint i32 %i.wo, 24               ; 2 uses
  %.not1025 = icmp ugt i32 %i.wp, %2
  %.not1026 = icmp slt i64 %i.wf, -4
  %or.cond1222 = select i1 %.not1025, i1 true, i1 %.not1026
  br i1 %or.cond1222, label %.thread1181, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.wq = zext nneg i32 %i.wp to i64
  %i.wr = ptrtoint ptr %i.wn to i64               ; 2 uses
  %i.ws = add i64 %i.wr, %i.wq                    ; 2 uses
  %.not1027 = icmp ule i64 %i.ws, %i.pt
  %i.wt = icmp ugt i64 %i.ws, %i.pr
  %or.cond1167 = and i1 %.not1027, %i.wt
  %i.wu = icmp ugt i64 %i.pt, %i.wr
  %or.cond1168 = and i1 %i.wu, %or.cond1167
  br i1 %or.cond1168, label %.preheader1227, label %.thread1181

.preheader1227:                                   ; preds = %bb.cm
  store <4 x i32> <i32 -1, i32 0, i32 1, i32 1>, ptr %i.wn, align 1, !tbaa !8
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wg, i64 20
  store i32 1, ptr %i.wv, align 1, !tbaa !8
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wg, i64 24
  store i32 1, ptr %i.ww, align 1, !tbaa !8
  %.not1294 = icmp eq i8 %i.qk, 0
  br i1 %.not1294, label %._crit_edge1261, label %.lr.ph1260.preheader

.lr.ph1260.preheader:                             ; preds = %.preheader1227
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wg, i64 28
  %i.wy = add nsw i32 %i.qm, -8
  %i.wz = zext i32 %i.wy to i64
  br label %vector.body1370

vector.body1370:                                  ; preds = %vector.body1370, %.lr.ph1260.preheader
  %index1371 = phi i64 [ 0, %.lr.ph1260.preheader ], [ %index.next1373, %vector.body1370 ] ; 3 uses
  %i.xa = shl i64 %index1371, 2
  %next.gep1372 = getelementptr i8, ptr %i.wx, i64 %i.xa ; 2 uses
  %i.xb = getelementptr i8, ptr %next.gep1372, i64 16
  store <4 x i32> splat (i32 1024), ptr %next.gep1372, align 1, !tbaa !8
  store <4 x i32> splat (i32 1024), ptr %i.xb, align 1, !tbaa !8
  %index.next1373 = add nuw i64 %index1371, 8
  %i.xc = icmp eq i64 %index1371, %i.wz
  br i1 %i.xc, label %._crit_edge1261, label %vector.body1370, !llvm.loop !15

._crit_edge1261:                                  ; preds = %vector.body1370, %.preheader1227
  %i.xd = load i32, ptr %i.wm, align 1, !tbaa !8
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds i8, ptr %1, i64 %i.xe
  %i.xg = getelementptr inbounds i8, ptr %i.xf, i64 %i.we
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.xi = load i32, ptr %i.xh, align 1, !tbaa !8
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds i8, ptr %1, i64 %i.xj
  %i.xl = getelementptr inbounds i8, ptr %i.xk, i64 %i.we
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge1261, %.preheader.preheader
  %.0936 = phi i32 [ %i.vx, %.preheader.preheader ], [ %4, %._crit_edge1261 ]
  %.7926 = phi ptr [ %i.vc, %.preheader.preheader ], [ %i.wg, %._crit_edge1261 ]
  %.0910 = phi ptr [ %i.ux, %.preheader.preheader ], [ %i.wn, %._crit_edge1261 ]
  %.2907 = phi ptr [ %i.vw, %.preheader.preheader ], [ %i.xl, %._crit_edge1261 ] ; 2 uses
  %.0898 = phi ptr [ %i.vs, %.preheader.preheader ], [ %i.wl, %._crit_edge1261 ]
  %.1895 = phi ptr [ %i.vb, %.preheader.preheader ], [ %i.xg, %._crit_edge1261 ] ; 2 uses
  %i.xm = icmp ugt ptr %.1895, %.2907
  br i1 %i.xm, label %bb.co, label %.thread1191

bb.co:                                            ; preds = %bb.cn
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.14) #4
  br label %.thread1181

.thread1191:                                      ; preds = %bb.ck, %bb.cn
  %.18951203 = phi ptr [ %.1895, %bb.cn ], [ null, %bb.ck ] ; 4 uses
  %.08981202 = phi ptr [ %.0898, %bb.cn ], [ null, %bb.ck ]
  %.29071201 = phi ptr [ %.2907, %bb.cn ], [ null, %bb.ck ] ; 4 uses
  %.09101200 = phi ptr [ %.0910, %bb.cn ], [ null, %bb.ck ]
  %.79261199 = phi ptr [ %.7926, %bb.cn ], [ %i.oy, %bb.ck ]
  %.09361198 = phi i32 [ %.0936, %bb.cn ], [ %4, %bb.ck ]
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #4
  %i.xn = tail call i32 @unupack399(ptr noundef nonnull %1, i32 noundef %2, i32 noundef 0, ptr noundef %.09101200, i32 noundef 0, ptr noundef %.18951203, ptr noundef %.29071201, i32 noundef %i.qg, ptr noundef %.08981202)
  %i.xo = icmp eq i32 %i.xn, -1
  br i1 %i.xo, label %.thread1181, label %bb.cp

bb.cp:                                            ; preds = %.thread1191
  br i1 %i.pk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.xp = getelementptr inbounds nuw i8, ptr %.79261199, i64 64
  %i.xq = load i32, ptr %i.xp, align 1, !tbaa !8
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cp
  br i1 %i.pl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.xr = zext i32 %.09361198 to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %1, i64 %i.xr
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 %i.ow
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 372
  %i.xv = load i32, ptr %i.xu, align 1, !tbaa !8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.bh, %bb.cq, %bb.cs, %bb.cr
  %.pre-phi = phi i64 [ %i.pn, %bb.cr ], [ %i.pn, %bb.cs ], [ %i.pn, %bb.cq ], [ %i.n, %bb.bh ] ; 2 uses
  %.15 = phi ptr [ %.18951203, %bb.cr ], [ %.18951203, %bb.cs ], [ %.18951203, %bb.cq ], [ %.7918, %bb.bh ] ; 2 uses
  %.4909 = phi ptr [ %.29071201, %bb.cr ], [ %.29071201, %bb.cs ], [ %.29071201, %bb.cq ], [ %.0905, %bb.bh ]
  %.5904 = phi ptr [ %i.pm, %bb.cr ], [ %i.pm, %bb.cs ], [ %i.pm, %bb.cq ], [ %spec.select, %bb.bh ] ; 3 uses
  %.4891 = phi i32 [ undef, %bb.cr ], [ %i.xv, %bb.cs ], [ %i.xq, %bb.cq ], [ %.0887, %bb.bh ] ; 3 uses
  %.2880 = phi i32 [ %i.qc, %bb.cr ], [ %i.qc, %bb.cs ], [ %i.qc, %bb.cq ], [ %i.v, %bb.bh ]
  %i.xw = ptrtoint ptr %1 to i64                  ; 4 uses
  %.not1105 = icmp ult ptr %.5904, %1
  br i1 %.not1105, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.xx = ptrtoint ptr %.5904 to i64              ; 2 uses
  %i.xy = add i64 %i.xx, 1                        ; 2 uses
  %i.xz = add i64 %.pre-phi, %i.xw                ; 6 uses
  %.not1106 = icmp ule i64 %i.xy, %i.xz
  %i.ya = icmp ugt i64 %i.xy, %i.xw
  %or.cond1169 = and i1 %.not1106, %i.ya
  %i.yb = icmp ugt i64 %i.xz, %i.xx
  %or.cond1170 = and i1 %i.yb, %or.cond1169
  br i1 %or.cond1170, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #4
  br label %.thread1181

bb.cw:                                            ; preds = %bb.cu
  %i.yc = load i8, ptr %.5904, align 1, !tbaa !8  ; 2 uses
end_hunk_1
