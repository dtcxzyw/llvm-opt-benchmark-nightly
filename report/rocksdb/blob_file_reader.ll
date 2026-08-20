inline.NumInlined: 1205
inline.NumDeleted: 640
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK7rocksdb14BlobFileReader12MultiGetBlobERKNS_11ReadOptionsEPNS_15MemoryAllocatorERNS_10autovectorISt4pairIPNS_15BlobReadRequestESt10unique_ptrINS_12BlobContentsESt14default_deleteISB_EEELm8EEEPm:bb.a
  %i.dt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ds) #23
          to label %.noexc145 unwind label %.loopexit278 ; 4 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.dl ; 2 uses
  store i64 %spec.select, ptr %i.du, align 8, !tbaa !9
  %i.dv = icmp sgt i64 %i.dl, 0
  br i1 %i.dv, label %bb.r, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.r:                                             ; preds = %.noexc145
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr align 8 %i.di, i64 %i.dl, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.r, %.noexc145
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.dl) #22
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.dt, ptr %i.o, align 8, !tbaa !384
  store ptr %i.dw, ptr %i.z, align 8, !tbaa !382
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.dx, ptr %i.aa, align 8, !tbaa !383
  br label %bb.t

bb.t:                                             ; preds = %bb.m, %bb.o, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  store ptr @.str.11, ptr %i.ab, align 8, !tbaa !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ac, i8 0, i64 14, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i8 0, i64 48, i1 false)
  %i.dy = load i64, ptr %i.be, align 8, !tbaa !378
  %i.dz = sub i64 %i.dy, %spec.select
  store i64 %i.dz, ptr %15, align 8, !tbaa !385
  %i.ea = load i64, ptr %i.bg, align 8, !tbaa !379
  %i.eb = add i64 %i.ea, %spec.select             ; 2 uses
  store i64 %i.eb, ptr %i.ae, align 8, !tbaa !396
  %i.ec = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZNSt6vectorIN7rocksdb13FSReadRequestESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(96) %15)
          to label %bb.u unwind label %bb.ad      ; 0 uses

bb.u:                                             ; preds = %bb.t
  %i.ed = add i64 %i.eb, %.090296
  %i.ee = load ptr, ptr %i.ag, align 8, !tbaa !158 ; 2 uses
  %.not.i.i146 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i146, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ee, ptr %i.b, align 8, !tbaa !158
  %i.ef = load ptr, ptr %i.ah, align 8, !tbaa !159
  %.not.i.i.i.i147 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i147, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc.i.i unwind label %.loopexit.split-lp280

.noexc.i.i:                                       ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.eg = load ptr, ptr %i.ai, align 8, !tbaa !161
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i.i unwind label %.loopexit279, !inline_history !163

_ZNKSt8functionIFvPvEEclES0_.exit.i.i:            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i.i, %bb.u
  store ptr null, ptr %i.ag, align 8, !tbaa !158
  %i.eh = load ptr, ptr %i.ah, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i.i.i148 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i148, label %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = invoke noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i32 noundef 3)
          to label %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit.i unwind label %bb.aa ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #25
  unreachable

.loopexit279:                                     ; preds = %bb.x
  %lpad.loopexit281 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

.loopexit.split-lp280:                            ; preds = %bb.w
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp280, %.loopexit279
  %lpad.phi283 = phi { ptr, i32 } [ %lpad.loopexit281, %.loopexit279 ], [ %lpad.loopexit.split-lp282, %.loopexit.split-lp280 ]
  %i.el = extractvalue { ptr, i32 } %lpad.phi283, 0
  call void @__clang_call_terminate(ptr %i.el) #25
  unreachable

_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit.i: ; preds = %bb.z, %bb.y
  %i.em = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb13FSReadRequestD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.em) #22
  br label %_ZN7rocksdb13FSReadRequestD2Ev.exit

_ZN7rocksdb13FSReadRequestD2Ev.exit:              ; preds = %_ZNSt10unique_ptrIvSt8functionIFvPvEEED2Ev.exit.i, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7rocksdb13FSReadRequestD2Ev.exit, %_ZN7rocksdb6StatusD2Ev.exit142, %_ZN7rocksdb6StatusD2Ev.exit
  %.191 = phi i64 [ %.090296, %_ZN7rocksdb6StatusD2Ev.exit142 ], [ %i.ed, %_ZN7rocksdb13FSReadRequestD2Ev.exit ], [ %.090296, %_ZN7rocksdb6StatusD2Ev.exit ] ; 2 uses
  %i.en = add nuw i64 %.089297, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.en, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !397

.loopexit278:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit239

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit239

