Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdhuff?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitread_working_state = type { ptr, i64, i64, i32, ptr }
%struct.savable_state = type { [4 x i32] }

@std_huff_tables.bits_dc_luminance = internal constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16
@std_huff_tables.val_dc_luminance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_dc_chrominance = internal constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@std_huff_tables.val_dc_chrominance = internal constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16
@std_huff_tables.val_ac_luminance = internal constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@std_huff_tables.bits_ac_chrominance = internal constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16
@std_huff_tables.val_ac_chrominance = internal constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@jpeg_natural_order = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind uwtable
define void @jpeg_make_d_derived_tbl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 21 uses
  %i.b = alloca [257 x i32], align 16             ; 43 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %or.cond = icmp ugt i32 %2, 3
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 50, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %2, ptr %i.e, align 4, !tbaa !36
  %i.f = load ptr, ptr %0, align 8, !tbaa !32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  tail call void %i.g(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.not = icmp ne i32 %1, 0                       ; 2 uses
  %i.h = sext i32 %2 to i64
  %.in.v.v = select i1 %.not, i64 232, i64 264
  %.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.v
  %.in = getelementptr inbounds [8 x i8], ptr %.in.v, i64 %i.h
  %i.i = load ptr, ptr %.in, align 8, !tbaa !38   ; 45 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !32     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i32 50, ptr %i.l, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i32 %2, ptr %i.m, align 4, !tbaa !36
  %i.n = load ptr, ptr %0, align 8, !tbaa !32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !37
  tail call void %i.o(ptr noundef nonnull %0) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = tail call ptr %i.t(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1320) #5 ; 2 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.u, %bb.f ], [ %i.p, %bb.e ] ; 125 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 288
  store ptr %i.i, ptr %i.w, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !36    ; 3 uses
  %i.z = zext i8 %i.y to i32
  %.not122127 = icmp eq i8 %i.y, 0
  br i1 %.not122127, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aa = zext i8 %i.y to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 1, i64 range(i64 0, 256) %i.aa, i1 false), !tbaa !36
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  %.1114.lcssa = phi i32 [ 0, %bb.g ], [ %i.z, %.lr.ph ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !36  ; 3 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = add nuw nsw i32 %.1114.lcssa, %i.ad
  %i.af = icmp samesign ugt i32 %i.ae, 256
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.ag = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  store i32 8, ptr %i.ah, align 8, !tbaa !35
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !37
  tail call void %i.ai(ptr noundef nonnull %0) #5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %.not122127.1 = icmp eq i8 %i.ac, 0
  br i1 %.not122127.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.i
  %i.aj = zext nneg i32 %.1114.lcssa to i64
  %scevgep.1 = getelementptr i8, ptr %i.a, i64 %i.aj
  %i.ak = zext i8 %i.ac to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.1, i8 2, i64 range(i64 0, 256) %i.ak, i1 false), !tbaa !36
  %i.al = add nuw nsw i32 %.1114.lcssa, %i.ad
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %.lr.ph.1, %bb.i
  %.1114.lcssa.1 = phi i32 [ %.1114.lcssa, %bb.i ], [ %i.al, %.lr.ph.1 ] ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !36  ; 3 uses
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = add nsw i32 %.1114.lcssa.1, %i.ao
  %i.aq = icmp sgt i32 %i.ap, 256
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.1
  %i.ar = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i32 8, ptr %i.as, align 8, !tbaa !35
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !37
  tail call void %i.at(ptr noundef nonnull %0) #5
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.1
  %.not122127.2 = icmp eq i8 %i.an, 0
  br i1 %.not122127.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.k
  %i.au = sext i32 %.1114.lcssa.1 to i64
  %scevgep.2 = getelementptr i8, ptr %i.a, i64 %i.au
  %i.av = zext i8 %i.an to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.2, i8 3, i64 range(i64 0, 256) %i.av, i1 false), !tbaa !36
  %i.aw = add nsw i32 %.1114.lcssa.1, %i.ao
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %.lr.ph.2, %bb.k
  %.1114.lcssa.2 = phi i32 [ %.1114.lcssa.1, %bb.k ], [ %i.aw, %.lr.ph.2 ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !36  ; 3 uses
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = add nsw i32 %.1114.lcssa.2, %i.az
  %i.bb = icmp sgt i32 %i.ba, 256
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.2
  %i.bc = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i32 8, ptr %i.bd, align 8, !tbaa !35
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !37
  tail call void %i.be(ptr noundef nonnull %0) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.2
  %.not122127.3 = icmp eq i8 %i.ay, 0
  br i1 %.not122127.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.m
  %i.bf = sext i32 %.1114.lcssa.2 to i64
  %scevgep.3 = getelementptr i8, ptr %i.a, i64 %i.bf
  %i.bg = zext i8 %i.ay to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.3, i8 4, i64 range(i64 0, 256) %i.bg, i1 false), !tbaa !36
  %i.bh = add nsw i32 %.1114.lcssa.2, %i.az
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %.lr.ph.3, %bb.m
  %.1114.lcssa.3 = phi i32 [ %.1114.lcssa.2, %bb.m ], [ %i.bh, %.lr.ph.3 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !36  ; 3 uses
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = add nsw i32 %.1114.lcssa.3, %i.bk
  %i.bm = icmp sgt i32 %i.bl, 256
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.3
  %i.bn = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 8, ptr %i.bo, align 8, !tbaa !35
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !37
  tail call void %i.bp(ptr noundef nonnull %0) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.3
  %.not122127.4 = icmp eq i8 %i.bj, 0
  br i1 %.not122127.4, label %._crit_edge.4, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.o
  %i.bq = sext i32 %.1114.lcssa.3 to i64
  %scevgep.4 = getelementptr i8, ptr %i.a, i64 %i.bq
  %i.br = zext i8 %i.bj to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.4, i8 5, i64 range(i64 0, 256) %i.br, i1 false), !tbaa !36
  %i.bs = add i32 %.1114.lcssa.3, %i.bk
  br label %._crit_edge.4

