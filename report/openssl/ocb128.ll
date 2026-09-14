Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ocb128?download=true
inline.NumInlined: 17
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@CRYPTO_ocb128_copy_ctx:bb.a
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call noalias ptr @CRYPTO_malloc_array(i64 noundef %i.f, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 203) #7 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.h, align 8, !tbaa !17
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = shl i64 %i.l, 4
  %i.n = add i64 %i.m, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.g, ptr align 8 %i.j, i64 %i.n, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @CRYPTO_ocb128_setiv(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = alloca [16 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.e = add i64 %2, -16
  %or.cond = icmp ult i64 %i.e, -15
  %i.f = add i64 %3, -17
  %i.g = icmp ult i64 %i.f, -16
  %or.cond5 = or i1 %or.cond, %i.g
  br i1 %or.cond5, label %bb.b, label %ocb_block_xor.exit

ocb_block_xor.exit:                               ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, i8 0, i64 80, i1 false)
  %.tr = trunc nuw nsw i64 %3 to i8
  %i.i = shl i8 %.tr, 4
  store i8 %i.i, ptr %i.d, align 16, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.j, i8 0, i64 15, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = sub nsw i64 0, %2
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  %i.n = sub nuw nsw i64 15, %2
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23
  %i.q = or i8 %i.p, 1
  store i8 %i.q, ptr %i.o, align 1, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.d, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !23
  %i.t = and i8 %i.s, -64
  store i8 %i.t, ptr %i.r, align 1, !tbaa !23
  %i.u = load ptr, ptr %0, align 8, !tbaa !18
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  call void %i.u(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef %i.w) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.z = load <8 x i8>, ptr %i.a, align 16, !tbaa !23
  %i.aa = load <8 x i8>, ptr %i.x, align 1, !tbaa !23
  %i.ab = xor <8 x i8> %i.aa, %i.z
  store <8 x i8> %i.ab, ptr %i.y, align 16, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23  ; 2 uses
  %i.ae = lshr i8 %i.ad, 3
  %i.af = and i8 %i.ae, 7
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ag ; 11 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aj = and i8 %i.ad, 7                         ; 3 uses
  %i.ak = zext nneg i8 %i.aj to i16               ; 9 uses
  %i.al = sub nuw nsw i16 8, %i.ak                ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 15
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23  ; 2 uses
  %i.ao = zext i8 %i.an to i16
  %i.ap = lshr i16 %i.ao, %i.al
  %i.aq = shl i8 %i.an, %i.aj
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 159 ; 3 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.at = load i8, ptr %i.as, align 1, !tbaa !23
  %i.au = zext i8 %i.at to i16                    ; 2 uses
  %i.av = lshr i16 %i.au, %i.al
  %i.aw = shl nuw nsw i16 %i.au, %i.ak
  %i.ax = or i16 %i.aw, %i.ap
  %i.ay = trunc i16 %i.ax to i8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 158
  store i8 %i.ay, ptr %i.az, align 2, !tbaa !23
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !23
  %i.bc = zext i8 %i.bb to i16                    ; 2 uses
  %i.bd = lshr i16 %i.bc, %i.al
  %i.be = shl nuw nsw i16 %i.bc, %i.ak
  %i.bf = or i16 %i.be, %i.av
  %i.bg = trunc i16 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 157
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !23
  %i.bk = zext i8 %i.bj to i16                    ; 2 uses
  %i.bl = lshr i16 %i.bk, %i.al
  %i.bm = shl nuw nsw i16 %i.bk, %i.ak
  %i.bn = or i16 %i.bm, %i.bd
  %i.bo = trunc i16 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i8 %i.bo, ptr %i.bp, align 4, !tbaa !23
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 11
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !23
  %i.bs = zext i8 %i.br to i16                    ; 2 uses
  %i.bt = lshr i16 %i.bs, %i.al
  %i.bu = shl nuw nsw i16 %i.bs, %i.ak
  %i.bv = or i16 %i.bu, %i.bl
  %i.bw = trunc i16 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 155
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !23
  %i.by = getelementptr inbounds nuw i8, ptr %i.ah, i64 10
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !23
  %i.ca = zext i8 %i.bz to i16                    ; 2 uses
  %i.cb = lshr i16 %i.ca, %i.al
  %i.cc = shl nuw nsw i16 %i.ca, %i.ak
  %i.cd = or i16 %i.cc, %i.bt
  %i.ce = trunc i16 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 154
  store i8 %i.ce, ptr %i.cf, align 2, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !23
  %i.ci = zext i8 %i.ch to i16                    ; 2 uses
  %i.cj = lshr i16 %i.ci, %i.al
  %i.ck = shl nuw nsw i16 %i.ci, %i.ak
  %i.cl = or i16 %i.ck, %i.cb
  %i.cm = trunc i16 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 153
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.cr = load i8, ptr %i.co, align 1, !tbaa !23
  %i.cs = load <8 x i8>, ptr %i.cq, align 1, !tbaa !23
  %i.ct = load <8 x i8>, ptr %i.ah, align 1, !tbaa !23
  %i.cu = zext i8 %i.cr to i16
  %i.cv = zext <8 x i8> %i.cs to <8 x i16>
  %i.cw = shl nuw nsw i16 %i.cu, %i.ak
  %i.cx = or i16 %i.cw, %i.cj
  %i.cy = trunc i16 %i.cx to i8
  store i8 %i.cy, ptr %i.cp, align 8, !tbaa !23
  %i.cz = insertelement <8 x i16> poison, i16 %i.al, i64 0
  %i.da = shufflevector <8 x i16> %i.cz, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.db = lshr <8 x i16> %i.cv, %i.da
  %i.dc = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %i.dd = shufflevector <8 x i8> %i.dc, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.de = shl <8 x i8> %i.ct, %i.dd
  %i.df = trunc nuw nsw <8 x i16> %i.db to <8 x i8>
  %i.dg = or <8 x i8> %i.de, %i.df
  store <8 x i8> %i.dg, ptr %i.ai, align 8, !tbaa !23
  %i.dh = lshr exact i16 -256, %i.ak
  %i.di = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !23
  %i.dk = zext i8 %i.dj to i16
  %i.dl = and i16 %i.dh, %i.dk
  %i.dm = lshr i16 %i.dl, %i.al
  %i.dn = load i8, ptr %i.ar, align 1, !tbaa !23
  %i.do = trunc nuw nsw i16 %i.dm to i8
  %i.dp = or i8 %i.dn, %i.do
  store i8 %i.dp, ptr %i.ar, align 1, !tbaa !23
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %ocb_block_xor.exit
  %.0 = phi i32 [ 1, %ocb_block_xor.exit ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_ocb128_aad(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.OCB_BLOCK, align 16          ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = lshr i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 3 uses
  %.04858 = add i64 %i.c, 1                       ; 2 uses
  %.not59 = icmp ugt i64 %.04858, %i.d
  br i1 %.not59, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.04862 = phi i64 [ %.04858, %.lr.ph ], [ %.048, %bb.c ] ; 3 uses
  %.048.in61 = phi i64 [ %i.c, %.lr.ph ], [ %.04862, %bb.c ]
  %.05060 = phi ptr [ %1, %.lr.ph ], [ %i.w, %bb.c ] ; 2 uses
  %i.j = and i64 %.048.in61, 1
  %.not5.i.not = icmp eq i64 %i.j, 0
  br i1 %.not5.i.not, label %ocb_ntz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.07.i = phi i32 [ %i.l, %.lr.ph.i ], [ 0, %bb.b ]
  %.046.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.04862, %bb.b ] ; 2 uses
  %i.k = lshr exact i64 %.046.i, 1
  %i.l = add i32 %.07.i, 1                        ; 2 uses
  %i.m = and i64 %.046.i, 2
  %.not.i = icmp eq i64 %i.m, 0
  br i1 %.not.i, label %.lr.ph.i, label %ocb_ntz.exit.loopexit, !llvm.loop !0

ocb_ntz.exit.loopexit:                            ; preds = %.lr.ph.i
  %i.n = zext i32 %i.l to i64
  br label %ocb_ntz.exit

ocb_ntz.exit:                                     ; preds = %ocb_ntz.exit.loopexit, %bb.b
  %.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.n, %ocb_ntz.exit.loopexit ]
  %i.o = call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i) ; 3 uses
  %.not56 = icmp eq ptr %i.o, null
  br i1 %.not56, label %.critedge, label %bb.c

