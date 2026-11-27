Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/x509_obj?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@X509_NAME_oneline.hex = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str = private unnamed_addr constant [13 x i8] c"NO X509_NAME\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"/opt-bench/work/aws-lc/aws-lc/crypto/x509/x509_obj.c\00", align 1

; Function Attrs: nounwind uwtable
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
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  store i8 0, ptr %i.i, align 1, !tbaa !17
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %bb.f, label %.preheader

.thread:                                          ; preds = %bb.d
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %.thread133, label %.preheader

.preheader:                                       ; preds = %bb.e, %.thread
  %.0132.ph = phi ptr [ null, %.thread ], [ %i.d, %bb.e ] ; 8 uses
  %.0102130.ph = phi i32 [ %2, %.thread ], [ 200, %bb.e ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = tail call i64 @OPENSSL_sk_num(ptr noundef %i.l) #6
  %.not161 = icmp eq i64 %i.m, 0
  br i1 %.not161, label %._crit_edge159, label %.lr.ph158

.lr.ph158:                                        ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not115 = icmp eq ptr %.0132.ph, null
  %i.p = getelementptr inbounds nuw i8, ptr %.0132.ph, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !16
  tail call void @OPENSSL_free(ptr noundef nonnull %i.d) #6
  br label %.thread133

.thread133:                                       ; preds = %.thread, %bb.f
  %.0102129137 = phi i32 [ 200, %bb.f ], [ %2, %.thread ]
  %.0103 = phi ptr [ %i.q, %bb.f ], [ %1, %.thread ] ; 2 uses
  %i.r = zext nneg i32 %.0102129137 to i64
  %i.s = tail call i64 @OPENSSL_strlcpy(ptr noundef %.0103, ptr noundef nonnull @.str, i64 noundef %i.r) #6 ; 0 uses
  br label %bb.ai

bb.g:                                             ; preds = %.lr.ph158, %._crit_edge154
  %.0100157 = phi i32 [ 0, %.lr.ph158 ], [ %i.bx, %._crit_edge154 ] ; 2 uses
  %.0101156 = phi i64 [ 0, %.lr.ph158 ], [ %i.di, %._crit_edge154 ] ; 3 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !21
  %i.u = call ptr @OPENSSL_sk_value(ptr noundef %i.t, i64 noundef %.0101156) #6 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = call i32 @OBJ_obj2nid(ptr noundef %i.v) #6 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = call ptr @OBJ_nid2sn(i32 noundef %i.w) #6 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.ab = call i32 @i2t_ASN1_OBJECT(ptr noundef nonnull %i.b, i32 noundef 80, ptr noundef %i.aa) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.094 = phi ptr [ %i.b, %bb.i ], [ %i.y, %bb.h ] ; 2 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.094) #7 ; 3 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !28 ; 9 uses
  %i.ah = icmp sgt i32 %i.ag, 1048576
  br i1 %i.ah, label %.loopexit.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 5 uses
  %i.am = icmp eq i32 %i.aj, 27
  %i.an = and i32 %i.ag, 3
  %i.ao = icmp eq i32 %i.an, 0
  %or.cond124 = and i1 %i.ao, %i.am
  br i1 %or.cond124, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp sgt i32 %i.ag, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %bb.o ] ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %.not121 = icmp eq i8 %i.ar, 0
  br i1 %.not121, label %.lr.ph.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.as = and i64 %indvars.iv, 2
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as
  store i32 1, ptr %i.at, align 8, !tbaa !31
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.m
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %.not121.1 = icmp eq i8 %i.av, 0
  br i1 %.not121.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %i.aw = and i64 %indvars.iv.next, 3
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aw
  store i32 1, ptr %i.ax, align 4, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i32, ptr %i.a, align 16, !tbaa !31
  %.pre177 = load i32, ptr %i.o, align 4, !tbaa !31
  %.pre178 = load i32, ptr %i.n, align 8, !tbaa !31
  %i.ay = or i32 %.pre177, %.pre
  %i.az = or i32 %i.ay, %.pre178
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store i64 4294967297, ptr %i.n, align 8
  store i64 4294967297, ptr %i.a, align 16
  br label %bb.r

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  store i64 0, ptr %i.a, align 16
  store i64 4294967296, ptr %i.n, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  store i64 4294967297, ptr %i.n, align 8
  store i64 4294967297, ptr %i.a, align 16
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %._crit_edge.thread, %bb.q
  %i.bb = icmp sgt i32 %i.ag, 0                   ; 2 uses
  br i1 %i.bb, label %.lr.ph149.preheader, label %._crit_edge150