._crit_edge.4:                                    ; preds = %.lr.ph.4, %bb.o
  %.1114.lcssa.4 = phi i32 [ %.1114.lcssa.3, %bb.o ], [ %i.bs, %.lr.ph.4 ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !36  ; 3 uses
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = add nsw i32 %.1114.lcssa.4, %i.bv
  %i.bx = icmp sgt i32 %i.bw, 256
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.4
  %i.by = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  store i32 8, ptr %i.bz, align 8, !tbaa !35
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !37
  tail call void %i.ca(ptr noundef nonnull %0) #5
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge.4
  %.not122127.5 = icmp eq i8 %i.bu, 0
  br i1 %.not122127.5, label %._crit_edge.5, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.q
  %i.cb = sext i32 %.1114.lcssa.4 to i64
  %scevgep.5 = getelementptr i8, ptr %i.a, i64 %i.cb
  %i.cc = zext i8 %i.bu to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.5, i8 6, i64 range(i64 0, 256) %i.cc, i1 false), !tbaa !36
  %i.cd = add i32 %.1114.lcssa.4, %i.bv
  br label %._crit_edge.5

._crit_edge.5:                                    ; preds = %.lr.ph.5, %bb.q
  %.1114.lcssa.5 = phi i32 [ %.1114.lcssa.4, %bb.q ], [ %i.cd, %.lr.ph.5 ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !36  ; 3 uses
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = add nsw i32 %.1114.lcssa.5, %i.cg
  %i.ci = icmp sgt i32 %i.ch, 256
  br i1 %i.ci, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge.5
  %i.cj = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  store i32 8, ptr %i.ck, align 8, !tbaa !35
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !37
  tail call void %i.cl(ptr noundef nonnull %0) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.5
  %.not122127.6 = icmp eq i8 %i.cf, 0
  br i1 %.not122127.6, label %._crit_edge.6, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.s
  %i.cm = sext i32 %.1114.lcssa.5 to i64
  %scevgep.6 = getelementptr i8, ptr %i.a, i64 %i.cm
  %i.cn = zext i8 %i.cf to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.6, i8 7, i64 range(i64 0, 256) %i.cn, i1 false), !tbaa !36
  %i.co = add i32 %.1114.lcssa.5, %i.cg
  br label %._crit_edge.6

