Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/sgiinput?download=true
inline.NumInlined: 3130
inline.NumDeleted: 974
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_18SgiInput20read_native_scanlineEiiiiPv:bb.a

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ew, align 2, !tbaa !142
  %wide.load169 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !142
  %i.ey = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.ez = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load169)
  store <8 x i16> %i.ey, ptr %i.ew, align 2, !tbaa !142
  store <8 x i16> %i.ez, ptr %i.ex, align 2, !tbaa !142
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !407

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ev, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !207

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec170 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index171 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next173, %vec.epilog.vector.body ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %index171 ; 2 uses
  %wide.load172 = load <4 x i16>, ptr %i.fb, align 2, !tbaa !142
  %i.fc = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load172)
  store <4 x i16> %i.fc, ptr %i.fb, align 2, !tbaa !142
  %index.next173 = add nuw i64 %index171, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next173, %n.vec170
  br i1 %i.fd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !408

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n174 = icmp eq i64 %n.vec170, %wide.trip.count.i
  br i1 %cmp.n174, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec170, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %indvars.iv.i ; 2 uses
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !142
  %i.fg = tail call noundef i16 @llvm.bswap.i16(i16 %i.ff)
  store i16 %i.fg, ptr %i.fe, align 2, !tbaa !142
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, label %.lr.ph.i, !llvm.loop !409

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %bb.p, %bb.n, %_ZNSt6vectorIhSaIhEE6resizeEm.exit78
  %lpad.loopexit.split-lp179 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %bb.x

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %bb.s, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.u, %.loopexit
  %.3 = phi i1 [ true, %.loopexit ], [ true, %middle.block ], [ true, %bb.u ], [ true, %.lr.ph.i ], [ true, %vec.epilog.middle.block ], [ false, %bb.s ]
  %i.fh = load ptr, ptr %6, align 8, !tbaa !200   ; 5 uses
  %i.fi = load ptr, ptr %i.ac, align 8, !tbaa !202 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fh, %i.fi
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fp, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i ], [ %i.fh, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit ] ; 3 uses
  %i.fj = load ptr, ptr %.05.i.i.i, align 8, !tbaa !206 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !208
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #28
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i:  ; preds = %bb.v, %.lr.ph.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fp, %i.fi
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i.i, %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %.not.i.i1.i = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i
  %i.fq = load ptr, ptr %i.ad, align 8, !tbaa !201
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fh to i64
  %i.ft = sub i64 %i.fr, %i.fs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.ft) #28
  br label %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.x:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp179, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.an, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.z

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread: ; preds = %.noexc, %bb.d, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit, %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit
  %.4 = phi i1 [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ %.3, %_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev.exit ], [ false, %bb.d ], [ false, %.noexc ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread
  %i.fu = landingpad { ptr, i32 }
          catch ptr null
  %i.fv = extractvalue { ptr, i32 } %i.fu, 0
  tail call void @__clang_call_terminate(ptr %i.fv) #31
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread
  ret i1 %.4

bb.z:                                             ; preds = %bb.x, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.l, %bb.c ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit79 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #31
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit79: ; preds = %bb.z
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !guid !415 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !127
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !127
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.j = icmp eq i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18SgiInput22uncompress_rle_channelEiiPh(ptr noundef nonnull align 8 dereferenceable(376) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !432 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 219
  %i.c = load i8, ptr %i.b, align 1, !tbaa !182   ; 2 uses
  %i.d = sext i8 %i.c to i32
  store i32 %i.d, ptr %i.a, align 4, !tbaa !47
  %i.e = sext i32 %2 to i64                       ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #30 ; 38 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = sext i32 %1 to i64
  %i.i = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.h, i32 noundef 0)
          to label %bb.b unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.f, i64 noundef 1, i64 noundef %i.e)
          to label %bb.c unwind label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %bb.d, label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit90

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !203  ; 4 uses
  switch i8 %i.c, label %bb.g [
    i8 1, label %.preheader112
    i8 2, label %.preheader116
  ]

.preheader116:                                    ; preds = %bb.d
  %i.m = icmp sgt i32 %2, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader116
  %scevgep = getelementptr i8, ptr %i.f, i64 1
  %scevgep187 = getelementptr i8, ptr %i.f, i64 4
  %scevgep216 = getelementptr i8, ptr %i.f, i64 2
  br label %.lr.ph

.preheader112:                                    ; preds = %bb.d
  %i.n = icmp sgt i32 %2, 0
  br i1 %i.n, label %.lr.ph143.preheader, label %.thread

.lr.ph143.preheader:                              ; preds = %.preheader112
  %i.o = getelementptr i8, ptr %i.f, i64 16
  %i.p = getelementptr i8, ptr %i.f, i64 32
  %i.q = getelementptr i8, ptr %i.f, i64 48
  %i.r = getelementptr i8, ptr %i.f, i64 64
  %i.s = getelementptr i8, ptr %i.f, i64 80
  %i.t = getelementptr i8, ptr %i.f, i64 96
  br label %.lr.ph143

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.loopexit
  %.050142 = phi i32 [ %.3, %.loopexit ], [ 0, %.lr.ph143.preheader ] ; 3 uses
  %.052141 = phi i32 [ %.456, %.loopexit ], [ %i.l, %.lr.ph143.preheader ] ; 2 uses
  %.065140 = phi ptr [ %.469, %.loopexit ], [ %3, %.lr.ph143.preheader ] ; 22 uses
  %.065140236 = ptrtoaddr ptr %.065140 to i64
  %i.u = add i32 %.050142, 1                      ; 2 uses
  %i.v = sext i32 %.050142 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !135   ; 4 uses
  %i.y = and i8 %i.x, 127                         ; 3 uses
  %i.z = zext nneg i8 %i.y to i32                 ; 5 uses
  %.not83 = icmp eq i8 %i.y, 0
  br i1 %.not83, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph143
  %.not84 = icmp sgt i8 %i.x, -1
  %i.aa = sext i32 %i.u to i64                    ; 14 uses
  br i1 %.not84, label %.loopexit.loopexit, label %iter.check251

iter.check251:                                    ; preds = %bb.e
  %i.ab = and i8 %i.x, 127                        ; 3 uses
  %i.ac = zext nneg i8 %i.ab to i64               ; 5 uses
  %min.iters.check238 = icmp samesign ult i8 %i.ab, 4
  br i1 %min.iters.check238, label %.preheader.preheader, label %vector.memcheck239

vector.memcheck239:                               ; preds = %iter.check251
  %i.ad = add i64 %i.g, %i.aa
  %i.ae = sub i64 %i.ad, %.065140236
  %diff.check = icmp ugt i64 %i.ae, -16
  br i1 %diff.check, label %.preheader.preheader, label %vector.main.loop.iter.check240

vector.main.loop.iter.check240:                   ; preds = %vector.memcheck239
  %min.iters.check241 = icmp samesign ult i8 %i.ab, 16
  br i1 %min.iters.check241, label %vec.epilog.ph255, label %vector.ph242

vector.ph242:                                     ; preds = %vector.main.loop.iter.check240
  %i.af = and i64 %i.ac, 12
  %n.vec243 = and i64 %i.ac, 112                  ; 11 uses
  %i.ag = add nsw i64 %n.vec243, %i.aa            ; 2 uses
  %i.ah = trunc nuw nsw i64 %n.vec243 to i32
  %i.ai = sub nsw i32 %i.z, %i.ah
  %i.aj = getelementptr i8, ptr %.065140, i64 %n.vec243 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.f, i64 %i.aa   ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %wide.load = load <8 x i8>, ptr %i.ak, align 1, !tbaa !135
  %wide.load247 = load <8 x i8>, ptr %i.al, align 1, !tbaa !135
  %i.am = getelementptr i8, ptr %.065140, i64 8
  store <8 x i8> %wide.load, ptr %.065140, align 1, !tbaa !135
  store <8 x i8> %wide.load247, ptr %i.am, align 1, !tbaa !135
  %i.an = icmp eq i64 %n.vec243, 16
  br i1 %i.an, label %middle.block249, label %vector.body244.1