bb.ad:                                            ; preds = %bb.t
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb13FSReadRequestD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit239

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %._crit_edge, %bb.b
  %i.ep = load ptr, ptr %7, align 8, !tbaa !398
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !398
  %i.es = icmp eq ptr %i.ep, %i.er
  br i1 %i.es, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  %.not123 = icmp eq ptr %4, null
  br i1 %.not123, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store i64 0, ptr %4, align 8, !tbaa !9
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.ag:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 72, i1 false)
  %i.et = load ptr, ptr %0, align 8, !tbaa !84    ; 3 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !239 ; 2 uses
  %.not.i.i149 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i149, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 104
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !240, !range !114, !noundef !119
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !248
  br label %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i

_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i:   ; preds = %bb.aj, %bb.ai
  %.0.i.i = phi ptr [ %i.ey, %bb.ai ], [ %i.fa, %bb.aj ] ; 2 uses
  %i.fb = load ptr, ptr %.0.i.i, align 8, !tbaa !88
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8
  %i.fe = invoke noundef zeroext i1 %i.fd(ptr noundef nonnull align 8 dereferenceable(8) %.0.i.i)
          to label %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit unwind label %_ZN7rocksdb6StatusD2Ev.exit236.thread, !inline_history !249

_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit: ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i
  br i1 %i.fe, label %.preheader274, label %bb.ak

.preheader274:                                    ; preds = %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  %i.ff = load ptr, ptr %i.eq, align 8, !tbaa !400 ; 2 uses
  %i.fg = load ptr, ptr %7, align 8, !tbaa !402   ; 8 uses
  %.not315 = icmp eq ptr %i.ff, %i.fg
  br i1 %.not315, label %.loopexit275, label %iter.check

iter.check:                                       ; preds = %.preheader274
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = sdiv i64 %i.fj, 96                      ; 5 uses
  %umax320 = call i64 @llvm.umax.i64(i64 %i.fk, i64 1) ; 4 uses
  %min.iters.check = icmp ult i64 %i.fk, 4
  br i1 %min.iters.check, label %.lr.ph302.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check425 = icmp ult i64 %i.fk, 16
  br i1 %min.iters.check425, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fl = and i64 %umax320, 12
  %n.vec = and i64 %umax320, -16                  ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %wide.gep = getelementptr inbounds nuw [96 x i8], ptr %i.fg, <4 x i64> %vec.ind
  %wide.gep426 = getelementptr inbounds nuw [96 x i8], ptr %i.fg, <4 x i64> %step.add
  %wide.gep427 = getelementptr inbounds nuw [96 x i8], ptr %i.fg, <4 x i64> %step.add.2
  %wide.gep428 = getelementptr inbounds nuw [96 x i8], ptr %i.fg, <4 x i64> %step.add.3
  %wide.gep429 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 16
  %wide.gep430 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep426, i64 16
  %wide.gep431 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep427, i64 16
  %wide.gep432 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep428, i64 16
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> splat (ptr null), <4 x ptr> align 8 %wide.gep429, <4 x i1> splat (i1 true)), !tbaa !403
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> splat (ptr null), <4 x ptr> align 8 %wide.gep430, <4 x i1> splat (i1 true)), !tbaa !403
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> splat (ptr null), <4 x ptr> align 8 %wide.gep431, <4 x i1> splat (i1 true)), !tbaa !403
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> splat (ptr null), <4 x ptr> align 8 %wide.gep432, <4 x i1> splat (i1 true)), !tbaa !403
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br i1 %cmp.n, label %.loopexit275, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph302.preheader, label %vec.epilog.ph, !prof !407

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec433 = and i64 %umax320, -4                ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index434 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next438, %vec.epilog.vector.body ]
  %vec.ind435 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next439, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep436 = getelementptr inbounds nuw [96 x i8], ptr %i.fg, <4 x i64> %vec.ind435
  %wide.gep437 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep436, i64 16
  call void @llvm.masked.scatter.v4p0.v4p0(<4 x ptr> splat (ptr null), <4 x ptr> align 8 %wide.gep437, <4 x i1> splat (i1 true)), !tbaa !403
  %index.next438 = add nuw i64 %index434, 4       ; 2 uses
  %vec.ind.next439 = add nuw <4 x i64> %vec.ind435, splat (i64 4)
  %i.fn = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.fn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !408

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n440 = icmp eq i64 %i.fk, %n.vec433
  br i1 %cmp.n440, label %.loopexit275, label %.lr.ph302.preheader

.lr.ph302.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.088301.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec433, %vec.epilog.middle.block ]
  br label %.lr.ph302