._crit_edge.6:                                    ; preds = %.lr.ph.6, %bb.s
  %.1114.lcssa.6 = phi i32 [ %.1114.lcssa.5, %bb.s ], [ %i.co, %.lr.ph.6 ] ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !36  ; 3 uses
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %i.cs = add nsw i32 %.1114.lcssa.6, %i.cr
  %i.ct = icmp sgt i32 %i.cs, 256
  br i1 %i.ct, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.6
  %i.cu = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  store i32 8, ptr %i.cv, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@jpeg_make_d_derived_tbl:bb.a
  store i64 %.sink.8, ptr %i.nb, align 8, !tbaa !46
  %i.nc = getelementptr inbounds nuw i8, ptr %i.i, i64 10 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !36
  %.not120.9 = icmp eq i8 %i.nd, 0
  br i1 %.not120.9, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ne = sext i32 %.5.8 to i64                   ; 2 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !44
  %i.nh = zext i32 %i.ng to i64
  %i.ni = sub nsw i64 %i.ne, %i.nh
  %i.nj = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  store i64 %i.ni, ptr %i.nj, align 8, !tbaa !46
  %i.nk = load i8, ptr %i.nc, align 1, !tbaa !36
  %i.nl = zext i8 %i.nk to i32
  %i.nm = add nsw i32 %.5.8, %i.nl                ; 2 uses
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr [4 x i8], ptr %i.b, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 -4
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !44
  %i.nr = zext i32 %i.nq to i64
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sink.9 = phi i64 [ %i.nr, %bb.bf ], [ -1, %bb.be ]
  %.5.9 = phi i32 [ %i.nm, %bb.bf ], [ %.5.8, %bb.be ] ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  store i64 %.sink.9, ptr %i.ns, align 8, !tbaa !46
  %i.nt = getelementptr inbounds nuw i8, ptr %i.i, i64 11 ; 2 uses
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !36
  %.not120.10 = icmp eq i8 %i.nu, 0
  br i1 %.not120.10, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nv = sext i32 %.5.9 to i64                   ; 2 uses
  %i.nw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.nv
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !44
  %i.ny = zext i32 %i.nx to i64
  %i.nz = sub nsw i64 %i.nv, %i.ny
  %i.oa = getelementptr inbounds nuw i8, ptr %i.v, i64 232
  store i64 %i.nz, ptr %i.oa, align 8, !tbaa !46
  %i.ob = load i8, ptr %i.nt, align 1, !tbaa !36
  %i.oc = zext i8 %i.ob to i32
  %i.od = add nsw i32 %.5.9, %i.oc                ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr [4 x i8], ptr %i.b, i64 %i.oe
  %i.og = getelementptr i8, ptr %i.of, i64 -4
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !44
  %i.oi = zext i32 %i.oh to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink.10 = phi i64 [ %i.oi, %bb.bh ], [ -1, %bb.bg ]
  %.5.10 = phi i32 [ %i.od, %bb.bh ], [ %.5.9, %bb.bg ] ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  store i64 %.sink.10, ptr %i.oj, align 8, !tbaa !46
  %i.ok = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !36
  %.not120.11 = icmp eq i8 %i.ol, 0
  br i1 %.not120.11, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.om = sext i32 %.5.10 to i64                  ; 2 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !44
  %i.op = zext i32 %i.oo to i64
  %i.oq = sub nsw i64 %i.om, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.v, i64 240
  store i64 %i.oq, ptr %i.or, align 8, !tbaa !46
  %i.os = load i8, ptr %i.ok, align 1, !tbaa !36
  %i.ot = zext i8 %i.os to i32
  %i.ou = add nsw i32 %.5.10, %i.ot               ; 2 uses
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr [4 x i8], ptr %i.b, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 -4
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !44
  %i.oz = zext i32 %i.oy to i64
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.sink.11 = phi i64 [ %i.oz, %bb.bj ], [ -1, %bb.bi ]
  %.5.11 = phi i32 [ %i.ou, %bb.bj ], [ %.5.10, %bb.bi ] ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i64 %.sink.11, ptr %i.pa, align 8, !tbaa !46
  %i.pb = getelementptr inbounds nuw i8, ptr %i.i, i64 13 ; 2 uses
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !36
  %.not120.12 = icmp eq i8 %i.pc, 0
  br i1 %.not120.12, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pd = sext i32 %.5.11 to i64                  ; 2 uses
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.pd
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !44
  %i.pg = zext i32 %i.pf to i64
  %i.ph = sub nsw i64 %i.pd, %i.pg
  %i.pi = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  store i64 %i.ph, ptr %i.pi, align 8, !tbaa !46
  %i.pj = load i8, ptr %i.pb, align 1, !tbaa !36
  %i.pk = zext i8 %i.pj to i32
  %i.pl = add nsw i32 %.5.11, %i.pk               ; 2 uses
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr [4 x i8], ptr %i.b, i64 %i.pm
  %i.po = getelementptr i8, ptr %i.pn, i64 -4
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !44
  %i.pq = zext i32 %i.pp to i64
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.sink.12 = phi i64 [ %i.pq, %bb.bl ], [ -1, %bb.bk ]
  %.5.12 = phi i32 [ %i.pl, %bb.bl ], [ %.5.11, %bb.bk ] ; 3 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store i64 %.sink.12, ptr %i.pr, align 8, !tbaa !46
  %i.ps = getelementptr inbounds nuw i8, ptr %i.i, i64 14 ; 2 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !36
  %.not120.13 = icmp eq i8 %i.pt, 0
  br i1 %.not120.13, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pu = sext i32 %.5.12 to i64                  ; 2 uses
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.pu
  %i.pw = load i32, ptr %i.pv, align 4, !tbaa !44
  %i.px = zext i32 %i.pw to i64
  %i.py = sub nsw i64 %i.pu, %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  store i64 %i.py, ptr %i.pz, align 8, !tbaa !46
  %i.qa = load i8, ptr %i.ps, align 1, !tbaa !36
  %i.qb = zext i8 %i.qa to i32
  %i.qc = add nsw i32 %.5.12, %i.qb               ; 2 uses
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr [4 x i8], ptr %i.b, i64 %i.qd
  %i.qf = getelementptr i8, ptr %i.qe, i64 -4
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !44
  %i.qh = zext i32 %i.qg to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sink.13 = phi i64 [ %i.qh, %bb.bn ], [ -1, %bb.bm ]
  %.5.13 = phi i32 [ %i.qc, %bb.bn ], [ %.5.12, %bb.bm ] ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  store i64 %.sink.13, ptr %i.qi, align 8, !tbaa !46
  %i.qj = getelementptr inbounds nuw i8, ptr %i.i, i64 15 ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !36
  %.not120.14 = icmp eq i8 %i.qk, 0
  br i1 %.not120.14, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ql = sext i32 %.5.13 to i64                  ; 2 uses
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !44
  %i.qo = zext i32 %i.qn to i64
  %i.qp = sub nsw i64 %i.ql, %i.qo
  %i.qq = getelementptr inbounds nuw i8, ptr %i.v, i64 264
  store i64 %i.qp, ptr %i.qq, align 8, !tbaa !46
  %i.qr = load i8, ptr %i.qj, align 1, !tbaa !36
  %i.qs = zext i8 %i.qr to i32
  %i.qt = add nsw i32 %.5.13, %i.qs               ; 2 uses
  %i.qu = sext i32 %i.qt to i64
  %i.qv = getelementptr [4 x i8], ptr %i.b, i64 %i.qu
  %i.qw = getelementptr i8, ptr %i.qv, i64 -4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !44
  %i.qy = zext i32 %i.qx to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink.14 = phi i64 [ %i.qy, %bb.bp ], [ -1, %bb.bo ]
  %.5.14 = phi i32 [ %i.qt, %bb.bp ], [ %.5.13, %bb.bo ] ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store i64 %.sink.14, ptr %i.qz, align 8, !tbaa !46
  %i.ra = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !36
  %.not120.15 = icmp eq i8 %i.rb, 0
  br i1 %.not120.15, label %vector.ph, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.rc = sext i32 %.5.14 to i64                  ; 2 uses
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.rc
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !44
  %i.rf = zext i32 %i.re to i64
  %i.rg = sub nsw i64 %i.rc, %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.v, i64 272
  store i64 %i.rg, ptr %i.rh, align 8, !tbaa !46
  %i.ri = load i8, ptr %i.ra, align 1, !tbaa !36
  %i.rj = zext i8 %i.ri to i32
  %i.rk = add nsw i32 %.5.14, %i.rj
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr [4 x i8], ptr %i.b, i64 %i.rl
  %i.rn = getelementptr i8, ptr %i.rm, i64 -4
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !44
  %i.rp = zext i32 %i.ro to i64
  br label %vector.ph