vector.body244.1:                                 ; preds = %vector.ph242
  %next.gep246.1 = getelementptr i8, ptr %.065140, i64 16
  %i.ao = getelementptr i8, ptr %i.o, i64 %i.aa   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %wide.load.1 = load <8 x i8>, ptr %i.ao, align 1, !tbaa !135
  %wide.load247.1 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !135
  %i.aq = getelementptr i8, ptr %.065140, i64 24
  store <8 x i8> %wide.load.1, ptr %next.gep246.1, align 1, !tbaa !135
  store <8 x i8> %wide.load247.1, ptr %i.aq, align 1, !tbaa !135
  %i.ar = icmp eq i64 %n.vec243, 32
  br i1 %i.ar, label %middle.block249, label %vector.body244.2

vector.body244.2:                                 ; preds = %vector.body244.1
  %next.gep246.2 = getelementptr i8, ptr %.065140, i64 32
  %i.as = getelementptr i8, ptr %i.p, i64 %i.aa   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %wide.load.2 = load <8 x i8>, ptr %i.as, align 1, !tbaa !135
  %wide.load247.2 = load <8 x i8>, ptr %i.at, align 1, !tbaa !135
  %i.au = getelementptr i8, ptr %.065140, i64 40
  store <8 x i8> %wide.load.2, ptr %next.gep246.2, align 1, !tbaa !135
  store <8 x i8> %wide.load247.2, ptr %i.au, align 1, !tbaa !135
  %i.av = icmp eq i64 %n.vec243, 48
  br i1 %i.av, label %middle.block249, label %vector.body244.3

vector.body244.3:                                 ; preds = %vector.body244.2
  %next.gep246.3 = getelementptr i8, ptr %.065140, i64 48
  %i.aw = getelementptr i8, ptr %i.q, i64 %i.aa   ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %wide.load.3 = load <8 x i8>, ptr %i.aw, align 1, !tbaa !135
  %wide.load247.3 = load <8 x i8>, ptr %i.ax, align 1, !tbaa !135
  %i.ay = getelementptr i8, ptr %.065140, i64 56
  store <8 x i8> %wide.load.3, ptr %next.gep246.3, align 1, !tbaa !135
  store <8 x i8> %wide.load247.3, ptr %i.ay, align 1, !tbaa !135
  %i.az = icmp eq i64 %n.vec243, 64
  br i1 %i.az, label %middle.block249, label %vector.body244.4

vector.body244.4:                                 ; preds = %vector.body244.3
  %next.gep246.4 = getelementptr i8, ptr %.065140, i64 64
  %i.ba = getelementptr i8, ptr %i.r, i64 %i.aa   ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %wide.load.4 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !135
  %wide.load247.4 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !135
  %i.bc = getelementptr i8, ptr %.065140, i64 72
  store <8 x i8> %wide.load.4, ptr %next.gep246.4, align 1, !tbaa !135
  store <8 x i8> %wide.load247.4, ptr %i.bc, align 1, !tbaa !135
  %i.bd = icmp eq i64 %n.vec243, 80
  br i1 %i.bd, label %middle.block249, label %vector.body244.5

vector.body244.5:                                 ; preds = %vector.body244.4
  %next.gep246.5 = getelementptr i8, ptr %.065140, i64 80
  %i.be = getelementptr i8, ptr %i.s, i64 %i.aa   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %wide.load.5 = load <8 x i8>, ptr %i.be, align 1, !tbaa !135
  %wide.load247.5 = load <8 x i8>, ptr %i.bf, align 1, !tbaa !135
  %i.bg = getelementptr i8, ptr %.065140, i64 88
  store <8 x i8> %wide.load.5, ptr %next.gep246.5, align 1, !tbaa !135
  store <8 x i8> %wide.load247.5, ptr %i.bg, align 1, !tbaa !135
  %i.bh = icmp eq i64 %n.vec243, 96
  br i1 %i.bh, label %middle.block249, label %vector.body244.6

vector.body244.6:                                 ; preds = %vector.body244.5
  %next.gep246.6 = getelementptr i8, ptr %.065140, i64 96
  %i.bi = getelementptr i8, ptr %i.t, i64 %i.aa   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.load.6 = load <8 x i8>, ptr %i.bi, align 1, !tbaa !135
  %wide.load247.6 = load <8 x i8>, ptr %i.bj, align 1, !tbaa !135
  %i.bk = getelementptr i8, ptr %.065140, i64 104
  store <8 x i8> %wide.load.6, ptr %next.gep246.6, align 1, !tbaa !135
  store <8 x i8> %wide.load247.6, ptr %i.bk, align 1, !tbaa !135
  br label %middle.block249

middle.block249:                                  ; preds = %vector.body244.6, %vector.body244.5, %vector.body244.4, %vector.body244.3, %vector.body244.2, %vector.body244.1, %vector.ph242
  %cmp.n250 = icmp eq i64 %n.vec243, %i.ac
  br i1 %cmp.n250, label %.loopexit.loopexit149, label %vec.epilog.iter.check252

vec.epilog.iter.check252:                         ; preds = %middle.block249
  %min.epilog.iters.check254 = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check254, label %.preheader.preheader, label %vec.epilog.ph255, !prof !207

vec.epilog.ph255:                                 ; preds = %vector.main.loop.iter.check240, %vec.epilog.iter.check252
  %vec.epilog.resume.val256 = phi i64 [ %n.vec243, %vec.epilog.iter.check252 ], [ 0, %vector.main.loop.iter.check240 ]
  %n.vec257 = and i64 %i.ac, 124                  ; 5 uses
  %i.bl = add nsw i64 %n.vec257, %i.aa            ; 2 uses
  %i.bm = trunc nuw nsw i64 %n.vec257 to i32
  %i.bn = sub nsw i32 %i.z, %i.bm
  %i.bo = getelementptr i8, ptr %.065140, i64 %n.vec257 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.f, i64 %i.aa
  br label %vec.epilog.vector.body258

vec.epilog.vector.body258:                        ; preds = %vec.epilog.vector.body258, %vec.epilog.ph255
  %index259 = phi i64 [ %vec.epilog.resume.val256, %vec.epilog.ph255 ], [ %index.next262, %vec.epilog.vector.body258 ] ; 3 uses
  %next.gep260 = getelementptr i8, ptr %.065140, i64 %index259
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index259
  %wide.load261 = load <4 x i8>, ptr %gep, align 1, !tbaa !135
  store <4 x i8> %wide.load261, ptr %next.gep260, align 1, !tbaa !135
  %index.next262 = add nuw i64 %index259, 4       ; 2 uses
  %i.bp = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.bp, label %vec.epilog.middle.block263, label %vec.epilog.vector.body258, !llvm.loop !416