bb.c:                                             ; preds = %ocb_ntz.exit
  %i.p = load i64, ptr %i.e, align 8, !tbaa !23
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = xor i64 %i.q, %i.p                       ; 2 uses
  store i64 %i.r, ptr %i.e, align 8, !tbaa !23
  %i.s = load i64, ptr %i.f, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !23
  %i.v = xor i64 %i.u, %i.s                       ; 2 uses
  store i64 %i.v, ptr %i.f, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(16) %.05060, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.05060, i64 16 ; 2 uses
  %i.x = load i64, ptr %3, align 16, !tbaa !23
  %i.y = xor i64 %i.x, %i.r
  store i64 %i.y, ptr %3, align 16, !tbaa !23
  %i.z = load i64, ptr %i.g, align 8, !tbaa !23
  %i.aa = xor i64 %i.z, %i.v
  store i64 %i.aa, ptr %i.g, align 8, !tbaa !23
  %i.ab = load ptr, ptr %0, align 8, !tbaa !18
  %i.ac = load ptr, ptr %i.h, align 8, !tbaa !21
  call void %i.ab(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.ac) #7
  %i.ad = load <2 x i64>, ptr %3, align 16, !tbaa !23
  %i.ae = load <2 x i64>, ptr %i.i, align 8, !tbaa !23
  %i.af = xor <2 x i64> %i.ae, %i.ad
  store <2 x i64> %i.af, ptr %i.i, align 8, !tbaa !23
  %.048 = add i64 %.04862, 1                      ; 2 uses
  %.not = icmp ugt i64 %.048, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.050.lcssa = phi ptr [ %1, %bb.a ], [ %i.w, %bb.c ]
  %i.ag = and i64 %2, 15                          ; 5 uses
  %.not55 = icmp eq i64 %i.ag, 0
  br i1 %.not55, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load <2 x i64>, ptr %i.ah, align 8, !tbaa !23
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !23
  %i.al = xor <2 x i64> %i.ak, %i.aj              ; 2 uses
  store <2 x i64> %i.al, ptr %i.ah, align 8, !tbaa !23
  %i.am = sub nuw nsw i64 16, %i.ag
  %i.an = getelementptr i8, ptr %3, i64 %i.ag
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.an, i8 0, i64 %i.am, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %.050.lcssa, i64 %i.ag, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  store i8 -128, ptr %i.ao, align 1, !tbaa !23
  %i.ap = load <2 x i64>, ptr %3, align 16, !tbaa !23
  %i.aq = xor <2 x i64> %i.ap, %i.al
  store <2 x i64> %i.aq, ptr %3, align 16, !tbaa !23
  %i.ar = load ptr, ptr %0, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21
  call void %i.ar(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.at) #7
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.av = load <2 x i64>, ptr %3, align 16, !tbaa !23
  %i.aw = load <2 x i64>, ptr %i.au, align 8, !tbaa !23
  %i.ax = xor <2 x i64> %i.aw, %i.av
  store <2 x i64> %i.ax, ptr %i.au, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  store i64 %i.d, ptr %i.b, align 8, !tbaa !29
  br label %.critedge

