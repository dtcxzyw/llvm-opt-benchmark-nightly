Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/x509_obj?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZ17X509_NAME_onelineE3hex = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"NO X509_NAME\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/x509/x509_obj.cc\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define ptr @X509_NAME_oneline(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 15 uses
  %i.b = alloca [80 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @BUF_MEM_new() #6          ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @BUF_MEM_grow(ptr noundef nonnull %i.d, i64 noundef 200) #6
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.g = icmp slt i32 %2, 1
  br i1 %i.g, label %bb.ai, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.i, align 1, !tbaa !16
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %bb.f, label %.preheader

.thread:                                          ; preds = %bb.d
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %.thread133, label %.preheader

.preheader:                                       ; preds = %bb.e, %.thread
  %.0132.ph = phi ptr [ null, %.thread ], [ %i.d, %bb.e ] ; 8 uses
  %.0102130.ph = phi i32 [ %2, %.thread ], [ 200, %bb.e ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !17
  %i.m = tail call i64 @OPENSSL_sk_num(ptr noundef %i.l) #6
  %.not161 = icmp eq i64 %i.m, 0
  br i1 %.not161, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %.preheader
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not115 = icmp eq ptr %.0132.ph, null
  %i.o = getelementptr inbounds nuw i8, ptr %.0132.ph, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !11
  tail call void @OPENSSL_free(ptr noundef nonnull %i.d) #6
  br label %.thread133

.thread133:                                       ; preds = %.thread, %bb.f
  %.0102129137 = phi i32 [ 200, %bb.f ], [ %2, %.thread ]
  %.0103 = phi ptr [ %i.p, %bb.f ], [ %1, %.thread ] ; 2 uses
  %i.q = zext nneg i32 %.0102129137 to i64
  %i.r = tail call i64 @OPENSSL_strlcpy(ptr noundef %.0103, ptr noundef nonnull @.str, i64 noundef %i.q) #6 ; 0 uses
  br label %bb.ai

bb.g:                                             ; preds = %.lr.ph158, %._crit_edge154
  %.0100157 = phi i32 [ 0, %.lr.ph158 ], [ %i.br, %._crit_edge154 ] ; 2 uses
  %.0101156 = phi i64 [ 0, %.lr.ph158 ], [ %i.db, %._crit_edge154 ] ; 3 uses
  %i.s = load ptr, ptr %0, align 8, !tbaa !17
  %i.t = call ptr @OPENSSL_sk_value(ptr noundef %i.s, i64 noundef %.0101156) #6 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.v = call i32 @OBJ_obj2nid(ptr noundef %i.u) #6 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = call ptr @OBJ_nid2sn(i32 noundef %i.v) #6 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !21
  %i.aa = call i32 @i2t_ASN1_OBJECT(ptr noundef nonnull %i.b, i32 noundef 80, ptr noundef %i.z) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.094 = phi ptr [ %i.b, %bb.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.094) #7 ; 3 uses
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !26 ; 9 uses
  %i.ag = icmp sgt i32 %i.af, 1048576
  br i1 %i.ag, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29 ; 5 uses
  %i.al = icmp eq i32 %i.ai, 27
  %i.am = and i32 %i.af, 3
  %i.an = icmp eq i32 %i.am, 0
  %or.cond124 = and i1 %i.an, %i.al
  br i1 %or.cond124, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp sgt i32 %i.af, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.ao, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %bb.o ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16
  %.not121 = icmp eq i8 %i.aq, 0
  br i1 %.not121, label %.lr.ph.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.ar = and i64 %indvars.iv, 2
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ar
  store i32 1, ptr %4, align 8, !tbaa !30
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.m
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16
  %.not121.1 = icmp eq i8 %i.at, 0
  br i1 %.not121.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %i.au = and i64 %indvars.iv.next, 3
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au
  store i32 1, ptr %5, align 4, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i32, ptr %i.a, align 16, !tbaa !30
  %.pre177 = load i32, ptr %i.n, align 4, !tbaa !30
  %.pre178 = load i32, ptr %3, align 8, !tbaa !30
  %i.av = or i32 %.pre177, %.pre
  %i.aw = or i32 %i.av, %.pre178
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !30
  br label %bb.r

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.a, align 16, !tbaa !30
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !30
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %._crit_edge.thread, %bb.q
  %i.ay = icmp sgt i32 %i.af, 0                   ; 2 uses
  br i1 %i.ay, label %.lr.ph149.preheader, label %._crit_edge150

.lr.ph149.preheader:                              ; preds = %bb.r
  %wide.trip.count170 = zext nneg i32 %i.af to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count170, 1
  %i.az = icmp eq i32 %i.af, 1
  br i1 %i.az, label %.lr.ph149.epil.preheader, label %.lr.ph149.preheader.new

.lr.ph149.preheader.new:                          ; preds = %.lr.ph149.preheader
  %unroll_iter = and i64 %wide.trip.count170, 2147483646
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.u, %.lr.ph149.preheader.new
  %indvars.iv167 = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %indvars.iv.next168.1, %bb.u ] ; 4 uses
  %.098146 = phi i32 [ 0, %.lr.ph149.preheader.new ], [ %.199.1, %bb.u ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %niter.next.1, %bb.u ]
  %i.ba = and i64 %indvars.iv167, 2
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ba
  %i.bb = load i32, ptr %6, align 8, !tbaa !30
  %.not120 = icmp eq i32 %i.bb, 0
  br i1 %.not120, label %.lr.ph149.1, label %bb.s

bb.s:                                             ; preds = %.lr.ph149
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv167
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !16
  %i.be = add i8 %i.bd, -127
  %or.cond126 = icmp ult i8 %i.be, -95
  %spec.select.v = select i1 %or.cond126, i32 4, i32 1
  %spec.select = add nsw i32 %spec.select.v, %.098146
  br label %.lr.ph149.1

.lr.ph149.1:                                      ; preds = %bb.s, %.lr.ph149
  %.199 = phi i32 [ %.098146, %.lr.ph149 ], [ %spec.select, %bb.s ] ; 2 uses
  %indvars.iv.next168 = or disjoint i64 %indvars.iv167, 1 ; 2 uses
  %i.bf = and i64 %indvars.iv.next168, 3
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bf
  %i.bg = load i32, ptr %7, align 4, !tbaa !30
  %.not120.1 = icmp eq i32 %i.bg, 0
  br i1 %.not120.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph149.1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next168
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %i.bj = add i8 %i.bi, -127
  %or.cond126.1 = icmp ult i8 %i.bj, -95
  %spec.select.v.1 = select i1 %or.cond126.1, i32 4, i32 1
  %spec.select.1 = add nsw i32 %spec.select.v.1, %.199
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph149.1
  %.199.1 = phi i32 [ %.199, %.lr.ph149.1 ], [ %spec.select.1, %bb.t ] ; 3 uses
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge150.loopexit.unr-lcssa, label %.lr.ph149, !llvm.loop !34

._crit_edge150.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge150, label %.lr.ph149.epil.preheader

.lr.ph149.epil.preheader:                         ; preds = %._crit_edge150.loopexit.unr-lcssa, %.lr.ph149.preheader
  %indvars.iv167.epil.init = phi i64 [ 0, %.lr.ph149.preheader ], [ %indvars.iv.next168.1, %._crit_edge150.loopexit.unr-lcssa ] ; 2 uses
  %.098146.epil.init = phi i32 [ 0, %.lr.ph149.preheader ], [ %.199.1, %._crit_edge150.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod221 = trunc i32 %i.af to i1
  call void @llvm.assume(i1 %lcmp.mod221)
  %i.bk = and i64 %indvars.iv167.epil.init, 3
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bk
  %i.bl = load i32, ptr %8, align 4, !tbaa !30
  %.not120.epil = icmp eq i32 %i.bl, 0
  br i1 %.not120.epil, label %._crit_edge150, label %bb.v

bb.v:                                             ; preds = %.lr.ph149.epil.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv167.epil.init
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !16
  %i.bo = add i8 %i.bn, -127
  %or.cond126.epil = icmp ult i8 %i.bo, -95
  %spec.select.v.epil = select i1 %or.cond126.epil, i32 4, i32 1
  %spec.select.epil = add nsw i32 %spec.select.v.epil, %.098146.epil.init
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit.unr-lcssa, %bb.v, %.lr.ph149.epil.preheader, %bb.r
  %.098.lcssa = phi i32 [ 0, %bb.r ], [ %.199.1, %._crit_edge150.loopexit.unr-lcssa ], [ %.098146.epil.init, %.lr.ph149.epil.preheader ], [ %spec.select.epil, %bb.v ]
  %i.bp = add nsw i32 %.0100157, 2
  %i.bq = add i32 %i.bp, %i.ac
  %i.br = add i32 %i.bq, %.098.lcssa              ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 1048576
  br i1 %i.bs, label %.loopexit.sink.split, label %bb.w

bb.w:                                             ; preds = %._crit_edge150
  br i1 %.not115, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = add nsw i32 %i.br, 1
  %i.bu = sext i32 %i.bt to i64
  %i.bv = call i64 @BUF_MEM_grow(ptr noundef nonnull %.0132.ph, i64 noundef %i.bu) #6
  %.not118 = icmp eq i64 %i.bv, 0
  br i1 %.not118, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = load ptr, ptr %i.o, align 8, !tbaa !11
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %.not116 = icmp slt i32 %i.br, %.0102130.ph
  br i1 %.not116, label %bb.aa, label %.thread138

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink = phi ptr [ %i.bw, %bb.y ], [ %1, %bb.z ]
  %i.bx = sext i32 %.0100157 to i64
  %i.by = getelementptr inbounds i8, ptr %.sink, i64 %i.bx ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 2 uses
  store i8 47, ptr %i.by, align 1, !tbaa !16
  %i.ca = and i64 %i.ab, 4294967295               ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %.094, i64 range(i64 0, 4294967296) %i.ca, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.aa, %bb.ab
  %sext = shl i64 %i.ab, 32
  %i.cc = ashr exact i64 %sext, 32
  %i.cd = getelementptr inbounds i8, ptr %i.bz, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  store i8 61, ptr %i.cd, align 1, !tbaa !16
  %i.cf = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !29
  br i1 %i.ay, label %.lr.ph153.preheader, label %._crit_edge154

.lr.ph153.preheader:                              ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %wide.trip.count175 = zext nneg i32 %i.af to i64
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %bb.af
  %indvars.iv172 = phi i64 [ 0, %.lr.ph153.preheader ], [ %indvars.iv.next173, %bb.af ] ; 3 uses
  %.193152 = phi ptr [ %i.ce, %.lr.ph153.preheader ], [ %.2, %bb.af ] ; 8 uses
  %i.ci = and i64 %indvars.iv172, 3
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.cj = load i32, ptr %9, align 4, !tbaa !30
  %.not119 = icmp eq i32 %i.cj, 0
  br i1 %.not119, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph153
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv172
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16  ; 3 uses
  %i.cm = add i8 %i.cl, -127
  %or.cond = icmp ult i8 %i.cm, -95
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cn = zext i8 %i.cl to i32                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.193152, i64 1
  store i8 92, ptr %.193152, align 1, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %.193152, i64 2
  store i8 120, ptr %i.co, align 1, !tbaa !16
  %i.cq = lshr i32 %i.cn, 4
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @_ZZ17X509_NAME_onelineE3hex, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.193152, i64 3
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !16
  %i.cv = and i32 %i.cn, 15
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @_ZZ17X509_NAME_onelineE3hex, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !16
  %i.cz = getelementptr inbounds nuw i8, ptr %.193152, i64 4
  store i8 %i.cy, ptr %i.cu, align 1, !tbaa !16
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %.193152, i64 1
  store i8 %i.cl, ptr %.193152, align 1, !tbaa !16
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.lr.ph153
  %.2 = phi ptr [ %i.cz, %bb.ad ], [ %i.da, %bb.ae ], [ %.193152, %.lr.ph153 ] ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !35

._crit_edge154:                                   ; preds = %bb.af, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %.193.lcssa = phi ptr [ %i.ce, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %.2, %bb.af ]
  store i8 0, ptr %.193.lcssa, align 1, !tbaa !16
  %i.db = add nuw i64 %.0101156, 1                ; 3 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !17
  %i.dd = call i64 @OPENSSL_sk_num(ptr noundef %i.dc) #6
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %bb.g, label %._crit_edge159, !llvm.loop !36

._crit_edge159:                                   ; preds = %._crit_edge154, %.preheader
  %.0101.lcssa = phi i64 [ 0, %.preheader ], [ %i.db, %._crit_edge154 ] ; 2 uses
  %.not117 = icmp eq ptr %.0132.ph, null
  br i1 %.not117, label %.thread138, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge159
  %i.df = getelementptr inbounds nuw i8, ptr %.0132.ph, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !11
  call void @OPENSSL_free(ptr noundef nonnull %.0132.ph) #6
  br label %.thread138

.thread138:                                       ; preds = %bb.z, %._crit_edge159, %bb.ag
  %.0101144 = phi i64 [ %.0101.lcssa, %bb.ag ], [ %.0101.lcssa, %._crit_edge159 ], [ %.0101156, %bb.z ]
  %.3 = phi ptr [ %i.dg, %bb.ag ], [ %1, %._crit_edge159 ], [ %1, %bb.z ] ; 3 uses
  %i.dh = icmp eq i64 %.0101144, 0
  br i1 %i.dh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread138
  store i8 0, ptr %.3, align 1, !tbaa !16
  br label %bb.ai

.loopexit.sink.split:                             ; preds = %._crit_edge150, %bb.j
  %.sink194 = phi i32 [ 79, %bb.j ], [ 115, %._crit_edge150 ]
  call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 135, ptr noundef nonnull @.str.1, i32 noundef %.sink194) #6
  br label %.loopexit

.loopexit:                                        ; preds = %bb.x, %.loopexit.sink.split, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ], [ %.0132.ph, %.loopexit.sink.split ], [ %.0132.ph, %bb.x ]
  call void @BUF_MEM_free(ptr noundef %.1) #6
  br label %bb.ai