vector.ph:                                        ; preds = %bb.br, %bb.bq
  %.sink.15 = phi i64 [ %i.rp, %bb.br ], [ -1, %bb.bq ]
  %i.rq = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i64 %.sink.15, ptr %i.rq, align 8, !tbaa !46
  %i.rr = getelementptr inbounds nuw i8, ptr %i.v, i64 280
  store i64 0, ptr %i.rr, align 8, !tbaa !46
  %i.rs = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store i64 1048575, ptr %i.rs, align 8, !tbaa !46
  %i.rt = getelementptr inbounds nuw i8, ptr %i.v, i64 296 ; 74 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.v, i64 312
  store <4 x i32> splat (i32 2304), ptr %i.rt, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ru, align 8, !tbaa !44
  %i.rv = getelementptr inbounds nuw i8, ptr %i.v, i64 328
  %i.rw = getelementptr inbounds nuw i8, ptr %i.v, i64 344
  store <4 x i32> splat (i32 2304), ptr %i.rv, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.rw, align 8, !tbaa !44
  %i.rx = getelementptr inbounds nuw i8, ptr %i.v, i64 360
  %i.ry = getelementptr inbounds nuw i8, ptr %i.v, i64 376
  store <4 x i32> splat (i32 2304), ptr %i.rx, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ry, align 8, !tbaa !44
  %i.rz = getelementptr inbounds nuw i8, ptr %i.v, i64 392
  %i.sa = getelementptr inbounds nuw i8, ptr %i.v, i64 408
  store <4 x i32> splat (i32 2304), ptr %i.rz, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sa, align 8, !tbaa !44
  %i.sb = getelementptr inbounds nuw i8, ptr %i.v, i64 424
  %i.sc = getelementptr inbounds nuw i8, ptr %i.v, i64 440
  store <4 x i32> splat (i32 2304), ptr %i.sb, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sc, align 8, !tbaa !44
  %i.sd = getelementptr inbounds nuw i8, ptr %i.v, i64 456
  %i.se = getelementptr inbounds nuw i8, ptr %i.v, i64 472
  store <4 x i32> splat (i32 2304), ptr %i.sd, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.se, align 8, !tbaa !44
  %i.sf = getelementptr inbounds nuw i8, ptr %i.v, i64 488
  %i.sg = getelementptr inbounds nuw i8, ptr %i.v, i64 504
  store <4 x i32> splat (i32 2304), ptr %i.sf, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sg, align 8, !tbaa !44
  %i.sh = getelementptr inbounds nuw i8, ptr %i.v, i64 520
  %i.si = getelementptr inbounds nuw i8, ptr %i.v, i64 536
  store <4 x i32> splat (i32 2304), ptr %i.sh, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.si, align 8, !tbaa !44
  %i.sj = getelementptr inbounds nuw i8, ptr %i.v, i64 552
  %i.sk = getelementptr inbounds nuw i8, ptr %i.v, i64 568
  store <4 x i32> splat (i32 2304), ptr %i.sj, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sk, align 8, !tbaa !44
  %i.sl = getelementptr inbounds nuw i8, ptr %i.v, i64 584
  %i.sm = getelementptr inbounds nuw i8, ptr %i.v, i64 600
  store <4 x i32> splat (i32 2304), ptr %i.sl, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sm, align 8, !tbaa !44
  %i.sn = getelementptr inbounds nuw i8, ptr %i.v, i64 616
  %i.so = getelementptr inbounds nuw i8, ptr %i.v, i64 632
  store <4 x i32> splat (i32 2304), ptr %i.sn, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.so, align 8, !tbaa !44
  %i.sp = getelementptr inbounds nuw i8, ptr %i.v, i64 648
  %i.sq = getelementptr inbounds nuw i8, ptr %i.v, i64 664
  store <4 x i32> splat (i32 2304), ptr %i.sp, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sq, align 8, !tbaa !44
  %i.sr = getelementptr inbounds nuw i8, ptr %i.v, i64 680
  %i.ss = getelementptr inbounds nuw i8, ptr %i.v, i64 696
  store <4 x i32> splat (i32 2304), ptr %i.sr, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ss, align 8, !tbaa !44
  %i.st = getelementptr inbounds nuw i8, ptr %i.v, i64 712
  %i.su = getelementptr inbounds nuw i8, ptr %i.v, i64 728
  store <4 x i32> splat (i32 2304), ptr %i.st, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.su, align 8, !tbaa !44
  %i.sv = getelementptr inbounds nuw i8, ptr %i.v, i64 744
  %i.sw = getelementptr inbounds nuw i8, ptr %i.v, i64 760
  store <4 x i32> splat (i32 2304), ptr %i.sv, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sw, align 8, !tbaa !44
  %i.sx = getelementptr inbounds nuw i8, ptr %i.v, i64 776
  %i.sy = getelementptr inbounds nuw i8, ptr %i.v, i64 792
  store <4 x i32> splat (i32 2304), ptr %i.sx, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.sy, align 8, !tbaa !44
  %i.sz = getelementptr inbounds nuw i8, ptr %i.v, i64 808
  %i.ta = getelementptr inbounds nuw i8, ptr %i.v, i64 824
  store <4 x i32> splat (i32 2304), ptr %i.sz, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ta, align 8, !tbaa !44
  %i.tb = getelementptr inbounds nuw i8, ptr %i.v, i64 840
  %i.tc = getelementptr inbounds nuw i8, ptr %i.v, i64 856
  store <4 x i32> splat (i32 2304), ptr %i.tb, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.tc, align 8, !tbaa !44
  %i.td = getelementptr inbounds nuw i8, ptr %i.v, i64 872
  %i.te = getelementptr inbounds nuw i8, ptr %i.v, i64 888
  store <4 x i32> splat (i32 2304), ptr %i.td, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.te, align 8, !tbaa !44
  %i.tf = getelementptr inbounds nuw i8, ptr %i.v, i64 904
  %i.tg = getelementptr inbounds nuw i8, ptr %i.v, i64 920
  store <4 x i32> splat (i32 2304), ptr %i.tf, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.tg, align 8, !tbaa !44
  %i.th = getelementptr inbounds nuw i8, ptr %i.v, i64 936
  %i.ti = getelementptr inbounds nuw i8, ptr %i.v, i64 952
  store <4 x i32> splat (i32 2304), ptr %i.th, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ti, align 8, !tbaa !44
  %i.tj = getelementptr inbounds nuw i8, ptr %i.v, i64 968
  %i.tk = getelementptr inbounds nuw i8, ptr %i.v, i64 984
  store <4 x i32> splat (i32 2304), ptr %i.tj, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.tk, align 8, !tbaa !44
  %i.tl = getelementptr inbounds nuw i8, ptr %i.v, i64 1000
  %i.tm = getelementptr inbounds nuw i8, ptr %i.v, i64 1016
  store <4 x i32> splat (i32 2304), ptr %i.tl, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.tm, align 8, !tbaa !44
  %i.tn = getelementptr inbounds nuw i8, ptr %i.v, i64 1032
  %i.to = getelementptr inbounds nuw i8, ptr %i.v, i64 1048
  store <4 x i32> splat (i32 2304), ptr %i.tn, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.to, align 8, !tbaa !44
  %i.tp = getelementptr inbounds nuw i8, ptr %i.v, i64 1064
  %i.tq = getelementptr inbounds nuw i8, ptr %i.v, i64 1080
  store <4 x i32> splat (i32 2304), ptr %i.tp, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.tq, align 8, !tbaa !44
  %i.tr = getelementptr inbounds nuw i8, ptr %i.v, i64 1096
  %i.ts = getelementptr inbounds nuw i8, ptr %i.v, i64 1112
  store <4 x i32> splat (i32 2304), ptr %i.tr, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ts, align 8, !tbaa !44
  %i.tt = getelementptr inbounds nuw i8, ptr %i.v, i64 1128
  %i.tu = getelementptr inbounds nuw i8, ptr %i.v, i64 1144
  store <4 x i32> splat (i32 2304), ptr %i.tt, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.tu, align 8, !tbaa !44
  %i.tv = getelementptr inbounds nuw i8, ptr %i.v, i64 1160
  %i.tw = getelementptr inbounds nuw i8, ptr %i.v, i64 1176
  store <4 x i32> splat (i32 2304), ptr %i.tv, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.tw, align 8, !tbaa !44
  %i.tx = getelementptr inbounds nuw i8, ptr %i.v, i64 1192
  %i.ty = getelementptr inbounds nuw i8, ptr %i.v, i64 1208
  store <4 x i32> splat (i32 2304), ptr %i.tx, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ty, align 8, !tbaa !44
  %i.tz = getelementptr inbounds nuw i8, ptr %i.v, i64 1224
  %i.ua = getelementptr inbounds nuw i8, ptr %i.v, i64 1240
  store <4 x i32> splat (i32 2304), ptr %i.tz, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ua, align 8, !tbaa !44
  %i.ub = getelementptr inbounds nuw i8, ptr %i.v, i64 1256
  %i.uc = getelementptr inbounds nuw i8, ptr %i.v, i64 1272
  store <4 x i32> splat (i32 2304), ptr %i.ub, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.uc, align 8, !tbaa !44
  %i.ud = getelementptr inbounds nuw i8, ptr %i.v, i64 1288
  %i.ue = getelementptr inbounds nuw i8, ptr %i.v, i64 1304
  store <4 x i32> splat (i32 2304), ptr %i.ud, align 8, !tbaa !44
  store <4 x i32> splat (i32 2304), ptr %i.ue, align 8, !tbaa !44
  %i.uf = getelementptr inbounds nuw i8, ptr %i.i, i64 17 ; 9 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !36
  %.not119147 = icmp eq i8 %i.uh, 0
  br i1 %.not119147, label %._crit_edge151, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %vector.ph
  %i.ui = getelementptr i8, ptr %i.v, i64 328
  %i.uj = getelementptr i8, ptr %i.v, i64 360
  %i.uk = getelementptr i8, ptr %i.v, i64 392
  %i.ul = getelementptr i8, ptr %i.v, i64 424
  %i.um = getelementptr i8, ptr %i.v, i64 456
  %i.un = getelementptr i8, ptr %i.v, i64 488
  %i.uo = getelementptr i8, ptr %i.v, i64 520
  %i.up = getelementptr i8, ptr %i.v, i64 552
  %i.uq = getelementptr i8, ptr %i.v, i64 584
  %i.ur = getelementptr i8, ptr %i.v, i64 616
  %i.us = getelementptr i8, ptr %i.v, i64 648
  %i.ut = getelementptr i8, ptr %i.v, i64 680
  %i.uu = getelementptr i8, ptr %i.v, i64 712
  %i.uv = getelementptr i8, ptr %i.v, i64 744
  %i.uw = getelementptr i8, ptr %i.v, i64 776
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %middle.block203
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %middle.block203 ], [ 0, %.lr.ph150.preheader ] ; 4 uses
  %.2112149 = phi i32 [ %i.xk, %middle.block203 ], [ 1, %.lr.ph150.preheader ] ; 2 uses
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv177
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !44
  %i.uz = shl i32 %i.uy, 7
  %i.va = getelementptr inbounds nuw i8, ptr %i.uf, i64 %indvars.iv177 ; 6 uses
  %i.vb = sext i32 %i.uz to i64                   ; 18 uses
  %i.vc = shl nsw i64 %i.vb, 2                    ; 2 uses
  %4 = getelementptr i8, ptr %i.v, i64 %i.vc
  %5 = getelementptr i8, ptr %4, i64 296
  %i.vd = getelementptr i8, ptr %i.v, i64 %i.vc
  %i.ve = getelementptr i8, ptr %i.vd, i64 808
  %i.vf = getelementptr i8, ptr %i.i, i64 %indvars.iv177
  %i.vg = getelementptr i8, ptr %i.vf, i64 18
  %bound0 = icmp ult ptr %5, %i.vg
  %bound1 = icmp ult ptr %i.va, %i.ve
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.body200