.critedge:                                        ; preds = %ocb_ntz.exit, %bb.e
  %.2 = phi i32 [ 1, %bb.e ], [ 0, %ocb_ntz.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @ocb_lookup_l(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.b, label %.critedge.sink.split

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 3 uses
  %.not34 = icmp ult i64 %1, %i.d
  br i1 %.not34, label %.lr.ph, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nuw i64 %1, %i.d
  %i.f = and i64 %i.e, -4
  %i.g = add i64 %i.d, 4
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  store i64 %i.h, ptr %i.c, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = tail call ptr @CRYPTO_realloc_array(ptr noundef %i.j, i64 noundef %i.h, i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 113) #7 ; 2 uses
  %.not35 = icmp eq ptr %i.k, null
  br i1 %.not35, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.i, align 8, !tbaa !17
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.02736 = phi i64 [ %i.b, %.lr.ph ], [ %i.bc, %bb.e ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %.02736 ; 20 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  %i.q = load i8, ptr %i.p, align 1, !tbaa !23    ; 2 uses
  %i.r = shl i8 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 31
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %i.u = load i8, ptr %i.t, align 2, !tbaa !23    ; 2 uses
  %i.v = tail call i8 @llvm.fshl.i8(i8 %i.u, i8 %i.q, i8 1)
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 30
  store i8 %i.v, ptr %i.w, align 2, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 13
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23    ; 2 uses
  %i.z = tail call i8 @llvm.fshl.i8(i8 %i.y, i8 %i.u, i8 1)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 29
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.ac = load i8, ptr %i.ab, align 4, !tbaa !23  ; 2 uses
  %i.ad = tail call i8 @llvm.fshl.i8(i8 %i.ac, i8 %i.y, i8 1)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i8 %i.ad, ptr %i.ae, align 4, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !23  ; 2 uses
  %i.ah = tail call i8 @llvm.fshl.i8(i8 %i.ag, i8 %i.ac, i8 1)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 27
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !23  ; 2 uses
  %i.al = tail call i8 @llvm.fshl.i8(i8 %i.ak, i8 %i.ag, i8 1)
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 26
  store i8 %i.al, ptr %i.am, align 2, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !23  ; 2 uses
  %i.ap = tail call i8 @llvm.fshl.i8(i8 %i.ao, i8 %i.ak, i8 1)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.au = load i8, ptr %i.n, align 8, !tbaa !23
  %i.av = load <8 x i8>, ptr %i.n, align 8, !tbaa !23
  %isneg.i = icmp slt i8 %i.au, 0
  %i.aw = select i1 %isneg.i, i8 -121, i8 0
  %i.ax = load i8, ptr %i.ar, align 8, !tbaa !23
  %i.ay = load <8 x i8>, ptr %i.at, align 1, !tbaa !23
  %i.az = tail call i8 @llvm.fshl.i8(i8 %i.ax, i8 %i.ao, i8 1)
  store i8 %i.az, ptr %i.as, align 8, !tbaa !23
  %i.ba = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.av, <8 x i8> %i.ay, <8 x i8> splat (i8 1))
  store <8 x i8> %i.ba, ptr %i.o, align 8, !tbaa !23
  %i.bb = xor i8 %i.aw, %i.r
  store i8 %i.bb, ptr %i.s, align 1, !tbaa !23
  %i.bc = add nuw i64 %.02736, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !24
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.a, %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ %i.bf, %.critedge.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_ocb128_encrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.OCB_BLOCK, align 16          ; 11 uses
  %5 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %i.a = lshr i64 %3, 4                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %.not96 = icmp eq ptr %i.f, null
  br i1 %.not96, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = lshr i64 %i.d, 1
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = tail call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %i.i)
  %.not100 = icmp eq ptr %i.j, null
  br i1 %.not100, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !21
  %i.n = load i64, ptr %i.b, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void %i.k(ptr noundef %1, ptr noundef %2, i64 noundef %i.a, ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.r, ptr noundef nonnull %i.s) #7
  %i.t = and i64 %3, -16                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  br label %.loopexit

bb.d:                                             ; preds = %bb.b, %bb.a
  %.081106 = add i64 %i.c, 1                      ; 2 uses
  %.not97107 = icmp ugt i64 %.081106, %i.d
  br i1 %.not97107, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.081111 = phi i64 [ %.081106, %.lr.ph ], [ %.081, %bb.f ] ; 3 uses
  %.081.in110 = phi i64 [ %i.c, %.lr.ph ], [ %.081111, %bb.f ]
  %.185109 = phi ptr [ %2, %.lr.ph ], [ %i.az, %bb.f ] ; 2 uses
  %.189108 = phi ptr [ %1, %.lr.ph ], [ %i.ak, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.aa = and i64 %.081.in110, 1
  %.not5.i.not = icmp eq i64 %i.aa, 0
  br i1 %.not5.i.not, label %ocb_ntz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.07.i = phi i32 [ %i.ac, %.lr.ph.i ], [ 0, %bb.e ]
  %.046.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %.081111, %bb.e ] ; 2 uses
  %i.ab = lshr exact i64 %.046.i, 1
  %i.ac = add i32 %.07.i, 1                       ; 2 uses
  %i.ad = and i64 %.046.i, 2
  %.not.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i, label %.lr.ph.i, label %ocb_ntz.exit.loopexit, !llvm.loop !0

ocb_ntz.exit.loopexit:                            ; preds = %.lr.ph.i
  %i.ae = zext i32 %i.ac to i64
  br label %ocb_ntz.exit

ocb_ntz.exit:                                     ; preds = %ocb_ntz.exit.loopexit, %bb.e
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ae, %ocb_ntz.exit.loopexit ]
  %i.af = call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i) ; 3 uses
  %.not98 = icmp eq ptr %i.af, null
  br i1 %.not98, label %.critedge103, label %bb.f