bb.ai:                                            ; preds = %.thread138, %bb.ah, %bb.d, %.loopexit, %.thread133
  %.0104 = phi ptr [ null, %.loopexit ], [ %.0103, %.thread133 ], [ null, %bb.d ], [ %.3, %bb.ah ], [ %.3, %.thread138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0104
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @BUF_MEM_new() local_unnamed_addr #2

declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #2

declare i64 @OPENSSL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @i2t_ASN1_OBJECT(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTS10buf_mem_st", !13, i64 0, !14, i64 8, !13, i64 16}
!13 = !{!"long", !9, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTS12X509_name_st", !19, i64 0, !8, i64 8, !20, i64 16, !14, i64 24, !8, i64 32}
!19 = !{!"p1 _ZTS24stack_st_X509_NAME_ENTRY", !15, i64 0}
!20 = !{!"p1 _ZTS10buf_mem_st", !15, i64 0}
!21 = !{!22, !23, i64 0}
!22 = !{!"_ZTS18X509_name_entry_st", !23, i64 0, !24, i64 8, !8, i64 16}
!23 = !{!"p1 _ZTS14asn1_object_st", !15, i64 0}
!24 = !{!"p1 _ZTS14asn1_string_st", !15, i64 0}
!25 = !{!22, !24, i64 8}
!26 = !{!27, !8, i64 0}
!27 = !{!"_ZTS14asn1_string_st", !8, i64 0, !8, i64 4, !14, i64 8, !13, i64 16}
!28 = !{!27, !8, i64 4}
!29 = !{!27, !14, i64 8}
!30 = !{!8, !8, i64 0}
!31 = distinct !{!31, !32, !33}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !32}
end_hunk_0
