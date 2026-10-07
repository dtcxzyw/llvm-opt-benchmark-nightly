Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/tensor?download=true
inline.NumInlined: 5130
inline.NumDeleted: 1400
loop-unroll.NumRuntimeUnrolled: 144
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorItEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.y:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.z:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ab:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 9 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 13 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !112 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !113
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ag, i64 %i.am ; 8 uses
  %min.iters.check = icmp ugt i64 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %i.ab, 16
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.load = load <8 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !595
  %wide.load32 = load <8 x i8>, ptr %i.au, align 1, !tbaa !64, !alias.scope !595
  %i.av = sext <8 x i8> %wide.load to <8 x i16>
  %i.aw = sext <8 x i8> %wide.load32 to <8 x i16>
  %i.ax = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <8 x i16> %i.av, ptr %i.ax, align 2, !tbaa !153, !alias.scope !596, !noalias !595
  store <8 x i16> %i.aw, ptr %i.ay, align 2, !tbaa !153, !alias.scope !596, !noalias !595
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !588

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.ab, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !64, !alias.scope !595
  %i.bb = sext <4 x i8> %wide.load35 to <4 x i16>
  %i.bc = getelementptr [2 x i8], ptr %invariant.gep, i64 %index34
  store <4 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !153, !alias.scope !596, !noalias !595
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !589

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.ab, %n.vec33
  br i1 %cmp.n37, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bi, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = sext i8 %i.bf to i16
  %i.bh = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bh
  store i16 %i.bg, ptr %gep.prol, align 2, !tbaa !153
  %i.bi = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !590

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bi, %vec.epilog.scalar.ph.prol ]
  %i.bj = sub nsw i64 %.01117.ph, %i.ab
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = sext i8 %i.bm to i16
  %i.bo = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep, align 2, !tbaa !153
  %i.bp = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = sext i8 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.1, align 2, !tbaa !153
  %i.bu = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = sext i8 %i.bw to i16
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.by
  store i16 %i.bx, ptr %gep.2, align 2, !tbaa !153
  %i.bz = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = sext i8 %i.cb to i16
  %i.cd = mul nsw i64 %i.bz, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cd
  store i16 %i.cc, ptr %gep.3, align 2, !tbaa !153
  %i.ce = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ce, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !591

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
  %i.dh = sext i8 %i.dg to i16
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
  br i1 %i.dw, label %bb.e, label %.loopexit, !llvm.loop !592

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !597
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorItE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 9 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !212, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 13 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !213, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !112 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !113
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ag, i64 %i.am ; 8 uses
  %min.iters.check = icmp ugt i64 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %i.ab, 16
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.load = load <8 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !608
  %wide.load32 = load <8 x i8>, ptr %i.au, align 1, !tbaa !64, !alias.scope !608
  %i.av = zext <8 x i8> %wide.load to <8 x i16>
  %i.aw = zext <8 x i8> %wide.load32 to <8 x i16>
  %i.ax = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <8 x i16> %i.av, ptr %i.ax, align 2, !tbaa !153, !alias.scope !609, !noalias !608
  store <8 x i16> %i.aw, ptr %i.ay, align 2, !tbaa !153, !alias.scope !609, !noalias !608
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !601

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.ab, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !64, !alias.scope !608
  %i.bb = zext <4 x i8> %wide.load35 to <4 x i16>
  %i.bc = getelementptr [2 x i8], ptr %invariant.gep, i64 %index34
  store <4 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !153, !alias.scope !609, !noalias !608
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !602

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.ab, %n.vec33
  br i1 %cmp.n37, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bi, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = zext i8 %i.bf to i16
  %i.bh = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bh
  store i16 %i.bg, ptr %gep.prol, align 2, !tbaa !153
  %i.bi = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !603

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bi, %vec.epilog.scalar.ph.prol ]
  %i.bj = sub nsw i64 %.01117.ph, %i.ab
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = zext i8 %i.bm to i16
  %i.bo = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep, align 2, !tbaa !153
  %i.bp = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = zext i8 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.1, align 2, !tbaa !153
  %i.bu = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
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
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorIsEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.y:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.z:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ab:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 9 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 13 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !130 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ag, i64 %i.am ; 8 uses
  %min.iters.check = icmp ugt i64 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %i.ab, 16
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.load = load <8 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !1078
  %wide.load32 = load <8 x i8>, ptr %i.au, align 1, !tbaa !64, !alias.scope !1078
  %i.av = sext <8 x i8> %wide.load to <8 x i16>
  %i.aw = sext <8 x i8> %wide.load32 to <8 x i16>
  %i.ax = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <8 x i16> %i.av, ptr %i.ax, align 2, !tbaa !153, !alias.scope !1079, !noalias !1078
  store <8 x i16> %i.aw, ptr %i.ay, align 2, !tbaa !153, !alias.scope !1079, !noalias !1078
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1071

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.ab, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !64, !alias.scope !1078
  %i.bb = sext <4 x i8> %wide.load35 to <4 x i16>
  %i.bc = getelementptr [2 x i8], ptr %invariant.gep, i64 %index34
  store <4 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !153, !alias.scope !1079, !noalias !1078
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1072

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.ab, %n.vec33
  br i1 %cmp.n37, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bi, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = sext i8 %i.bf to i16
  %i.bh = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bh
  store i16 %i.bg, ptr %gep.prol, align 2, !tbaa !153
  %i.bi = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1073

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bi, %vec.epilog.scalar.ph.prol ]
  %i.bj = sub nsw i64 %.01117.ph, %i.ab
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = sext i8 %i.bm to i16
  %i.bo = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep, align 2, !tbaa !153
  %i.bp = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = sext i8 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.1, align 2, !tbaa !153
  %i.bu = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = sext i8 %i.bw to i16
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.2 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.by
  store i16 %i.bx, ptr %gep.2, align 2, !tbaa !153
  %i.bz = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !64
  %i.cc = sext i8 %i.cb to i16
  %i.cd = mul nsw i64 %i.bz, %i.aj
  %gep.3 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.cd
  store i16 %i.cc, ptr %gep.3, align 2, !tbaa !153
  %i.ce = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ce, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1074

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
  %i.dh = sext i8 %i.dg to i16
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
  br i1 %i.dw, label %bb.e, label %.loopexit, !llvm.loop !1075