vector.body200:                                   ; preds = %.lr.ph150
  %i.vh = load i8, ptr %i.va, align 1, !tbaa !36, !alias.scope !86
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.vh, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.vi = zext <4 x i8> %broadcast.splat to <4 x i32>
  %i.vj = or disjoint <4 x i32> %i.vi, splat (i32 256) ; 32 uses
  %i.vk = getelementptr [4 x i8], ptr %i.rt, i64 %i.vb ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 16
  store <4 x i32> %i.vj, ptr %i.vk, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vl, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.vm = getelementptr [4 x i8], ptr %i.ui, i64 %i.vb ; 2 uses
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 16
  store <4 x i32> %i.vj, ptr %i.vm, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vn, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.vo = getelementptr [4 x i8], ptr %i.uj, i64 %i.vb ; 2 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  store <4 x i32> %i.vj, ptr %i.vo, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vp, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.vq = getelementptr [4 x i8], ptr %i.uk, i64 %i.vb ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 16
  store <4 x i32> %i.vj, ptr %i.vq, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vr, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.vs = getelementptr [4 x i8], ptr %i.ul, i64 %i.vb ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 16
  store <4 x i32> %i.vj, ptr %i.vs, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vt, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.vu = getelementptr [4 x i8], ptr %i.um, i64 %i.vb ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 16
  store <4 x i32> %i.vj, ptr %i.vu, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vv, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.vw = getelementptr [4 x i8], ptr %i.un, i64 %i.vb ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  store <4 x i32> %i.vj, ptr %i.vw, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vx, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.vy = getelementptr [4 x i8], ptr %i.uo, i64 %i.vb ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  store <4 x i32> %i.vj, ptr %i.vy, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.vz, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.wa = getelementptr [4 x i8], ptr %i.up, i64 %i.vb ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  store <4 x i32> %i.vj, ptr %i.wa, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wb, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.wc = getelementptr [4 x i8], ptr %i.uq, i64 %i.vb ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  store <4 x i32> %i.vj, ptr %i.wc, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wd, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.we = getelementptr [4 x i8], ptr %i.ur, i64 %i.vb ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  store <4 x i32> %i.vj, ptr %i.we, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wf, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.wg = getelementptr [4 x i8], ptr %i.us, i64 %i.vb ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 16
  store <4 x i32> %i.vj, ptr %i.wg, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wh, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.wi = getelementptr [4 x i8], ptr %i.ut, i64 %i.vb ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store <4 x i32> %i.vj, ptr %i.wi, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wj, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.wk = getelementptr [4 x i8], ptr %i.uu, i64 %i.vb ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 16
  store <4 x i32> %i.vj, ptr %i.wk, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wl, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.wm = getelementptr [4 x i8], ptr %i.uv, i64 %i.vb ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 16
  store <4 x i32> %i.vj, ptr %i.wm, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wn, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  %i.wo = getelementptr [4 x i8], ptr %i.uw, i64 %i.vb ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store <4 x i32> %i.vj, ptr %i.wo, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  store <4 x i32> %i.vj, ptr %i.wp, align 4, !tbaa !44, !alias.scope !87, !noalias !86
  br label %middle.block203