bb.f:                                             ; preds = %ocb_ntz.exit
  %i.ag = load i64, ptr %i.w, align 8, !tbaa !23
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ai = load i64, ptr %i.x, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.189108, i64 16 ; 2 uses
  %i.al = xor i64 %i.ah, %i.ag                    ; 2 uses
  store i64 %i.al, ptr %i.w, align 8, !tbaa !23
  %i.am = load i64, ptr %i.aj, align 8, !tbaa !23
  %i.an = xor i64 %i.am, %i.ai                    ; 2 uses
  store i64 %i.an, ptr %i.x, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.189108, i64 16, i1 false)
  %i.ao = load <2 x i64>, ptr %4, align 16, !tbaa !23 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.y, align 8, !tbaa !23
  %i.aq = xor <2 x i64> %i.ap, %i.ao
  store <2 x i64> %i.aq, ptr %i.y, align 8, !tbaa !23
  %i.ar = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.as = insertelement <2 x i64> %i.ar, i64 %i.an, i64 1
  %i.at = xor <2 x i64> %i.ao, %i.as
  store <2 x i64> %i.at, ptr %4, align 16, !tbaa !23
  %i.au = load ptr, ptr %0, align 8, !tbaa !18
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !21
  call void %i.au(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %i.av) #7
  %i.aw = load <2 x i64>, ptr %i.w, align 8, !tbaa !23
  %i.ax = load <2 x i64>, ptr %4, align 16, !tbaa !23
  %i.ay = xor <2 x i64> %i.ax, %i.aw
  store <2 x i64> %i.ay, ptr %4, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.185109, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %.185109, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  %.081 = add i64 %.081111, 1                     ; 2 uses
  %.not97 = icmp ugt i64 %.081, %i.d
  br i1 %.not97, label %.loopexit, label %bb.e, !llvm.loop !31