.lr.ph149.preheader:                              ; preds = %bb.r
  %wide.trip.count170 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count170, 1
  %i.bc = icmp eq i32 %i.ag, 1
  br i1 %i.bc, label %.lr.ph149.epil.preheader, label %.lr.ph149.preheader.new

.lr.ph149.preheader.new:                          ; preds = %.lr.ph149.preheader
  %unroll_iter = and i64 %wide.trip.count170, 2147483646
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.u, %.lr.ph149.preheader.new
  %indvars.iv167 = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %indvars.iv.next168.1, %bb.u ] ; 4 uses
  %.098146 = phi i32 [ 0, %.lr.ph149.preheader.new ], [ %.199.1, %bb.u ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph149.preheader.new ], [ %niter.next.1, %bb.u ]
  %i.bd = and i64 %indvars.iv167, 2
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !31
  %.not120 = icmp eq i32 %i.bf, 0
  br i1 %.not120, label %.lr.ph149.1, label %bb.s

bb.s:                                             ; preds = %.lr.ph149
  %i.bg = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv167
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bi = add i8 %i.bh, -127
  %or.cond126 = icmp ult i8 %i.bi, -95
  %spec.select.v = select i1 %or.cond126, i32 4, i32 1
  %spec.select = add nsw i32 %spec.select.v, %.098146
  br label %.lr.ph149.1

.lr.ph149.1:                                      ; preds = %bb.s, %.lr.ph149
  %.199 = phi i32 [ %.098146, %.lr.ph149 ], [ %spec.select, %bb.s ] ; 2 uses
  %indvars.iv.next168 = or disjoint i64 %indvars.iv167, 1 ; 2 uses
  %i.bj = and i64 %indvars.iv.next168, 3
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !31
  %.not120.1 = icmp eq i32 %i.bl, 0
  br i1 %.not120.1, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph149.1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next168
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !17
  %i.bo = add i8 %i.bn, -127
  %or.cond126.1 = icmp ult i8 %i.bo, -95
  %spec.select.v.1 = select i1 %or.cond126.1, i32 4, i32 1
  %spec.select.1 = add nsw i32 %spec.select.v.1, %.199
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph149.1
  %.199.1 = phi i32 [ %.199, %.lr.ph149.1 ], [ %spec.select.1, %bb.t ] ; 3 uses
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge150.loopexit.unr-lcssa, label %.lr.ph149, !llvm.loop !9

._crit_edge150.loopexit.unr-lcssa:                ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge150, label %.lr.ph149.epil.preheader

