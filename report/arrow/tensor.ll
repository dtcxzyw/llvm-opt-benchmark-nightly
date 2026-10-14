Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/tensor?download=true
inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 144
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9UInt8TypeEEENS_6StatusERKT_:bb.a
  %i.bx = zext i8 %i.bw to i16
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.by
  store i16 %i.bx, ptr %gep.2, align 2, !tbaa !153
  %i.bz = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = zext i8 %i.cb to i16
  %i.cd = mul nsw i64 %i.bz, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cd
  store i16 %i.cc, ptr %gep.3, align 2, !tbaa !153
  %i.ce = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ce, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !604

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.cf = phi ptr [ %i.aa, %.lr.ph ], [ %i.du, %bb.h ]
  %i.cg = phi ptr [ %i.z, %.lr.ph ], [ %i.dt, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %bb.h ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !207
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !208
  %i.co = add nsw i64 %i.cn, %.016                ; 2 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = trunc i64 %i.co to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = lshr i8 %i.cr, %i.ct
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !62
  switch i32 %i.cy, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, i64 noundef %.016)
  br i1 %i.cz, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.da = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, i64 noundef %.016)
  br i1 %i.da, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.dc = load atomic i64, ptr %i.db seq_cst, align 8
  %i.dd = load i64, ptr %i.cf, align 8, !tbaa !205
  %.not = icmp eq i64 %i.dc, %i.dd
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.de = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, i64 noundef %.016)
  br i1 %i.de, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !64
  %i.dh = zext i8 %i.dg to i16
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.di = phi i16 [ %i.dh, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.dj = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !108
  %i.dl = load i32, ptr %i.ad, align 8, !tbaa !112
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %.016, %i.dm
  %i.do = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr [2 x i8], ptr %i.dk, i64 %i.dn
  %i.dr = getelementptr [2 x i8], ptr %i.dq, i64 %i.dp
  store i16 %i.di, ptr %i.dr, align 2, !tbaa !153
  %i.ds = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !205
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %bb.e, label %.loopexit, !llvm.loop !605

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !610
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 11 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !113
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 1
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !tbaa !153
  %wide.load31 = load <8 x i16>, ptr %i.au, align 2, !tbaa !153
  %i.av = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !tbaa !153
  store <8 x i16> %wide.load31, ptr %i.aw, align 2, !tbaa !153
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index33
  %wide.load34 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !153
  %i.az = getelementptr [2 x i8], ptr %invariant.gep, i64 %index33
  store <4 x i16> %wide.load34, ptr %i.az, align 2, !tbaa !153
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !612

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.ac, %n.vec32
  br i1 %cmp.n36, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.be, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bd
  store i16 %i.bc, ptr %gep.prol, align 2, !tbaa !153
  %i.be = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !613

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.be, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %.01117.ph, %i.ac
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bw, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !153
  %i.bj = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep, align 2, !tbaa !153
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bn
  store i16 %i.bm, ptr %gep.1, align 2, !tbaa !153
  %i.bo = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !153
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.br
  store i16 %i.bq, ptr %gep.2, align 2, !tbaa !153
  %i.bs = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !153
  %i.bv = mul nsw i64 %i.bs, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bv
  store i16 %i.bu, ptr %gep.3, align 2, !tbaa !153
  %i.bw = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bw, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !614

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bx = phi ptr [ %i.ab, %.lr.ph ], [ %i.dl, %bb.h ]
  %i.by = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !207
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !208
  %i.cg = add nsw i64 %i.cf, %.016                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !62
  switch i32 %i.cq, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cr, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cu, %i.cv
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cz = phi i16 [ %i.cy, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !108
  %i.dc = load i32, ptr %i.ae, align 8, !tbaa !112
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.016, %i.dd
  %i.df = load i32, ptr %i.af, align 4, !tbaa !113
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [2 x i8], ptr %i.db, i64 %i.de
  %i.di = getelementptr [2 x i8], ptr %i.dh, i64 %i.dg
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !153
  %i.dj = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !205
  %i.dn = icmp slt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.e, label %.loopexit, !llvm.loop !615

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !618
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 11 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !113
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 1
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !tbaa !153
  %wide.load31 = load <8 x i16>, ptr %i.au, align 2, !tbaa !153
  %i.av = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !tbaa !153
  store <8 x i16> %wide.load31, ptr %i.aw, align 2, !tbaa !153
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !619

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index33
  %wide.load34 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !153
  %i.az = getelementptr [2 x i8], ptr %invariant.gep, i64 %index33
  store <4 x i16> %wide.load34, ptr %i.az, align 2, !tbaa !153
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !620

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.ac, %n.vec32
  br i1 %cmp.n36, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.be, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bd
  store i16 %i.bc, ptr %gep.prol, align 2, !tbaa !153
  %i.be = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !621

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.be, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %.01117.ph, %i.ac
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bw, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !153
  %i.bj = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep, align 2, !tbaa !153
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bn
  store i16 %i.bm, ptr %gep.1, align 2, !tbaa !153
  %i.bo = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !153
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.br
  store i16 %i.bq, ptr %gep.2, align 2, !tbaa !153
  %i.bs = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !153
  %i.bv = mul nsw i64 %i.bs, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bv
  store i16 %i.bu, ptr %gep.3, align 2, !tbaa !153
  %i.bw = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bw, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !622

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bx = phi ptr [ %i.ab, %.lr.ph ], [ %i.dl, %bb.h ]
  %i.by = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !207
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !208
  %i.cg = add nsw i64 %i.cf, %.016                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !62
  switch i32 %i.cq, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cr, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cu, %i.cv
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cz = phi i16 [ %i.cy, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !108
  %i.dc = load i32, ptr %i.ae, align 8, !tbaa !112
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.016, %i.dd
  %i.df = load i32, ptr %i.af, align 4, !tbaa !113
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [2 x i8], ptr %i.db, i64 %i.de
  %i.di = getelementptr [2 x i8], ptr %i.dh, i64 %i.dg
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !153
  %i.dj = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !205
  %i.dn = icmp slt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.e, label %.loopexit, !llvm.loop !623

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !626
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_10UInt64TypeEEENS_6StatusERKT_:bb.a
  %i.bn = trunc i64 %i.bm to i16
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.2, align 2, !tbaa !153
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.bs = trunc i64 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.3, align 2, !tbaa !153
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !650

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.h ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !207
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !208
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !62
  switch i32 %i.co, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !23
  %i.cx = trunc i64 %i.cw to i16
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cy = phi i16 [ %i.cx, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !108
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !112
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !113
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  store i16 %i.cy, ptr %i.dh, align 2, !tbaa !153
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !205
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !651

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !654
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 11 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !112 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !113
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 1
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !tbaa !153
  %wide.load31 = load <8 x i16>, ptr %i.au, align 2, !tbaa !153
  %i.av = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !tbaa !153
  store <8 x i16> %wide.load31, ptr %i.aw, align 2, !tbaa !153
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !655

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index33
  %wide.load34 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !153
  %i.az = getelementptr [2 x i8], ptr %invariant.gep, i64 %index33
  store <4 x i16> %wide.load34, ptr %i.az, align 2, !tbaa !153
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !656

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.ac, %n.vec32
  br i1 %cmp.n36, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.be, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bd
  store i16 %i.bc, ptr %gep.prol, align 2, !tbaa !153
  %i.be = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !657

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.be, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %.01117.ph, %i.ac
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bw, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !153
  %i.bj = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep, align 2, !tbaa !153
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bn
  store i16 %i.bm, ptr %gep.1, align 2, !tbaa !153
  %i.bo = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !153
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.br
  store i16 %i.bq, ptr %gep.2, align 2, !tbaa !153
  %i.bs = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !153
  %i.bv = mul nsw i64 %i.bs, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bv
  store i16 %i.bu, ptr %gep.3, align 2, !tbaa !153
  %i.bw = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bw, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !658

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bx = phi ptr [ %i.ab, %.lr.ph ], [ %i.dl, %bb.h ]
  %i.by = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !207
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !208
  %i.cg = add nsw i64 %i.cf, %.016                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !62
  switch i32 %i.cq, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cr, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cu, %i.cv
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cz = phi i16 [ %i.cy, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !108
  %i.dc = load i32, ptr %i.ae, align 8, !tbaa !112
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.016, %i.dd
  %i.df = load i32, ptr %i.af, align 4, !tbaa !113
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [2 x i8], ptr %i.db, i64 %i.de
  %i.di = getelementptr [2 x i8], ptr %i.dh, i64 %i.dg
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !153
  %i.dj = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !205
  %i.dn = icmp slt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.e, label %.loopexit, !llvm.loop !659

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !662
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9UInt8TypeEEENS_6StatusERKT_:bb.a
  %i.bx = zext i8 %i.bw to i16
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.by
  store i16 %i.bx, ptr %gep.2, align 2, !tbaa !153
  %i.bz = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = zext i8 %i.cb to i16
  %i.cd = mul nsw i64 %i.bz, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cd
  store i16 %i.cc, ptr %gep.3, align 2, !tbaa !153
  %i.ce = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ce, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1087

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.cf = phi ptr [ %i.aa, %.lr.ph ], [ %i.du, %bb.h ]
  %i.cg = phi ptr [ %i.z, %.lr.ph ], [ %i.dt, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.ds, %bb.h ] ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !207
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !208
  %i.co = add nsw i64 %i.cn, %.016                ; 2 uses
  %i.cp = lshr i64 %i.co, 3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = trunc i64 %i.co to i8
  %i.ct = and i8 %i.cs, 7
  %i.cu = lshr i8 %i.cr, %i.ct
  %i.cv = trunc i8 %i.cu to i1
  br i1 %i.cv, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cw = load ptr, ptr %i.cg, align 8, !tbaa !33
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !62
  switch i32 %i.cy, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cz = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, i64 noundef %.016)
  br i1 %i.cz, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.da = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, i64 noundef %.016)
  br i1 %i.da, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.db = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.dc = load atomic i64, ptr %i.db seq_cst, align 8
  %i.dd = load i64, ptr %i.cf, align 8, !tbaa !205
  %.not = icmp eq i64 %i.dc, %i.dd
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.de = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cg, i64 noundef %.016)
  br i1 %i.de, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !64
  %i.dh = zext i8 %i.dg to i16
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.di = phi i16 [ %i.dh, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.dj = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !108
  %i.dl = load i32, ptr %i.ad, align 8, !tbaa !130
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul nsw i64 %.016, %i.dm
  %i.do = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr [2 x i8], ptr %i.dk, i64 %i.dn
  %i.dr = getelementptr [2 x i8], ptr %i.dq, i64 %i.dp
  store i16 %i.di, ptr %i.dr, align 2, !tbaa !153
  %i.ds = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !205
  %i.dw = icmp slt i64 %i.ds, %i.dv
  br i1 %i.dw, label %bb.e, label %.loopexit, !llvm.loop !1088

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1093
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 11 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !130 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 1
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !tbaa !153
  %wide.load31 = load <8 x i16>, ptr %i.au, align 2, !tbaa !153
  %i.av = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !tbaa !153
  store <8 x i16> %wide.load31, ptr %i.aw, align 2, !tbaa !153
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1094

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index33
  %wide.load34 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !153
  %i.az = getelementptr [2 x i8], ptr %invariant.gep, i64 %index33
  store <4 x i16> %wide.load34, ptr %i.az, align 2, !tbaa !153
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1095

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.ac, %n.vec32
  br i1 %cmp.n36, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.be, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bd
  store i16 %i.bc, ptr %gep.prol, align 2, !tbaa !153
  %i.be = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1096

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.be, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %.01117.ph, %i.ac
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bw, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !153
  %i.bj = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep, align 2, !tbaa !153
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bn
  store i16 %i.bm, ptr %gep.1, align 2, !tbaa !153
  %i.bo = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !153
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.br
  store i16 %i.bq, ptr %gep.2, align 2, !tbaa !153
  %i.bs = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !153
  %i.bv = mul nsw i64 %i.bs, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bv
  store i16 %i.bu, ptr %gep.3, align 2, !tbaa !153
  %i.bw = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bw, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1097

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bx = phi ptr [ %i.ab, %.lr.ph ], [ %i.dl, %bb.h ]
  %i.by = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !207
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !208
  %i.cg = add nsw i64 %i.cf, %.016                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !62
  switch i32 %i.cq, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cr, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cu, %i.cv
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cz = phi i16 [ %i.cy, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !108
  %i.dc = load i32, ptr %i.ae, align 8, !tbaa !130
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.016, %i.dd
  %i.df = load i32, ptr %i.af, align 4, !tbaa !131
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [2 x i8], ptr %i.db, i64 %i.de
  %i.di = getelementptr [2 x i8], ptr %i.dh, i64 %i.dg
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !153
  %i.dj = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !205
  %i.dn = icmp slt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.e, label %.loopexit, !llvm.loop !1098

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1101
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_10UInt16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 11 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !130 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 1
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !tbaa !153
  %wide.load31 = load <8 x i16>, ptr %i.au, align 2, !tbaa !153
  %i.av = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !tbaa !153
  store <8 x i16> %wide.load31, ptr %i.aw, align 2, !tbaa !153
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index33
  %wide.load34 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !153
  %i.az = getelementptr [2 x i8], ptr %invariant.gep, i64 %index33
  store <4 x i16> %wide.load34, ptr %i.az, align 2, !tbaa !153
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.ac, %n.vec32
  br i1 %cmp.n36, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.be, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bd
  store i16 %i.bc, ptr %gep.prol, align 2, !tbaa !153
  %i.be = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1104

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.be, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %.01117.ph, %i.ac
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bw, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !153
  %i.bj = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep, align 2, !tbaa !153
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bn
  store i16 %i.bm, ptr %gep.1, align 2, !tbaa !153
  %i.bo = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !153
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.br
  store i16 %i.bq, ptr %gep.2, align 2, !tbaa !153
  %i.bs = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !153
  %i.bv = mul nsw i64 %i.bs, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bv
  store i16 %i.bu, ptr %gep.3, align 2, !tbaa !153
  %i.bw = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bw, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1105

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bx = phi ptr [ %i.ab, %.lr.ph ], [ %i.dl, %bb.h ]
  %i.by = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !207
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !208
  %i.cg = add nsw i64 %i.cf, %.016                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !62
  switch i32 %i.cq, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cr, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cu, %i.cv
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cz = phi i16 [ %i.cy, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !108
  %i.dc = load i32, ptr %i.ae, align 8, !tbaa !130
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.016, %i.dd
  %i.df = load i32, ptr %i.af, align 4, !tbaa !131
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [2 x i8], ptr %i.db, i64 %i.de
  %i.di = getelementptr [2 x i8], ptr %i.dh, i64 %i.dg
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !153
  %i.dj = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !205
  %i.dn = icmp slt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.e, label %.loopexit, !llvm.loop !1106

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1109
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9Int32TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_10UInt64TypeEEENS_6StatusERKT_:bb.a
  %i.bn = trunc i64 %i.bm to i16
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep.2, align 2, !tbaa !153
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !23
  %i.bs = trunc i64 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.3, align 2, !tbaa !153
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1133

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.h ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !207
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !208
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !62
  switch i32 %i.co, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.016
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !23
  %i.cx = trunc i64 %i.cw to i16
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cy = phi i16 [ %i.cx, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !108
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !130
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !131
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [2 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [2 x i8], ptr %i.dg, i64 %i.df
  store i16 %i.cy, ptr %i.dh, align 2, !tbaa !153
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !205
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1134

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1137
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.j ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 11 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !130 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !131
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ah, i64 %i.an ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ac, 3
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 1
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 1
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.ac, 16
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ac, 12
  %n.vec = and i64 %i.ac, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load = load <8 x i16>, ptr %i.at, align 2, !tbaa !153
  %wide.load31 = load <8 x i16>, ptr %i.au, align 2, !tbaa !153
  %i.av = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <8 x i16> %wide.load, ptr %i.av, align 2, !tbaa !153
  store <8 x i16> %wide.load31, ptr %i.aw, align 2, !tbaa !153
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !1138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %i.ac, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index33
  %wide.load34 = load <4 x i16>, ptr %i.ay, align 2, !tbaa !153
  %i.az = getelementptr [2 x i8], ptr %invariant.gep, i64 %index33
  store <4 x i16> %wide.load34, ptr %i.az, align 2, !tbaa !153
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1139

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %i.ac, %n.vec32
  br i1 %cmp.n36, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.be, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117.prol
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !153
  %i.bd = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bd
  store i16 %i.bc, ptr %gep.prol, align 2, !tbaa !153
  %i.be = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1140

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.be, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %.01117.ph, %i.ac
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.bw, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01117
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !153
  %i.bj = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bj
  store i16 %i.bi, ptr %gep, align 2, !tbaa !153
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !153
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bn
  store i16 %i.bm, ptr %gep.1, align 2, !tbaa !153
  %i.bo = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !153
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.br
  store i16 %i.bq, ptr %gep.2, align 2, !tbaa !153
  %i.bs = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !153
  %i.bv = mul nsw i64 %i.bs, %i.ak
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bv
  store i16 %i.bu, ptr %gep.3, align 2, !tbaa !153
  %i.bw = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bw, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1141

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bx = phi ptr [ %i.ab, %.lr.ph ], [ %i.dl, %bb.h ]
  %i.by = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !207
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !208
  %i.cg = add nsw i64 %i.cf, %.016                ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !64
  %i.ck = trunc i64 %i.cg to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = lshr i8 %i.cj, %i.cl
  %i.cn = trunc i8 %i.cm to i1
  br i1 %i.cn, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.co = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !62
  switch i32 %i.cq, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cr = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cr, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cu = load atomic i64, ptr %i.ct seq_cst, align 8
  %i.cv = load i64, ptr %i.bx, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cu, %i.cv
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cw = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.by, i64 noundef %.016)
  br i1 %i.cw, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.016
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cz = phi i16 [ %i.cy, %bb.g ], [ poison, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ poison, %.split ], [ poison, %.split25 ], [ poison, %.split26 ], [ poison, %.split27 ]
  %i.da = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !108
  %i.dc = load i32, ptr %i.ae, align 8, !tbaa !130
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul nsw i64 %.016, %i.dd
  %i.df = load i32, ptr %i.af, align 4, !tbaa !131
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [2 x i8], ptr %i.db, i64 %i.de
  %i.di = getelementptr [2 x i8], ptr %i.dh, i64 %i.dg
  store i16 %i.cz, ptr %i.di, align 2, !tbaa !153
  %i.dj = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !205
  %i.dn = icmp slt i64 %i.dj, %i.dm
  br i1 %i.dn, label %bb.e, label %.loopexit, !llvm.loop !1142

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1145
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_13HalfFloatTypeEEENS_6StatusERKT_:bb.a
  %i.bn = uitofp i16 %i.bm to float
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo
  store float %i.bn, ptr %gep.2, align 4, !tbaa !155
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !153
  %i.bs = uitofp i16 %i.br to float
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  store float %i.bs, ptr %gep.3, align 4, !tbaa !155
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1512

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.h ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !207
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !208
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !62
  switch i32 %i.co, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.016
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !153
  %i.cx = uitofp i16 %i.cw to float
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cy = phi float [ %i.cx, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !249, !nonnull !46, !align !169
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !139
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !142
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !143
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [4 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %i.df
  store float %i.cy, ptr %i.dh, align 4, !tbaa !155
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !205
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1513

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1516
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_9FloatTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.j ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 7 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !249, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !139 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !142 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !143
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.an ; 6 uses
  %min.iters.check = icmp ugt i64 %i.ac, 19
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 2
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 2
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <4 x float>, ptr %i.as, align 4, !tbaa !155
  %wide.load30 = load <4 x float>, ptr %i.at, align 4, !tbaa !155
  %i.au = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <4 x float> %wide.load, ptr %i.au, align 4, !tbaa !155
  store <4 x float> %wide.load30, ptr %i.av, align 4, !tbaa !155
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1517

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.ba, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01117.prol
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !155
  %i.az = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.az
  store float %i.ay, ptr %gep.prol, align 4, !tbaa !155
  %i.ba = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1518

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bb = sub nsw i64 %.01117.ph, %i.ac
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bs, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.01117
  %i.be = load float, ptr %i.bd, align 4, !tbaa !155
  %i.bf = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bf
  store float %i.be, ptr %gep, align 4, !tbaa !155
  %i.bg = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bg
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !155
  %i.bj = mul nsw i64 %i.bg, %i.ak
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bj
  store float %i.bi, ptr %gep.1, align 4, !tbaa !155
  %i.bk = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !155
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bn
  store float %i.bm, ptr %gep.2, align 4, !tbaa !155
  %i.bo = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !155
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.br
  store float %i.bq, ptr %gep.3, align 4, !tbaa !155
  %i.bs = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bs, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1519

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bt = phi ptr [ %i.ab, %.lr.ph ], [ %i.dh, %bb.h ]
  %i.bu = phi ptr [ %i.aa, %.lr.ph ], [ %i.dg, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.df, %bb.h ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !207
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !208
  %i.cc = add nsw i64 %i.cb, %.016                ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = trunc i64 %i.cc to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = lshr i8 %i.cf, %i.ch
  %i.cj = trunc i8 %i.ci to i1
  br i1 %i.cj, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !62
  switch i32 %i.cm, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cn = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, i64 noundef %.016)
  br i1 %i.cn, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.co = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, i64 noundef %.016)
  br i1 %i.co, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cq = load atomic i64, ptr %i.cp seq_cst, align 8
  %i.cr = load i64, ptr %i.bt, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cq, %i.cr
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.016
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !155
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cv = phi float [ %i.cu, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.cw = load ptr, ptr %1, align 8, !tbaa !249, !nonnull !46, !align !169
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !139
  %i.cy = load i32, ptr %i.ae, align 8, !tbaa !142
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %.016, %i.cz
  %i.db = load i32, ptr %i.af, align 4, !tbaa !143
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.cx, i64 %i.da
  %i.de = getelementptr [4 x i8], ptr %i.dd, i64 %i.dc
  store float %i.cv, ptr %i.de, align 4, !tbaa !155
  %i.df = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !205
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %bb.e, label %.loopexit, !llvm.loop !1520

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1523
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !185  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.l, %i.n
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_9FloatTypeEEENS_6StatusERKT_:bb.a
  %i.bn = fpext float %i.bm to double
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bo
  store double %i.bn, ptr %gep.2, align 8, !tbaa !157
  %i.bp = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !155
  %i.bs = fpext float %i.br to double
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  store double %i.bs, ptr %gep.3, align 8, !tbaa !157
  %i.bu = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bu, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1685

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bv = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %bb.h ]
  %i.bw = phi ptr [ %i.z, %.lr.ph ], [ %i.dj, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.di, %bb.h ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !207
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !208
  %i.ce = add nsw i64 %i.cd, %.016                ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cm = load ptr, ptr %i.bw, align 8, !tbaa !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !62
  switch i32 %i.co, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cp = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cp, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cq = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cq, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %i.ct = load i64, ptr %i.bv, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cs, %i.ct
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.016
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !155
  %i.cx = fpext float %i.cw to double
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cy = phi double [ %i.cx, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.cz = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !145
  %i.db = load i32, ptr %i.ad, align 8, !tbaa !148
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul nsw i64 %.016, %i.dc
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !149
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr [8 x i8], ptr %i.da, i64 %i.dd
  %i.dh = getelementptr [8 x i8], ptr %i.dg, i64 %i.df
  store double %i.cy, ptr %i.dh, align 8, !tbaa !157
  %i.di = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !205
  %i.dm = icmp slt i64 %i.di, %i.dl
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1686

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1689
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10DoubleTypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183  ; 2 uses
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !185  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.m, %i.o
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.p, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.l, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.q = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.m, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !187
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.v) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.y, 0
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !205 ; 7 uses
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
  %i.ag = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !145 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !148 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !149
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ah, i64 %i.an ; 6 uses
  %min.iters.check = icmp ugt i64 %i.ac, 19
  %ident.check.not = icmp eq i32 %i.aj, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.ao = ptrtoaddr ptr %i.ah to i64
  %i.ap = shl nsw i64 %i.an, 3
  %4 = add i64 %i.ap, %i.ao
  %5 = shl i64 %i.j, 3
  %i.aq = add i64 %5, %i.i
  %i.ar = sub i64 %i.aq, %4
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ac, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %wide.load = load <2 x double>, ptr %i.as, align 8, !tbaa !157
  %wide.load30 = load <2 x double>, ptr %i.at, align 8, !tbaa !157
  %i.au = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  store <2 x double> %wide.load, ptr %i.au, align 8, !tbaa !157
  store <2 x double> %wide.load30, ptr %i.av, align 8, !tbaa !157
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1690

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.ba, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01117.prol
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !157
  %i.az = mul nsw i64 %.01117.prol, %i.ak
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.az
  store double %i.ay, ptr %gep.prol, align 8, !tbaa !157
  %i.ba = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1691

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.ba, %scalar.ph.prol ]
  %i.bb = sub nsw i64 %.01117.ph, %i.ac
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bs, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01117
  %i.be = load double, ptr %i.bd, align 8, !tbaa !157
  %i.bf = mul nsw i64 %.01117, %i.ak
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bf
  store double %i.be, ptr %gep, align 8, !tbaa !157
  %i.bg = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !157
  %i.bj = mul nsw i64 %i.bg, %i.ak
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj
  store double %i.bi, ptr %gep.1, align 8, !tbaa !157
  %i.bk = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !157
  %i.bn = mul nsw i64 %i.bk, %i.ak
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bn
  store double %i.bm, ptr %gep.2, align 8, !tbaa !157
  %i.bo = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !157
  %i.br = mul nsw i64 %i.bo, %i.ak
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.br
  store double %i.bq, ptr %gep.3, align 8, !tbaa !157
  %i.bs = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bs, %i.ac
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1692

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.bt = phi ptr [ %i.ab, %.lr.ph ], [ %i.dh, %bb.h ]
  %i.bu = phi ptr [ %i.aa, %.lr.ph ], [ %i.dg, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.df, %bb.h ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !207
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !208
  %i.cc = add nsw i64 %i.cb, %.016                ; 2 uses
  %i.cd = lshr i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !64
  %i.cg = trunc i64 %i.cc to i8
  %i.ch = and i8 %i.cg, 7
  %i.ci = lshr i8 %i.cf, %i.ch
  %i.cj = trunc i8 %i.ci to i1
  br i1 %i.cj, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ck = load ptr, ptr %i.bu, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !62
  switch i32 %i.cm, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cn = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, i64 noundef %.016)
  br i1 %i.cn, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.co = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, i64 noundef %.016)
  br i1 %i.co, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.cq = load atomic i64, ptr %i.cp seq_cst, align 8
  %i.cr = load i64, ptr %i.bt, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cq, %i.cr
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, i64 noundef %.016)
  br i1 %i.cs, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.016
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !157
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cv = phi double [ %i.cu, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.cw = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !145
  %i.cy = load i32, ptr %i.ae, align 8, !tbaa !148
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul nsw i64 %.016, %i.cz
  %i.db = load i32, ptr %i.af, align 4, !tbaa !149
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr [8 x i8], ptr %i.cx, i64 %i.da
  %i.de = getelementptr [8 x i8], ptr %i.dd, i64 %i.dc
  store double %i.cv, ptr %i.de, align 8, !tbaa !157
  %i.df = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !205
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %bb.e, label %.loopexit, !llvm.loop !1693

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1696
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.c, align 8, !tbaa !180
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !205  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183  ; 2 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.n = getelementptr i8, ptr %i.k, i64 %i.m     ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !185  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

end_hunk_5