_ZN7rocksdb6StatusD2Ev.exit236.thread:            ; preds = %_ZNK7rocksdb21FSRandomAccessFilePtrptEv.exit.i, %bb.ak
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb13AlignedBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit239

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %.lr.ph302
  %.088301 = phi i64 [ %i.fr, %.lr.ph302 ], [ %.088301.ph, %.lr.ph302.preheader ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [96 x i8], ptr %i.fg, i64 %.088301
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store ptr null, ptr %i.fq, align 8, !tbaa !403
  %i.fr = add nuw i64 %.088301, 1                 ; 2 uses
  %exitcond321.not = icmp eq i64 %i.fr, %umax320
  br i1 %exitcond321.not, label %.loopexit275, label %.lr.ph302, !llvm.loop !409

bb.ak:                                            ; preds = %_ZNK7rocksdb22RandomAccessFileReader13use_direct_ioEv.exit
  %i.fs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.090.lcssa) #23
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader unwind label %_ZN7rocksdb6StatusD2Ev.exit236.thread ; 12 uses

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader: ; preds = %bb.ak
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !400 ; 2 uses
  %i.fu = load ptr, ptr %7, align 8, !tbaa !402   ; 11 uses
  %.not314 = icmp eq ptr %i.ft, %i.fu
  br i1 %.not314, label %.loopexit275, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = sdiv i64 %i.fx, 96                      ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.fy, i64 1) ; 2 uses
  %xtraiter = and i64 %umax, 7                    ; 3 uses
  %i.fz = icmp ult i64 %i.fy, 8
  br i1 %i.fz, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil.preheader, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317.new

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317.new: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317
  %unroll_iter = and i64 %umax, -8
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317.new
  %.086299 = phi i64 [ 0, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317.new ], [ %i.hw, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ] ; 9 uses
  %.087298 = phi i64 [ 0, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317.new ], [ %i.hv, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317.new ], [ %niter.next.7, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit ]
  %i.ga = getelementptr inbounds i8, ptr %i.fs, i64 %.087298
  %i.gb = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !403
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !396
  %i.gf = add i64 %i.ge, %.087298                 ; 2 uses
  %i.gg = getelementptr inbounds i8, ptr %i.fs, i64 %i.gf
  %i.gh = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 112
  store ptr %i.gg, ptr %i.gi, align 8, !tbaa !403
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !396
  %i.gl = add i64 %i.gk, %i.gf                    ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.fs, i64 %i.gl
  %i.gn = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 208
  store ptr %i.gm, ptr %i.go, align 8, !tbaa !403
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 200
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !396
  %i.gr = add i64 %i.gq, %i.gl                    ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %i.fs, i64 %i.gr
  %i.gt = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 304
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !403
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 296
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !396
  %i.gx = add i64 %i.gw, %i.gr                    ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %i.fs, i64 %i.gx
  %i.gz = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 400
  store ptr %i.gy, ptr %i.ha, align 8, !tbaa !403
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 392
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !396
  %i.hd = add i64 %i.hc, %i.gx                    ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.fs, i64 %i.hd
  %i.hf = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 496
  store ptr %i.he, ptr %i.hg, align 8, !tbaa !403
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 488
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !396
  %i.hj = add i64 %i.hi, %i.hd                    ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %i.fs, i64 %i.hj
  %i.hl = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 592
  store ptr %i.hk, ptr %i.hm, align 8, !tbaa !403
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 584
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !396
  %i.hp = add i64 %i.ho, %i.hj                    ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %i.fs, i64 %i.hp
  %i.hr = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 688
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !403
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 680
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !396
  %i.hv = add i64 %i.hu, %i.hp                    ; 2 uses
  %i.hw = add nuw i64 %.086299, 8                 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit275.loopexit441.unr-lcssa, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, !llvm.loop !410

.loopexit275.loopexit441.unr-lcssa:               ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit275, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil.preheader

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil.preheader: ; preds = %.loopexit275.loopexit441.unr-lcssa, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317
  %.086299.epil.init = phi i64 [ 0, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317 ], [ %i.hw, %.loopexit275.loopexit441.unr-lcssa ]
  %.087298.epil.init = phi i64 [ 0, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader317 ], [ %i.hv, %.loopexit275.loopexit441.unr-lcssa ]
  %lcmp.mod442 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod442)
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil: ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil.preheader
  %.086299.epil = phi i64 [ %i.id, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil ], [ %.086299.epil.init, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil.preheader ] ; 2 uses
  %.087298.epil = phi i64 [ %i.ic, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil ], [ %.087298.epil.init, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil ], [ 0, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil.preheader ]
  %i.hx = getelementptr inbounds i8, ptr %i.fs, i64 %.087298.epil
  %i.hy = getelementptr inbounds nuw [96 x i8], ptr %i.fu, i64 %.086299.epil ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store ptr %i.hx, ptr %i.hz, align 8, !tbaa !403
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !396
  %i.ic = add i64 %i.ib, %.087298.epil
  %i.id = add nuw i64 %.086299.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit275, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil, !llvm.loop !411