.lr.ph149.epil.preheader:                         ; preds = %._crit_edge150.loopexit.unr-lcssa, %.lr.ph149.preheader
  %indvars.iv167.epil.init = phi i64 [ 0, %.lr.ph149.preheader ], [ %indvars.iv.next168.1, %._crit_edge150.loopexit.unr-lcssa ] ; 2 uses
  %.098146.epil.init = phi i32 [ 0, %.lr.ph149.preheader ], [ %.199.1, %._crit_edge150.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod221 = trunc i32 %i.ag to i1
  call void @llvm.assume(i1 %lcmp.mod221)
  %i.bp = and i64 %indvars.iv167.epil.init, 3
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bp
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !31
  %.not120.epil = icmp eq i32 %i.br, 0
  br i1 %.not120.epil, label %._crit_edge150, label %bb.v

bb.v:                                             ; preds = %.lr.ph149.epil.preheader
  %i.bs = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv167.epil.init
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  %i.bu = add i8 %i.bt, -127
  %or.cond126.epil = icmp ult i8 %i.bu, -95
  %spec.select.v.epil = select i1 %or.cond126.epil, i32 4, i32 1
  %spec.select.epil = add nsw i32 %spec.select.v.epil, %.098146.epil.init
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit.unr-lcssa, %bb.v, %.lr.ph149.epil.preheader, %bb.r
  %.098.lcssa = phi i32 [ 0, %bb.r ], [ %.199.1, %._crit_edge150.loopexit.unr-lcssa ], [ %.098146.epil.init, %.lr.ph149.epil.preheader ], [ %spec.select.epil, %bb.v ]
  %i.bv = add nsw i32 %.0100157, 2
  %i.bw = add i32 %i.bv, %i.ad
  %i.bx = add i32 %i.bw, %.098.lcssa              ; 4 uses
  %i.by = icmp sgt i32 %i.bx, 1048576
  br i1 %i.by, label %.loopexit.sink.split, label %bb.w

bb.w:                                             ; preds = %._crit_edge150
  br i1 %.not115, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = add nsw i32 %i.bx, 1
  %i.ca = sext i32 %i.bz to i64
  %i.cb = call i64 @BUF_MEM_grow(ptr noundef nonnull %.0132.ph, i64 noundef %i.ca) #6
  %.not118 = icmp eq i64 %i.cb, 0
  br i1 %.not118, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %.not116 = icmp slt i32 %i.bx, %.0102130.ph
  br i1 %.not116, label %bb.aa, label %.thread138

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink = phi ptr [ %i.cc, %bb.y ], [ %1, %bb.z ]
  %i.cd = sext i32 %.0100157 to i64
  %i.ce = getelementptr inbounds i8, ptr %.sink, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  store i8 47, ptr %i.ce, align 1, !tbaa !17
  %i.cg = and i64 %i.ac, 4294967295               ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %OPENSSL_memcpy.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull readonly align 1 %.094, i64 range(i64 0, 4294967296) %i.cg, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.aa, %bb.ab
  %sext = shl i64 %i.ac, 32
  %i.ci = ashr exact i64 %sext, 32
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  store i8 61, ptr %i.cj, align 1, !tbaa !17
  %i.cl = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !30
  br i1 %i.bb, label %.lr.ph153.preheader, label %._crit_edge154

.lr.ph153.preheader:                              ; preds = %OPENSSL_memcpy.exit
  %wide.trip.count175 = zext nneg i32 %i.ag to i64
  br label %.lr.ph153

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %bb.af
  %indvars.iv172 = phi i64 [ 0, %.lr.ph153.preheader ], [ %indvars.iv.next173, %bb.af ] ; 3 uses
  %.193152 = phi ptr [ %i.ck, %.lr.ph153.preheader ], [ %.2, %bb.af ] ; 8 uses
  %i.co = and i64 %indvars.iv172, 3
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !31
  %.not119 = icmp eq i32 %i.cq, 0
  br i1 %.not119, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph153
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv172
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17  ; 3 uses
  %i.ct = add i8 %i.cs, -127
  %or.cond = icmp ult i8 %i.ct, -95
  br i1 %or.cond, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cu = zext i8 %i.cs to i32                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.193152, i64 1
  store i8 92, ptr %.193152, align 1, !tbaa !17
  %i.cw = getelementptr inbounds nuw i8, ptr %.193152, i64 2
  store i8 120, ptr %i.cv, align 1, !tbaa !17
  %i.cx = lshr i32 %i.cu, 4
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @X509_NAME_oneline.hex, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !17
  %i.db = getelementptr inbounds nuw i8, ptr %.193152, i64 3
  store i8 %i.da, ptr %i.cw, align 1, !tbaa !17
  %i.dc = and i32 %i.cu, 15
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @X509_NAME_oneline.hex, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !17
  %i.dg = getelementptr inbounds nuw i8, ptr %.193152, i64 4
  store i8 %i.df, ptr %i.db, align 1, !tbaa !17
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.dh = getelementptr inbounds nuw i8, ptr %.193152, i64 1
  store i8 %i.cs, ptr %.193152, align 1, !tbaa !17
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %.lr.ph153
  %.2 = phi ptr [ %i.dg, %bb.ad ], [ %i.dh, %bb.ae ], [ %.193152, %.lr.ph153 ] ; 2 uses
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next173, %wide.trip.count175
  br i1 %exitcond176.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !10

._crit_edge154:                                   ; preds = %bb.af, %OPENSSL_memcpy.exit
  %.193.lcssa = phi ptr [ %i.ck, %OPENSSL_memcpy.exit ], [ %.2, %bb.af ]
  store i8 0, ptr %.193.lcssa, align 1, !tbaa !17
  %i.di = add nuw i64 %.0101156, 1                ; 3 uses
  %i.dj = load ptr, ptr %0, align 8, !tbaa !21
  %i.dk = call i64 @OPENSSL_sk_num(ptr noundef %i.dj) #6
  %i.dl = icmp ult i64 %i.di, %i.dk
  br i1 %i.dl, label %bb.g, label %._crit_edge159, !llvm.loop !11

._crit_edge159:                                   ; preds = %._crit_edge154, %.preheader
  %.0101.lcssa = phi i64 [ 0, %.preheader ], [ %i.di, %._crit_edge154 ] ; 2 uses
  %.not117 = icmp eq ptr %.0132.ph, null
  br i1 %.not117, label %.thread138, label %bb.ag

end_hunk_0