scalar.ph:                                        ; preds = %.lr.ph150, %scalar.ph
  %indvars.iv174 = phi i64 [ %indvars.iv.next175.3, %scalar.ph ], [ %i.vb, %.lr.ph150 ] ; 5 uses
  %.0105146 = phi i32 [ %i.xj, %scalar.ph ], [ 128, %.lr.ph150 ] ; 2 uses
  %i.wq = load i8, ptr %i.va, align 1, !tbaa !36
  %i.wr = zext i8 %i.wq to i32
  %i.ws = or disjoint i32 %i.wr, 256
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %indvars.iv174
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !44
  %i.wu = load i8, ptr %i.va, align 1, !tbaa !36
  %i.wv = zext i8 %i.wu to i32
  %i.ww = or disjoint i32 %i.wv, 256
  %i.wx = getelementptr [4 x i8], ptr %i.rt, i64 %indvars.iv174
  %i.wy = getelementptr i8, ptr %i.wx, i64 4
  store i32 %i.ww, ptr %i.wy, align 4, !tbaa !44
  %i.wz = load i8, ptr %i.va, align 1, !tbaa !36
  %i.xa = zext i8 %i.wz to i32
  %i.xb = or disjoint i32 %i.xa, 256
  %i.xc = getelementptr [4 x i8], ptr %i.rt, i64 %indvars.iv174
  %i.xd = getelementptr i8, ptr %i.xc, i64 8
  store i32 %i.xb, ptr %i.xd, align 4, !tbaa !44
  %i.xe = load i8, ptr %i.va, align 1, !tbaa !36
  %i.xf = zext i8 %i.xe to i32
  %i.xg = or disjoint i32 %i.xf, 256
  %i.xh = getelementptr [4 x i8], ptr %i.rt, i64 %indvars.iv174
  %i.xi = getelementptr i8, ptr %i.xh, i64 12
  store i32 %i.xg, ptr %i.xi, align 4, !tbaa !44
  %indvars.iv.next175.3 = add nsw i64 %indvars.iv174, 4
  %i.xj = add nsw i32 %.0105146, -4
  %.not233 = icmp eq i32 %.0105146, 4
  br i1 %.not233, label %middle.block203, label %scalar.ph, !llvm.loop !79

middle.block203:                                  ; preds = %scalar.ph, %vector.body200
  %i.xk = add nuw nsw i32 %.2112149, 1
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.xl = load i8, ptr %i.ug, align 1, !tbaa !36
  %i.xm = zext i8 %i.xl to i32
  %.not119.not = icmp samesign ult i32 %.2112149, %i.xm
  br i1 %.not119.not, label %.lr.ph150, label %._crit_edge151.loopexit, !llvm.loop !80

._crit_edge151.loopexit:                          ; preds = %middle.block203
  %i.xn = trunc nsw i64 %indvars.iv.next178 to i32
  br label %._crit_edge151

._crit_edge151:                                   ; preds = %._crit_edge151.loopexit, %vector.ph
  %.7.lcssa = phi i32 [ 0, %vector.ph ], [ %i.xn, %._crit_edge151.loopexit ] ; 2 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !36
  %.not119147.1 = icmp eq i8 %i.xp, 0
  br i1 %.not119147.1, label %._crit_edge151.1, label %.lr.ph150.1

.lr.ph150.1:                                      ; preds = %._crit_edge151
  %i.xq = sext i32 %.7.lcssa to i64               ; 2 uses
  %i.xr = getelementptr i8, ptr %i.i, i64 %i.xq
  %i.xs = getelementptr i8, ptr %i.xr, i64 18
  %i.xt = getelementptr i8, ptr %i.v, i64 328
  %i.xu = getelementptr i8, ptr %i.v, i64 360
  %i.xv = getelementptr i8, ptr %i.v, i64 392
  %i.xw = getelementptr i8, ptr %i.v, i64 424
  %i.xx = getelementptr i8, ptr %i.v, i64 456
  %i.xy = getelementptr i8, ptr %i.v, i64 488
  %i.xz = getelementptr i8, ptr %i.v, i64 520
  br label %vector.memcheck214