.loopexit:                                        ; preds = %bb.f, %bb.d, %bb.c
  %.391 = phi ptr [ %i.u, %bb.c ], [ %1, %bb.d ], [ %i.ak, %bb.f ] ; 6 uses
  %.387 = phi ptr [ %i.v, %bb.c ], [ %2, %bb.d ], [ %i.az, %bb.f ] ; 5 uses
  %i.ba = and i64 %3, 15                          ; 6 uses
  %.not101 = icmp eq i64 %i.ba, 0
  br i1 %.not101, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load <2 x i64>, ptr %i.bb, align 8, !tbaa !23
  %i.be = load <2 x i64>, ptr %i.bc, align 8, !tbaa !23
  %i.bf = xor <2 x i64> %i.be, %i.bd
  store <2 x i64> %i.bf, ptr %i.bb, align 8, !tbaa !23
  %i.bg = load ptr, ptr %0, align 8, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !21
  call void %i.bg(ptr noundef nonnull %i.bb, ptr noundef nonnull %5, ptr noundef %i.bi) #7
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.bj = icmp samesign ult i64 %i.ba, 4
  br i1 %i.bj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.g
  %unroll_iter = and i64 %3, 12
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.new
  %.08.i = phi i64 [ 0, %.new ], [ %i.cl, %bb.h ] ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.391, i64 %.08.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !23
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i
  %i.bn = load i8, ptr %i.bm, align 4, !tbaa !23
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %.387, i64 %.08.i
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !23
  %i.bq = or disjoint i64 %.08.i, 1               ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.391, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  %i.bv = xor i8 %i.bu, %i.bs
  %i.bw = getelementptr inbounds nuw i8, ptr %.387, i64 %i.bq
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !23
  %i.bx = or disjoint i64 %.08.i, 2               ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.391, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 %i.bx
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !23
  %i.cc = xor i8 %i.cb, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %.387, i64 %i.bx
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !23
  %i.ce = or disjoint i64 %.08.i, 3               ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.391, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !23
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 %i.ce
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = xor i8 %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw i8, ptr %.387, i64 %i.ce
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !23
  %i.cl = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ocb_block_xor.exit.unr-lcssa, label %bb.h, !llvm.loop !1

