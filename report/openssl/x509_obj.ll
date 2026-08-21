Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/x509_obj?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"crypto/x509/x509_obj.c\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"NO X509_NAME\00", align 1
@__func__.X509_NAME_oneline = private unnamed_addr constant [18 x i8] c"X509_NAME_oneline\00", align 1

; Function Attrs: nounwind uwtable
define ptr @X509_NAME_oneline(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 13 uses
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
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.aj, label %.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  store i8 0, ptr %i.i, align 1, !tbaa !13
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %bb.f, label %.preheader

.thread:                                          ; preds = %bb.d
  %i.k = icmp eq ptr %0, null
  br i1 %i.k, label %.thread149, label %.preheader

.preheader:                                       ; preds = %bb.e, %.thread
  %.0148.ph = phi ptr [ null, %.thread ], [ %i.d, %bb.e ] ; 9 uses
  %.0118146.ph = phi i32 [ %2, %.thread ], [ 200, %bb.e ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = tail call i32 @OPENSSL_sk_num(ptr noundef %i.l) #6
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph176, label %._crit_edge177

.lr.ph176:                                        ; preds = %.preheader
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not132 = icmp eq ptr %.0148.ph, null
  %i.p = getelementptr inbounds nuw i8, ptr %.0148.ph, i64 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !8
  tail call void @CRYPTO_free(ptr noundef nonnull %i.d, ptr noundef nonnull @.str, i32 noundef 54) #6
  br label %.thread149

.thread149:                                       ; preds = %.thread, %bb.f
  %.0118145153 = phi i32 [ 200, %bb.f ], [ %2, %.thread ]
  %.0119 = phi ptr [ %i.q, %bb.f ], [ %1, %.thread ] ; 3 uses
  %i.r = sext i32 %.0118145153 to i64             ; 2 uses
  %i.s = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %.0119, ptr noundef nonnull dereferenceable(13) @.str.1, i64 noundef %i.r) #6 ; 0 uses
  %i.t = getelementptr i8, ptr %.0119, i64 %i.r
  %i.u = getelementptr i8, ptr %i.t, i64 -1
  store i8 0, ptr %i.u, align 1, !tbaa !13
  br label %bb.aj

bb.g:                                             ; preds = %.lr.ph176, %._crit_edge171
  %.0110175 = phi i32 [ -1, %.lr.ph176 ], [ %i.cq, %._crit_edge171 ]
  %.0116174 = phi i32 [ 0, %.lr.ph176 ], [ %i.bk, %._crit_edge171 ] ; 2 uses
  %.0117173 = phi i32 [ 0, %.lr.ph176 ], [ %i.cr, %._crit_edge171 ] ; 3 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !14
  %i.w = call ptr @OPENSSL_sk_value(ptr noundef %i.v, i32 noundef %.0117173) #6 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.y = call i32 @OBJ_obj2nid(ptr noundef %i.x) #6 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call ptr @OBJ_nid2sn(i32 noundef %i.y) #6 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !18
  %i.ad = call i32 @i2t_ASN1_OBJECT(ptr noundef nonnull %i.b, i32 noundef 80, ptr noundef %i.ac) #6 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0109 = phi ptr [ %i.b, %bb.i ], [ %i.aa, %bb.h ] ; 2 uses
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0109) #7 ; 3 uses
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !23 ; 7 uses
  %i.aj = icmp sgt i32 %i.ai, 1048576
  br i1 %i.aj, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 3 uses
  %i.ao = icmp eq i32 %i.al, 27
  %i.ap = and i32 %i.ai, 3
  %i.aq = icmp eq i32 %i.ap, 0
  %or.cond141 = and i1 %i.aq, %i.ao
  br i1 %or.cond141, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp sgt i32 %i.ai, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.l
  %wide.trip.count = zext nneg i32 %i.ai to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %bb.o ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv
  %i.at = load i8, ptr %i.as, align 1, !tbaa !13
  %.not138 = icmp eq i8 %i.at, 0
  br i1 %.not138, label %.lr.ph.1, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.au = and i64 %indvars.iv, 2
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au
  store i32 1, ptr %4, align 8, !tbaa !27
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.m
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !13
  %.not138.1 = icmp eq i8 %i.aw, 0
  br i1 %.not138.1, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %i.ax = and i64 %indvars.iv.next, 3
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store i32 1, ptr %5, align 4, !tbaa !27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.o
  %.pre = load i32, ptr %i.a, align 16, !tbaa !27
  %.pre194 = load i32, ptr %i.o, align 4, !tbaa !27
  %.pre195 = load i32, ptr %3, align 8, !tbaa !27
  %i.ay = or i32 %.pre194, %.pre
  %i.az = or i32 %i.ay, %.pre195
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %._crit_edge.thread, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !27
  br label %bb.r

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %i.a, align 16, !tbaa !27
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  store <4 x i32> splat (i32 1), ptr %i.a, align 16, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %._crit_edge.thread, %bb.q
  %i.bb = icmp sgt i32 %i.ai, 0                   ; 2 uses
  br i1 %i.bb, label %.lr.ph165.preheader, label %._crit_edge166

