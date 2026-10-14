Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/image_item?download=true
inline.NumInlined: 5479
inline.NumDeleted: 2972
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN9ImageItem17add_color_profileERKNSt3__110shared_ptrI14HeifPixelImageEERK21heif_encoding_options22heif_image_input_classPK23heif_color_profile_nclx:bb.a
  %i.dk = load ptr, ptr %i.bz, align 8, !tbaa !284 ; 5 uses
  %.not.i56 = icmp eq ptr %i.dk, null
  br i1 %.not.i56, label %_ZNSt3__110shared_ptrI18color_profile_nclxED2B8ne180100Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt3__110shared_ptrI8Box_colrED2B8ne180100Ev.exit55
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = atomicrmw add ptr %i.dl, i64 -1 acq_rel, align 8
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.ai, label %_ZNSt3__110shared_ptrI18color_profile_nclxED2B8ne180100Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !120
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #24, !inline_history !705
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dk) #24
  br label %_ZNSt3__110shared_ptrI18color_profile_nclxED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI18color_profile_nclxED2B8ne180100Ev.exit: ; preds = %_ZNSt3__110shared_ptrI8Box_colrED2B8ne180100Ev.exit55, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %.thread86

bb.aj:                                            ; preds = %bb.x
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.ak:                                            ; preds = %bb.y
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.al:                                            ; preds = %_ZN18color_profile_nclx32set_from_heif_color_profile_nclxEPK23heif_color_profile_nclx.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body39

bb.am:                                            ; preds = %bb.ad
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3__110shared_ptrI8Box_colrED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #24
  br label %.body39

.body39:                                          ; preds = %bb.al, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_colrNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i37, %bb.am
  %.pn24 = phi { ptr, i32 } [ %i.du, %bb.am ], [ %i.dt, %bb.al ], [ %i.cd, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI8Box_colrNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.an

bb.an:                                            ; preds = %.body39, %bb.ak
  %.pn24.pn = phi { ptr, i32 } [ %.pn24, %.body39 ], [ %i.ds, %bb.ak ]
  call void @_ZNSt3__110shared_ptrI18color_profile_nclxED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #24
  br label %.body34

.body34:                                          ; preds = %bb.aj, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI18color_profile_nclxNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i, %bb.an
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %bb.an ], [ %i.dr, %bb.aj ], [ %i.by, %_ZNSt3__118__allocation_guardINS_9allocatorINS_20__shared_ptr_emplaceI18color_profile_nclxNS1_IS3_EEEEEEED2B8ne180100Ev.exit4.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.aq

.thread86:                                        ; preds = %bb.u, %bb.t, %.split, %_ZNSt3__110shared_ptrI18color_profile_nclxED2B8ne180100Ev.exit, %bb.w
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !276 ; 5 uses
  %.not.i57 = icmp eq ptr %i.dv, null
  br i1 %.not.i57, label %_ZNSt3__110shared_ptrIK17color_profile_rawED2B8ne180100Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %.thread86
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = atomicrmw add ptr %i.dw, i64 -1 acq_rel, align 8
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.ap, label %_ZNSt3__110shared_ptrIK17color_profile_rawED2B8ne180100Ev.exit

bb.ap:                                            ; preds = %bb.ao
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !120
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(24) %i.dv) #24, !inline_history !706
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dv) #24
  br label %_ZNSt3__110shared_ptrIK17color_profile_rawED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIK17color_profile_rawED2B8ne180100Ev.exit: ; preds = %.thread86, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.ar

bb.aq:                                            ; preds = %.body34, %.body
  %.pn24.pn.pn.pn = phi { ptr, i32 } [ %.pn24.pn.pn, %.body34 ], [ %.pn, %.body ]
  call void @_ZNSt3__110shared_ptrIK17color_profile_rawED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZNSt3__16vectorINS_10shared_ptrI8Box_colrEENS_9allocatorIS3_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #24
  resume { ptr, i32 } %.pn24.pn.pn.pn