ocb_block_xor.exit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ocb_block_xor.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ocb_block_xor.exit.unr-lcssa, %bb.g
  %.08.i.epil.init = phi i64 [ 0, %bb.g ], [ %i.cl, %ocb_block_xor.exit.unr-lcssa ]
  %lcmp.mod124 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod124)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.08.i.epil = phi i64 [ %.08.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.i ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.391, i64 %.08.i.epil
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i.epil
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %i.cq = xor i8 %i.cp, %i.cn
  %i.cr = getelementptr inbounds nuw i8, ptr %.387, i64 %.08.i.epil
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !23
  %i.cs = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ocb_block_xor.exit, label %bb.i, !llvm.loop !32

ocb_block_xor.exit:                               ; preds = %bb.i, %ocb_block_xor.exit.unr-lcssa
  %i.ct = sub nuw nsw i64 16, %i.ba
  %i.cu = getelementptr i8, ptr %5, i64 %i.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cu, i8 0, i64 %i.ct, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 1 %.391, i64 %i.ba, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 %i.ba
  store i8 -128, ptr %i.cv, align 1, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cx = load <2 x i64>, ptr %5, align 16, !tbaa !23
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !tbaa !23
  %i.cz = xor <2 x i64> %i.cy, %i.cx
  store <2 x i64> %i.cz, ptr %i.cw, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.j

bb.j:                                             ; preds = %ocb_block_xor.exit, %.loopexit
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  br label %.critedge

.critedge103:                                     ; preds = %ocb_ntz.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.critedge

.critedge:                                        ; preds = %.preheader.preheader, %.critedge103, %bb.j
  %.3 = phi i32 [ 1, %bb.j ], [ 0, %.preheader.preheader ], [ 0, %.critedge103 ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @CRYPTO_ocb128_decrypt(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %5 = alloca %union.OCB_BLOCK, align 16          ; 12 uses
  %i.a = lshr i64 %3, 4                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !26   ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 4 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %.not101 = icmp eq ptr %i.f, null
  br i1 %.not101, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.g = lshr i64 %i.d, 1
  %i.h = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 false)
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = tail call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %i.i)
  %.not105 = icmp eq ptr %i.j, null
  br i1 %.not105, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = load i64, ptr %i.b, align 8, !tbaa !26
  %i.o = add i64 %i.n, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void %i.k(ptr noundef %1, ptr noundef %2, i64 noundef %i.a, ptr noundef %i.m, i64 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.r, ptr noundef nonnull %i.s) #7
  %i.t = and i64 %3, -16                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.t
  br label %bb.h

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %.083112 = add i64 %i.c, 1                      ; 2 uses
  %.not102113 = icmp ugt i64 %.083112, %i.d
  br i1 %.not102113, label %.thread109, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.e

.thread109:                                       ; preds = %bb.f, %bb.d
  %.193.lcssa = phi ptr [ %1, %bb.d ], [ %i.ap, %bb.f ]
  %.188.lcssa = phi ptr [ %2, %bb.d ], [ %i.bb, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.083117 = phi i64 [ %.083112, %.lr.ph ], [ %.083, %bb.f ] ; 3 uses
  %.083.in116 = phi i64 [ %i.c, %.lr.ph ], [ %.083117, %bb.f ]
  %.188115 = phi ptr [ %2, %.lr.ph ], [ %i.bb, %bb.f ] ; 2 uses
  %.193114 = phi ptr [ %1, %.lr.ph ], [ %i.ap, %bb.f ] ; 2 uses
  %i.ac = and i64 %.083.in116, 1
  %.not5.i.not = icmp eq i64 %i.ac, 0
  br i1 %.not5.i.not, label %ocb_ntz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ 0, %bb.e ]
  %.046.i = phi i64 [ %i.ad, %.lr.ph.i ], [ %.083117, %bb.e ] ; 2 uses
  %i.ad = lshr exact i64 %.046.i, 1
  %i.ae = add i32 %.07.i, 1                       ; 2 uses
  %i.af = and i64 %.046.i, 2
  %.not.i = icmp eq i64 %i.af, 0
  br i1 %.not.i, label %.lr.ph.i, label %ocb_ntz.exit.loopexit, !llvm.loop !0

ocb_ntz.exit.loopexit:                            ; preds = %.lr.ph.i
  %i.ag = zext i32 %i.ae to i64
  br label %ocb_ntz.exit

ocb_ntz.exit:                                     ; preds = %ocb_ntz.exit.loopexit, %bb.e
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ag, %ocb_ntz.exit.loopexit ]
  %i.ah = call fastcc ptr @ocb_lookup_l(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i) ; 3 uses
  %.not103 = icmp eq ptr %i.ah, null
  br i1 %.not103, label %bb.g, label %bb.f