.lr.ph165.preheader:                              ; preds = %bb.r
  %wide.trip.count187 = zext nneg i32 %i.ai to i64
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %bb.v
  %indvars.iv184 = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next185, %bb.v ] ; 3 uses
  %.0114162 = phi i32 [ 0, %.lr.ph165.preheader ], [ %.1115, %bb.v ] ; 3 uses
  %i.bc = and i64 %indvars.iv184, 3
  %6 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  %i.bd = load i32, ptr %6, align 4, !tbaa !27
  %.not137 = icmp eq i32 %i.bd, 0
  br i1 %.not137, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph165
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv184
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !13  ; 2 uses
  switch i8 %i.bf, label %bb.u [
    i8 47, label %bb.t
    i8 43, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bg = add nsw i32 %.0114162, 2
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.bh = add i8 %i.bf, -127
  %or.cond142 = icmp ult i8 %i.bh, -95
  %spec.select.v = select i1 %or.cond142, i32 4, i32 1
  %spec.select = add nsw i32 %spec.select.v, %.0114162
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %.lr.ph165
  %.1115 = phi i32 [ %i.bg, %bb.t ], [ %.0114162, %.lr.ph165 ], [ %spec.select, %bb.u ] ; 2 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %._crit_edge166, label %.lr.ph165, !llvm.loop !31

._crit_edge166:                                   ; preds = %bb.v, %bb.r
  %.0114.lcssa = phi i32 [ 0, %bb.r ], [ %.1115, %bb.v ]
  %i.bi = add nsw i32 %.0116174, 2
  %i.bj = add i32 %i.bi, %i.af
  %i.bk = add i32 %i.bj, %.0114.lcssa             ; 4 uses
  %i.bl = icmp sgt i32 %i.bk, 1048576
  br i1 %i.bl, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %._crit_edge166
  br i1 %.not132, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = add nsw i32 %i.bk, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = call i64 @BUF_MEM_grow(ptr noundef nonnull %.0148.ph, i64 noundef %i.bn) #6
  %.not135 = icmp eq i64 %i.bo, 0
  br i1 %.not135, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !8
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %.not133 = icmp slt i32 %i.bk, %.0118146.ph
  br i1 %.not133, label %bb.aa, label %.thread154

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink = phi ptr [ %i.bp, %bb.y ], [ %1, %bb.z ]
  %i.bq = sext i32 %.0116174 to i64
  %i.br = getelementptr inbounds i8, ptr %.sink, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !32
  %i.bu = icmp eq i32 %.0110175, %i.bt
  %i.bv = select i1 %i.bu, i8 43, i8 47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 2 uses
  store i8 %i.bv, ptr %i.br, align 1, !tbaa !13
  %i.bx = and i64 %i.ae, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bw, ptr nonnull align 1 %.0109, i64 %i.bx, i1 false)
  %sext = shl i64 %i.ae, 32
  %i.by = ashr exact i64 %sext, 32
  %i.bz = getelementptr inbounds i8, ptr %i.bw, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  store i8 61, ptr %i.bz, align 1, !tbaa !13
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !26
  br i1 %i.bb, label %.lr.ph170.preheader, label %._crit_edge171

.lr.ph170.preheader:                              ; preds = %bb.aa
  %wide.trip.count192 = zext nneg i32 %i.ai to i64
  br label %.lr.ph170