vec.epilog.middle.block263:                       ; preds = %vec.epilog.vector.body258
  %cmp.n264 = icmp eq i64 %n.vec257, %i.ac
  br i1 %cmp.n264, label %.loopexit.loopexit149, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check251, %vector.memcheck239, %vec.epilog.iter.check252, %vec.epilog.middle.block263
  %indvars.iv163.ph = phi i64 [ %i.aa, %iter.check251 ], [ %i.aa, %vector.memcheck239 ], [ %i.ag, %vec.epilog.iter.check252 ], [ %i.bl, %vec.epilog.middle.block263 ] ; 2 uses
  %.048136.ph = phi i32 [ %i.z, %iter.check251 ], [ %i.z, %vector.memcheck239 ], [ %i.ai, %vec.epilog.iter.check252 ], [ %i.bn, %vec.epilog.middle.block263 ] ; 4 uses
  %.166133.ph = phi ptr [ %.065140, %iter.check251 ], [ %.065140, %vector.memcheck239 ], [ %i.aj, %vec.epilog.iter.check252 ], [ %i.bo, %vec.epilog.middle.block263 ] ; 2 uses
  %i.bq = add nsw i32 %.048136.ph, -1
  %xtraiter281 = and i32 %.048136.ph, 3           ; 2 uses
  %lcmp.mod282.not = icmp eq i32 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %indvars.iv163.prol = phi i64 [ %indvars.iv.next164.prol, %.preheader.prol ], [ %indvars.iv163.ph, %.preheader.preheader ] ; 2 uses
  %.048136.prol = phi i32 [ %i.br, %.preheader.prol ], [ %.048136.ph, %.preheader.preheader ]
  %.166133.prol = phi ptr [ %i.bu, %.preheader.prol ], [ %.166133.ph, %.preheader.preheader ] ; 2 uses
  %prol.iter283 = phi i32 [ %prol.iter283.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.br = add nsw i32 %.048136.prol, -1           ; 2 uses
  %indvars.iv.next164.prol = add nsw i64 %indvars.iv163.prol, 1 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv163.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !135
  %i.bu = getelementptr inbounds nuw i8, ptr %.166133.prol, i64 1 ; 3 uses
  store i8 %i.bt, ptr %.166133.prol, align 1, !tbaa !135
  %prol.iter283.next = add i32 %prol.iter283, 1   ; 2 uses
  %prol.iter283.cmp.not = icmp eq i32 %prol.iter283.next, %xtraiter281
  br i1 %prol.iter283.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !417

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv.next164.lcssa270.unr = phi i64 [ poison, %.preheader.preheader ], [ %indvars.iv.next164.prol, %.preheader.prol ]
  %.lcssa269.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.bu, %.preheader.prol ]
  %indvars.iv163.unr = phi i64 [ %indvars.iv163.ph, %.preheader.preheader ], [ %indvars.iv.next164.prol, %.preheader.prol ]
  %.048136.unr = phi i32 [ %.048136.ph, %.preheader.preheader ], [ %i.br, %.preheader.prol ]
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18SgiInput22uncompress_rle_channelEiiPh:bb.a
  %indvars.iv.next164.3 = add nsw i64 %indvars.iv163, 4 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.f, i64 %indvars.iv163
  %i.cj = getelementptr i8, ptr %i.ci, i64 3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !135
  %i.cl = getelementptr inbounds nuw i8, ptr %.166133, i64 4 ; 2 uses
  store i8 %i.ck, ptr %i.cg, align 1, !tbaa !135
  %.not86.3 = icmp eq i32 %i.ch, 0
  br i1 %.not86.3, label %.loopexit.loopexit149, label %.preheader, !llvm.loop !418

.loopexit.loopexit:                               ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.aa
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !135
  %i.co = zext nneg i8 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.065140, i8 %i.cn, i64 range(i64 0, 128) %i.co, i1 false), !tbaa !135
  %i.cp = add nsw i32 %.050142, 2
  %i.cq = zext nneg i8 %i.y to i64
  %i.cr = getelementptr i8, ptr %.065140, i64 %i.cq
  br label %.loopexit