bb.f:                                             ; preds = %ocb_ntz.exit
  %i.ai = load i64, ptr %i.w, align 8, !tbaa !23
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !23
  %i.ak = xor i64 %i.aj, %i.ai                    ; 2 uses
  store i64 %i.ak, ptr %i.w, align 8, !tbaa !23
  %i.al = load i64, ptr %i.x, align 8, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !23
  %i.ao = xor i64 %i.an, %i.al                    ; 2 uses
  store i64 %i.ao, ptr %i.x, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(16) %.193114, i64 16, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.193114, i64 16 ; 2 uses
  %i.aq = load i64, ptr %4, align 16, !tbaa !23
  %i.ar = xor i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %4, align 16, !tbaa !23
  %i.as = load i64, ptr %i.y, align 8, !tbaa !23
  %i.at = xor i64 %i.as, %i.ao
  store i64 %i.at, ptr %i.y, align 8, !tbaa !23
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.av = load ptr, ptr %i.aa, align 8, !tbaa !22
  call void %i.au(ptr noundef nonnull %4, ptr noundef nonnull %4, ptr noundef %i.av) #7
  %i.aw = load <2 x i64>, ptr %i.w, align 8, !tbaa !23
  %i.ax = load <2 x i64>, ptr %4, align 16, !tbaa !23
  %i.ay = xor <2 x i64> %i.ax, %i.aw              ; 2 uses
  store <2 x i64> %i.ay, ptr %4, align 16, !tbaa !23
  %i.az = load <2 x i64>, ptr %i.ab, align 8, !tbaa !23
  %i.ba = xor <2 x i64> %i.az, %i.ay
  store <2 x i64> %i.ba, ptr %i.ab, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.188115, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.188115, i64 16 ; 2 uses
  %.083 = add i64 %.083117, 1                     ; 2 uses
  %.not102 = icmp ugt i64 %.083, %i.d
  br i1 %.not102, label %.thread109, label %bb.e, !llvm.loop !33

bb.g:                                             ; preds = %ocb_ntz.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %.critedge

bb.h:                                             ; preds = %.thread109, %bb.c
  %.496 = phi ptr [ %i.u, %bb.c ], [ %.193.lcssa, %.thread109 ] ; 5 uses
  %.491 = phi ptr [ %i.v, %bb.c ], [ %.188.lcssa, %.thread109 ] ; 6 uses
  %i.bc = and i64 %3, 15                          ; 4 uses
  %.not106 = icmp eq i64 %i.bc, 0
  br i1 %.not106, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load <2 x i64>, ptr %i.bd, align 8, !tbaa !23
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !tbaa !23
  %i.bh = xor <2 x i64> %i.bg, %i.bf
  store <2 x i64> %i.bh, ptr %i.bd, align 8, !tbaa !23
  %i.bi = load ptr, ptr %0, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  call void %i.bi(ptr noundef nonnull %i.bd, ptr noundef nonnull %5, ptr noundef %i.bk) #7
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %i.bl = icmp samesign ult i64 %i.bc, 4
  br i1 %i.bl, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.i
  %unroll_iter = and i64 %3, 12
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new
  %.08.i = phi i64 [ 0, %.new ], [ %i.cn, %bb.j ] ; 7 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.j ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.496, i64 %.08.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !23
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i
  %i.bp = load i8, ptr %i.bo, align 4, !tbaa !23
  %i.bq = xor i8 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %.491, i64 %.08.i
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !23
  %i.bs = or disjoint i64 %.08.i, 1               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.496, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !23
  %i.bx = xor i8 %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %.491, i64 %i.bs
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !23
  %i.bz = or disjoint i64 %.08.i, 2               ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.496, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !23
  %i.ce = xor i8 %i.cd, %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %.491, i64 %i.bz
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !23
  %i.cg = or disjoint i64 %.08.i, 3               ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.496, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !23
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 %i.cg
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !23
  %i.cl = xor i8 %i.ck, %i.ci
  %i.cm = getelementptr inbounds nuw i8, ptr %.491, i64 %i.cg
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !23
  %i.cn = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %ocb_block_xor.exit.unr-lcssa, label %bb.j, !llvm.loop !1