vector.memcheck214:                               ; preds = %middle.block224, %.lr.ph150.1
  %indvar = phi i64 [ %indvar.next, %middle.block224 ], [ 0, %.lr.ph150.1 ] ; 2 uses
  %indvars.iv177.1 = phi i64 [ %indvars.iv.next178.1, %middle.block224 ], [ %i.xq, %.lr.ph150.1 ] ; 3 uses
  %.2112149.1 = phi i32 [ %i.zw, %middle.block224 ], [ 1, %.lr.ph150.1 ] ; 2 uses
  %i.ya = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv177.1
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !44
  %i.yc = shl i32 %i.yb, 6
  %i.yd = getelementptr inbounds i8, ptr %i.uf, i64 %indvars.iv177.1 ; 6 uses
  %i.ye = sext i32 %i.yc to i64                   ; 10 uses
  %i.yf = shl nsw i64 %i.ye, 2                    ; 2 uses
  %6 = getelementptr i8, ptr %i.v, i64 %i.yf
  %7 = getelementptr i8, ptr %6, i64 296
  %i.yg = getelementptr i8, ptr %i.v, i64 %i.yf
  %i.yh = getelementptr i8, ptr %i.yg, i64 552
  %i.yi = getelementptr i8, ptr %i.xs, i64 %indvar
  %bound0215 = icmp ult ptr %7, %i.yi
  %bound1216 = icmp ult ptr %i.yd, %i.yh
  %found.conflict217 = and i1 %bound0215, %bound1216
  br i1 %found.conflict217, label %scalar.ph213, label %vector.body221

vector.body221:                                   ; preds = %vector.memcheck214
  %i.yj = load i8, ptr %i.yd, align 1, !tbaa !36, !alias.scope !89
  %broadcast.splatinsert219 = insertelement <4 x i8> poison, i8 %i.yj, i64 0
  %broadcast.splat220 = shufflevector <4 x i8> %broadcast.splatinsert219, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.yk = zext <4 x i8> %broadcast.splat220 to <4 x i32>
  %i.yl = or disjoint <4 x i32> %i.yk, splat (i32 512) ; 16 uses
  %i.ym = getelementptr [4 x i8], ptr %i.rt, i64 %i.ye ; 2 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 16
  store <4 x i32> %i.yl, ptr %i.ym, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.yn, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.yo = getelementptr [4 x i8], ptr %i.xt, i64 %i.ye ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 16
  store <4 x i32> %i.yl, ptr %i.yo, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.yp, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.yq = getelementptr [4 x i8], ptr %i.xu, i64 %i.ye ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 16
  store <4 x i32> %i.yl, ptr %i.yq, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.yr, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.ys = getelementptr [4 x i8], ptr %i.xv, i64 %i.ye ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 16
  store <4 x i32> %i.yl, ptr %i.ys, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.yt, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.yu = getelementptr [4 x i8], ptr %i.xw, i64 %i.ye ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 16
  store <4 x i32> %i.yl, ptr %i.yu, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.yv, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.yw = getelementptr [4 x i8], ptr %i.xx, i64 %i.ye ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store <4 x i32> %i.yl, ptr %i.yw, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.yx, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.yy = getelementptr [4 x i8], ptr %i.xy, i64 %i.ye ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  store <4 x i32> %i.yl, ptr %i.yy, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.yz, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  %i.za = getelementptr [4 x i8], ptr %i.xz, i64 %i.ye ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  store <4 x i32> %i.yl, ptr %i.za, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  store <4 x i32> %i.yl, ptr %i.zb, align 4, !tbaa !44, !alias.scope !90, !noalias !89
  br label %middle.block224

scalar.ph213:                                     ; preds = %vector.memcheck214, %scalar.ph213
  %indvars.iv174.1 = phi i64 [ %indvars.iv.next175.1.3, %scalar.ph213 ], [ %i.ye, %vector.memcheck214 ] ; 5 uses
  %.0105146.1 = phi i32 [ %i.zv, %scalar.ph213 ], [ 64, %vector.memcheck214 ] ; 2 uses
  %i.zc = load i8, ptr %i.yd, align 1, !tbaa !36
  %i.zd = zext i8 %i.zc to i32
  %i.ze = or disjoint i32 %i.zd, 512
  %i.zf = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %indvars.iv174.1
  store i32 %i.ze, ptr %i.zf, align 4, !tbaa !44
  %i.zg = load i8, ptr %i.yd, align 1, !tbaa !36
  %i.zh = zext i8 %i.zg to i32
  %i.zi = or disjoint i32 %i.zh, 512
  %i.zj = getelementptr [4 x i8], ptr %i.rt, i64 %indvars.iv174.1
  %i.zk = getelementptr i8, ptr %i.zj, i64 4
  store i32 %i.zi, ptr %i.zk, align 4, !tbaa !44
  %i.zl = load i8, ptr %i.yd, align 1, !tbaa !36
  %i.zm = zext i8 %i.zl to i32
  %i.zn = or disjoint i32 %i.zm, 512
  %i.zo = getelementptr [4 x i8], ptr %i.rt, i64 %indvars.iv174.1
  %i.zp = getelementptr i8, ptr %i.zo, i64 8
  store i32 %i.zn, ptr %i.zp, align 4, !tbaa !44
  %i.zq = load i8, ptr %i.yd, align 1, !tbaa !36
  %i.zr = zext i8 %i.zq to i32
  %i.zs = or disjoint i32 %i.zr, 512
  %i.zt = getelementptr [4 x i8], ptr %i.rt, i64 %indvars.iv174.1
  %i.zu = getelementptr i8, ptr %i.zt, i64 12
  store i32 %i.zs, ptr %i.zu, align 4, !tbaa !44
  %indvars.iv.next175.1.3 = add nsw i64 %indvars.iv174.1, 4
  %i.zv = add nsw i32 %.0105146.1, -4
  %.not234 = icmp eq i32 %.0105146.1, 4
  br i1 %.not234, label %middle.block224, label %scalar.ph213, !llvm.loop !84

middle.block224:                                  ; preds = %scalar.ph213, %vector.body221
  %i.zw = add nuw nsw i32 %.2112149.1, 1
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177.1, 1 ; 2 uses
  %i.zx = load i8, ptr %i.xo, align 1, !tbaa !36
  %i.zy = zext i8 %i.zx to i32
  %.not119.not.1 = icmp samesign ult i32 %.2112149.1, %i.zy
  %indvar.next = add i64 %indvar, 1
  br i1 %.not119.not.1, label %vector.memcheck214, label %._crit_edge151.loopexit.1, !llvm.loop !80