.lr.ph170:                                        ; preds = %.lr.ph170.preheader, %bb.ag
  %indvars.iv189 = phi i64 [ 0, %.lr.ph170.preheader ], [ %indvars.iv.next190, %bb.ag ] ; 3 uses
  %.1107168 = phi ptr [ %i.ca, %.lr.ph170.preheader ], [ %.3, %bb.ag ] ; 7 uses
  %i.ce = and i64 %indvars.iv189, 3
  %7 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ce
  %i.cf = load i32, ptr %7, align 4, !tbaa !27
  %.not136 = icmp eq i32 %i.cf, 0
  br i1 %.not136, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph170
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv189
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13  ; 4 uses
  %i.ci = add i8 %i.ch, -127
  %or.cond = icmp ult i8 %i.ci, -95
  br i1 %or.cond, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cj = getelementptr inbounds nuw i8, ptr %.1107168, i64 1
  store i8 92, ptr %.1107168, align 1, !tbaa !13
  %i.ck = getelementptr inbounds nuw i8, ptr %.1107168, i64 2 ; 2 uses
  store i8 120, ptr %i.cj, align 1, !tbaa !13
  %i.cl = call i64 @ossl_to_hex(ptr noundef nonnull %i.ck, i8 noundef zeroext %i.ch) #6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.cn = and i8 %i.ch, 123
  %or.cond3 = icmp eq i8 %i.cn, 43
  br i1 %or.cond3, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %.1107168, i64 1
  store i8 92, ptr %.1107168, align 1, !tbaa !13
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.2108 = phi ptr [ %i.co, %bb.ae ], [ %.1107168, %bb.ad ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.2108, i64 1
  store i8 %i.ch, ptr %.2108, align 1, !tbaa !13
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af, %.lr.ph170
  %.3 = phi ptr [ %i.cm, %bb.ac ], [ %i.cp, %bb.af ], [ %.1107168, %.lr.ph170 ] ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge171, label %.lr.ph170, !llvm.loop !33

._crit_edge171:                                   ; preds = %bb.ag, %bb.aa
  %.1107.lcssa = phi ptr [ %i.ca, %bb.aa ], [ %.3, %bb.ag ]
  store i8 0, ptr %.1107.lcssa, align 1, !tbaa !13
  %i.cq = load i32, ptr %i.bs, align 8, !tbaa !32
  %i.cr = add nuw nsw i32 %.0117173, 1            ; 3 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !14
  %i.ct = call i32 @OPENSSL_sk_num(ptr noundef %i.cs) #6
  %i.cu = icmp slt i32 %i.cr, %i.ct
  br i1 %i.cu, label %bb.g, label %._crit_edge177, !llvm.loop !34

._crit_edge177:                                   ; preds = %._crit_edge171, %.preheader
  %.0117.lcssa = phi i32 [ 0, %.preheader ], [ %i.cr, %._crit_edge171 ] ; 2 uses
  %.not134 = icmp eq ptr %.0148.ph, null
  br i1 %.not134, label %.thread154, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge177
  %i.cv = getelementptr inbounds nuw i8, ptr %.0148.ph, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !8
  call void @CRYPTO_free(ptr noundef nonnull %.0148.ph, ptr noundef nonnull @.str, i32 noundef 168) #6
  br label %.thread154

.thread154:                                       ; preds = %bb.z, %._crit_edge177, %bb.ah
  %.0117160 = phi i32 [ %.0117.lcssa, %bb.ah ], [ %.0117.lcssa, %._crit_edge177 ], [ %.0117173, %bb.z ]
  %.4 = phi ptr [ %i.cw, %bb.ah ], [ %1, %._crit_edge177 ], [ %1, %bb.z ] ; 3 uses
  %i.cx = icmp eq i32 %.0117160, 0
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread154
  store i8 0, ptr %.4, align 1, !tbaa !13
  br label %bb.aj

.loopexit:                                        ; preds = %bb.x, %._crit_edge166, %bb.j, %bb.b, %bb.c
  %.sink211 = phi i32 [ 175, %bb.b ], [ 175, %bb.c ], [ 116, %._crit_edge166 ], [ 75, %bb.j ], [ 175, %bb.x ]
  %.sink210 = phi i32 [ 524295, %bb.b ], [ 524295, %bb.c ], [ 134, %._crit_edge166 ], [ 134, %bb.j ], [ 524295, %bb.x ]
  %.2 = phi ptr [ null, %bb.b ], [ %i.d, %bb.c ], [ %.0148.ph, %bb.j ], [ %.0148.ph, %._crit_edge166 ], [ %.0148.ph, %bb.x ]
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink211, ptr noundef nonnull @__func__.X509_NAME_oneline) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 11, i32 noundef %.sink210, ptr noundef null) #6
  call void @BUF_MEM_free(ptr noundef %.2) #6
  br label %bb.aj

bb.aj:                                            ; preds = %.thread154, %bb.ai, %bb.d, %.loopexit, %.thread149
  %.0120 = phi ptr [ null, %.loopexit ], [ %.0119, %.thread149 ], [ null, %bb.d ], [ %.4, %bb.ai ], [ %.4, %.thread154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %.0120
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @BUF_MEM_new() local_unnamed_addr #2

declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #3

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @OBJ_obj2nid(ptr noundef) local_unnamed_addr #2

declare ptr @OBJ_nid2sn(i32 noundef) local_unnamed_addr #2

declare i32 @i2t_ASN1_OBJECT(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @ossl_to_hex(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BUF_MEM_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 8}
!9 = !{!"buf_mem_st", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 24}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!6, !6, i64 0}
!14 = !{!15, !16, i64 0}
!15 = !{!"X509_name_st", !16, i64 0, !5, i64 8, !17, i64 16, !11, i64 24, !5, i64 32}
!16 = !{!"p1 _ZTS24stack_st_X509_NAME_ENTRY", !12, i64 0}
!17 = !{!"p1 _ZTS10buf_mem_st", !12, i64 0}
!18 = !{!19, !20, i64 0}
!19 = !{!"X509_name_entry_st", !20, i64 0, !21, i64 8, !5, i64 16, !5, i64 20}
!20 = !{!"p1 _ZTS14asn1_object_st", !12, i64 0}
!21 = !{!"p1 _ZTS14asn1_string_st", !12, i64 0}
!22 = !{!19, !21, i64 8}
!23 = !{!24, !5, i64 0}
!24 = !{!"asn1_string_st", !5, i64 0, !5, i64 4, !11, i64 8, !10, i64 16}
!25 = !{!24, !5, i64 4}
!26 = !{!24, !11, i64 8}
!27 = !{!5, !5, i64 0}
!28 = distinct !{!28, !29, !30}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = distinct !{!31, !29}
!32 = !{!19, !5, i64 16}
!33 = distinct !{!33, !29}
!34 = distinct !{!34, !29}
end_hunk_0