.loopexit.loopexit149:                            ; preds = %.preheader.prol.loopexit, %.preheader, %vec.epilog.middle.block263, %middle.block249
  %indvars.iv.next164.lcssa = phi i64 [ %i.bl, %vec.epilog.middle.block263 ], [ %i.ag, %middle.block249 ], [ %indvars.iv.next164.lcssa270.unr, %.preheader.prol.loopexit ], [ %indvars.iv.next164.3, %.preheader ]
  %.lcssa = phi ptr [ %i.bo, %vec.epilog.middle.block263 ], [ %i.aj, %middle.block249 ], [ %.lcssa269.unr, %.preheader.prol.loopexit ], [ %i.cl, %.preheader ]
  %i.cs = trunc nsw i64 %indvars.iv.next164.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit149, %.loopexit.loopexit
  %.469 = phi ptr [ %i.cr, %.loopexit.loopexit ], [ %.lcssa, %.loopexit.loopexit149 ]
  %.3 = phi i32 [ %i.cp, %.loopexit.loopexit ], [ %i.cs, %.loopexit.loopexit149 ] ; 3 uses
  %.456 = sub i32 %.052141, %i.z                  ; 2 uses
  %i.ct = icmp slt i32 %.3, %2
  br i1 %i.ct, label %.lr.ph143, label %.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit115
  %.4128 = phi i32 [ %.7, %.loopexit115 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.557127 = phi i32 [ %.9, %.loopexit115 ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.570126 = phi ptr [ %.974, %.loopexit115 ], [ %3, %.lr.ph.preheader ] ; 28 uses
  %i.cu = sext i32 %.4128 to i64                  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.f, i64 %i.cu   ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !135 ; 6 uses
  %i.cy = add i32 %.4128, 2                       ; 2 uses
  %i.cz = and i8 %i.cx, 127                       ; 2 uses
  %.not = icmp eq i8 %i.cz, 0
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.da = zext nneg i8 %i.cz to i32               ; 10 uses
  %.not80 = icmp sgt i8 %i.cx, -1
  %i.db = sext i32 %i.cy to i64                   ; 8 uses
  br i1 %.not80, label %iter.check, label %.preheader114.preheader

.preheader114.preheader:                          ; preds = %bb.f
  %i.dc = and i8 %i.cx, 127                       ; 2 uses
  %i.dd = zext nneg i8 %i.dc to i64               ; 2 uses
  %min.iters.check217 = icmp samesign ult i8 %i.dc, 16
  br i1 %min.iters.check217, label %.preheader114.preheader271, label %vector.memcheck218

vector.memcheck218:                               ; preds = %.preheader114.preheader
  %i.de = add nsw i32 %i.da, -1
  %i.df = zext i32 %i.de to i64
  %i.dg = shl nuw nsw i64 %i.df, 1                ; 2 uses
  %i.dh = getelementptr i8, ptr %.570126, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 2
  %i.dj = getelementptr i8, ptr %i.f, i64 %i.db
  %i.dk = getelementptr i8, ptr %scevgep216, i64 %i.dg
  %i.dl = getelementptr i8, ptr %i.dk, i64 %i.db
  %bound0219 = icmp ult ptr %.570126, %i.dl
  %bound1220 = icmp ult ptr %i.dj, %i.di
  %found.conflict221 = and i1 %bound0219, %bound1220
  br i1 %found.conflict221, label %.preheader114.preheader271, label %vector.ph222

vector.ph222:                                     ; preds = %vector.memcheck218
  %n.vec223 = and i64 %i.dd, 120                  ; 4 uses
  %i.dm = shl nuw nsw i64 %n.vec223, 1            ; 2 uses
  %i.dn = add nsw i64 %i.dm, %i.db                ; 2 uses
  %i.do = trunc nuw nsw i64 %n.vec223 to i32
  %i.dp = sub nsw i32 %i.da, %i.do
  %i.dq = getelementptr i8, ptr %.570126, i64 %i.dm ; 2 uses
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph222
  %index225 = phi i64 [ 0, %vector.ph222 ], [ %index.next228, %vector.body224 ] ; 2 uses
  %i.dr = shl i64 %index225, 1                    ; 2 uses
  %i.ds = add i64 %i.dr, %i.db                    ; 8 uses
  %next.gep226 = getelementptr i8, ptr %.570126, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.du = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 2
  %i.dw = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 4
  %i.dy = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.dz = getelementptr i8, ptr %i.dy, i64 6
  %i.ea = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 10
  %i.ee = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 12
  %i.eg = getelementptr i8, ptr %i.f, i64 %i.ds   ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 14
  %i.ei = load i8, ptr %i.dt, align 1, !tbaa !135, !alias.scope !433
  %i.ej = load i8, ptr %i.dv, align 1, !tbaa !135, !alias.scope !433
  %i.ek = load i8, ptr %i.dx, align 1, !tbaa !135, !alias.scope !433
  %i.el = load i8, ptr %i.dz, align 1, !tbaa !135, !alias.scope !433
  %i.em = load i8, ptr %i.eb, align 1, !tbaa !135, !alias.scope !433
  %i.en = load i8, ptr %i.ed, align 1, !tbaa !135, !alias.scope !433
  %i.eo = load i8, ptr %i.ef, align 1, !tbaa !135, !alias.scope !433
  %i.ep = load i8, ptr %i.eh, align 1, !tbaa !135, !alias.scope !433
  %i.eq = insertelement <8 x i8> poison, i8 %i.ei, i64 0
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 1
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 2
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 3
  %i.eu = insertelement <8 x i8> %i.et, i8 %i.em, i64 4
  %i.ev = insertelement <8 x i8> %i.eu, i8 %i.en, i64 5
  %i.ew = insertelement <8 x i8> %i.ev, i8 %i.eo, i64 6
  %i.ex = insertelement <8 x i8> %i.ew, i8 %i.ep, i64 7
  %i.ey = getelementptr i8, ptr %i.dt, i64 1
  %i.ez = getelementptr i8, ptr %i.du, i64 3
  %i.fa = getelementptr i8, ptr %i.dw, i64 5
  %i.fb = getelementptr i8, ptr %i.dy, i64 7
  %i.fc = getelementptr i8, ptr %i.ea, i64 9
  %i.fd = getelementptr i8, ptr %i.ec, i64 11
  %i.fe = getelementptr i8, ptr %i.ee, i64 13
  %i.ff = getelementptr i8, ptr %i.eg, i64 15
  %i.fg = load i8, ptr %i.ey, align 1, !tbaa !135, !alias.scope !433
  %i.fh = load i8, ptr %i.ez, align 1, !tbaa !135, !alias.scope !433
  %i.fi = load i8, ptr %i.fa, align 1, !tbaa !135, !alias.scope !433
  %i.fj = load i8, ptr %i.fb, align 1, !tbaa !135, !alias.scope !433
  %i.fk = load i8, ptr %i.fc, align 1, !tbaa !135, !alias.scope !433
  %i.fl = load i8, ptr %i.fd, align 1, !tbaa !135, !alias.scope !433
  %i.fm = load i8, ptr %i.fe, align 1, !tbaa !135, !alias.scope !433
  %i.fn = load i8, ptr %i.ff, align 1, !tbaa !135, !alias.scope !433
  %i.fo = insertelement <8 x i8> poison, i8 %i.fg, i64 0
  %i.fp = insertelement <8 x i8> %i.fo, i8 %i.fh, i64 1
  %i.fq = insertelement <8 x i8> %i.fp, i8 %i.fi, i64 2
  %i.fr = insertelement <8 x i8> %i.fq, i8 %i.fj, i64 3
  %i.fs = insertelement <8 x i8> %i.fr, i8 %i.fk, i64 4
  %i.ft = insertelement <8 x i8> %i.fs, i8 %i.fl, i64 5
  %i.fu = insertelement <8 x i8> %i.ft, i8 %i.fm, i64 6
  %i.fv = insertelement <8 x i8> %i.fu, i8 %i.fn, i64 7
  %interleaved.vec227 = shufflevector <8 x i8> %i.ex, <8 x i8> %i.fv, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec227, ptr %next.gep226, align 1, !tbaa !135, !alias.scope !434, !noalias !433
  %index.next228 = add nuw i64 %index225, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next228, %n.vec223
  br i1 %i.fw, label %middle.block229, label %vector.body224, !llvm.loop !422

middle.block229:                                  ; preds = %vector.body224
  %cmp.n230 = icmp eq i64 %n.vec223, %i.dd
  br i1 %cmp.n230, label %.loopexit115.loopexit, label %.preheader114.preheader271

.preheader114.preheader271:                       ; preds = %vector.memcheck218, %.preheader114.preheader, %middle.block229
  %indvars.iv.ph = phi i64 [ %i.db, %vector.memcheck218 ], [ %i.db, %.preheader114.preheader ], [ %i.dn, %middle.block229 ] ; 2 uses
  %.0122.ph = phi i32 [ %i.da, %vector.memcheck218 ], [ %i.da, %.preheader114.preheader ], [ %i.dp, %middle.block229 ] ; 4 uses
  %.671119.ph = phi ptr [ %.570126, %vector.memcheck218 ], [ %.570126, %.preheader114.preheader ], [ %i.dq, %middle.block229 ] ; 2 uses
  %i.fx = add nsw i32 %.0122.ph, -1
  %xtraiter = and i32 %.0122.ph, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader114.prol.loopexit, label %.preheader114.prol

.preheader114.prol:                               ; preds = %.preheader114.preheader271, %.preheader114.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader114.prol ], [ %indvars.iv.ph, %.preheader114.preheader271 ] ; 2 uses
  %.0122.prol = phi i32 [ %i.fy, %.preheader114.prol ], [ %.0122.ph, %.preheader114.preheader271 ]
  %.671119.prol = phi ptr [ %i.ge, %.preheader114.prol ], [ %.671119.ph, %.preheader114.preheader271 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.preheader114.prol ], [ 0, %.preheader114.preheader271 ]
  %i.fy = add nsw i32 %.0122.prol, -1             ; 2 uses
  %i.fz = getelementptr i8, ptr %i.f, i64 %indvars.iv.prol ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !135
  %i.gb = getelementptr inbounds nuw i8, ptr %.671119.prol, i64 1
  store i8 %i.ga, ptr %.671119.prol, align 1, !tbaa !135
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 2 ; 3 uses
  %i.gc = getelementptr i8, ptr %i.fz, i64 1
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !135
  %i.ge = getelementptr inbounds nuw i8, ptr %.671119.prol, i64 2 ; 3 uses
  store i8 %i.gd, ptr %i.gb, align 1, !tbaa !135
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader114.prol.loopexit, label %.preheader114.prol, !llvm.loop !423

.preheader114.prol.loopexit:                      ; preds = %.preheader114.prol, %.preheader114.preheader271
  %indvars.iv.next.lcssa276.unr = phi i64 [ poison, %.preheader114.preheader271 ], [ %indvars.iv.next.prol, %.preheader114.prol ]
  %.lcssa275.unr = phi ptr [ poison, %.preheader114.preheader271 ], [ %i.ge, %.preheader114.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader114.preheader271 ], [ %indvars.iv.next.prol, %.preheader114.prol ]
  %.0122.unr = phi i32 [ %.0122.ph, %.preheader114.preheader271 ], [ %i.fy, %.preheader114.prol ]
  %.671119.unr = phi ptr [ %.671119.ph, %.preheader114.preheader271 ], [ %i.ge, %.preheader114.prol ]
  %i.gf = icmp ult i32 %i.fx, 3
  br i1 %i.gf, label %.loopexit115.loopexit, label %.preheader114

iter.check:                                       ; preds = %bb.f
  %i.gg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.db ; 8 uses
  %i.gh = getelementptr i8, ptr %i.cv, i64 3      ; 8 uses
  %i.gi = zext nneg i8 %i.cx to i64               ; 5 uses
  %min.iters.check = icmp ult i8 %i.cx, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.gj = add nsw i32 %i.da, -1
  %i.gk = zext i32 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 1
  %i.gm = getelementptr i8, ptr %.570126, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.gm, i64 2      ; 2 uses
  %i.go = getelementptr i8, ptr %scevgep187, i64 %i.cu
  %i.gp = getelementptr i8, ptr %scevgep, i64 %i.db
  %bound0 = icmp ult ptr %.570126, %i.go
  %bound1 = icmp ult ptr %i.gh, %i.gn
  %found.conflict = and i1 %bound0, %bound1
  %bound0188 = icmp ult ptr %.570126, %i.gp
  %bound1189 = icmp ult ptr %i.gg, %i.gn
  %found.conflict190 = and i1 %bound0188, %bound1189
  %conflict.rdx = or i1 %found.conflict, %found.conflict190
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check191 = icmp ult i8 %i.cx, 16
  br i1 %min.iters.check191, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gq = and i64 %i.gi, 12
  %n.vec = and i64 %i.gi, 112                     ; 10 uses
  %i.gr = trunc nuw nsw i64 %n.vec to i32
  %i.gs = sub nsw i32 %i.da, %i.gr
  %i.gt = shl nuw nsw i64 %n.vec, 1
  %i.gu = getelementptr i8, ptr %.570126, i64 %i.gt ; 2 uses
  %i.gv = load i8, ptr %i.gg, align 1, !tbaa !135, !alias.scope !435
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.gv, i64 0 ; 7 uses
  %i.gw = load i8, ptr %i.gh, align 1, !tbaa !135, !alias.scope !436
  %broadcast.splatinsert193 = insertelement <8 x i8> poison, i8 %i.gw, i64 0 ; 7 uses
  %next.gep192 = getelementptr i8, ptr %.570126, i64 16
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert193, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec, ptr %.570126, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  store <16 x i8> %interleaved.vec, ptr %next.gep192, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  %i.gx = icmp eq i64 %n.vec, 16
  br i1 %i.gx, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.570126, i64 32
  %next.gep192.1 = getelementptr i8, ptr %.570126, i64 48
  %interleaved.vec.1 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert193, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec.1, ptr %next.gep.1, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  store <16 x i8> %interleaved.vec.1, ptr %next.gep192.1, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  %i.gy = icmp eq i64 %n.vec, 32
  br i1 %i.gy, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %.570126, i64 64
  %next.gep192.2 = getelementptr i8, ptr %.570126, i64 80
  %interleaved.vec.2 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert193, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec.2, ptr %next.gep.2, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  store <16 x i8> %interleaved.vec.2, ptr %next.gep192.2, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  %i.gz = icmp eq i64 %n.vec, 48
  br i1 %i.gz, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %.570126, i64 96
  %next.gep192.3 = getelementptr i8, ptr %.570126, i64 112
  %interleaved.vec.3 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert193, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec.3, ptr %next.gep.3, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  store <16 x i8> %interleaved.vec.3, ptr %next.gep192.3, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  %i.ha = icmp eq i64 %n.vec, 64
  br i1 %i.ha, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %.570126, i64 128
  %next.gep192.4 = getelementptr i8, ptr %.570126, i64 144
  %interleaved.vec.4 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert193, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec.4, ptr %next.gep.4, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  store <16 x i8> %interleaved.vec.4, ptr %next.gep192.4, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  %i.hb = icmp eq i64 %n.vec, 80
  br i1 %i.hb, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %next.gep.5 = getelementptr i8, ptr %.570126, i64 160
  %next.gep192.5 = getelementptr i8, ptr %.570126, i64 176
  %interleaved.vec.5 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert193, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec.5, ptr %next.gep.5, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  store <16 x i8> %interleaved.vec.5, ptr %next.gep192.5, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  %i.hc = icmp eq i64 %n.vec, 96
  br i1 %i.hc, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %next.gep.6 = getelementptr i8, ptr %.570126, i64 192
  %next.gep192.6 = getelementptr i8, ptr %.570126, i64 208
  %interleaved.vec.6 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %broadcast.splatinsert193, <16 x i32> <i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8, i32 0, i32 8> ; 2 uses
  store <16 x i8> %interleaved.vec.6, ptr %next.gep.6, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  store <16 x i8> %interleaved.vec.6, ptr %next.gep192.6, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.gi
  br i1 %cmp.n, label %.loopexit268, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gq, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !207

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec196 = and i64 %i.gi, 124                  ; 4 uses
  %i.hd = trunc nuw nsw i64 %n.vec196 to i32
  %i.he = sub nsw i32 %i.da, %i.hd
  %i.hf = shl nuw nsw i64 %n.vec196, 1
  %i.hg = getelementptr i8, ptr %.570126, i64 %i.hf ; 2 uses
  %i.hh = load i8, ptr %i.gg, align 1, !tbaa !135, !alias.scope !435
  %broadcast.splatinsert199 = insertelement <4 x i8> poison, i8 %i.hh, i64 0
  %i.hi = load i8, ptr %i.gh, align 1, !tbaa !135, !alias.scope !436
  %broadcast.splatinsert201 = insertelement <4 x i8> poison, i8 %i.hi, i64 0
  %interleaved.vec203 = shufflevector <4 x i8> %broadcast.splatinsert199, <4 x i8> %broadcast.splatinsert201, <8 x i32> <i32 0, i32 4, i32 0, i32 4, i32 0, i32 4, i32 0, i32 4>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index197 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next204, %vec.epilog.vector.body ] ; 2 uses
  %i.hj = shl i64 %index197, 1
  %next.gep198 = getelementptr i8, ptr %.570126, i64 %i.hj
  store <8 x i8> %interleaved.vec203, ptr %next.gep198, align 1, !tbaa !135, !alias.scope !437, !noalias !438
  %index.next204 = add nuw i64 %index197, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next204, %n.vec196
  br i1 %i.hk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !428

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n205 = icmp eq i64 %n.vec196, %i.gi
  br i1 %cmp.n205, label %.loopexit268, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1125.ph = phi i32 [ %i.da, %iter.check ], [ %i.da, %vector.memcheck ], [ %i.gs, %vec.epilog.iter.check ], [ %i.he, %vec.epilog.middle.block ] ; 4 uses
  %.772123.ph = phi ptr [ %.570126, %iter.check ], [ %.570126, %vector.memcheck ], [ %i.gu, %vec.epilog.iter.check ], [ %i.hg, %vec.epilog.middle.block ] ; 2 uses
  %i.hl = add nsw i32 %.1125.ph, -1
  %xtraiter278 = and i32 %.1125.ph, 3             ; 2 uses
  %lcmp.mod279.not = icmp eq i32 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.1125.prol = phi i32 [ %i.hm, %vec.epilog.scalar.ph.prol ], [ %.1125.ph, %vec.epilog.scalar.ph.preheader ]
  %.772123.prol = phi ptr [ %i.hq, %vec.epilog.scalar.ph.prol ], [ %.772123.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter280 = phi i32 [ %prol.iter280.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.hm = add nsw i32 %.1125.prol, -1             ; 2 uses
  %i.hn = load i8, ptr %i.gg, align 1, !tbaa !135
  %i.ho = getelementptr inbounds nuw i8, ptr %.772123.prol, i64 1
  store i8 %i.hn, ptr %.772123.prol, align 1, !tbaa !135
  %i.hp = load i8, ptr %i.gh, align 1, !tbaa !135
  %i.hq = getelementptr inbounds nuw i8, ptr %.772123.prol, i64 2 ; 3 uses
  store i8 %i.hp, ptr %i.ho, align 1, !tbaa !135
  %prol.iter280.next = add i32 %prol.iter280, 1   ; 2 uses
  %prol.iter280.cmp.not = icmp eq i32 %prol.iter280.next, %xtraiter278
  br i1 %prol.iter280.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !429

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa277.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.hq, %vec.epilog.scalar.ph.prol ]
  %.1125.unr = phi i32 [ %.1125.ph, %vec.epilog.scalar.ph.preheader ], [ %i.hm, %vec.epilog.scalar.ph.prol ]
  %.772123.unr = phi ptr [ %.772123.ph, %vec.epilog.scalar.ph.preheader ], [ %i.hq, %vec.epilog.scalar.ph.prol ]
  %i.hr = icmp ult i32 %i.hl, 3
  br i1 %i.hr, label %.loopexit268, label %vec.epilog.scalar.ph

.preheader114:                                    ; preds = %.preheader114.prol.loopexit, %.preheader114
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader114 ], [ %indvars.iv.unr, %.preheader114.prol.loopexit ] ; 5 uses
  %.0122 = phi i32 [ %i.im, %.preheader114 ], [ %.0122.unr, %.preheader114.prol.loopexit ]
  %.671119 = phi ptr [ %i.it, %.preheader114 ], [ %.671119.unr, %.preheader114.prol.loopexit ] ; 9 uses
  %i.hs = getelementptr i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !135
  %i.hu = getelementptr inbounds nuw i8, ptr %.671119, i64 1
  store i8 %i.ht, ptr %.671119, align 1, !tbaa !135
  %i.hv = getelementptr i8, ptr %i.hs, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !135
  %i.hx = getelementptr inbounds nuw i8, ptr %.671119, i64 2
  store i8 %i.hw, ptr %i.hu, align 1, !tbaa !135
  %i.hy = getelementptr i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 2
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !135
  %i.ib = getelementptr inbounds nuw i8, ptr %.671119, i64 3
  store i8 %i.ia, ptr %i.hx, align 1, !tbaa !135
  %i.ic = getelementptr i8, ptr %i.hy, i64 3
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !135
  %i.ie = getelementptr inbounds nuw i8, ptr %.671119, i64 4
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !135
  %i.if = getelementptr i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 4
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !135
  %i.ii = getelementptr inbounds nuw i8, ptr %.671119, i64 5
  store i8 %i.ih, ptr %i.ie, align 1, !tbaa !135
  %i.ij = getelementptr i8, ptr %i.if, i64 5
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !135
  %i.il = getelementptr inbounds nuw i8, ptr %.671119, i64 6
  store i8 %i.ik, ptr %i.ii, align 1, !tbaa !135
  %i.im = add nsw i32 %.0122, -4                  ; 2 uses
  %i.in = getelementptr i8, ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.io = getelementptr i8, ptr %i.in, i64 6
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !135
  %i.iq = getelementptr inbounds nuw i8, ptr %.671119, i64 7
  store i8 %i.ip, ptr %i.il, align 1, !tbaa !135
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 8 ; 2 uses
  %i.ir = getelementptr i8, ptr %i.in, i64 7
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !135
  %i.it = getelementptr inbounds nuw i8, ptr %.671119, i64 8 ; 2 uses
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !135
  %.not82.3 = icmp eq i32 %i.im, 0
  br i1 %.not82.3, label %.loopexit115.loopexit, label %.preheader114, !llvm.loop !430

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.1125 = phi i32 [ %i.jg, %vec.epilog.scalar.ph ], [ %.1125.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.772123 = phi ptr [ %i.jk, %vec.epilog.scalar.ph ], [ %.772123.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.iu = load i8, ptr %i.gg, align 1, !tbaa !135
  %i.iv = getelementptr inbounds nuw i8, ptr %.772123, i64 1
  store i8 %i.iu, ptr %.772123, align 1, !tbaa !135
  %i.iw = load i8, ptr %i.gh, align 1, !tbaa !135
  %i.ix = getelementptr inbounds nuw i8, ptr %.772123, i64 2
  store i8 %i.iw, ptr %i.iv, align 1, !tbaa !135
  %i.iy = load i8, ptr %i.gg, align 1, !tbaa !135
  %i.iz = getelementptr inbounds nuw i8, ptr %.772123, i64 3
  store i8 %i.iy, ptr %i.ix, align 1, !tbaa !135
end_hunk_1
begin_hunk_2_@llvm.bswap.v8i16
!238 = !{!"_ZTSN3fmt3v1211basic_specsE", !46, i64 0, !45, i64 4}
!239 = !{!238, !46, i64 0}
!240 = !{!"_ZTSN3fmt3v1212format_specsE", !238, i64 0, !46, i64 8, !46, i64 12}
!241 = !{!240, !46, i64 12}
!242 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !132, i64 0, !46, i64 8}
!243 = !{!242, !132, i64 0}
!244 = !{!242, !46, i64 8}
!245 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !128, i64 0}
!246 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !245, i64 0, !46, i64 8}
!247 = !{!246, !46, i64 8}
!248 = !{!"branch_weights", i32 4, i32 28}
!249 = !{!"p1 _ZTSNSt6locale5_ImplE", !128, i64 0}
!250 = !{!"_ZTSSt6locale", !249, i64 0}
!251 = !{!250, !249, i64 0}
!252 = !{!"any p2 pointer", !128, i64 0}
!253 = !{!"p2 _ZTSNSt6locale5facetE", !252, i64 0}
!254 = !{!"p2 omnipotent char", !252, i64 0}
!255 = !{!"_ZTSNSt6locale5_ImplE", !46, i64 0, !253, i64 8, !132, i64 16, !253, i64 24, !254, i64 32}
!256 = !{!255, !253, i64 8}
!257 = !{!"p1 _ZTSNSt6locale5facetE", !128, i64 0}
!258 = !{!257, !257, i64 0}
!259 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!260 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !157, i64 0, !45, i64 1}
!261 = !{!260, !157, i64 0}
!262 = !{!260, !45, i64 1}
!263 = !{!240, !46, i64 8}
!264 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !128, i64 0}
!265 = !{!264, !264, i64 0}
!266 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !45, i64 0}
!267 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !266, i64 0, !227, i64 16}
!268 = !{!267, !227, i64 16}
!269 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !229, i64 0}
!270 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !269, i64 0, !264, i64 8, !133, i64 16, !133, i64 48, !133, i64 80}
!271 = !{!270, !264, i64 8}
!272 = !{i64 4}
!273 = !{!136, !136, i64 0}
!274 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !128, i64 0}
!275 = !{!274, !274, i64 0}
!276 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !128, i64 0}
!277 = !{!276, !276, i64 0}
!278 = !{i64 8}
!279 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !129, i64 0, !129, i64 8, !46, i64 16}
!280 = !{!279, !129, i64 0}
!281 = !{!279, !129, i64 8}
!282 = !{!279, !46, i64 16}
!283 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !136, i64 0, !132, i64 8, !132, i64 16, !128, i64 24}
!284 = !{!283, !136, i64 0}
!285 = !{!283, !132, i64 16}
!286 = !{!283, !132, i64 8}
!287 = !{!231, !129, i64 0}
!288 = !{!231, !132, i64 8}
!289 = !{!"_ZTSN3fmt3v124signE", !45, i64 0}
!290 = !{!"_ZTSZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEEUlS4_E_", !289, i64 0, !129, i64 8}
!291 = !{!290, !289, i64 0}
!292 = !{!290, !129, i64 8}
!293 = !{!289, !289, i64 0}
!294 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !46, i64 0, !46, i64 4}
!295 = !{!294, !46, i64 4}
!296 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIfEE", !128, i64 0}
!297 = !{!296, !296, i64 0}
!298 = !{!"p1 _ZTSN3fmt3v126detail23fallback_digit_groupingIcEE", !128, i64 0}
!299 = !{!298, !298, i64 0}
!300 = !{!157, !157, i64 0}
!301 = !{!"p1 bool", !128, i64 0}
!302 = !{!301, !301, i64 0}
!303 = !{!294, !46, i64 0}
!304 = !{!"_ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !132, i64 0, !46, i64 8}
!305 = !{!304, !46, i64 8}
!306 = !{!"p1 _ZTSN3fmt3v126detail9dragonbox10decimal_fpIdEE", !128, i64 0}
!307 = !{!306, !306, i64 0}
!308 = !{!304, !132, i64 0}
!309 = !{!"_ZTSN3fmt3v126detail14big_decimal_fpE", !129, i64 0, !46, i64 8, !46, i64 12}
!310 = !{!309, !129, i64 0}
!311 = !{!309, !46, i64 8}
!312 = !{!309, !46, i64 12}
!313 = !{!"__int128", !45, i64 0}
!314 = !{!313, !313, i64 0}
!315 = !{!"_ZTSN3fmt3v126detail6bufferIjEE", !136, i64 0, !132, i64 8, !132, i64 16, !128, i64 24}
!316 = !{!315, !128, i64 24}
!317 = !{!315, !136, i64 0}
!318 = !{!315, !132, i64 16}
!319 = !{!"_ZTSN3fmt3v126detail9allocatorIjEE"}
!320 = !{!"_ZTSN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEE", !315, i64 0, !45, i64 32, !319, i64 160}
!321 = !{!"_ZTSN3fmt3v126detail6bigintE", !320, i64 0, !46, i64 168}
!322 = !{!321, !46, i64 168}
!323 = !{!315, !132, i64 8}
!324 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !289, i64 0, !309, i64 8, !46, i64 24, !45, i64 28, !46, i64 32, !45, i64 36, !46, i64 40}
!325 = !{!324, !289, i64 0}
!326 = !{!324, !46, i64 24}
!327 = !{!324, !45, i64 28}
!328 = !{!324, !46, i64 32}
!329 = !{!324, !45, i64 36}
!330 = !{!324, !46, i64 40}
!331 = !{!"p1 _ZTSN3fmt3v126detail14big_decimal_fpE", !128, i64 0}
!332 = !{!"_ZTSN3fmt3v126detail20thousands_sep_resultIcEE", !133, i64 0, !45, i64 32}
!333 = !{!332, !45, i64 32}
!334 = !{!"p1 _ZTSN3fmt3v126detail14named_arg_infoIcEE", !128, i64 0}
!335 = !{!"_ZTSN3fmt3v126detail15named_arg_valueIcEE", !334, i64 0, !132, i64 8}
!336 = !{!335, !132, i64 8}
!337 = !{!335, !334, i64 0}
!338 = !{!"_ZTSN3fmt3v126detail14named_arg_infoIcEE", !129, i64 0, !46, i64 8}
!339 = !{!338, !129, i64 0}
!340 = !{!338, !46, i64 8}
!341 = !{!"_ZTSN3fmt3v1211arg_id_kindE", !45, i64 0}
!342 = !{!341, !341, i64 0}
!343 = !{!"p1 _ZTSN3fmt3v1213parse_contextIcEE", !128, i64 0}
!344 = !{!"p1 _ZTSN3fmt3v126detail7arg_refIcEE", !128, i64 0}
!345 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !289, i64 0, !294, i64 4, !46, i64 12, !45, i64 16, !46, i64 20, !45, i64 24, !46, i64 28}
!346 = !{!345, !289, i64 0}
!347 = !{!345, !46, i64 12}
!348 = !{!345, !45, i64 16}
!349 = !{!345, !46, i64 20}
!350 = !{!345, !45, i64 24}
!351 = !{!345, !46, i64 28}
!352 = !{!"_ZTSZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS6_E_", !289, i64 0, !304, i64 8, !46, i64 24, !45, i64 28, !46, i64 32, !45, i64 36, !46, i64 40}
!353 = !{!352, !289, i64 0}
!354 = !{!352, !46, i64 24}
!355 = !{!352, !45, i64 28}
!356 = !{!352, !46, i64 32}
!357 = !{!352, !45, i64 36}
!358 = !{!352, !46, i64 40}
!359 = !{!"p1 long", !128, i64 0}
!360 = !{!359, !359, i64 0}
!361 = !{!"p1 _ZTSN3fmt3v1217basic_string_viewIcEE", !128, i64 0}
!362 = !{!361, !361, i64 0}
!363 = !{!"_ZTSZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEEUlS4_E_", !157, i64 0, !132, i64 8, !231, i64 16}
!364 = !{!363, !157, i64 0}
!365 = !{!363, !132, i64 8}
!366 = !{!"branch_weights", i32 8, i32 24}
!367 = !{!"_ZTSN3fmt3v126detail15counting_bufferIcEE", !222, i64 0, !45, i64 32, !132, i64 288}
!368 = !{!367, !132, i64 288}
!369 = !{i64 -3545120889382458029}
!370 = !{i64 -5697128315218316820}
!371 = !{i64 2877006238768800035}
!372 = !{i64 -9020293209949976236}
!373 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !45, i64 0}
!374 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !133, i64 8, !132, i64 40, !373, i64 48, !133, i64 56}
!375 = !{!374, !373, i64 48}
!376 = !{i64 -5391583502842834317}
!377 = !{i64 6963484173165552146}
!378 = !{!179, !141, i64 216}
!379 = !{!179, !141, i64 220}
!380 = !{!179, !46, i64 320}
!381 = !{!179, !141, i64 222}
!382 = !{i64 4923186802668006412}
!383 = distinct !{!383, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!384 = distinct !{!384, !383, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!385 = !{i64 8363323164546274250}
!386 = !{!384}
!387 = !{i64 -2945952193001555672}
!388 = distinct !{!388, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKtEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!389 = distinct !{!389, !388, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKtEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!390 = !{i64 -964384004343658441}
!391 = !{!389}
!392 = distinct !{!392, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!393 = distinct !{!393, !392, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!394 = !{i64 1474178531413108253}
!395 = !{!393}
!396 = !{i64 289533820676853666}
!397 = !{!147, !147, i64 0}
!398 = distinct !{!398, !185, !196, !197}
!399 = distinct !{!399, !185, !197, !196}
!400 = distinct !{!400, !185, !196, !197}
!401 = distinct !{!401, !185, !197, !196}
!402 = !{i64 8161008947300119710}
!403 = distinct !{!403, !185}
!404 = distinct !{!404, !185}
!405 = distinct !{!405, !185}
!406 = distinct !{!406, !185, !414}
!407 = distinct !{!407, !185, !196, !197}
!408 = distinct !{!408, !185, !196, !197}
!409 = distinct !{!409, !185, !197, !196}
!410 = !{i64 -8172869080569137041}
!411 = !{ptr @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii}
!412 = !{!174, !46, i64 24}
!413 = !{!174, !46, i64 68}
!414 = !{!"llvm.loop.unswitch.partial.disable"}
!415 = !{i64 60672982729720908}
!416 = distinct !{!416, !185, !196, !197}
!417 = distinct !{!417, !209}
!418 = distinct !{!418, !185, !196}
!419 = distinct !{!419, i1 false, !"LVerDomain"}
!420 = distinct !{!420, !419}
!421 = distinct !{!421, !419}
!422 = distinct !{!422, !185, !196, !197}
!423 = distinct !{!423, !209}
!424 = distinct !{!424, i1 false, !"LVerDomain"}
!425 = distinct !{!425, !424}
!426 = distinct !{!426, !424}
!427 = distinct !{!427, !424}
!428 = distinct !{!428, !185, !196, !197}
!429 = distinct !{!429, !209}
!430 = distinct !{!430, !185, !196}
!431 = distinct !{!431, !185, !196}
!432 = !{i64 1844208361326080391}
!433 = !{!420}
!434 = !{!421}
!435 = !{!425}
!436 = !{!426}
!437 = !{!427}
!438 = !{!426, !425}
!439 = !{i64 -3555127168131143096}
!440 = distinct !{!440, i1 true, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!441 = distinct !{!441, !440, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!442 = !{i64 -4240725089211584482}
!443 = !{!441}
!444 = !{i64 -2998464947033393737}
!445 = !{i64 1693974107491963053}
!446 = !{i64 8401973081200130493}
!447 = !{i64 6220230082200874885}
!448 = !{i64 1811062104544457328}
!449 = !{i64 2838759283864039672}
!450 = !{i64 3219668209341947561}
!451 = !{i64 5587545514920290176}
!452 = !{i64 -4178974663922791631}
!453 = !{i64 1080103601501470593}
!454 = !{i64 7437254063685089497}
!455 = distinct !{!455, !185, !196, !197}
!456 = distinct !{!456, !185, !196}
!457 = !{i64 1389587887819433420}
!458 = !{!148, !147, i64 8}
!459 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!460 = distinct !{!460, !185}
!461 = distinct !{!461, !185}
!462 = distinct !{!462, !185}
!463 = !{i64 -2170072498588590635}
!464 = !{i64 9183524793096391889}
!465 = distinct !{!465, !185}
!466 = !{i64 2282340871283944712}
!467 = distinct !{!467, !185}
!468 = !{i64 -2273644720160109364}
!469 = distinct !{!469, !185}
!470 = distinct !{!470, !185}
!471 = distinct !{!471, !185}
!472 = distinct !{!472, !185}
!473 = !{i64 3589610373384335006}
!474 = distinct !{!474, !185}
!475 = !{i64 1854331764394174020}
!476 = distinct !{!476, i1 true, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!477 = distinct !{!477, !476, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!478 = !{i64 -369095623553916744}
!479 = !{!477}
!480 = !{i64 -2516430898411598727}
!481 = !{!234, !234, i64 0}
!482 = !{i64 1952628124147264177}
!483 = distinct !{!483, i1 true, !"_ZNK3fmt3v127context3argEi"}
!484 = distinct !{!484, !483, !"_ZNK3fmt3v127context3argEi: argument 0"}
!485 = distinct !{!485, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!486 = distinct !{!486, !485, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!487 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!488 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!489 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!490 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!491 = distinct !{!491, i1 true, !"_ZNK3fmt3v127context3argEi"}
!492 = distinct !{!492, !491, !"_ZNK3fmt3v127context3argEi: argument 0"}
!493 = distinct !{!493, i1 true, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!494 = distinct !{!494, !493, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!495 = !{i64 -2666266725151822613}
!496 = !{!486, !484}
!497 = !{!245, !245, i64 0}
!498 = !{!494, !492}
!499 = distinct !{null, null, null}
!500 = !{i64 -3135875441855178464}
!501 = distinct !{null, null, null}
!502 = !{i64 -5572701155538487766}
!503 = !{i64 -8324377311504521191}
!504 = distinct !{null, null, null}
!505 = distinct !{null, null, null, null}
!506 = !{i64 6477584823286753418}
!507 = !{i64 -8268800200123281285}
!508 = !{i64 -6252869266858955514}
!509 = !{i64 4948949881611284945}
!510 = !{i64 -5857730773283876127}
!511 = distinct !{!511, !185, !196, !197}
!512 = distinct !{!512, !185, !196, !197}
!513 = distinct !{!513, !209}
!514 = distinct !{!514, !185, !196}
!515 = !{i64 5651567684617735017}
!516 = !{i64 -8089471563115576846}
!517 = !{i64 7503248256936106307}
!518 = !{i64 7717212498749888304}
!519 = !{i64 -1308000215756125731}
!520 = !{i64 7618045084794559408}
!521 = !{i64 -2780648851175233567}
!522 = !{!255, !132, i64 16}
!523 = distinct !{!523, !185}
!524 = distinct !{null, null, null, null}
!525 = distinct !{null, null, null, null, null}
!526 = distinct !{null, null, null}
!527 = distinct !{null, null, null, null}
!528 = distinct !{!528, !185}
!529 = !{i64 -4640559084671949267}
!530 = distinct !{!530, i1 true, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!531 = distinct !{!531, !530, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!532 = !{i64 695136209347525931}
!533 = !{!"_ZTSNSt6locale5facetE", !46, i64 8}
!534 = !{!533, !46, i64 8}
!535 = !{!531}
!536 = !{i64 -2784578510854232931}
!537 = !{i64 -8103091740100736531}
!538 = !{i64 2776121231483251800}
!539 = !{i64 -8790356914843661185}
!540 = !{i64 7017303549874765913}
!541 = !{i64 3819555812207679231}
!542 = !{i64 -909662215638426966}
!543 = !{i64 1836382479444119930}
!544 = !{i64 -1701889896340816787}
!545 = distinct !{!545, i1 true, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!546 = distinct !{!546, !545, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!547 = !{i64 -7928703258035308831}
!548 = !{!546}
!549 = distinct !{!549, i1 true, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!550 = distinct !{!550, !549, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!551 = !{i64 -4871378369812028358}
!552 = !{!550}
!553 = distinct !{!553, !185}
!554 = distinct !{!554, !185}
!555 = !{i64 -1269039135655291357}
!556 = !{i64 -5728392461037242186}
!557 = distinct !{null, null, null, null}
!558 = distinct !{!558, !185}
!559 = !{i64 3410810621175582207}
!560 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !136, i64 0, !274, i64 8, !276, i64 16}
!561 = !{!560, !136, i64 0}
!562 = !{!560, !274, i64 8}
!563 = !{!560, !276, i64 16}
!564 = distinct !{null, null, null, null}
!565 = !{i64 -2927737984022148772}
!566 = distinct !{null, null, null, null}
!567 = distinct !{!567, !185}
!568 = distinct !{!568, !185, !196, !197}
!569 = distinct !{!569, !185, !196, !197}
!570 = distinct !{!570, !209}
!571 = distinct !{!571, !185, !196}
!572 = distinct !{!572, !185}
!573 = !{i64 6079374761499032612}
!574 = !{i64 -3142405037311596543}
!575 = !{i64 4236259773942293105}
!576 = distinct !{!576, !185}
!577 = distinct !{!577, !185}
!578 = distinct !{!578, !185}
!579 = !{i64 -2967026580224294387}
!580 = !{i64 -7048062852071188496}
!581 = !{i64 4762968510203516799}
!582 = !{i64 -4365750531109951616}
!583 = distinct !{null, null}
!584 = distinct !{!584, !185, !196, !197}
!585 = distinct !{!585, !185, !196, !197}
!586 = distinct !{!586, !209}
!587 = distinct !{!587, !185, !196}
!588 = distinct !{!588, !185}
!589 = !{i64 8511621218816884482}
!590 = !{!283, !128, i64 24}
!591 = !{i64 -541458282137646824}
!592 = distinct !{!592, !185}
!593 = distinct !{!593, !185}
!594 = distinct !{!594, !185}
!595 = !{i64 -7789421725482471956}
!596 = distinct !{null, null, null, null}
!597 = distinct !{!597, !185}
!598 = !{i64 7590083106024362859}
!599 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !136, i64 0, !274, i64 8, !276, i64 16}
!600 = !{!599, !136, i64 0}
!601 = !{!599, !274, i64 8}
!602 = !{!599, !276, i64 16}
!603 = distinct !{null, null, null}
!604 = distinct !{!604, !185, !196, !197}
!605 = distinct !{!605, !185, !196, !197}
!606 = distinct !{!606, !209}
!607 = distinct !{!607, !185, !196}
!608 = !{i64 -6372750804622550033}
!609 = !{i64 6870853179363166588}
!610 = !{i64 8359101750889146219}
!611 = distinct !{null, null, null, null}
!612 = distinct !{null, null, null, null}
!613 = !{i64 2463042644863569955}
!614 = !{i64 -2809778602157779556}
!615 = distinct !{null, null, null, null}
!616 = distinct !{null, null, null}
!617 = distinct !{!617, !185, !196, !197}
!618 = distinct !{!618, !185, !196, !197}
!619 = distinct !{!619, !209}
!620 = distinct !{!620, !185, !196}
!621 = !{i64 -8649695564467379923}
!622 = distinct !{null, null, null, null, null}
!623 = !{i64 7385480317946477150}
!624 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E_", !128, i64 0, !296, i64 8, !136, i64 16, !298, i64 24, !264, i64 32, !129, i64 40, !136, i64 48}
!625 = !{!624, !128, i64 0}
!626 = !{!624, !296, i64 8}
!627 = !{!624, !136, i64 16}
!628 = !{!624, !264, i64 32}
!629 = !{!624, !129, i64 40}
!630 = !{!624, !136, i64 48}
!631 = distinct !{null, null, null, null}
!632 = distinct !{null, null, null, null, null}
!633 = !{i64 -6382772269382072216}
!634 = !{!"_ZTSZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS6_E0_", !128, i64 0, !296, i64 8, !136, i64 16, !136, i64 24, !129, i64 32, !298, i64 40, !136, i64 48}
!635 = !{!634, !128, i64 0}
!636 = !{!634, !296, i64 8}
!637 = !{!634, !136, i64 16}
!638 = !{!634, !136, i64 24}
end_hunk_2