ocb_block_xor.exit.unr-lcssa:                     ; preds = %bb.j
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %ocb_block_xor.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %ocb_block_xor.exit.unr-lcssa, %bb.i
  %.08.i.epil.init = phi i64 [ 0, %bb.i ], [ %i.cn, %ocb_block_xor.exit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod130)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.08.i.epil = phi i64 [ %.08.i.epil.init, %.epil.preheader ], [ %i.cu, %bb.k ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.co = getelementptr inbounds nuw i8, ptr %.496, i64 %.08.i.epil
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !23
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 %.08.i.epil
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !23
  %i.cs = xor i8 %i.cr, %i.cp
  %i.ct = getelementptr inbounds nuw i8, ptr %.491, i64 %.08.i.epil
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !23
  %i.cu = add nuw nsw i64 %.08.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %ocb_block_xor.exit, label %bb.k, !llvm.loop !34

ocb_block_xor.exit:                               ; preds = %bb.k, %ocb_block_xor.exit.unr-lcssa
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %5, ptr nonnull align 1 %.491, i64 %i.bc, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 %i.bc
  store i8 -128, ptr %i.cv, align 1, !tbaa !23
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.cx = load <2 x i64>, ptr %5, align 16, !tbaa !23
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !tbaa !23
  %i.cz = xor <2 x i64> %i.cy, %i.cx
  store <2 x i64> %i.cz, ptr %i.cw, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.l

bb.l:                                             ; preds = %ocb_block_xor.exit, %bb.h
  store i64 %i.d, ptr %i.b, align 8, !tbaa !26
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %.preheader.preheader, %bb.l
  %.4 = phi i32 [ 1, %bb.l ], [ 0, %.preheader.preheader ], [ 0, %bb.g ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define i32 @CRYPTO_ocb128_finish(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.OCB_BLOCK, align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = add i64 %2, -17
  %or.cond.i = icmp ult i64 %i.a, -16
  br i1 %or.cond.i, label %ocb_finish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load <2 x i64>, ptr %i.b, align 8, !tbaa !23
  %i.f = load <2 x i64>, ptr %i.c, align 8, !tbaa !23
  %i.g = xor <2 x i64> %i.f, %i.e
  %i.h = load <2 x i64>, ptr %i.d, align 8, !tbaa !23
  %i.i = xor <2 x i64> %i.g, %i.h
  store <2 x i64> %i.i, ptr %3, align 16, !tbaa !23
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  call void %i.j(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.l) #7, !inline_history !2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load <2 x i64>, ptr %3, align 16, !tbaa !23
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !23
  %i.p = xor <2 x i64> %i.o, %i.n
  store <2 x i64> %i.p, ptr %3, align 16, !tbaa !23
  %i.q = call i32 @CRYPTO_memcmp(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #7
  br label %ocb_finish.exit

ocb_finish.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.q, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @CRYPTO_ocb128_tag(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %union.OCB_BLOCK, align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.a = add i64 %2, -17
  %or.cond.i = icmp ult i64 %i.a, -16
  br i1 %or.cond.i, label %ocb_finish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load <2 x i64>, ptr %i.b, align 8, !tbaa !23
  %i.f = load <2 x i64>, ptr %i.c, align 8, !tbaa !23
  %i.g = xor <2 x i64> %i.f, %i.e
  %i.h = load <2 x i64>, ptr %i.d, align 8, !tbaa !23
  %i.i = xor <2 x i64> %i.g, %i.h
  store <2 x i64> %i.i, ptr %3, align 16, !tbaa !23
  %i.j = load ptr, ptr %0, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  call void %i.j(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef %i.l) #7, !inline_history !2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load <2 x i64>, ptr %3, align 16, !tbaa !23
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !23
  %i.p = xor <2 x i64> %i.o, %i.n
  store <2 x i64> %i.p, ptr %3, align 16, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 16 %3, i64 %2, i1 false)
  br label %ocb_finish.exit

ocb_finish.exit:                                  ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ -1, %bb.a ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define void @CRYPTO_ocb128_cleanup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

end_hunk_0