._crit_edge151.loopexit.1:                        ; preds = %middle.block224
  %i.zz = trunc nsw i64 %indvars.iv.next178.1 to i32
  br label %._crit_edge151.1

._crit_edge151.1:                                 ; preds = %._crit_edge151.loopexit.1, %._crit_edge151
  %.7.lcssa.1 = phi i32 [ %.7.lcssa, %._crit_edge151 ], [ %i.zz, %._crit_edge151.loopexit.1 ] ; 2 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.i, i64 3 ; 2 uses
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !36
  %.not119147.2 = icmp eq i8 %i.aab, 0
  br i1 %.not119147.2, label %._crit_edge151.2, label %.lr.ph150.2

.lr.ph150.2:                                      ; preds = %._crit_edge151.1
  %i.aac = sext i32 %.7.lcssa.1 to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %.lr.ph150.2
  %indvars.iv177.2 = phi i64 [ %i.aac, %.lr.ph150.2 ], [ %indvars.iv.next178.2, %bb.bs ] ; 3 uses
  %.2112149.2 = phi i32 [ 1, %.lr.ph150.2 ], [ %i.agl, %bb.bs ] ; 2 uses
  %i.aad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv177.2
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !44
  %i.aaf = shl i32 %i.aae, 5
  %i.aag = getelementptr inbounds i8, ptr %i.uf, i64 %indvars.iv177.2 ; 32 uses
  %i.aah = sext i32 %i.aaf to i64                 ; 32 uses
  %i.aai = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.aaj = zext i8 %i.aai to i32
  %i.aak = or disjoint i32 %i.aaj, 768
  %i.aal = getelementptr inbounds [4 x i8], ptr %i.rt, i64 %i.aah
  store i32 %i.aak, ptr %i.aal, align 4, !tbaa !44
  %i.aam = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.aan = zext i8 %i.aam to i32
  %i.aao = or disjoint i32 %i.aan, 768
  %i.aap = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.aaq = getelementptr i8, ptr %i.aap, i64 4
  store i32 %i.aao, ptr %i.aaq, align 4, !tbaa !44
  %i.aar = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.aas = zext i8 %i.aar to i32
  %i.aat = or disjoint i32 %i.aas, 768
  %i.aau = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.aav = getelementptr i8, ptr %i.aau, i64 8
  store i32 %i.aat, ptr %i.aav, align 4, !tbaa !44
  %i.aaw = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.aax = zext i8 %i.aaw to i32
  %i.aay = or disjoint i32 %i.aax, 768
  %i.aaz = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.aba = getelementptr i8, ptr %i.aaz, i64 12
  store i32 %i.aay, ptr %i.aba, align 4, !tbaa !44
  %i.abb = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.abc = zext i8 %i.abb to i32
  %i.abd = or disjoint i32 %i.abc, 768
  %i.abe = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.abf = getelementptr i8, ptr %i.abe, i64 16
  store i32 %i.abd, ptr %i.abf, align 4, !tbaa !44
  %i.abg = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.abh = zext i8 %i.abg to i32
  %i.abi = or disjoint i32 %i.abh, 768
  %i.abj = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.abk = getelementptr i8, ptr %i.abj, i64 20
  store i32 %i.abi, ptr %i.abk, align 4, !tbaa !44
  %i.abl = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.abm = zext i8 %i.abl to i32
  %i.abn = or disjoint i32 %i.abm, 768
  %i.abo = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.abp = getelementptr i8, ptr %i.abo, i64 24
  store i32 %i.abn, ptr %i.abp, align 4, !tbaa !44
  %i.abq = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.abr = zext i8 %i.abq to i32
  %i.abs = or disjoint i32 %i.abr, 768
  %i.abt = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.abu = getelementptr i8, ptr %i.abt, i64 28
  store i32 %i.abs, ptr %i.abu, align 4, !tbaa !44
  %i.abv = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.abw = zext i8 %i.abv to i32
  %i.abx = or disjoint i32 %i.abw, 768
  %i.aby = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.abz = getelementptr i8, ptr %i.aby, i64 32
  store i32 %i.abx, ptr %i.abz, align 4, !tbaa !44
  %i.aca = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.acb = zext i8 %i.aca to i32
  %i.acc = or disjoint i32 %i.acb, 768
  %i.acd = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.ace = getelementptr i8, ptr %i.acd, i64 36
  store i32 %i.acc, ptr %i.ace, align 4, !tbaa !44
  %i.acf = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.acg = zext i8 %i.acf to i32
  %i.ach = or disjoint i32 %i.acg, 768
  %i.aci = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.acj = getelementptr i8, ptr %i.aci, i64 40
  store i32 %i.ach, ptr %i.acj, align 4, !tbaa !44
  %i.ack = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.acl = zext i8 %i.ack to i32
  %i.acm = or disjoint i32 %i.acl, 768
  %i.acn = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.aco = getelementptr i8, ptr %i.acn, i64 44
  store i32 %i.acm, ptr %i.aco, align 4, !tbaa !44
  %i.acp = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.acq = zext i8 %i.acp to i32
  %i.acr = or disjoint i32 %i.acq, 768
  %i.acs = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.act = getelementptr i8, ptr %i.acs, i64 48
  store i32 %i.acr, ptr %i.act, align 4, !tbaa !44
  %i.acu = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.acv = zext i8 %i.acu to i32
  %i.acw = or disjoint i32 %i.acv, 768
  %i.acx = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.acy = getelementptr i8, ptr %i.acx, i64 52
  store i32 %i.acw, ptr %i.acy, align 4, !tbaa !44
  %i.acz = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.ada = zext i8 %i.acz to i32
  %i.adb = or disjoint i32 %i.ada, 768
  %i.adc = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
  %i.add = getelementptr i8, ptr %i.adc, i64 56
  store i32 %i.adb, ptr %i.add, align 4, !tbaa !44
  %i.ade = load i8, ptr %i.aag, align 1, !tbaa !36
  %i.adf = zext i8 %i.ade to i32
  %i.adg = or disjoint i32 %i.adf, 768
  %i.adh = getelementptr [4 x i8], ptr %i.rt, i64 %i.aah
end_hunk_1