bb.ar:                                            ; preds = %bb.b, %bb.a, %_ZNSt3__110shared_ptrIK17color_profile_rawED2B8ne180100Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI3BoxED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN8Box_clap3setEjjjj(ptr noundef nonnull align 8 dereferenceable(188), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__110shared_ptrI8Box_clapED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24, !inline_history !1
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #24
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN8Box_pixi16add_channel_bitsEt(ptr noundef nonnull align 8 dereferenceable(184) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i16 %1, 256                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.c = trunc nuw i16 %1 to i8                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !285  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !198  ; 2 uses
  %i.h = icmp ult ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 %i.c, ptr %i.e, align 1, !tbaa !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !286  ; 2 uses
  %i.k = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #27
  unreachable

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.d
  %i.p = ptrtoint ptr %i.g to i64
  %i.q = sub i64 %i.p, %i.l                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.q, 4611686018427387903
  %i.r = shl nuw nsw i64 %i.q, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.n)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 9223372036854775807 ; 3 uses
  %i.s = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i.i) #26
  %.pre.i.i = load ptr, ptr %i.d, align 8, !tbaa !285
  %.pre24.i.i = load ptr, ptr %i.b, align 8, !tbaa !286
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i
  %i.u = phi ptr [ %.pre24.i.i, %bb.f ], [ %i.j, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i ] ; 6 uses
  %i.v = phi ptr [ %.pre.i.i, %bb.f ], [ %i.e, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i ] ; 8 uses
  %storemerge.i.i.i = phi ptr [ %i.t, %bb.f ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i ] ; 3 uses
  %i.w = ptrtoaddr ptr %storemerge.i.i.i to i64
  %storemerge.i.i.i11 = ptrtoaddr ptr %i.v to i64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %i.m ; 9 uses
  %i.y = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %.0.i.i.i
  store i8 %i.c, ptr %i.x, align 1, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 1 ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.aa = ptrtoaddr ptr %i.u to i64               ; 3 uses
  %i.ab = sub i64 %storemerge.i.i.i11, %i.aa      ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = add i64 %storemerge.i.i.i11, %i.l
  %i.ad = add i64 %i.w, %i.k
  %i.ae = sub i64 %i.ad, %i.ac
  %diff.check = icmp ugt i64 %i.ae, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.af = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, -32                     ; 4 uses
  %i.ag = sub i64 0, %n.vec                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.x, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.v, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.aj ; 2 uses
  %next.gep13 = getelementptr i8, ptr %i.v, i64 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %next.gep13, i64 -16
  %i.al = getelementptr inbounds i8, ptr %next.gep13, i64 -32
  %wide.load = load <16 x i8>, ptr %i.ak, align 1, !tbaa !111, !noalias !738
  %wide.load14 = load <16 x i8>, ptr %i.al, align 1, !tbaa !111, !noalias !738
  %i.am = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.an = getelementptr inbounds i8, ptr %next.gep, i64 -32
  store <16 x i8> %wide.load, ptr %i.am, align 1, !tbaa !111, !noalias !738
  store <16 x i8> %wide.load14, ptr %i.an, align 1, !tbaa !111, !noalias !738
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !734

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph, !prof !741

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ab, -8                    ; 3 uses
  %i.ap = sub i64 0, %n.vec16                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.x, i64 %i.ap   ; 2 uses
  %i.ar = getelementptr i8, ptr %i.v, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.as = sub i64 0, %index17                     ; 2 uses
  %next.gep18 = getelementptr i8, ptr %i.x, i64 %i.as
  %next.gep19 = getelementptr i8, ptr %i.v, i64 %i.as
  %i.at = getelementptr inbounds i8, ptr %next.gep19, i64 -8
  %wide.load20 = load <8 x i8>, ptr %i.at, align 1, !tbaa !111, !noalias !738
  %i.au = getelementptr inbounds i8, ptr %next.gep18, i64 -8
  store <8 x i8> %wide.load20, ptr %i.au, align 1, !tbaa !111, !noalias !738
  %index.next21 = add nuw i64 %index17, 8         ; 2 uses
  %i.av = icmp eq i64 %index.next21, %n.vec16
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !735

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.ab, %n.vec16
  br i1 %cmp.n22, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi ptr [ %i.x, %iter.check ], [ %i.x, %vector.memcheck ], [ %i.ah, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.v, %vector.memcheck ], [ %i.ai, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph25 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.aw = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph25, %i.aa
  %xtraiter = and i64 %i.aw, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.ax = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ay = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol, i64 -1 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !111, !noalias !738
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 -1 ; 4 uses
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !111, !noalias !738
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !736

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.bb = sub i64 %i.aa, %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph25
  %i.bc = icmp ugt i64 %i.bb, -8
  br i1 %i.bc, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bd = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.be = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !111, !noalias !738
  %i.bg = getelementptr inbounds i8, ptr %i.bd, i64 -1
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !111, !noalias !738
  %i.bh = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !111, !noalias !738
  %i.bj = getelementptr inbounds i8, ptr %i.bd, i64 -2
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !111, !noalias !738
  %i.bk = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !111, !noalias !738
  %i.bm = getelementptr inbounds i8, ptr %i.bd, i64 -3
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !111, !noalias !738
  %i.bn = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !111, !noalias !738
  %i.bp = getelementptr inbounds i8, ptr %i.bd, i64 -4
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !111, !noalias !738
  %i.bq = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !111, !noalias !738
  %i.bs = getelementptr inbounds i8, ptr %i.bd, i64 -5
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !111, !noalias !738
  %i.bt = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -6
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !111, !noalias !738
  %i.bv = getelementptr inbounds i8, ptr %i.bd, i64 -6
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !111, !noalias !738
  %i.bw = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -7
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !111, !noalias !738
  %i.by = getelementptr inbounds i8, ptr %i.bd, i64 -7
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !111, !noalias !738
  %i.bz = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !111, !noalias !738
  %i.cb = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 3 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !111, !noalias !738
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bz, %i.u
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !737

_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.g
  %storemerge.i.i = phi ptr [ %i.x, %bb.g ], [ %i.aq, %vec.epilog.middle.block ], [ %i.ah, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  store ptr %storemerge.i.i, ptr %i.b, align 8, !tbaa !198
  store ptr %i.z, ptr %i.d, align 8, !tbaa !198
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !198
  store ptr %i.y, ptr %i.f, align 8, !tbaa !198
  %.not.i5.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = ptrtoint ptr %i.u to i64
  %i.cf = sub i64 %i.cd, %i.ce
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.cf) #25
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit: ; preds = %bb.c, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, %bb.h
  %.0.i = phi ptr [ %i.i, %bb.c ], [ %i.z, %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.z, %bb.h ]
  store ptr %.0.i, ptr %i.d, align 8, !tbaa !285
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100EOh.exit
  ret i1 %i.a
}

declare noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN16ImageDescriptionC2ERKS_(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef nonnull align 8 dereferenceable(316) %1) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV16ImageDescription, i64 16), ptr %0, align 8, !tbaa !120
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 8 dereferenceable(9) %i.b, i64 9, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !276  ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !173
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !173
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIK17color_profile_rawEC2B8ne180100ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIK17color_profile_rawEC2B8ne180100ERKS3_.exit

_ZNSt3__110shared_ptrIK17color_profile_rawEC2B8ne180100ERKS3_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.l = load i64, ptr %i.k, align 8
  store i64 %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !276  ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.n, align 8, !tbaa !173
  store <2 x ptr> %i.q, ptr %i.m, align 8, !tbaa !173
  %.not.i25 = icmp eq ptr %i.p, null
  br i1 %.not.i25, label %_ZNSt3__110shared_ptrIK17color_profile_rawEC2B8ne180100ERKS3_.exit26, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__110shared_ptrIK17color_profile_rawEC2B8ne180100ERKS3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__110shared_ptrIK17color_profile_rawEC2B8ne180100ERKS3_.exit26

end_hunk_0