.loopexit:                                        ; preds = %bb.h, %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1080
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIsE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 9 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !233, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 13 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !234, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !130 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !131
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ag, i64 %i.am ; 8 uses
  %min.iters.check = icmp ugt i64 %i.ab, 3
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %vec.epilog.scalar.ph.preheader

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 1
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %i.ab, 16
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %wide.load = load <8 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !1091
  %wide.load32 = load <8 x i8>, ptr %i.au, align 1, !tbaa !64, !alias.scope !1091
  %i.av = zext <8 x i8> %wide.load to <8 x i16>
  %i.aw = zext <8 x i8> %wide.load32 to <8 x i16>
  %i.ax = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store <8 x i16> %i.av, ptr %i.ax, align 2, !tbaa !153, !alias.scope !1092, !noalias !1091
  store <8 x i16> %i.aw, ptr %i.ay, align 2, !tbaa !153, !alias.scope !1092, !noalias !1091
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !214

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %i.ab, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !64, !alias.scope !1091
  %i.bb = zext <4 x i8> %wide.load35 to <4 x i16>
  %i.bc = getelementptr [2 x i8], ptr %invariant.gep, i64 %index34
  store <4 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !153, !alias.scope !1092, !noalias !1091
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.bd = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.bd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1085

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %i.ab, %n.vec33
  br i1 %cmp.n37, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01117.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bi, %vec.epilog.scalar.ph.prol ], [ %.01117.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !64
  %i.bg = zext i8 %i.bf to i16
  %i.bh = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bh
  store i16 %i.bg, ptr %gep.prol, align 2, !tbaa !153
  %i.bi = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1086

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bi, %vec.epilog.scalar.ph.prol ]
  %i.bj = sub nsw i64 %.01117.ph, %i.ab
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.01117 = phi i64 [ %i.ce, %vec.epilog.scalar.ph ], [ %.01117.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = zext i8 %i.bm to i16
  %i.bo = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bo
  store i16 %i.bn, ptr %gep, align 2, !tbaa !153
  %i.bp = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = zext i8 %i.br to i16
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.1 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bt
  store i16 %i.bs, ptr %gep.1, align 2, !tbaa !153
  %i.bu = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
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
end_hunk_1
begin_hunk_2_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorIfEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.y:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.z:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ab:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 8 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 9 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !249, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !139 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !143
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.am ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ab, 15
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 2
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %wide.load = load <4 x i8>, ptr %i.as, align 1, !tbaa !64, !alias.scope !1455
  %wide.load31 = load <4 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !1455
  %i.au = sitofp <4 x i8> %wide.load to <4 x float>
  %i.av = sitofp <4 x i8> %wide.load31 to <4 x float>
  %i.aw = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !155, !alias.scope !1456, !noalias !1455
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !155, !alias.scope !1456, !noalias !1455
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1449

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = sitofp i8 %i.ba to float
  %i.bc = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bc
  store float %i.bb, ptr %gep.prol, align 4, !tbaa !155
  %i.bd = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1450

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.01117.ph, %i.ab
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bz, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = sitofp i8 %i.bh to float
  %i.bj = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bj
  store float %i.bi, ptr %gep, align 4, !tbaa !155
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = sitofp i8 %i.bm to float
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo
  store float %i.bn, ptr %gep.1, align 4, !tbaa !155
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = sitofp i8 %i.br to float
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  store float %i.bs, ptr %gep.2, align 4, !tbaa !155
  %i.bu = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = sitofp i8 %i.bw to float
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.by
  store float %i.bx, ptr %gep.3, align 4, !tbaa !155
  %i.bz = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bz, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1451

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.ca = phi ptr [ %i.aa, %.lr.ph ], [ %i.dp, %bb.h ]
  %i.cb = phi ptr [ %i.z, %.lr.ph ], [ %i.do, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %bb.h ] ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !207
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !208
  %i.cj = add nsw i64 %i.ci, %.016                ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !64
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = lshr i8 %i.cm, %i.co
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !62
  switch i32 %i.ct, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cv, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cx = load atomic i64, ptr %i.cw seq_cst, align 8
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cx, %i.cy
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.db = load i8, ptr %i.da, align 1, !tbaa !64
  %i.dc = sitofp i8 %i.db to float
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.dd = phi float [ %i.dc, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.de = load ptr, ptr %1, align 8, !tbaa !249, !nonnull !46, !align !169
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !139
  %i.dg = load i32, ptr %i.ad, align 8, !tbaa !142
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %.016, %i.dh
  %i.dj = load i32, ptr %i.ae, align 4, !tbaa !143
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %i.df, i64 %i.di
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.dk
  store float %i.dd, ptr %i.dm, align 4, !tbaa !155
  %i.dn = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !205
  %i.dr = icmp slt i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.e, label %.loopexit, !llvm.loop !1452

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1457
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 8 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 9 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !249, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !139 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !142 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !143
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ag, i64 %i.am ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ab, 15
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 2
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %wide.load = load <4 x i8>, ptr %i.as, align 1, !tbaa !64, !alias.scope !1467
  %wide.load31 = load <4 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !1467
  %i.au = uitofp <4 x i8> %wide.load to <4 x float>
  %i.av = uitofp <4 x i8> %wide.load31 to <4 x float>
  %i.aw = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <4 x float> %i.au, ptr %i.aw, align 4, !tbaa !155, !alias.scope !1468, !noalias !1467
  store <4 x float> %i.av, ptr %i.ax, align 4, !tbaa !155, !alias.scope !1468, !noalias !1467
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1461

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = uitofp i8 %i.ba to float
  %i.bc = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bc
  store float %i.bb, ptr %gep.prol, align 4, !tbaa !155
  %i.bd = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1462

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.01117.ph, %i.ab
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bz, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = uitofp i8 %i.bh to float
  %i.bj = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bj
  store float %i.bi, ptr %gep, align 4, !tbaa !155
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bo
  store float %i.bn, ptr %gep.1, align 4, !tbaa !155
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = uitofp i8 %i.br to float
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bt
  store float %i.bs, ptr %gep.2, align 4, !tbaa !155
  %i.bu = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = uitofp i8 %i.bw to float
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.by
  store float %i.bx, ptr %gep.3, align 4, !tbaa !155
  %i.bz = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bz, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1463

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.ca = phi ptr [ %i.aa, %.lr.ph ], [ %i.dp, %bb.h ]
  %i.cb = phi ptr [ %i.z, %.lr.ph ], [ %i.do, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %bb.h ] ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !207
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !208
  %i.cj = add nsw i64 %i.ci, %.016                ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !64
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = lshr i8 %i.cm, %i.co
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !62
  switch i32 %i.ct, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cv, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cx = load atomic i64, ptr %i.cw seq_cst, align 8
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cx, %i.cy
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.db = load i8, ptr %i.da, align 1, !tbaa !64
  %i.dc = uitofp i8 %i.db to float
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.dd = phi float [ %i.dc, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.de = load ptr, ptr %1, align 8, !tbaa !249, !nonnull !46, !align !169
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !139
  %i.dg = load i32, ptr %i.ad, align 8, !tbaa !142
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %.016, %i.dh
  %i.dj = load i32, ptr %i.ae, align 4, !tbaa !143
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [4 x i8], ptr %i.df, i64 %i.di
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.dk
  store float %i.dd, ptr %i.dm, align 4, !tbaa !155
  %i.dn = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !248, !nonnull !46, !align !169 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !205
  %i.dr = icmp slt i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.e, label %.loopexit, !llvm.loop !1464

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1469
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIfE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a

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
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !157
  %i.cx = fptrunc double %i.cw to float
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
  br i1 %i.dm, label %bb.e, label %.loopexit, !llvm.loop !1527

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1530
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
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

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !187
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !205
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !252, !nonnull !46, !align !169 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !139 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.ak = shl i64 %i.i, 2
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %i.al
  %bound1 = icmp ult ptr %.promoted, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %i.ai, %i.ah
  %bound142 = icmp ult ptr %i.n, %i.aj
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  %bound044 = icmp ult ptr %.promoted, %i.ah
  %bound145 = icmp ult ptr %i.n, %i.al
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep49, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep49, align 1, !tbaa !64, !alias.scope !1541
  %wide.load50 = load <2 x i8>, ptr %i.aq, align 1, !tbaa !64, !alias.scope !1541
  %i.ar = sitofp <2 x i8> %wide.load to <2 x float>
  %i.as = sitofp <2 x i8> %wide.load50 to <2 x float>
  %i.at = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.ar, ptr %next.gep, align 4, !tbaa !155, !alias.scope !1542, !noalias !1541
  store <2 x float> %i.as, ptr %i.at, align 4, !tbaa !155, !alias.scope !1542, !noalias !1541
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1534

middle.block:                                     ; preds = %vector.body
  %i.av = getelementptr i8, ptr %.promoted, i64 %i.ap
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.ai, align 8, !tbaa !139, !alias.scope !1543, !noalias !1544
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.an, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ao, %middle.block ] ; 3 uses
  %i.ax = add i64 %i.i, %i.m
  %i.ay = add i64 %i.ax, %i.l                     ; 2 uses
  %.01320.ph53 = ptrtoaddr ptr %.01320.ph to i64  ; 2 uses
  %i.az = sub i64 %i.ay, %.01320.ph53
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ba = phi ptr [ %i.bd, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.be, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = load i8, ptr %.01320.prol, align 1, !tbaa !64
  %i.bc = sitofp i8 %i.bb to float
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 3 uses
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !139
  store float %i.bc, ptr %i.ba, align 4, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1536

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = sub i64 %.01320.ph53, %i.ay
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bh = phi ptr [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bx, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bi = load i8, ptr %.01320, align 1, !tbaa !64
  %i.bj = sitofp i8 %i.bi to float
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  store ptr %i.bk, ptr %i.ai, align 8, !tbaa !139
  store float %i.bj, ptr %i.bh, align 4, !tbaa !155
  %i.bl = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = sitofp i8 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bo, ptr %i.ai, align 8, !tbaa !139
  store float %i.bn, ptr %i.bk, align 4, !tbaa !155
  %i.bp = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !64
  %i.br = sitofp i8 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 12 ; 2 uses
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !139
  store float %i.br, ptr %i.bo, align 4, !tbaa !155
  %i.bt = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = sitofp i8 %i.bu to float
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bw, ptr %i.ai, align 8, !tbaa !139
  store float %i.bv, ptr %i.bs, align 4, !tbaa !155
  %i.bx = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bx, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1537

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.by = phi ptr [ %i.dh, %bb.h ], [ %i.ae, %.preheader ]
  %i.bz = phi ptr [ %i.dg, %bb.h ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.df, %bb.h ], [ 0, %.preheader ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i14, label %bb.f, label %.split

.split:                                           ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !208
  %i.ch = add nsw i64 %i.cg, %.018                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !62
  switch i32 %i.cr, label %.split27 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split29
    i32 38, label %.split28
  ]

.split29:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cs, label %bb.h, label %bb.g

.split28:                                         ; preds = %bb.f
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.ct, label %bb.h, label %bb.g

.split27:                                         ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !205
  %.not31 = icmp eq i64 %i.cv, %i.cw
  br i1 %.not31, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !64
  %i.da = sitofp i8 %i.cz to float
  br label %bb.h

bb.h:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.db = phi float [ %i.da, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split27 ], [ +qnan, %.split28 ], [ +qnan, %.split29 ]
  %i.dc = load ptr, ptr %1, align 8, !tbaa !252, !nonnull !46, !align !169 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !139 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !139
  store float %i.db, ptr %i.dd, align 4, !tbaa !155
  %i.df = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !205
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %.lr.ph, label %.loopexit, !llvm.loop !1538

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1545
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
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

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !187
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !205
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !252, !nonnull !46, !align !169 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !139 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.ak = shl i64 %i.i, 2
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %i.al
  %bound1 = icmp ult ptr %.promoted, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %i.ai, %i.ah
  %bound142 = icmp ult ptr %i.n, %i.aj
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  %bound044 = icmp ult ptr %.promoted, %i.ah
  %bound145 = icmp ult ptr %i.n, %i.al
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.am = shl i64 %n.vec, 2
  %i.an = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep49, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep49, align 1, !tbaa !64, !alias.scope !1556
  %wide.load50 = load <2 x i8>, ptr %i.aq, align 1, !tbaa !64, !alias.scope !1556
  %i.ar = uitofp <2 x i8> %wide.load to <2 x float>
  %i.as = uitofp <2 x i8> %wide.load50 to <2 x float>
  %i.at = getelementptr i8, ptr %next.gep, i64 8
  store <2 x float> %i.ar, ptr %next.gep, align 4, !tbaa !155, !alias.scope !1557, !noalias !1556
  store <2 x float> %i.as, ptr %i.at, align 4, !tbaa !155, !alias.scope !1557, !noalias !1556
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1549

middle.block:                                     ; preds = %vector.body
  %i.av = getelementptr i8, ptr %.promoted, i64 %i.ap
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store ptr %i.aw, ptr %i.ai, align 8, !tbaa !139, !alias.scope !1558, !noalias !1559
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.an, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ao, %middle.block ] ; 3 uses
  %i.ax = add i64 %i.i, %i.m
  %i.ay = add i64 %i.ax, %i.l                     ; 2 uses
  %.01320.ph53 = ptrtoaddr ptr %.01320.ph to i64  ; 2 uses
  %i.az = sub i64 %i.ay, %.01320.ph53
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ba = phi ptr [ %i.bd, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.be, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = load i8, ptr %.01320.prol, align 1, !tbaa !64
  %i.bc = uitofp i8 %i.bb to float
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 3 uses
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !139
  store float %i.bc, ptr %i.ba, align 4, !tbaa !155
  %i.be = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1551

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = sub i64 %.01320.ph53, %i.ay
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bh = phi ptr [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bx, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bi = load i8, ptr %.01320, align 1, !tbaa !64
  %i.bj = uitofp i8 %i.bi to float
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  store ptr %i.bk, ptr %i.ai, align 8, !tbaa !139
  store float %i.bj, ptr %i.bh, align 4, !tbaa !155
  %i.bl = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bo, ptr %i.ai, align 8, !tbaa !139
  store float %i.bn, ptr %i.bk, align 4, !tbaa !155
  %i.bp = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !64
  %i.br = uitofp i8 %i.bq to float
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 12 ; 2 uses
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !139
  store float %i.br, ptr %i.bo, align 4, !tbaa !155
  %i.bt = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = uitofp i8 %i.bu to float
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bw, ptr %i.ai, align 8, !tbaa !139
  store float %i.bv, ptr %i.bs, align 4, !tbaa !155
  %i.bx = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bx, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1552

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.by = phi ptr [ %i.dh, %bb.h ], [ %i.ae, %.preheader ]
  %i.bz = phi ptr [ %i.dg, %bb.h ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.df, %bb.h ], [ 0, %.preheader ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i14, label %bb.f, label %.split

.split:                                           ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !208
  %i.ch = add nsw i64 %i.cg, %.018                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !62
  switch i32 %i.cr, label %.split27 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split29
    i32 38, label %.split28
  ]

.split29:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cs, label %bb.h, label %bb.g

.split28:                                         ; preds = %bb.f
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.ct, label %bb.h, label %bb.g

.split27:                                         ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !205
  %.not31 = icmp eq i64 %i.cv, %i.cw
  br i1 %.not31, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !64
  %i.da = uitofp i8 %i.cz to float
  br label %bb.h

bb.h:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.db = phi float [ %i.da, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split27 ], [ +qnan, %.split28 ], [ +qnan, %.split29 ]
  %i.dc = load ptr, ptr %1, align 8, !tbaa !252, !nonnull !46, !align !169 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !139 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !139
  store float %i.db, ptr %i.dd, align 4, !tbaa !155
  %i.df = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !205
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %.lr.ph, label %.loopexit, !llvm.loop !1553

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1560
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIfE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.arrow::ArraySpan", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
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
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !251, !nonnull !46, !align !169
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !205  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load i64, ptr %i.d, align 8, !tbaa !184
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
end_hunk_3
begin_hunk_4_@_ZN5arrow15VisitTypeInlineINS_8internal29ConvertColumnsToTensorVisitorIdEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.y:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.z:                                             ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aa:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ab:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ac:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ad:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ae:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.af:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ag:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ah:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ai:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aj:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ak:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.al:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.am:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.an:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ao:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ap:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.aq:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.ar:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.as:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.at:                                            ; preds = %bb.a
  tail call void @_ZN5arrow11UnreachableEPKc(ptr noundef nonnull @.str.34) #23
  unreachable

bb.au:                                            ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA21_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(21) @.str.33)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_8Int8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 8 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 9 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !145 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !148 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !149
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ag, i64 %i.am ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ab, 15
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 3
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %wide.load = load <2 x i8>, ptr %i.as, align 1, !tbaa !64, !alias.scope !1620
  %wide.load31 = load <2 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !1620
  %i.au = sitofp <2 x i8> %wide.load to <2 x double>
  %i.av = sitofp <2 x i8> %wide.load31 to <2 x double>
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %i.au, ptr %i.aw, align 8, !tbaa !157, !alias.scope !1621, !noalias !1620
  store <2 x double> %i.av, ptr %i.ax, align 8, !tbaa !157, !alias.scope !1621, !noalias !1620
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1614

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = sitofp i8 %i.ba to double
  %i.bc = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bc
  store double %i.bb, ptr %gep.prol, align 8, !tbaa !157
  %i.bd = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1615

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.01117.ph, %i.ab
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bz, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = sitofp i8 %i.bh to double
  %i.bj = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj
  store double %i.bi, ptr %gep, align 8, !tbaa !157
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = sitofp i8 %i.bm to double
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bo
  store double %i.bn, ptr %gep.1, align 8, !tbaa !157
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = sitofp i8 %i.br to double
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  store double %i.bs, ptr %gep.2, align 8, !tbaa !157
  %i.bu = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = sitofp i8 %i.bw to double
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.by
  store double %i.bx, ptr %gep.3, align 8, !tbaa !157
  %i.bz = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bz, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1616

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.ca = phi ptr [ %i.aa, %.lr.ph ], [ %i.dp, %bb.h ]
  %i.cb = phi ptr [ %i.z, %.lr.ph ], [ %i.do, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %bb.h ] ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !207
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !208
  %i.cj = add nsw i64 %i.ci, %.016                ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !64
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = lshr i8 %i.cm, %i.co
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !62
  switch i32 %i.ct, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cv, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cx = load atomic i64, ptr %i.cw seq_cst, align 8
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cx, %i.cy
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.db = load i8, ptr %i.da, align 1, !tbaa !64
  %i.dc = sitofp i8 %i.db to double
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.dd = phi double [ %i.dc, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.de = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !145
  %i.dg = load i32, ptr %i.ad, align 8, !tbaa !148
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %.016, %i.dh
  %i.dj = load i32, ptr %i.ae, align 4, !tbaa !149
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %i.df, i64 %i.di
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.dk
  store double %i.dd, ptr %i.dm, align 8, !tbaa !157
  %i.dn = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !205
  %i.dr = icmp slt i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.e, label %.loopexit, !llvm.loop !1617

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1622
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 %i.i     ; 8 uses
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
  %.not.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.k, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.p = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.l, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !187
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load atomic i64, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i64 %i.x, 0
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !205 ; 9 uses
  %i.ac = icmp sgt i64 %i.ab, 0                   ; 2 uses
  br i1 %i.y, label %.preheader, label %.preheader14

.preheader14:                                     ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader14
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %bb.e

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  br i1 %i.ac, label %.lr.ph18, label %.loopexit

.lr.ph18:                                         ; preds = %.preheader
  %i.af = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !145 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !148 ; 2 uses
  %i.aj = sext i32 %i.ai to i64                   ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !149
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.ag, i64 %i.am ; 7 uses
  %min.iters.check = icmp ugt i64 %i.ab, 15
  %ident.check.not = icmp eq i32 %i.ai, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph18
  %i.an = add i64 %i.ab, %i.am
  %i.ao = shl i64 %i.an, 3
  %i.ap = getelementptr i8, ptr %i.ag, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.h, i64 %i.ab
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.i
  %bound0 = icmp ult ptr %invariant.gep, %i.ar
  %bound1 = icmp ult ptr %i.j, %i.ap
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %wide.load = load <2 x i8>, ptr %i.as, align 1, !tbaa !64, !alias.scope !1632
  %wide.load31 = load <2 x i8>, ptr %i.at, align 1, !tbaa !64, !alias.scope !1632
  %i.au = uitofp <2 x i8> %wide.load to <2 x double>
  %i.av = uitofp <2 x i8> %wide.load31 to <2 x double>
  %i.aw = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x double> %i.au, ptr %i.aw, align 8, !tbaa !157, !alias.scope !1633, !noalias !1632
  store <2 x double> %i.av, ptr %i.ax, align 8, !tbaa !157, !alias.scope !1633, !noalias !1632
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !1626

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph18, %middle.block
  %.01117.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph18 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ab, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01117.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.01117.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117.prol
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = uitofp i8 %i.ba to double
  %i.bc = mul nsw i64 %.01117.prol, %i.aj
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bc
  store double %i.bb, ptr %gep.prol, align 8, !tbaa !157
  %i.bd = add nuw nsw i64 %.01117.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1627

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.01117.unr = phi i64 [ %.01117.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.01117.ph, %i.ab
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01117 = phi i64 [ %i.bz, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 %.01117
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !64
  %i.bi = uitofp i8 %i.bh to double
  %i.bj = mul nsw i64 %.01117, %i.aj
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bj
  store double %i.bi, ptr %gep, align 8, !tbaa !157
  %i.bk = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = uitofp i8 %i.bm to double
  %i.bo = mul nsw i64 %i.bk, %i.aj
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bo
  store double %i.bn, ptr %gep.1, align 8, !tbaa !157
  %i.bp = add nuw nsw i64 %.01117, 2              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !64
  %i.bs = uitofp i8 %i.br to double
  %i.bt = mul nsw i64 %i.bp, %i.aj
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.bt
  store double %i.bs, ptr %gep.2, align 8, !tbaa !157
  %i.bu = add nuw nsw i64 %.01117, 3              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !64
  %i.bx = uitofp i8 %i.bw to double
  %i.by = mul nsw i64 %i.bu, %i.aj
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.by
  store double %i.bx, ptr %gep.3, align 8, !tbaa !157
  %i.bz = add nuw nsw i64 %.01117, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bz, %i.ab
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1628

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.ca = phi ptr [ %i.aa, %.lr.ph ], [ %i.dp, %bb.h ]
  %i.cb = phi ptr [ %i.z, %.lr.ph ], [ %i.do, %bb.h ] ; 7 uses
  %.016 = phi i64 [ 0, %.lr.ph ], [ %i.dn, %bb.h ] ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !207
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i12 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i12, label %bb.f, label %.split

.split:                                           ; preds = %bb.e
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !208
  %i.cj = add nsw i64 %i.ci, %.016                ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !64
  %i.cn = trunc i64 %i.cj to i8
  %i.co = and i8 %i.cn, 7
  %i.cp = lshr i8 %i.cm, %i.co
  %i.cq = trunc i8 %i.cp to i1
  br i1 %i.cq, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cr = load ptr, ptr %i.cb, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !62
  switch i32 %i.ct, label %.split25 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split27
    i32 38, label %.split26
  ]

.split27:                                         ; preds = %bb.f
  %i.cu = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cu, label %bb.h, label %bb.g

.split26:                                         ; preds = %bb.f
  %i.cv = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cv, label %bb.h, label %bb.g

.split25:                                         ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cx = load atomic i64, ptr %i.cw seq_cst, align 8
  %i.cy = load i64, ptr %i.ca, align 8, !tbaa !205
  %.not = icmp eq i64 %i.cx, %i.cy
  br i1 %.not, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cz = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.cb, i64 noundef %.016)
  br i1 %i.cz, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 %.016
  %i.db = load i8, ptr %i.da, align 1, !tbaa !64
  %i.dc = uitofp i8 %i.db to double
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.dd = phi double [ %i.dc, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.de = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !145
  %i.dg = load i32, ptr %i.ad, align 8, !tbaa !148
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %.016, %i.dh
  %i.dj = load i32, ptr %i.ae, align 4, !tbaa !149
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %i.df, i64 %i.di
  %i.dm = getelementptr [8 x i8], ptr %i.dl, i64 %i.dk
  store double %i.dd, ptr %i.dm, align 8, !tbaa !157
  %i.dn = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !205
  %i.dr = icmp slt i64 %i.dn, %i.dq
  br i1 %i.dr, label %bb.e, label %.loopexit, !llvm.loop !1629

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader14, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1634
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !183
  %i.i = load i64, ptr %i.d, align 8, !tbaa !184
  %i.j = getelementptr inbounds [2 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN5arrow8internal37ConvertColumnsToTensorRowMajorVisitorIdE5VisitINS_10DoubleTypeEEENS_6StatusERKT_:bb.a
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
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.016
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !157
  br label %bb.h

bb.h:                                             ; preds = %.split27, %.split26, %.split25, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.cx = phi double [ %i.cw, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split25 ], [ +qnan, %.split26 ], [ +qnan, %.split27 ]
  %i.cy = load ptr, ptr %1, align 8, !tbaa !254, !nonnull !46, !align !169
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !145
  %i.da = load i32, ptr %i.ae, align 8, !tbaa !148
  %i.db = sext i32 %i.da to i64
  %i.dc = mul nsw i64 %.016, %i.db
  %i.dd = load i32, ptr %i.af, align 4, !tbaa !149
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr %i.cz, i64 %i.dc
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de
  store double %i.cx, ptr %i.dg, align 8, !tbaa !157
  %i.dh = add nuw nsw i64 %.016, 1                ; 2 uses
  %i.di = load ptr, ptr %i.a, align 8, !tbaa !253, !nonnull !46, !align !169 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !205
  %i.dl = icmp slt i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.e, label %.loopexit, !llvm.loop !1693

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

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !187
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !205
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !257, !nonnull !46, !align !169 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !145 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.ak = shl i64 %i.i, 3
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %i.al
  %bound1 = icmp ult ptr %.promoted, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %i.ai, %i.ah
  %bound142 = icmp ult ptr %i.n, %i.aj
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  %bound044 = icmp ult ptr %.promoted, %i.ah
  %bound145 = icmp ult ptr %i.n, %i.al
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.am = shl i64 %n.vec, 3
  %i.an = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep49, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep49, align 1, !tbaa !64, !alias.scope !1707
  %wide.load50 = load <2 x i8>, ptr %i.aq, align 1, !tbaa !64, !alias.scope !1707
  %i.ar = sitofp <2 x i8> %wide.load to <2 x double>
  %i.as = sitofp <2 x i8> %wide.load50 to <2 x double>
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.ar, ptr %next.gep, align 8, !tbaa !157, !alias.scope !1708, !noalias !1707
  store <2 x double> %i.as, ptr %i.at, align 8, !tbaa !157, !alias.scope !1708, !noalias !1707
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1700

middle.block:                                     ; preds = %vector.body
  %i.av = getelementptr i8, ptr %.promoted, i64 %i.ap
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  store ptr %i.aw, ptr %i.ai, align 8, !tbaa !145, !alias.scope !1709, !noalias !1710
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.an, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ao, %middle.block ] ; 3 uses
  %i.ax = add i64 %i.i, %i.m
  %i.ay = add i64 %i.ax, %i.l                     ; 2 uses
  %.01320.ph53 = ptrtoaddr ptr %.01320.ph to i64  ; 2 uses
  %i.az = sub i64 %i.ay, %.01320.ph53
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ba = phi ptr [ %i.bd, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.be, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = load i8, ptr %.01320.prol, align 1, !tbaa !64
  %i.bc = sitofp i8 %i.bb to double
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !145
  store double %i.bc, ptr %i.ba, align 8, !tbaa !157
  %i.be = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1702

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = sub i64 %.01320.ph53, %i.ay
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bh = phi ptr [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bx, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bi = load i8, ptr %.01320, align 1, !tbaa !64
  %i.bj = sitofp i8 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.ai, align 8, !tbaa !145
  store double %i.bj, ptr %i.bh, align 8, !tbaa !157
  %i.bl = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = sitofp i8 %i.bm to double
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bo, ptr %i.ai, align 8, !tbaa !145
  store double %i.bn, ptr %i.bk, align 8, !tbaa !157
  %i.bp = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !64
  %i.br = sitofp i8 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !145
  store double %i.br, ptr %i.bo, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = sitofp i8 %i.bu to double
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store ptr %i.bw, ptr %i.ai, align 8, !tbaa !145
  store double %i.bv, ptr %i.bs, align 8, !tbaa !157
  %i.bx = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bx, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1703

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.by = phi ptr [ %i.dh, %bb.h ], [ %i.ae, %.preheader ]
  %i.bz = phi ptr [ %i.dg, %bb.h ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.df, %bb.h ], [ 0, %.preheader ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i14, label %bb.f, label %.split

.split:                                           ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !208
  %i.ch = add nsw i64 %i.cg, %.018                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !62
  switch i32 %i.cr, label %.split27 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split29
    i32 38, label %.split28
  ]

.split29:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cs, label %bb.h, label %bb.g

.split28:                                         ; preds = %bb.f
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.ct, label %bb.h, label %bb.g

.split27:                                         ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !205
  %.not31 = icmp eq i64 %i.cv, %i.cw
  br i1 %.not31, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !64
  %i.da = sitofp i8 %i.cz to double
  br label %bb.h

bb.h:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.db = phi double [ %i.da, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split27 ], [ +qnan, %.split28 ], [ +qnan, %.split29 ]
  %i.dc = load ptr, ptr %1, align 8, !tbaa !257, !nonnull !46, !align !169 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !145 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !145
  store double %i.db, ptr %i.dd, align 8, !tbaa !157
  %i.df = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !205
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %.lr.ph, label %.loopexit, !llvm.loop !1704

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1711
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9UInt8TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.p, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.o, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.t = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !187
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load atomic i64, ptr %i.aa seq_cst, align 8
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !205
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit

bb.e:                                             ; preds = %_ZN5arrow9ArraySpanD2Ev.exit
  %i.ah = getelementptr i8, ptr %i.n, i64 %i.i    ; 3 uses
  %.not19 = icmp samesign eq i64 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !257, !nonnull !46, !align !169 ; 10 uses
  %.promoted = load ptr, ptr %i.ai, align 8, !tbaa !145 ; 8 uses
  %min.iters.check = icmp ult i64 %i.i, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21
  %i.aj = getelementptr i8, ptr %i.ai, i64 8      ; 2 uses
  %i.ak = shl i64 %i.i, 3
  %i.al = getelementptr i8, ptr %.promoted, i64 %i.ak ; 2 uses
  %bound0 = icmp ult ptr %i.ai, %i.al
  %bound1 = icmp ult ptr %.promoted, %i.aj
  %found.conflict = and i1 %bound0, %bound1
  %bound041 = icmp ult ptr %i.ai, %i.ah
  %bound142 = icmp ult ptr %i.n, %i.aj
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %found.conflict, %found.conflict43
  %bound044 = icmp ult ptr %.promoted, %i.ah
  %bound145 = icmp ult ptr %i.n, %i.al
  %found.conflict46 = and i1 %bound044, %bound145
  %conflict.rdx47 = or i1 %conflict.rdx, %found.conflict46
  br i1 %conflict.rdx47, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.am = shl i64 %n.vec, 3
  %i.an = getelementptr i8, ptr %.promoted, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.n, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted, i64 %i.ap ; 2 uses
  %next.gep49 = getelementptr i8, ptr %i.n, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %next.gep49, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep49, align 1, !tbaa !64, !alias.scope !1722
  %wide.load50 = load <2 x i8>, ptr %i.aq, align 1, !tbaa !64, !alias.scope !1722
  %i.ar = uitofp <2 x i8> %wide.load to <2 x double>
  %i.as = uitofp <2 x i8> %wide.load50 to <2 x double>
  %i.at = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %i.ar, ptr %next.gep, align 8, !tbaa !157, !alias.scope !1723, !noalias !1722
  store <2 x double> %i.as, ptr %i.at, align 8, !tbaa !157, !alias.scope !1723, !noalias !1722
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1715

middle.block:                                     ; preds = %vector.body
  %i.av = getelementptr i8, ptr %.promoted, i64 %i.ap
  %i.aw = getelementptr i8, ptr %i.av, i64 32
  store ptr %i.aw, ptr %i.ai, align 8, !tbaa !145, !alias.scope !1724, !noalias !1725
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21, %middle.block
  %.ph = phi ptr [ %.promoted, %vector.memcheck ], [ %.promoted, %.lr.ph21 ], [ %i.an, %middle.block ] ; 2 uses
  %.01320.ph = phi ptr [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph21 ], [ %i.ao, %middle.block ] ; 3 uses
  %i.ax = add i64 %i.i, %i.m
  %i.ay = add i64 %i.ax, %i.l                     ; 2 uses
  %.01320.ph53 = ptrtoaddr ptr %.01320.ph to i64  ; 2 uses
  %i.az = sub i64 %i.ay, %.01320.ph53
  %xtraiter = and i64 %i.az, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ba = phi ptr [ %i.bd, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.01320.prol = phi ptr [ %i.be, %scalar.ph.prol ], [ %.01320.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bb = load i8, ptr %.01320.prol, align 1, !tbaa !64
  %i.bc = uitofp i8 %i.bb to double
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !145
  store double %i.bc, ptr %i.ba, align 8, !tbaa !157
  %i.be = getelementptr inbounds nuw i8, ptr %.01320.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1717

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %.01320.unr = phi ptr [ %.01320.ph, %scalar.ph.preheader ], [ %i.be, %scalar.ph.prol ]
  %i.bf = sub i64 %.01320.ph53, %i.ay
  %i.bg = icmp ugt i64 %i.bf, -4
  br i1 %i.bg, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.bh = phi ptr [ %i.bw, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.01320 = phi ptr [ %i.bx, %scalar.ph ], [ %.01320.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bi = load i8, ptr %.01320, align 1, !tbaa !64
  %i.bj = uitofp i8 %i.bi to double
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.ai, align 8, !tbaa !145
  store double %i.bj, ptr %i.bh, align 8, !tbaa !157
  %i.bl = getelementptr inbounds nuw i8, ptr %.01320, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = uitofp i8 %i.bm to double
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  store ptr %i.bo, ptr %i.ai, align 8, !tbaa !145
  store double %i.bn, ptr %i.bk, align 8, !tbaa !157
  %i.bp = getelementptr inbounds nuw i8, ptr %.01320, i64 2
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !64
  %i.br = uitofp i8 %i.bq to double
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.bs, ptr %i.ai, align 8, !tbaa !145
  store double %i.br, ptr %i.bo, align 8, !tbaa !157
  %i.bt = getelementptr inbounds nuw i8, ptr %.01320, i64 3
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64
  %i.bv = uitofp i8 %i.bu to double
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store ptr %i.bw, ptr %i.ai, align 8, !tbaa !145
  store double %i.bv, ptr %i.bs, align 8, !tbaa !157
  %i.bx = getelementptr inbounds nuw i8, ptr %.01320, i64 4 ; 2 uses
  %.not.3 = icmp eq ptr %i.bx, %i.ah
  br i1 %.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1718

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %i.by = phi ptr [ %i.dh, %bb.h ], [ %i.ae, %.preheader ]
  %i.bz = phi ptr [ %i.dg, %bb.h ], [ %i.ad, %.preheader ] ; 7 uses
  %.018 = phi i64 [ %i.df, %bb.h ], [ 0, %.preheader ] ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !68 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i14, label %bb.f, label %.split

.split:                                           ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !208
  %i.ch = add nsw i64 %i.cg, %.018                ; 2 uses
  %i.ci = lshr i64 %i.ch, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !64
  %i.cl = trunc i64 %i.ch to i8
  %i.cm = and i8 %i.cl, 7
  %i.cn = lshr i8 %i.ck, %i.cm
  %i.co = trunc i8 %i.cn to i1
  br i1 %i.co, label %bb.g, label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.cp = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !62
  switch i32 %i.cr, label %.split27 [
    i32 27, label %_ZNK5arrow9ArrayData6IsNullEl.exit
    i32 28, label %.split29
    i32 38, label %.split28
  ]

.split29:                                         ; preds = %bb.f
  %i.cs = call noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cs, label %bb.h, label %bb.g

.split28:                                         ; preds = %bb.f
  %i.ct = call noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.ct, label %bb.h, label %bb.g

.split27:                                         ; preds = %bb.f
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cv = load atomic i64, ptr %i.cu seq_cst, align 8
  %i.cw = load i64, ptr %i.by, align 8, !tbaa !205
  %.not31 = icmp eq i64 %i.cv, %i.cw
  br i1 %.not31, label %bb.h, label %bb.g

_ZNK5arrow9ArrayData6IsNullEl.exit:               ; preds = %bb.f
  %i.cx = call noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.bz, i64 noundef %.018)
  br i1 %i.cx, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 %.018
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !64
  %i.da = uitofp i8 %i.cz to double
  br label %bb.h

bb.h:                                             ; preds = %.split29, %.split28, %.split27, %.split, %_ZNK5arrow9ArrayData6IsNullEl.exit, %bb.g
  %i.db = phi double [ %i.da, %bb.g ], [ +qnan, %_ZNK5arrow9ArrayData6IsNullEl.exit ], [ +qnan, %.split ], [ +qnan, %.split27 ], [ +qnan, %.split28 ], [ +qnan, %.split29 ]
  %i.dc = load ptr, ptr %1, align 8, !tbaa !257, !nonnull !46, !align !169 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !145 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr %i.de, ptr %i.dc, align 8, !tbaa !145
  store double %i.db, ptr %i.dd, align 8, !tbaa !157
  %i.df = add nuw nsw i64 %.018, 1                ; 2 uses
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !256, !nonnull !46, !align !169 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !205
  %i.dj = icmp slt i64 %i.df, %i.di
  br i1 %i.dj, label %.lr.ph, label %.loopexit, !llvm.loop !1719

.loopexit:                                        ; preds = %bb.h, %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !27, !alias.scope !1726
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal29ConvertColumnsToTensorVisitorIdE5VisitINS_9Int16TypeEEENS_6StatusERKT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !205  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.l = load i64, ptr %i.d, align 8, !tbaa !184
  %i.m = getelementptr inbounds [2 x i8], ptr %i.k, i64 %i.l ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !185  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i1.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.0.i2.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.o, %bb.c ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow9ArraySpanEEvPT_(ptr noundef %.0.i2.i.i), !inline_history !5
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i2.i.i, i64 128 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !6

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i: ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !185
  br label %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i, %bb.c
  %i.s = phi ptr [ %.pre.i.i, %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.loopexit.i.i ], [ %i.o, %bb.c ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow9ArraySpanD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !187
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #25, !inline_history !7
  br label %_ZN5arrow9ArraySpanD2Ev.exit

_ZN5arrow9ArraySpanD2Ev.exit:                     ; preds = %_ZSt8_DestroyIPN5arrow9ArraySpanES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.d
end_hunk_5