.loopexit275:                                     ; preds = %.loopexit275.loopexit441.unr-lcssa, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil, %.lr.ph302, %middle.block, %vec.epilog.middle.block, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader, %.preheader274
  %.sroa.0260.0 = phi ptr [ null, %.preheader274 ], [ %i.fs, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.preheader ], [ null, %middle.block ], [ null, %.lr.ph302 ], [ null, %vec.epilog.middle.block ], [ %i.fs, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit.epil ], [ %i.fs, %.loopexit275.loopexit441.unr-lcssa ] ; 4 uses
  %.not.i152 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  br i1 %.not.i152, label %_ZTWN7rocksdb10perf_levelE.exit, label %bb.al

bb.al:                                            ; preds = %.loopexit275
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit

_ZTWN7rocksdb10perf_levelE.exit:                  ; preds = %.loopexit275, %bb.al
  %i.ie = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !284
  %i.ig = icmp ugt i8 %i.if, 1
  br i1 %i.ig, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit
  %.not.i153 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i153, label %_ZTWN7rocksdb12perf_contextE.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit

_ZTWN7rocksdb12perf_contextE.exit:                ; preds = %bb.am, %bb.an
  %i.ih = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 240 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !286
  %i.ik = add i64 %i.ij, %i.l
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !286
  br label %bb.ao

bb.ao:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit, %_ZTWN7rocksdb10perf_levelE.exit
  br i1 %.not.i152, label %_ZTWN7rocksdb10perf_levelE.exit155, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit155

_ZTWN7rocksdb10perf_levelE.exit155:               ; preds = %bb.ao, %bb.ap
  %i.il = load i8, ptr %i.ie, align 1, !tbaa !284
  %i.im = icmp ugt i8 %i.il, 1
  br i1 %i.im, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit155
  %.not.i156 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i156, label %_ZTWN7rocksdb12perf_contextE.exit157, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit157

_ZTWN7rocksdb12perf_contextE.exit157:             ; preds = %bb.aq, %bb.ar
  %i.in = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE)
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 248 ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !288
  %i.iq = add i64 %i.ip, %.090.lcssa
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !288
  br label %bb.as

bb.as:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit155, %_ZTWN7rocksdb12perf_contextE.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  store i64 0, ptr %17, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.ir, align 8, !tbaa !225
  %i.is = getelementptr inbounds nuw i8, ptr %17, i64 12
  store i32 4, ptr %i.is, align 4, !tbaa !226
  %i.it = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i8 7, ptr %i.it, align 8, !tbaa !227
  %i.iu = getelementptr inbounds nuw i8, ptr %17, i64 24 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 2 uses
  store ptr %i.iv, ptr %i.iu, align 8, !tbaa !143
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  store i64 1, ptr %i.iw, align 8, !tbaa !144
  %i.ix = getelementptr inbounds nuw i8, ptr %17, i64 40 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ix, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.iy, align 8, !tbaa !228
  %i.iz = getelementptr inbounds nuw i8, ptr %17, i64 64
  %i.ja = getelementptr inbounds nuw i8, ptr %17, i64 83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.iz, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.ja, align 1, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.jb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.jb, ptr %18, align 8, !tbaa !191
  %i.jc = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 0, ptr %i.jc, align 8, !tbaa !192
  store i8 0, ptr %i.jb, align 8, !tbaa !102
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 3 uses
  store i32 0, ptr %i.jd, align 8, !tbaa !230
  %i.je = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 2 uses
  store ptr null, ptr %i.je, align 8, !tbaa !235
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 56
  store ptr %i.jd, ptr %i.jf, align 8, !tbaa !236
  %i.jg = getelementptr inbounds nuw i8, ptr %18, i64 64
  store ptr %i.jd, ptr %i.jg, align 8, !tbaa !237
  %i.jh = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i64 0, ptr %i.jh, align 8, !tbaa !238
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 4 uses
  store ptr %i.jj, ptr %i.ji, align 8, !tbaa !191
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 0, ptr %i.jk, align 8, !tbaa !192
  store i8 0, ptr %i.jj, align 8, !tbaa !102
  %i.jl = getelementptr inbounds nuw i8, ptr %18, i64 112
  %i.jm = getelementptr inbounds nuw i8, ptr %18, i64 200 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %18, i64 216 ; 4 uses
end_hunk_0
