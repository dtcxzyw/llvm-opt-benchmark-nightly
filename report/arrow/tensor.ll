inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9UInt8TypeEEENS_6StatusERKT_:bb.a
  store i16 %i.bu, ptr %gep.2, align 2, !tbaa !273
  %i.bw = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = zext i8 %i.by to i16
  %i.ca = mul nsw i64 %i.bw, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ca
  store i16 %i.bz, ptr %gep.3, align 2, !tbaa !273
  %i.cb = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cb, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !568

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.cc = phi ptr [ %i.aa, %.lr.ph ], [ %i.dr, %bb.l ]
  %i.cd = phi ptr [ %i.z, %.lr.ph ], [ %i.dq, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %bb.l ] ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !424
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !425
  %i.cl = add nsw i64 %i.ck, %.016                ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !81
  %i.cp = trunc i64 %i.cl to i8
  %i.cq = and i8 %i.cp, 7
  %i.cr = lshr i8 %i.co, %i.cq
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ct = load ptr, ptr %i.cd, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !55
  switch i32 %i.cv, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, i64 noundef %.016)
  br i1 %i.cw, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cz = load atomic i64, ptr %i.cy seq_cst, align 8
  %i.da = load i64, ptr %i.cc, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cz, %i.da
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, i64 noundef %.016)
  br i1 %i.db, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !81
  %i.de = zext i8 %i.dd to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.df = phi i16 [ %i.de, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dg = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !203
  %i.di = load i32, ptr %i.ad, align 8, !tbaa !207
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %.016, %i.dj
  %i.dl = load i32, ptr %i.ae, align 4, !tbaa !209
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [2 x i8], ptr %i.dh, i64 %i.dk
  %i.do = getelementptr [2 x i8], ptr %i.dn, i64 %i.dm
  store i16 %i.df, ptr %i.do, align 2, !tbaa !273
  %i.dp = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !404
  %i.dt = icmp slt i64 %i.dp, %i.ds
  br i1 %i.dt, label %bb.e, label %.loopexit, !llvm.loop !569

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !570
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 11 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !207 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !209
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 1
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <8 x i16>, ptr %i.au, align 2, !tbaa !273
  %wide.load28 = load <8 x i16>, ptr %i.av, align 2, !tbaa !273
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <8 x i16> %wide.load, ptr %i.aw, align 2, !tbaa !273
  store <8 x i16> %wide.load28, ptr %i.ax, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !573

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index31
  %wide.load32 = load <4 x i16>, ptr %i.az, align 2, !tbaa !273
  %i.ba = getelementptr [2 x i8], ptr %invariant.gep, i64 %index31
  store <4 x i16> %wide.load32, ptr %i.ba, align 2, !tbaa !273
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !574

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ac, %n.vec30
  br i1 %cmp.n34, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bf, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !273
  %i.be = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep.prol, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !575

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bf, %vec.epilog.scalar.ph.prol ]
  %i.bg = sub nsw i64 %.01117.ph, %i.ac
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !273
  %i.bk = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bk
  store i16 %i.bj, ptr %gep, align 2, !tbaa !273
  %i.bl = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !273
  %i.bo = mul nsw i64 %i.bl, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.1, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !273
  %i.bs = mul nsw i64 %i.bp, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bs
  store i16 %i.br, ptr %gep.2, align 2, !tbaa !273
  %i.bt = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !273
  %i.bw = mul nsw i64 %i.bt, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  store i16 %i.bv, ptr %gep.3, align 2, !tbaa !273
  %i.bx = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !576

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi ptr [ %i.ab, %.lr.ph ], [ %i.dm, %bb.l ]
  %i.bz = phi ptr [ %i.aa, %.lr.ph ], [ %i.dl, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.l ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.016                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cv, %i.cw
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.da = phi i16 [ %i.cz, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !203
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !207
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %.016, %i.de
  %i.dg = load i32, ptr %i.af, align 4, !tbaa !209
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [2 x i8], ptr %i.dc, i64 %i.df
  %i.dj = getelementptr [2 x i8], ptr %i.di, i64 %i.dh
  store i16 %i.da, ptr %i.dj, align 2, !tbaa !273
  %i.dk = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !404
  %i.do = icmp slt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !577

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !578
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 11 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !207 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !209
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 1
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <8 x i16>, ptr %i.au, align 2, !tbaa !273
  %wide.load28 = load <8 x i16>, ptr %i.av, align 2, !tbaa !273
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <8 x i16> %wide.load, ptr %i.aw, align 2, !tbaa !273
  store <8 x i16> %wide.load28, ptr %i.ax, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index31
  %wide.load32 = load <4 x i16>, ptr %i.az, align 2, !tbaa !273
  %i.ba = getelementptr [2 x i8], ptr %invariant.gep, i64 %index31
  store <4 x i16> %wide.load32, ptr %i.ba, align 2, !tbaa !273
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !582

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ac, %n.vec30
  br i1 %cmp.n34, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bf, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !273
  %i.be = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep.prol, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !583

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bf, %vec.epilog.scalar.ph.prol ]
  %i.bg = sub nsw i64 %.01117.ph, %i.ac
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !273
  %i.bk = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bk
  store i16 %i.bj, ptr %gep, align 2, !tbaa !273
  %i.bl = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !273
  %i.bo = mul nsw i64 %i.bl, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.1, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !273
  %i.bs = mul nsw i64 %i.bp, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bs
  store i16 %i.br, ptr %gep.2, align 2, !tbaa !273
  %i.bt = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !273
  %i.bw = mul nsw i64 %i.bt, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  store i16 %i.bv, ptr %gep.3, align 2, !tbaa !273
  %i.bx = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !584

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi ptr [ %i.ab, %.lr.ph ], [ %i.dm, %bb.l ]
  %i.bz = phi ptr [ %i.aa, %.lr.ph ], [ %i.dl, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.l ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.016                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cv, %i.cw
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.da = phi i16 [ %i.cz, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !203
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !207
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %.016, %i.de
  %i.dg = load i32, ptr %i.af, align 4, !tbaa !209
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [2 x i8], ptr %i.dc, i64 %i.df
  %i.dj = getelementptr [2 x i8], ptr %i.di, i64 %i.dh
  store i16 %i.da, ptr %i.dj, align 2, !tbaa !273
  %i.dk = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !404
  %i.do = icmp slt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !585

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !586
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_10UInt64TypeEEENS_6StatusERKT_:bb.a
  store i16 %i.bn, ptr %gep.2, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bs = trunc i64 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.3, align 2, !tbaa !273
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !612

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.cx = trunc i64 %i.cw to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi i16 [ %i.cx, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !203
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !207
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !209
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  store i16 %i.cy, ptr %i.dh, align 2, !tbaa !273
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !613

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !614
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 11 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !207 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !209
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 1
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <8 x i16>, ptr %i.au, align 2, !tbaa !273
  %wide.load28 = load <8 x i16>, ptr %i.av, align 2, !tbaa !273
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <8 x i16> %wide.load, ptr %i.aw, align 2, !tbaa !273
  store <8 x i16> %wide.load28, ptr %i.ax, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index31
  %wide.load32 = load <4 x i16>, ptr %i.az, align 2, !tbaa !273
  %i.ba = getelementptr [2 x i8], ptr %invariant.gep, i64 %index31
  store <4 x i16> %wide.load32, ptr %i.ba, align 2, !tbaa !273
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !618

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ac, %n.vec30
  br i1 %cmp.n34, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bf, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !273
  %i.be = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep.prol, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !619

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bf, %vec.epilog.scalar.ph.prol ]
  %i.bg = sub nsw i64 %.01117.ph, %i.ac
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !273
  %i.bk = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bk
  store i16 %i.bj, ptr %gep, align 2, !tbaa !273
  %i.bl = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !273
  %i.bo = mul nsw i64 %i.bl, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.1, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !273
  %i.bs = mul nsw i64 %i.bp, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bs
  store i16 %i.br, ptr %gep.2, align 2, !tbaa !273
  %i.bt = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !273
  %i.bw = mul nsw i64 %i.bt, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  store i16 %i.bv, ptr %gep.3, align 2, !tbaa !273
  %i.bx = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !620

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi ptr [ %i.ab, %.lr.ph ], [ %i.dm, %bb.l ]
  %i.bz = phi ptr [ %i.aa, %.lr.ph ], [ %i.dl, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.l ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.016                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cv, %i.cw
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.da = phi i16 [ %i.cz, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !545, !nonnull !54, !align !342
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !203
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !207
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %.016, %i.de
  %i.dg = load i32, ptr %i.af, align 4, !tbaa !209
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [2 x i8], ptr %i.dc, i64 %i.df
  %i.dj = getelementptr [2 x i8], ptr %i.di, i64 %i.dh
  store i16 %i.da, ptr %i.dj, align 2, !tbaa !273
  %i.dk = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !404
  %i.do = icmp slt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !621

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !622
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !544, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_9UInt8TypeEEENS_6StatusERKT_:bb.a
  store ptr %i.by, ptr %i.ai, align 8, !tbaa !203
  store i16 %i.bx, ptr %i.bu, align 2, !tbaa !273
  %i.bz = getelementptr inbounds nuw i8, ptr %.01320, i64 5
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !81
  %i.cb = zext i8 %i.ca to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  store ptr %i.cc, ptr %i.ai, align 8, !tbaa !203
  store i16 %i.cb, ptr %i.by, align 2, !tbaa !273
  %i.cd = getelementptr inbounds nuw i8, ptr %.01320, i64 6
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !81
  %i.cf = zext i8 %i.ce to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bf, i64 14 ; 2 uses
  store ptr %i.cg, ptr %i.ai, align 8, !tbaa !203
  store i16 %i.cf, ptr %i.cc, align 2, !tbaa !273
  %i.ch = getelementptr inbounds nuw i8, ptr %.01320, i64 7
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !81
  %i.cj = zext i8 %i.ci to i16
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.ck, ptr %i.ai, align 8, !tbaa !203
  store i16 %i.cj, ptr %i.cg, align 2, !tbaa !273
  %i.cl = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.cl, %i.ah
  br i1 %.not.7, label %.loopexit, label %scalar.ph, !llvm.loop !667

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.cm = phi ptr [ %i.dv, %bb.l ], [ %i.ae, %.preheader ]
  %i.cn = phi ptr [ %i.du, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.dt, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !424
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !425
  %i.cv = add nsw i64 %i.cu, %.018                ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !81
  %i.cz = trunc i64 %i.cv to i8
  %i.da = and i8 %i.cz, 7
  %i.db = lshr i8 %i.cy, %i.da
  %i.dc = trunc i8 %i.db to i1
  br i1 %i.dc, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.dd = load ptr, ptr %i.cn, align 8, !tbaa !37
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load i32, ptr %i.de, align 8, !tbaa !55
  switch i32 %i.df, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.dg = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cn, i64 noundef %.018)
  br i1 %i.dg, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.dh = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cn, i64 noundef %.018)
  br i1 %i.dh, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.di = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.dj = load atomic i64, ptr %i.di seq_cst, align 8
  %i.dk = load i64, ptr %i.cm, align 8, !tbaa !404
  %.not28 = icmp eq i64 %i.dj, %i.dk
  br i1 %.not28, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.dl = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cn, i64 noundef %.018)
  br i1 %i.dl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !81
  %i.do = zext i8 %i.dn to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.dp = phi i16 [ %i.do, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dq = load ptr, ptr %1, align 8, !tbaa !641, !nonnull !54, !align !342 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !203 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 2
  store ptr %i.ds, ptr %i.dq, align 8, !tbaa !203
  store i16 %i.dp, ptr %i.dr, align 2, !tbaa !273
  %i.dt = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !404
  %i.dx = icmp slt i64 %i.dt, %i.dw
  br i1 %i.dx, label %.lr.ph, label %.loopexit, !llvm.loop !668

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !669
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %.idx = shl i64 %i.i, 1                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !641, !nonnull !54, !align !342 ; 2 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !203 ; 7 uses
  %i.aj = add i64 %.idx, -2                       ; 3 uses
  %i.ak = lshr exact i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.promoted27 = ptrtoaddr ptr %.promoted to i64
  %i.am = shl i64 %i.m, 1
  %i.an = add i64 %i.am, %i.l
  %i.ao = sub i64 %.promoted27, %i.an
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 12
  %n.vec = and i64 %i.al, -16                     ; 4 uses
  %i.ap = shl i64 %n.vec, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.n, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.as ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.n, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep29, align 2, !tbaa !273
  %wide.load30 = load <8 x i16>, ptr %i.at, align 2, !tbaa !273
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !273
  store <8 x i16> %wide.load30, ptr %i.au, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.al, -4                    ; 3 uses
  %i.aw = shl i64 %n.vec33, 1                     ; 2 uses
  %i.ax = getelementptr i8, ptr %.promoted, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.n, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.az = shl i64 %index34, 1                     ; 2 uses
  %next.gep35 = getelementptr i8, ptr %.promoted, i64 %i.az
  %next.gep36 = getelementptr i8, ptr %i.n, i64 %i.az
  %wide.load37 = load <4 x i16>, ptr %next.gep36, align 2, !tbaa !273
  store <4 x i16> %wide.load37, ptr %next.gep35, align 2, !tbaa !273
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !673

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.al, %n.vec33
  br i1 %cmp.n39, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %.promoted, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.01320.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.bb = phi ptr [ %i.bd, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.be, %vec.epilog.scalar.ph ], [ %.01320.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bc = load i16, ptr %.01320, align 2, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  store i16 %i.bc, ptr %i.bb, align 2, !tbaa !273
  %i.be = getelementptr inbounds nuw i8, ptr %.01320, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.ah
  br i1 %.not, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !674

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bf = phi ptr [ %i.cn, %bb.l ], [ %i.ae, %.preheader ]
  %i.bg = phi ptr [ %i.cm, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.cl, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !425
  %i.bo = add nsw i64 %i.bn, %.018                ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !55
  switch i32 %i.by, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.ca, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.cc, %i.cd
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.ce, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.018
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.ch = phi i16 [ %i.cg, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.ci = load ptr, ptr %1, align 8, !tbaa !641, !nonnull !54, !align !342 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !203 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !203
  store i16 %i.ch, ptr %i.cj, align 2, !tbaa !273
  %i.cl = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !404
  %i.cp = icmp slt i64 %i.cl, %i.co
  br i1 %i.cp, label %.lr.ph, label %.loopexit, !llvm.loop !675

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.ax, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %i.bd, %vec.epilog.scalar.ph ]
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !203
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !676
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorItE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !639, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_10UInt16TypeEEENS_6StatusERKT_:bb.a
  store <4 x i32> %i.as, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %i.at, ptr %i.au, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !817

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %.lr.ph21 ], [ %i.am, %middle.block ]
  %.01320.ph = phi ptr [ %i.m, %.lr.ph21 ], [ %i.ao, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aw = phi ptr [ %i.az, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.ba, %scalar.ph ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ax = load i16, ptr %.01320, align 2, !tbaa !273
  %i.ay = zext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.01320, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ba, %i.ag
  br i1 %.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !818

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bb = phi ptr [ %i.ck, %bb.l ], [ %i.ad, %.preheader ]
  %i.bc = phi ptr [ %i.cj, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.ci, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !424
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !425
  %i.bk = add nsw i64 %i.bj, %.018                ; 2 uses
  %i.bl = lshr i64 %i.bk, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !81
  %i.bo = trunc i64 %i.bk to i8
  %i.bp = and i8 %i.bo, 7
  %i.bq = lshr i8 %i.bn, %i.bp
  %i.br = trunc i8 %i.bq to i1
  br i1 %i.br, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.bs = load ptr, ptr %i.bc, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !55
  switch i32 %i.bu, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bv = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bc, i64 noundef %.018)
  br i1 %i.bv, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bw = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bc, i64 noundef %.018)
  br i1 %i.bw, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.by = load atomic i64, ptr %i.bx seq_cst, align 8
  %i.bz = load i64, ptr %i.bb, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.by, %i.bz
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bc, i64 noundef %.018)
  br i1 %i.ca, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.018
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !273
  %i.cd = zext i16 %i.cc to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.ce = phi i32 [ %i.cd, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cf = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !210 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !210
  store i32 %i.ce, ptr %i.cg, align 4, !tbaa !3
  %i.ci = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !404
  %i.cm = icmp slt i64 %i.ci, %i.cl
  br i1 %i.cm, label %.lr.ph, label %.loopexit, !llvm.loop !819

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.am, %middle.block ], [ %i.az, %scalar.ph ]
  store ptr %.lcssa, ptr %i.ah, align 8, !tbaa !210
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !820
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %.idx = shl i64 %i.i, 2                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 2 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 5 uses
  %i.aj = add i64 %.idx, -4                       ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %.promoted27 = ptrtoaddr ptr %.promoted to i64
  %i.am = shl i64 %i.m, 2
  %i.an = add i64 %i.am, %i.l
  %i.ao = sub i64 %.promoted27, %i.an
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.n, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.as ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.n, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !3
  %wide.load29 = load <4 x i32>, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load29, ptr %i.au, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !823

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.aq, %middle.block ]
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aw = phi ptr [ %i.ay, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.az, %scalar.ph ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ax = load i32, ptr %.01320, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ah
  br i1 %.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !824

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.ba = phi ptr [ %i.ci, %bb.l ], [ %i.ae, %.preheader ]
  %i.bb = phi ptr [ %i.ch, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.cg, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !424
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !425
  %i.bj = add nsw i64 %i.bi, %.018                ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %i.bn = trunc i64 %i.bj to i8
  %i.bo = and i8 %i.bn, 7
  %i.bp = lshr i8 %i.bm, %i.bo
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !55
  switch i32 %i.bt, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bu, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bv, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bx = load atomic i64, ptr %i.bw seq_cst, align 8
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.bx, %i.by
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.018
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cc = phi i32 [ %i.cb, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cd = load ptr, ptr %1, align 8, !tbaa !780, !nonnull !54, !align !342 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !210 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !210
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !404
  %i.ck = icmp slt i64 %i.cg, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !825

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.aq, %middle.block ], [ %i.ay, %scalar.ph ]
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !210
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !826
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIjE5VisitINS_10UInt32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !778, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorImE5VisitINS_10UInt32TypeEEENS_6StatusERKT_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  store i64 %i.bf, ptr %i.bc, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %.01320, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i64 %i.bj, ptr %i.bg, align 8, !tbaa !14
  %i.bl = getelementptr inbounds nuw i8, ptr %.01320, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i64 %i.bn, ptr %i.bk, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %.01320, i64 24
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 56
  store i64 %i.br, ptr %i.bo, align 8, !tbaa !14
  %i.bt = getelementptr inbounds nuw i8, ptr %.01320, i64 28
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %.01320, i64 32 ; 2 uses
  %.not.7 = icmp eq ptr %i.bx, %i.ag
  br i1 %.not.7, label %..loopexit_crit_edge, label %.lr.ph21.new

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.by = phi ptr [ %i.dh, %bb.l ], [ %i.ad, %.preheader ]
  %i.bz = phi ptr [ %i.dg, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.df, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.018                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.cv, %i.cw
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.018
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.db = phi i64 [ %i.da, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dc = load ptr, ptr %1, align 8, !tbaa !919, !nonnull !54, !align !342 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !83 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !83
  store i64 %i.db, ptr %i.dd, align 8, !tbaa !14
  %i.df = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !404
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %.lr.ph, label %.loopexit, !llvm.loop !966

..loopexit_crit_edge:                             ; preds = %.lr.ph21.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.bw, %.lr.ph21.new ]
  store ptr %.lcssa, ptr %i.ah, align 8, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !967
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorImE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %.idx = shl i64 %i.i, 3                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !919, !nonnull !54, !align !342 ; 2 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !83 ; 5 uses
  %i.aj = add i64 %.idx, -8                       ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %.promoted27 = ptrtoaddr ptr %.promoted to i64
  %i.am = shl i64 %i.m, 3
  %i.an = add i64 %i.am, %i.l
  %i.ao = sub i64 %.promoted27, %i.an
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.n, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.as ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.n, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !14
  %wide.load29 = load <2 x i64>, ptr %i.at, align 8, !tbaa !14
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14
  store <2 x i64> %wide.load29, ptr %i.au, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !970

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.aq, %middle.block ]
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aw = phi ptr [ %i.ay, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.az, %scalar.ph ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ax = load i64, ptr %.01320, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ah
  br i1 %.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !971

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.ba = phi ptr [ %i.ci, %bb.l ], [ %i.ae, %.preheader ]
  %i.bb = phi ptr [ %i.ch, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.cg, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !424
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !425
  %i.bj = add nsw i64 %i.bi, %.018                ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %i.bn = trunc i64 %i.bj to i8
  %i.bo = and i8 %i.bn, 7
  %i.bp = lshr i8 %i.bm, %i.bo
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !55
  switch i32 %i.bt, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bu, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bv, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bx = load atomic i64, ptr %i.bw seq_cst, align 8
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.bx, %i.by
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.018
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cc = phi i64 [ %i.cb, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cd = load ptr, ptr %1, align 8, !tbaa !919, !nonnull !54, !align !342 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !83 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !83
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !14
  %i.cg = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !404
  %i.ck = icmp slt i64 %i.cg, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !972

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.aq, %middle.block ], [ %i.ay, %scalar.ph ]
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !973
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorImE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !917, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9UInt8TypeEEENS_6StatusERKT_:bb.a
  store i16 %i.bu, ptr %gep.2, align 2, !tbaa !273
  %i.bw = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !81
  %i.bz = zext i8 %i.by to i16
  %i.ca = mul nsw i64 %i.bw, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ca
  store i16 %i.bz, ptr %gep.3, align 2, !tbaa !273
  %i.cb = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.cb, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1132

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.cc = phi ptr [ %i.aa, %.lr.ph ], [ %i.dr, %bb.l ]
  %i.cd = phi ptr [ %i.z, %.lr.ph ], [ %i.dq, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dp, %bb.l ] ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !424
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !425
  %i.cl = add nsw i64 %i.ck, %.016                ; 2 uses
  %i.cm = lshr i64 %i.cl, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !81
  %i.cp = trunc i64 %i.cl to i8
  %i.cq = and i8 %i.cp, 7
  %i.cr = lshr i8 %i.co, %i.cq
  %i.cs = trunc i8 %i.cr to i1
  br i1 %i.cs, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.ct = load ptr, ptr %i.cd, align 8, !tbaa !37
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !55
  switch i32 %i.cv, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, i64 noundef %.016)
  br i1 %i.cw, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cz = load atomic i64, ptr %i.cy seq_cst, align 8
  %i.da = load i64, ptr %i.cc, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cz, %i.da
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, i64 noundef %.016)
  br i1 %i.db, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !81
  %i.de = zext i8 %i.dd to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.df = phi i16 [ %i.de, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dg = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !203
  %i.di = load i32, ptr %i.ad, align 8, !tbaa !225
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul nsw i64 %.016, %i.dj
  %i.dl = load i32, ptr %i.ae, align 4, !tbaa !227
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [2 x i8], ptr %i.dh, i64 %i.dk
  %i.do = getelementptr [2 x i8], ptr %i.dn, i64 %i.dm
  store i16 %i.df, ptr %i.do, align 2, !tbaa !273
  %i.dp = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !404
  %i.dt = icmp slt i64 %i.dp, %i.ds
  br i1 %i.dt, label %bb.e, label %.loopexit, !llvm.loop !1133

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1134
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 11 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !227
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 1
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <8 x i16>, ptr %i.au, align 2, !tbaa !273
  %wide.load28 = load <8 x i16>, ptr %i.av, align 2, !tbaa !273
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <8 x i16> %wide.load, ptr %i.aw, align 2, !tbaa !273
  store <8 x i16> %wide.load28, ptr %i.ax, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1137

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index31
  %wide.load32 = load <4 x i16>, ptr %i.az, align 2, !tbaa !273
  %i.ba = getelementptr [2 x i8], ptr %invariant.gep, i64 %index31
  store <4 x i16> %wide.load32, ptr %i.ba, align 2, !tbaa !273
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1138

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ac, %n.vec30
  br i1 %cmp.n34, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bf, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !273
  %i.be = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep.prol, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1139

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bf, %vec.epilog.scalar.ph.prol ]
  %i.bg = sub nsw i64 %.01117.ph, %i.ac
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !273
  %i.bk = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bk
  store i16 %i.bj, ptr %gep, align 2, !tbaa !273
  %i.bl = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !273
  %i.bo = mul nsw i64 %i.bl, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.1, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !273
  %i.bs = mul nsw i64 %i.bp, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bs
  store i16 %i.br, ptr %gep.2, align 2, !tbaa !273
  %i.bt = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !273
  %i.bw = mul nsw i64 %i.bt, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  store i16 %i.bv, ptr %gep.3, align 2, !tbaa !273
  %i.bx = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1140

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi ptr [ %i.ab, %.lr.ph ], [ %i.dm, %bb.l ]
  %i.bz = phi ptr [ %i.aa, %.lr.ph ], [ %i.dl, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.l ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.016                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cv, %i.cw
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.da = phi i16 [ %i.cz, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !203
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !225
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %.016, %i.de
  %i.dg = load i32, ptr %i.af, align 4, !tbaa !227
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [2 x i8], ptr %i.dc, i64 %i.df
  %i.dj = getelementptr [2 x i8], ptr %i.di, i64 %i.dh
  store i16 %i.da, ptr %i.dj, align 2, !tbaa !273
  %i.dk = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !404
  %i.do = icmp slt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !1141

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1142
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 11 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !227
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 1
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <8 x i16>, ptr %i.au, align 2, !tbaa !273
  %wide.load28 = load <8 x i16>, ptr %i.av, align 2, !tbaa !273
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <8 x i16> %wide.load, ptr %i.aw, align 2, !tbaa !273
  store <8 x i16> %wide.load28, ptr %i.ax, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index31
  %wide.load32 = load <4 x i16>, ptr %i.az, align 2, !tbaa !273
  %i.ba = getelementptr [2 x i8], ptr %invariant.gep, i64 %index31
  store <4 x i16> %wide.load32, ptr %i.ba, align 2, !tbaa !273
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ac, %n.vec30
  br i1 %cmp.n34, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bf, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !273
  %i.be = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep.prol, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1147

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bf, %vec.epilog.scalar.ph.prol ]
  %i.bg = sub nsw i64 %.01117.ph, %i.ac
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !273
  %i.bk = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bk
  store i16 %i.bj, ptr %gep, align 2, !tbaa !273
  %i.bl = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !273
  %i.bo = mul nsw i64 %i.bl, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.1, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !273
  %i.bs = mul nsw i64 %i.bp, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bs
  store i16 %i.br, ptr %gep.2, align 2, !tbaa !273
  %i.bt = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !273
  %i.bw = mul nsw i64 %i.bt, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  store i16 %i.bv, ptr %gep.3, align 2, !tbaa !273
  %i.bx = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1148

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi ptr [ %i.ab, %.lr.ph ], [ %i.dm, %bb.l ]
  %i.bz = phi ptr [ %i.aa, %.lr.ph ], [ %i.dl, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.l ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.016                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cv, %i.cw
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.da = phi i16 [ %i.cz, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !203
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !225
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %.016, %i.de
  %i.dg = load i32, ptr %i.af, align 4, !tbaa !227
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [2 x i8], ptr %i.dc, i64 %i.df
  %i.dj = getelementptr [2 x i8], ptr %i.di, i64 %i.dh
  store i16 %i.da, ptr %i.dj, align 2, !tbaa !273
  %i.dk = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !404
  %i.do = icmp slt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !1149

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1150
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_10UInt64TypeEEENS_6StatusERKT_:bb.a
  store i16 %i.bn, ptr %gep.2, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bs = trunc i64 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.3, align 2, !tbaa !273
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1176

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.cx = trunc i64 %i.cw to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi i16 [ %i.cx, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !203
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !225
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !227
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  store i16 %i.cy, ptr %i.dh, align 2, !tbaa !273
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1177

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1178
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 11 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !225 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !227
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 1
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check27 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <8 x i16>, ptr %i.au, align 2, !tbaa !273
  %wide.load28 = load <8 x i16>, ptr %i.av, align 2, !tbaa !273
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <8 x i16> %wide.load, ptr %i.aw, align 2, !tbaa !273
  store <8 x i16> %wide.load28, ptr %i.ax, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1181

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec30 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next33, %vec.epilog.vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index31
  %wide.load32 = load <4 x i16>, ptr %i.az, align 2, !tbaa !273
  %i.ba = getelementptr [2 x i8], ptr %invariant.gep, i64 %index31
  store <4 x i16> %wide.load32, ptr %i.ba, align 2, !tbaa !273
  %index.next33 = add nuw i64 %index31, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next33, %n.vec30
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1182

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n34 = icmp eq i64 %i.ac, %n.vec30
  br i1 %cmp.n34, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bf, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !273
  %i.be = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.be
  store i16 %i.bd, ptr %gep.prol, align 2, !tbaa !273
  %i.bf = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1183

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bf, %vec.epilog.scalar.ph.prol ]
  %i.bg = sub nsw i64 %.01117.ph, %i.ac
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bx, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !273
  %i.bk = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bk
  store i16 %i.bj, ptr %gep, align 2, !tbaa !273
  %i.bl = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !273
  %i.bo = mul nsw i64 %i.bl, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.1, align 2, !tbaa !273
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !273
  %i.bs = mul nsw i64 %i.bp, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bs
  store i16 %i.br, ptr %gep.2, align 2, !tbaa !273
  %i.bt = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !273
  %i.bw = mul nsw i64 %i.bt, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  store i16 %i.bv, ptr %gep.3, align 2, !tbaa !273
  %i.bx = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bx, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1184

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.by = phi ptr [ %i.ab, %.lr.ph ], [ %i.dm, %bb.l ]
  %i.bz = phi ptr [ %i.aa, %.lr.ph ], [ %i.dl, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dk, %bb.l ] ; 7 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.016                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cv, %i.cw
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.016)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.da = phi i16 [ %i.cz, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.db = load ptr, ptr %1, align 8, !tbaa !1110, !nonnull !54, !align !342
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !203
  %i.dd = load i32, ptr %i.ae, align 8, !tbaa !225
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %.016, %i.de
  %i.dg = load i32, ptr %i.af, align 4, !tbaa !227
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr [2 x i8], ptr %i.dc, i64 %i.df
  %i.dj = getelementptr [2 x i8], ptr %i.di, i64 %i.dh
  store i16 %i.da, ptr %i.dj, align 2, !tbaa !273
  %i.dk = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !404
  %i.do = icmp slt i64 %i.dk, %i.dn
  br i1 %i.do, label %bb.e, label %.loopexit, !llvm.loop !1185

.loopexit:                                        ; preds = %bb.l, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1186
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1109, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_9Int16TypeEEENS_6StatusERKT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !203
  %i.ai = shl i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ah, ptr align 2 %i.m, i64 %i.ai, i1 false)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !203
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.i
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !203
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.am = phi ptr [ %i.bu, %bb.l ], [ %i.ad, %.preheader ]
  %i.an = phi ptr [ %i.bt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.09 = phi i64 [ %i.bs, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !424
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !425
  %i.av = add nsw i64 %i.au, %.09                 ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !81
  %i.az = trunc i64 %i.av to i8
  %i.ba = and i8 %i.az, 7
  %i.bb = lshr i8 %i.ay, %i.ba
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !55
  switch i32 %i.bf, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bg = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bg, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bh = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bh, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bj = load atomic i64, ptr %i.bi seq_cst, align 8
  %i.bk = load i64, ptr %i.am, align 8, !tbaa !404
  %.not = icmp eq i64 %i.bj, %i.bk
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.bl = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.09
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.bo = phi i16 [ %i.bn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !203 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !203
  store i16 %i.bo, ptr %i.bq, align 2, !tbaa !273
  %i.bs = add nuw nsw i64 %.09, 1                 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !404
  %i.bw = icmp slt i64 %i.bs, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.loopexit, !llvm.loop !1236

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1237
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %.idx = shl i64 %i.i, 1                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !203 ; 7 uses
  %i.aj = add i64 %.idx, -2                       ; 3 uses
  %i.ak = lshr exact i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.promoted27 = ptrtoaddr ptr %.promoted to i64
  %i.am = shl i64 %i.m, 1
  %i.an = add i64 %i.am, %i.l
  %i.ao = sub i64 %.promoted27, %i.an
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 12
  %n.vec = and i64 %i.al, -16                     ; 4 uses
  %i.ap = shl i64 %n.vec, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.n, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.as ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.n, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep29, align 2, !tbaa !273
  %wide.load30 = load <8 x i16>, ptr %i.at, align 2, !tbaa !273
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !273
  store <8 x i16> %wide.load30, ptr %i.au, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.al, -4                    ; 3 uses
  %i.aw = shl i64 %n.vec33, 1                     ; 2 uses
  %i.ax = getelementptr i8, ptr %.promoted, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.n, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.az = shl i64 %index34, 1                     ; 2 uses
  %next.gep35 = getelementptr i8, ptr %.promoted, i64 %i.az
  %next.gep36 = getelementptr i8, ptr %i.n, i64 %i.az
  %wide.load37 = load <4 x i16>, ptr %next.gep36, align 2, !tbaa !273
  store <4 x i16> %wide.load37, ptr %next.gep35, align 2, !tbaa !273
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.al, %n.vec33
  br i1 %cmp.n39, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %.promoted, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.01320.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.bb = phi ptr [ %i.bd, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.be, %vec.epilog.scalar.ph ], [ %.01320.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bc = load i16, ptr %.01320, align 2, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  store i16 %i.bc, ptr %i.bb, align 2, !tbaa !273
  %i.be = getelementptr inbounds nuw i8, ptr %.01320, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.ah
  br i1 %.not, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1242

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bf = phi ptr [ %i.cn, %bb.l ], [ %i.ae, %.preheader ]
  %i.bg = phi ptr [ %i.cm, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.cl, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !425
  %i.bo = add nsw i64 %i.bn, %.018                ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !55
  switch i32 %i.by, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.ca, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.cc, %i.cd
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.ce, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.018
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.ch = phi i16 [ %i.cg, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.ci = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !203 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !203
  store i16 %i.ch, ptr %i.cj, align 2, !tbaa !273
  %i.cl = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !404
  %i.cp = icmp slt i64 %i.cl, %i.co
  br i1 %i.cp, label %.lr.ph, label %.loopexit, !llvm.loop !1243

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.ax, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %i.bd, %vec.epilog.scalar.ph ]
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !203
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1244
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
end_hunk_7
begin_hunk_8_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_10UInt64TypeEEENS_6StatusERKT_:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %.01320, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14
  %i.bn = trunc i64 %i.bm to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i16 %i.bn, ptr %i.bk, align 2, !tbaa !273
  %i.bp = getelementptr inbounds nuw i8, ptr %.01320, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !14
  %i.br = trunc i64 %i.bq to i16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  store i16 %i.br, ptr %i.bo, align 2, !tbaa !273
  %i.bt = getelementptr inbounds nuw i8, ptr %.01320, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !14
  %i.bv = trunc i64 %i.bu to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  store i16 %i.bv, ptr %i.bs, align 2, !tbaa !273
  %i.bx = getelementptr inbounds nuw i8, ptr %.01320, i64 64 ; 2 uses
  %.not.7 = icmp eq ptr %i.bx, %i.ag
  br i1 %.not.7, label %..loopexit_crit_edge, label %.lr.ph21.new

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.by = phi ptr [ %i.dh, %bb.l ], [ %i.ad, %.preheader ]
  %i.bz = phi ptr [ %i.dg, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.df, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !424
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !425
  %i.ch = add nsw i64 %i.cg, %.018                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !81
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !37
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !55
  switch i32 %i.cr, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cs, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.ct, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.cv, %i.cw
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.018
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !14
  %i.da = trunc i64 %i.cz to i16
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.db = phi i16 [ %i.da, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.dc = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !203 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !203
  store i16 %i.db, ptr %i.dd, align 2, !tbaa !273
  %i.df = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !404
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %.lr.ph, label %.loopexit, !llvm.loop !1265

..loopexit_crit_edge:                             ; preds = %.lr.ph21.new, %.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.prol.loopexit ], [ %i.bw, %.lr.ph21.new ]
  store ptr %.lcssa, ptr %i.ah, align 8, !tbaa !203
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1266
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.m ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %.idx = shl i64 %i.i, 1                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !203 ; 7 uses
  %i.aj = add i64 %.idx, -2                       ; 3 uses
  %i.ak = lshr exact i64 %i.aj, 1
  %i.al = add nuw i64 %i.ak, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.aj, 6
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.promoted27 = ptrtoaddr ptr %.promoted to i64
  %i.am = shl i64 %i.m, 1
  %i.an = add i64 %i.am, %i.l
  %i.ao = sub i64 %.promoted27, %i.an
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check28 = icmp ult i64 %i.aj, 30
  br i1 %min.iters.check28, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.al, 12
  %n.vec = and i64 %i.al, -16                     ; 4 uses
  %i.ap = shl i64 %n.vec, 1                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.n, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.as ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.n, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep29, align 2, !tbaa !273
  %wide.load30 = load <8 x i16>, ptr %i.at, align 2, !tbaa !273
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !273
  store <8 x i16> %wide.load30, ptr %i.au, align 2, !tbaa !273
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !552

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.al, -4                    ; 3 uses
  %i.aw = shl i64 %n.vec33, 1                     ; 2 uses
  %i.ax = getelementptr i8, ptr %.promoted, i64 %i.aw ; 2 uses
  %i.ay = getelementptr i8, ptr %i.n, i64 %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %i.az = shl i64 %index34, 1                     ; 2 uses
  %next.gep35 = getelementptr i8, ptr %.promoted, i64 %i.az
  %next.gep36 = getelementptr i8, ptr %i.n, i64 %i.az
  %wide.load37 = load <4 x i16>, ptr %next.gep36, align 2, !tbaa !273
  store <4 x i16> %wide.load37, ptr %next.gep35, align 2, !tbaa !273
  %index.next38 = add nuw i64 %index34, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1270

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.al, %n.vec33
  br i1 %cmp.n39, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %.promoted, %vector.memcheck ], [ %i.aq, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  %.01320.ph = phi ptr [ %i.n, %iter.check ], [ %i.n, %vector.memcheck ], [ %i.ar, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.bb = phi ptr [ %i.bd, %vec.epilog.scalar.ph ], [ %.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.be, %vec.epilog.scalar.ph ], [ %.01320.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bc = load i16, ptr %.01320, align 2, !tbaa !273
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 2 ; 2 uses
  store i16 %i.bc, ptr %i.bb, align 2, !tbaa !273
  %i.be = getelementptr inbounds nuw i8, ptr %.01320, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.ah
  br i1 %.not, label %..loopexit_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1271

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.bf = phi ptr [ %i.cn, %bb.l ], [ %i.ae, %.preheader ]
  %i.bg = phi ptr [ %i.cm, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.cl, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !424
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !425
  %i.bo = add nsw i64 %i.bn, %.018                ; 2 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !81
  %i.bs = trunc i64 %i.bo to i8
  %i.bt = and i8 %i.bs, 7
  %i.bu = lshr i8 %i.br, %i.bt
  %i.bv = trunc i8 %i.bu to i1
  br i1 %i.bv, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !55
  switch i32 %i.by, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ca = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.ca, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.cc = load atomic i64, ptr %i.cb seq_cst, align 8
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.cc, %i.cd
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.ce = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bg, i64 noundef %.018)
  br i1 %i.ce, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.018
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !273
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.ch = phi i16 [ %i.cg, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.ci = load ptr, ptr %1, align 8, !tbaa !1205, !nonnull !54, !align !342 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !203 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !203
  store i16 %i.ch, ptr %i.cj, align 2, !tbaa !273
  %i.cl = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !404
  %i.cp = icmp slt i64 %i.cl, %i.co
  br i1 %i.cp, label %.lr.ph, label %.loopexit, !llvm.loop !1272

..loopexit_crit_edge:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi ptr [ %i.ax, %vec.epilog.middle.block ], [ %i.aq, %middle.block ], [ %i.bd, %vec.epilog.scalar.ph ]
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !203
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1273
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIsE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1203, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
end_hunk_8
begin_hunk_9_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_9Int32TypeEEENS_6StatusERKT_:bb.a
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !210
  %i.ai = shl i64 %i.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ah, ptr align 4 %i.m, i64 %i.ai, i1 false)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.i
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !210
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.am = phi ptr [ %i.bu, %bb.l ], [ %i.ad, %.preheader ]
  %i.an = phi ptr [ %i.bt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.09 = phi i64 [ %i.bs, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !424
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !425
  %i.av = add nsw i64 %i.au, %.09                 ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !81
  %i.az = trunc i64 %i.av to i8
  %i.ba = and i8 %i.az, 7
  %i.bb = lshr i8 %i.ay, %i.ba
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !55
  switch i32 %i.bf, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bg = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bg, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bh = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bh, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bj = load atomic i64, ptr %i.bi seq_cst, align 8
  %i.bk = load i64, ptr %i.am, align 8, !tbaa !404
  %.not = icmp eq i64 %i.bj, %i.bk
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.bl = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.bo = phi i32 [ %i.bn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !210 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !210
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !3
  %i.bs = add nuw nsw i64 %.09, 1                 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !404
  %i.bw = icmp slt i64 %i.bs, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.loopexit, !llvm.loop !1390

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1391
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_10UInt32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %.idx = shl i64 %i.i, 2                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 2 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !210 ; 5 uses
  %i.aj = add i64 %.idx, -4                       ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %.promoted27 = ptrtoaddr ptr %.promoted to i64
  %i.am = shl i64 %i.m, 2
  %i.an = add i64 %i.am, %i.l
  %i.ao = sub i64 %.promoted27, %i.an
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 9223372036854775800     ; 3 uses
  %i.ap = shl i64 %n.vec, 2                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.n, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.as ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.n, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !3
  %wide.load29 = load <4 x i32>, ptr %i.at, align 4, !tbaa !3
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load29, ptr %i.au, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1394

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.aq, %middle.block ]
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aw = phi ptr [ %i.ay, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.az, %scalar.ph ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ax = load i32, ptr %.01320, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 2 uses
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ah
  br i1 %.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !1395

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.ba = phi ptr [ %i.ci, %bb.l ], [ %i.ae, %.preheader ]
  %i.bb = phi ptr [ %i.ch, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.cg, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !424
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !425
  %i.bj = add nsw i64 %i.bi, %.018                ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %i.bn = trunc i64 %i.bj to i8
  %i.bo = and i8 %i.bn, 7
  %i.bp = lshr i8 %i.bm, %i.bo
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !55
  switch i32 %i.bt, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bu, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bv, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bx = load atomic i64, ptr %i.bw seq_cst, align 8
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.bx, %i.by
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.018
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cc = phi i32 [ %i.cb, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cd = load ptr, ptr %1, align 8, !tbaa !1347, !nonnull !54, !align !342 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !210 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !210
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !404
  %i.ck = icmp slt i64 %i.cg, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !1396

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.aq, %middle.block ], [ %i.ay, %scalar.ph ]
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !210
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1397
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIiE5VisitINS_9Int64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1345, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
end_hunk_9
begin_hunk_10_@_ZN5arrow8internal29ConvertColumnsToTensorVisitorIlE5VisitINS_9Int64TypeEEENS_6StatusERKT_:bb.a
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !83
  %i.ai = shl i64 %i.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ah, ptr align 8 %i.m, i64 %i.ai, i1 false)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !83
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.i
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !83
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.am = phi ptr [ %i.bu, %bb.l ], [ %i.ad, %.preheader ]
  %i.an = phi ptr [ %i.bt, %bb.l ], [ %i.ac, %.preheader ] ; 7 uses
  %.09 = phi i64 [ %i.bs, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !424
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.au = load i64, ptr %i.at, align 8, !tbaa !425
  %i.av = add nsw i64 %i.au, %.09                 ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !81
  %i.az = trunc i64 %i.av to i8
  %i.ba = and i8 %i.az, 7
  %i.bb = lshr i8 %i.ay, %i.ba
  %i.bc = trunc i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !55
  switch i32 %i.bf, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bg = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bg, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bh = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bh, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.bj = load atomic i64, ptr %i.bi seq_cst, align 8
  %i.bk = load i64, ptr %i.am, align 8, !tbaa !404
  %.not = icmp eq i64 %i.bj, %i.bk
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.bl = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.an, i64 noundef %.09)
  br i1 %i.bl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.bo = phi i64 [ %i.bn, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.bp = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !83 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.br, ptr %i.bp, align 8, !tbaa !83
  store i64 %i.bo, ptr %i.bq, align 8, !tbaa !14
  %i.bs = add nuw nsw i64 %.09, 1                 ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !404
  %i.bw = icmp slt i64 %i.bs, %i.bv
  br i1 %i.bw, label %.lr.ph, label %.loopexit, !llvm.loop !1538

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1539
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIlE5VisitINS_10UInt64TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !402
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !404
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %.idx = shl i64 %i.i, 3                         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  %.not19 = icmp eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 2 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !83 ; 5 uses
  %i.aj = add i64 %.idx, -8                       ; 2 uses
  %i.ak = lshr exact i64 %i.aj, 3
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aj, 104
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %.promoted27 = ptrtoaddr ptr %.promoted to i64
  %i.am = shl i64 %i.m, 3
  %i.an = add i64 %i.am, %i.l
  %i.ao = sub i64 %.promoted27, %i.an
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, 4611686018427387900     ; 3 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %i.ar = getelementptr i8, ptr %i.n, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.as ; 2 uses
  %next.gep28 = getelementptr i8, ptr %i.n, i64 %i.as ; 2 uses
  %i.at = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !14
  %wide.load29 = load <2 x i64>, ptr %i.at, align 8, !tbaa !14
  %i.au = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !14
  store <2 x i64> %wide.load29, ptr %i.au, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !1542

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.aq, %middle.block ]
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ar, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.aw = phi ptr [ %i.ay, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320 = phi ptr [ %i.az, %scalar.ph ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ax = load i64, ptr %.01320, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store i64 %i.ax, ptr %i.aw, align 8, !tbaa !14
  %i.az = getelementptr inbounds nuw i8, ptr %.01320, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.az, %i.ah
  br i1 %.not, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !1543

.lr.ph:                                           ; preds = %.preheader, %bb.l
  %i.ba = phi ptr [ %i.ci, %bb.l ], [ %i.ae, %.preheader ]
  %i.bb = phi ptr [ %i.ch, %bb.l ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.cg, %bb.l ], [ 0, %.preheader ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !424
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !425
  %i.bj = add nsw i64 %i.bi, %.018                ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !81
  %i.bn = trunc i64 %i.bj to i8
  %i.bo = and i8 %i.bn, 7
  %i.bp = lshr i8 %i.bm, %i.bo
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.g:                                             ; preds = %.lr.ph
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !55
  switch i32 %i.bt, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bu, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bv, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bx = load atomic i64, ptr %i.bw seq_cst, align 8
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !404
  %.not26 = icmp eq i64 %i.bx, %i.by
  br i1 %.not26, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.bz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bb, i64 noundef %.018)
  br i1 %i.bz, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.018
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cc = phi i64 [ %i.cb, %bb.k ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %bb.f ], [ poison, %bb.j ], [ poison, %bb.i ], [ poison, %bb.h ]
  %i.cd = load ptr, ptr %1, align 8, !tbaa !1487, !nonnull !54, !align !342 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !83 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cf, ptr %i.cd, align 8, !tbaa !83
  store i64 %i.cc, ptr %i.ce, align 8, !tbaa !14
  %i.cg = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !404
  %i.ck = icmp slt i64 %i.cg, %i.cj
  br i1 %i.ck, label %.lr.ph, label %.loopexit, !llvm.loop !1544

..loopexit_crit_edge:                             ; preds = %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.aq, %middle.block ], [ %i.ay, %scalar.ph ]
  store ptr %.lcssa, ptr %i.ai, align 8, !tbaa !83
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.preheader, %bb.e, %..loopexit_crit_edge
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1545
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIlE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394
  %i.l = load i64, ptr %i.d, align 8, !tbaa !397
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !398  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !402
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load atomic i64, ptr %i.z seq_cst, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !1485, !nonnull !54, !align !342 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !404
end_hunk_10
begin_hunk_11_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_:bb.a
  store float %i.bn, ptr %gep.2, align 4, !tbaa !310
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !273
  %i.bs = uitofp i16 %i.br to float
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  store float %i.bs, ptr %gep.3, align 4, !tbaa !310
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1631

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !273
  %i.cx = uitofp i16 %i.cw to float
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi float [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !234
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !238
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !240
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store float %i.cy, ptr %i.dh, align 4, !tbaa !310
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1632

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1633
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 7 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !234 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !238 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !240
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.an ; 6 uses
  %min.iters.check = icmp ugt i64 %i.ac, 19
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 2
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 2
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <4 x float>, ptr %i.au, align 4, !tbaa !310
  %wide.load27 = load <4 x float>, ptr %i.av, align 4, !tbaa !310
  %i.aw = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <4 x float> %wide.load, ptr %i.aw, align 4, !tbaa !310
  store <4 x float> %wide.load27, ptr %i.ax, align 4, !tbaa !310
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1636

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01117.prol
  %i.ba = load float, ptr %i.az, align 4, !tbaa !310
  %i.bb = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bb
  store float %i.ba, ptr %gep.prol, align 4, !tbaa !310
  %i.bc = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1637

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %.01117.ph, %i.ac
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bu, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01117
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !310
  %i.bh = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bh
  store float %i.bg, ptr %gep, align 4, !tbaa !310
  %i.bi = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !310
  %i.bl = mul nsw i64 %i.bi, %i.ak
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bl
  store float %i.bk, ptr %gep.1, align 4, !tbaa !310
  %i.bm = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bm
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !310
  %i.bp = mul nsw i64 %i.bm, %i.ak
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bp
  store float %i.bo, ptr %gep.2, align 4, !tbaa !310
  %i.bq = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !310
  %i.bt = mul nsw i64 %i.bq, %i.ak
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  store float %i.bs, ptr %gep.3, align 4, !tbaa !310
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1638

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.ab, %.lr.ph ], [ %i.dj, %bb.l ]
  %i.bw = phi ptr [ %i.aa, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !310
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cx = phi float [ %i.cw, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cy = load ptr, ptr %1, align 8, !tbaa !1564, !nonnull !54, !align !342
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !234
  %i.da = load i32, ptr %i.ae, align 8, !tbaa !238
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %.016, %i.db
  %i.dd = load i32, ptr %i.af, align 4, !tbaa !240
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [4 x i8], ptr %i.cz, i64 %i.dc
  %i.dg = getelementptr [4 x i8], ptr %i.df, i64 %i.de
  store float %i.cx, ptr %i.dg, align 4, !tbaa !310
  %i.dh = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !404
  %i.dl = icmp slt i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.e, label %.loopexit, !llvm.loop !1639

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1640
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1563, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394
  %i.i = load i64, ptr %i.d, align 8, !tbaa !397
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !398  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
end_hunk_11
begin_hunk_12_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_9FloatTypeEEENS_6StatusERKT_:bb.a
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !310
  %i.bi = fpext float %i.bh to double
  %i.bj = mul nsw i64 %i.bf, %i.aj
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj
  store double %i.bi, ptr %gep.1, align 8, !tbaa !317
  %i.bk = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !310
  %i.bn = fpext float %i.bm to double
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bo
  store double %i.bn, ptr %gep.2, align 8, !tbaa !317
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !310
  %i.bs = fpext float %i.br to double
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  store double %i.bs, ptr %gep.3, align 8, !tbaa !317
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1809

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.l ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !310
  %i.cx = fpext float %i.cw to double
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cy = phi double [ %i.cx, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !241
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !245
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !247
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.df
  store double %i.cy, ptr %i.dh, align 8, !tbaa !317
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !404
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1810

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1811
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !398  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !400
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !401

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !398
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !402
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !403
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !404 ; 7 uses
  %i.ad = icmp sgt i64 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ad, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.ag = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !241 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !245 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !247
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ah, i64 %i.an ; 6 uses
  %min.iters.check = icmp ugt i64 %i.ac, 17
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 3
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = shl i64 %i.j, 3
  %i.as = add i64 %i.ar, %i.i
  %i.at = sub i64 %i.aq, %i.as
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <2 x double>, ptr %i.au, align 8, !tbaa !317
  %wide.load27 = load <2 x double>, ptr %i.av, align 8, !tbaa !317
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %wide.load, ptr %i.aw, align 8, !tbaa !317
  store <2 x double> %wide.load27, ptr %i.ax, align 8, !tbaa !317
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1814

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bc, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01117.prol
  %i.ba = load double, ptr %i.az, align 8, !tbaa !317
  %i.bb = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bb
  store double %i.ba, ptr %gep.prol, align 8, !tbaa !317
  %i.bc = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1815

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.bc, %scalar.ph.prol ]
  %i.bd = sub nsw i64 %.01117.ph, %i.ac
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bu, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01117
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !317
  %i.bh = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bh
  store double %i.bg, ptr %gep, align 8, !tbaa !317
  %i.bi = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !317
  %i.bl = mul nsw i64 %i.bi, %i.ak
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bl
  store double %i.bk, ptr %gep.1, align 8, !tbaa !317
  %i.bm = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bm
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !317
  %i.bp = mul nsw i64 %i.bm, %i.ak
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bp
  store double %i.bo, ptr %gep.2, align 8, !tbaa !317
  %i.bq = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bq
  %i.bs = load double, ptr %i.br, align 8, !tbaa !317
  %i.bt = mul nsw i64 %i.bq, %i.ak
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  store double %i.bs, ptr %gep.3, align 8, !tbaa !317
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1816

bb.e:                                             ; preds = %.lr.ph, %bb.l
  %i.bv = phi ptr [ %i.ab, %.lr.ph ], [ %i.dj, %bb.l ]
  %i.bw = phi ptr [ %i.aa, %.lr.ph ], [ %i.di, %bb.l ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dh, %bb.l ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !424
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !84 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !425
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !81
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !55
  switch i32 %i.co, label %bb.j [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %bb.h
    i32 38, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.l, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !404
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.l, label %bb.k

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.g
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !317
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.f, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.k
  %i.cx = phi double [ %i.cw, %bb.k ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %bb.f ], [ +qnan, %bb.j ], [ +qnan, %bb.i ], [ +qnan, %bb.h ]
  %i.cy = load ptr, ptr %1, align 8, !tbaa !1734, !nonnull !54, !align !342
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !241
  %i.da = load i32, ptr %i.ae, align 8, !tbaa !245
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %.016, %i.db
  %i.dd = load i32, ptr %i.af, align 4, !tbaa !247
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  store double %i.cx, ptr %i.dg, align 8, !tbaa !317
  %i.dh = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !1733, !nonnull !54, !align !342 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !404
  %i.dl = icmp slt i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.e, label %.loopexit, !llvm.loop !1817

.loopexit:                                        ; preds = %bb.l, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !18, !alias.scope !1818
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !387
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, i8 0, i64 104, i1 false)
  invoke void @_ZN5arrow9ArraySpan10SetMembersERKNS_9ArrayDataE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(120) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  call void @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #22
  resume { ptr, i32 } %i.e

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !1821, !nonnull !54, !align !342
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !404  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !394  ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !397  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !398  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !399  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
end_hunk_12
