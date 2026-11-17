Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/toppush?download=true
inline.NumInlined: 3473
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z7push_bt9DirectiveRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS2_95EEEiP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePcP14WarningHandler:bb.a
  %i.ie = fptrunc <4 x double> %wide.load317 to <4 x float>
  %i.if = fptrunc <4 x double> %wide.load318 to <4 x float>
  %i.ig = fptrunc <4 x double> %wide.load319 to <4 x float>
  %i.ih = fptrunc <4 x double> %wide.load320 to <4 x float>
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %index316 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  store <4 x float> %i.ie, ptr %i.ii, align 4, !tbaa !41
  store <4 x float> %i.if, ptr %i.ij, align 4, !tbaa !41
  store <4 x float> %i.ig, ptr %i.ik, align 4, !tbaa !41
  store <4 x float> %i.ih, ptr %i.il, align 4, !tbaa !41
  %index.next321 = add nuw i64 %index316, 16      ; 2 uses
  %i.im = icmp eq i64 %index.next321, %n.vec314
  br i1 %i.im, label %middle.block322, label %vector.body315, !llvm.loop !245

middle.block322:                                  ; preds = %vector.body315
  %cmp.n323 = icmp eq i64 %n.vec314, %wide.trip.count
  br i1 %cmp.n323, label %._crit_edge.i.i, label %vec.epilog.iter.check325

vec.epilog.iter.check325:                         ; preds = %middle.block322
  %min.epilog.iters.check327 = icmp eq i64 %i.hz, 0
  br i1 %min.epilog.iters.check327, label %.lr.ph151.preheader, label %vec.epilog.ph328, !prof !40

vec.epilog.ph328:                                 ; preds = %vector.main.loop.iter.check311, %vec.epilog.iter.check325
  %vec.epilog.resume.val329 = phi i64 [ %n.vec314, %vec.epilog.iter.check325 ], [ 0, %vector.main.loop.iter.check311 ]
  %n.vec330 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body331

vec.epilog.vector.body331:                        ; preds = %vec.epilog.vector.body331, %vec.epilog.ph328
  %index332 = phi i64 [ %vec.epilog.resume.val329, %vec.epilog.ph328 ], [ %index.next334, %vec.epilog.vector.body331 ] ; 3 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index332
  %wide.load333 = load <4 x double>, ptr %i.in, align 16, !tbaa !65
  %i.io = fptrunc <4 x double> %wide.load333 to <4 x float>
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %index332
  store <4 x float> %i.io, ptr %i.ip, align 4, !tbaa !41
  %index.next334 = add nuw i64 %index332, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next334, %n.vec330
  br i1 %i.iq, label %vec.epilog.middle.block335, label %vec.epilog.vector.body331, !llvm.loop !246

vec.epilog.middle.block335:                       ; preds = %vec.epilog.vector.body331
  %cmp.n336 = icmp eq i64 %n.vec330, %wide.trip.count
  br i1 %cmp.n336, label %._crit_edge.i.i, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %iter.check324, %vec.epilog.iter.check325, %vec.epilog.middle.block335
  %indvars.iv.ph = phi i64 [ 0, %iter.check324 ], [ %n.vec314, %vec.epilog.iter.check325 ], [ %n.vec330, %vec.epilog.middle.block335 ]
  br label %.lr.ph151

._crit_edge.i.i:                                  ; preds = %.lr.ph151, %middle.block322, %vec.epilog.middle.block335, %_ZL22atomTypesFromAtomNamesIA20_cESt6vectorIiSaIiEEPK22PreprocessingAtomTypesPK25PreprocessingBondAtomTypeN3gmx8ArrayRefIT_EEP14WarningHandler.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.ir = ptrtoint ptr %.sroa.9.2 to i64
  %i.is = ptrtoint ptr %.sroa.0101.4 to i64       ; 3 uses
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0101.4, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %17, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  %i.iw = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.iw, ptr %19, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 0, ptr %i.ix, align 8, !tbaa !24
  store i8 0, ptr %i.iw, align 8, !tbaa !23
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %18, ptr %.sroa.0101.4, ptr %i.iu, ptr nonnull %17, ptr nonnull %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.bk

.lr.ph151:                                        ; preds = %.lr.ph151.preheader, %.lr.ph151
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph151 ], [ %indvars.iv.ph, %.lr.ph151.preheader ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !65
  %i.ja = fptrunc double %i.iz to float
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %17, i64 %indvars.iv
  store float %i.ja, ptr %i.jb, align 4, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.i.i, label %.lr.ph151, !llvm.loop !247

bb.bg:                                            ; preds = %._crit_edge.i.i
  %i.jc = getelementptr inbounds nuw [224 x i8], ptr %1, i64 %i.au
  invoke fastcc void @_ZL13push_bondtypeP18InteractionsOfTypeRK17InteractionOfTypei19InteractionFunctionbPKcP14WarningHandler(ptr noundef %i.jc, ptr noundef nonnull align 8 dereferenceable(105) %18, i32 noundef %2, i32 noundef %i.at, i1 noundef zeroext false, ptr noundef %5, ptr noundef %6)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.jd = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !22 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %18, i64 88 ; 2 uses
  %i.jg = icmp eq ptr %i.je, %i.jf
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bh
  %i.jh = load i64, ptr %i.jf, align 8, !tbaa !23
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.ji) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.jj = load ptr, ptr %18, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i.i.i, label %_ZN17InteractionOfTypeD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !35
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef %i.jo) #31
  br label %_ZN17InteractionOfTypeD2Ev.exit

_ZN17InteractionOfTypeD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bi
  %i.jp = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.jq = icmp eq ptr %i.jp, %i.iw
  br i1 %i.jq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZN17InteractionOfTypeD2Ev.exit
  %i.jr = load i64, ptr %i.iw, align 8, !tbaa !23
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.js) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZN17InteractionOfTypeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %.not.i.i.i = icmp eq ptr %.sroa.0101.4, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.jt = ptrtoint ptr %.sroa.14.4 to i64
  %i.ju = sub i64 %i.jt, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.4, i64 noundef %i.ju) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  ret void

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %18) #30
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.jw, %bb.bl ], [ %i.jv, %bb.bk ] ; 2 uses
  %i.jx = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.jy = icmp eq ptr %i.jx, %i.iw
  br i1 %i.jy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.bm
  %i.jz = load i64, ptr %i.iw, align 8, !tbaa !23
  %i.ka = add i64 %i.jz, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.ka) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %.not.i.i.i96 = icmp eq ptr %.sroa.0101.4, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIiSaIiEED2Ev.exit97, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.kb = ptrtoint ptr %.sroa.14.4 to i64
  %i.kc = sub i64 %i.kb, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.4, i64 noundef %i.kc) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit97

_ZNSt6vectorIiSaIiEED2Ev.exit97:                  ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn73.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_Z11ifunc_index9Directivei(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL13push_bondtypeP18InteractionsOfTypeRK17InteractionOfTypei19InteractionFunctionbPKcP14WarningHandler(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(105) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.gmx::ArrayRef", align 8    ; 6 uses
  %11 = alloca %"class.gmx::ArrayRef.53", align 8 ; 6 uses
  %12 = alloca %"class.std::vector.5", align 8    ; 10 uses
  %13 = alloca %"class.std::vector.10", align 8   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = load ptr, ptr %0, align 8, !tbaa !30     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 112                 ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = sext i32 %3 to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.k ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = load i32, ptr %i.o, align 8, !tbaa !27
  %i.q = add i32 %i.p, %i.n                       ; 6 uses
  %i.r = icmp sgt i32 %i.j, 1
  %or.cond = and i1 %4, %i.r
  br i1 %or.cond, label %bb.b, label %.loopexit258

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %1, align 8, !tbaa !34     ; 3 uses
  %i.t = add nsw i64 %i.i, 4294967294
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw [112 x i8], ptr %i.e, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !34   ; 3 uses
  %i.x = icmp sgt i32 %2, 0
  br i1 %i.x, label %iter.check, label %.lr.ph289

iter.check:                                       ; preds = %bb.b
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check418 = icmp ult i32 %2, 32
  br i1 %min.iters.check418, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi419 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi420 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi421 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <8 x i32>, ptr %i.z, align 4, !tbaa !63
  %wide.load422 = load <8 x i32>, ptr %i.aa, align 4, !tbaa !63
  %wide.load423 = load <8 x i32>, ptr %i.ab, align 4, !tbaa !63
  %wide.load424 = load <8 x i32>, ptr %i.ac, align 4, !tbaa !63
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %wide.load425 = load <8 x i32>, ptr %i.ad, align 4, !tbaa !63
  %wide.load426 = load <8 x i32>, ptr %i.ae, align 4, !tbaa !63
  %wide.load427 = load <8 x i32>, ptr %i.af, align 4, !tbaa !63
  %wide.load428 = load <8 x i32>, ptr %i.ag, align 4, !tbaa !63
  %i.ah = icmp ne <8 x i32> %wide.load, %wide.load425
  %i.ai = icmp ne <8 x i32> %wide.load422, %wide.load426
  %i.aj = icmp ne <8 x i32> %wide.load423, %wide.load427
  %i.ak = icmp ne <8 x i32> %wide.load424, %wide.load428
  %i.al = or <8 x i1> %vec.phi, %i.ah             ; 2 uses
  %i.am = or <8 x i1> %vec.phi419, %i.ai          ; 2 uses
  %i.an = or <8 x i1> %vec.phi420, %i.aj          ; 2 uses
  %i.ao = or <8 x i1> %vec.phi421, %i.ak          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.am, %i.al
  %bin.rdx429 = or <8 x i1> %i.an, %bin.rdx
  %bin.rdx430 = or <8 x i1> %i.ao, %bin.rdx429
  %bin.rdx430.fr = freeze <8 x i1> %bin.rdx430
  %i.aq = bitcast <8 x i1> %bin.rdx430.fr to i8
  %.not = icmp eq i8 %i.aq, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph289, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !258

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec431 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %i.ar = xor i1 %bc.merge.rdx, true
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %i.ar, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index432 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next436, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi433 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr439, %vec.epilog.vector.body ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index432
  %wide.load434 = load <4 x i32>, ptr %i.as, align 4, !tbaa !63
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index432
  %wide.load435 = load <4 x i32>, ptr %i.at, align 4, !tbaa !63
  %i.au = icmp ne <4 x i32> %wide.load434, %wide.load435
  %i.av = or <4 x i1> %vec.phi433, %i.au
  %.fr439 = freeze <4 x i1> %i.av                 ; 2 uses
  %index.next436 = add nuw i64 %index432, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next436, %n.vec431
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !250

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ax = bitcast <4 x i1> %.fr439 to i4
  %.not440 = icmp eq i4 %i.ax, 0                  ; 2 uses
  %cmp.n437 = icmp eq i64 %n.vec431, %wide.trip.count
  br i1 %cmp.n437, label %.lr.ph289, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec431, %vec.epilog.middle.block ]
  %.082278.ph = phi i1 [ true, %iter.check ], [ %.not, %vec.epilog.iter.check ], [ %.not440, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.082278 = phi i1 [ %spec.select, %.lr.ph ], [ %.082278.ph, %.lr.ph.preheader ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !63
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !63
  %.not121 = icmp eq i32 %i.az, %i.bb
  %spec.select = select i1 %.not121, i1 %.082278, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph289, label %.lr.ph, !llvm.loop !251

.loopexit258:                                     ; preds = %bb.a
  %i.bc = icmp sgt i32 %i.j, 0
  br i1 %i.bc, label %.lr.ph289, label %.critedge

.lr.ph289:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %.loopexit258
  %.2386 = phi i1 [ false, %.loopexit258 ], [ true, %bb.b ], [ %.not440, %vec.epilog.middle.block ], [ %.not, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = sext i32 %i.q to i64
  %.idx = shl nsw i64 %i.be, 2                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.not6.i.i.i.i = icmp eq i32 %i.q, 0            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bh = icmp eq i32 %3, 19
  %i.bi = select i1 %i.bh, ptr @.str.77, ptr @.str.15
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bk = icmp sgt i32 %i.q, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %wide.trip.count341 = and i64 %i.i, 2147483647  ; 2 uses
  br i1 %4, label %.lr.ph289.split.us, label %.lr.ph289.split.preheader

.lr.ph289.split.preheader:                        ; preds = %.lr.ph289
  %i.bq = icmp slt i32 %i.q, 1
  %wide.trip.count328 = zext nneg i32 %i.q to i64
  %wide.trip.count333 = zext nneg i32 %i.q to i64
  br label %.lr.ph289.split

.lr.ph289.split.us:                               ; preds = %.lr.ph289, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us
  %indvars.iv339 = phi i64 [ %indvars.iv.next340, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ 0, %.lr.ph289 ] ; 2 uses
  %.084287.us = phi i1 [ %.286.us, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ true, %.lr.ph289 ] ; 5 uses
  %.090285.us = phi i1 [ %.292.us, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ false, %.lr.ph289 ] ; 5 uses
  %.093284.us = phi i1 [ %.295.us, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ false, %.lr.ph289 ] ; 5 uses
  %i.br = load ptr, ptr %1, align 8, !tbaa !34    ; 4 uses
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !96 ; 4 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = load ptr, ptr %0, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw [112 x i8], ptr %i.bu, i64 %indvars.iv339 ; 3 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !96
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cb
  %i.cd = ptrtoint ptr %i.bs to i64
  %i.ce = sub i64 %i.cd, %i.bt
  %i.cf = icmp eq i64 %i.ce, %i.cb
  br i1 %i.cf, label %bb.c, label %.split.us

bb.c:                                             ; preds = %.lr.ph289.split.us
  %.not6.i.i.i.i.i.us = icmp eq ptr %i.br, %i.bs
  br i1 %.not6.i.i.i.i.i.us, label %.loopexit246.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %bb.c, %bb.d
  %.sroa.0.08.i.i.i.i.i.us = phi ptr [ %i.ck, %bb.d ], [ %i.bw, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.us = phi ptr [ %i.cj, %bb.d ], [ %i.br, %bb.c ] ; 2 uses
  %i.cg = load i32, ptr %.sroa.04.07.i.i.i.i.i.us, align 4, !tbaa !63
  %i.ch = load i32, ptr %.sroa.0.08.i.i.i.i.i.us, align 4, !tbaa !63
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.d, label %.lr.ph.i.i.i.i9.i.us
end_hunk_0
begin_hunk_1_@_ZL13push_bondtypeP18InteractionsOfTypeRK17InteractionOfTypei19InteractionFunctionbPKcP14WarningHandler:bb.a
.split295.us:                                     ; preds = %.noexc147.us
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #29
          to label %.noexc150 unwind label %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp

.noexc150:                                        ; preds = %.split295.us
  unreachable

.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit152.us, %.split295.us
  %lpad.loopexit.split-lp450 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fn = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.bm
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp
  %i.fp = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %.split293.us
  %.pn115 = phi { ptr, i32 } [ %i.ea, %.split293.us ], [ %lpad.loopexit.split-lp450, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %lpad.loopexit.split-lp450, %.loopexit.split-lp249.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  br label %bb.al

bb.n:                                             ; preds = %_ZSt5equalIN3gmx12ArrayRefIterIfEENS1_IKfEEEbT_S5_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.fr = load ptr, ptr %i.bg, align 8, !tbaa !43
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.76, ptr noundef %i.fr, ptr noundef nonnull %i.bi)
  %i.fs = load ptr, ptr %9, align 8, !tbaa !22
  %i.ft = load i64, ptr %i.bj, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler10addWarningESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 %i.ft, ptr %i.fs)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !98
  %fwrite = call i64 @fwrite(ptr nonnull @.str.78, i64 47, i64 1, ptr %i.fu) #35 ; 0 uses
  %i.fv = load ptr, ptr %0, align 8, !tbaa !30
  %i.fw = getelementptr inbounds nuw [112 x i8], ptr %i.fv, i64 %indvars.iv335
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  br i1 %i.bk, label %.lr.ph280, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph280, %bb.o
  %i.fy = load ptr, ptr @stderr, align 8, !tbaa !98
  %i.fz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fy, ptr noundef nonnull @.str.80, ptr noundef %5) #36 ; 0 uses
  %i.ga = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.bl
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %._crit_edge
  %i.gc = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %i.gf = load ptr, ptr %9, align 8, !tbaa !22    ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.bl
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

.lr.ph280:                                        ; preds = %bb.o, %.lr.ph280
  %indvars.iv325 = phi i64 [ %indvars.iv.next326, %.lr.ph280 ], [ 0, %bb.o ] ; 2 uses
  %i.gh = load ptr, ptr @stderr, align 8, !tbaa !98
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv325
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !41
  %i.gk = fpext float %i.gj to double
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gh, ptr noundef nonnull @.str.79, double noundef %i.gk) #36 ; 0 uses
  %indvars.iv.next326 = add nuw nsw i64 %indvars.iv325, 1 ; 2 uses
  %exitcond329.not = icmp eq i64 %indvars.iv.next326, %wide.trip.count328
  br i1 %exitcond329.not, label %._crit_edge, label %.lr.ph280, !llvm.loop !255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.p
  %i.gm = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.al

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZSt5equalIN3gmx12ArrayRefIterIfEENS1_IKfEEEbT_S5_T0_.exit
  br i1 %i.bq, label %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit, label %.lr.ph282

.lr.ph282:                                        ; preds = %bb.q, %.lr.ph282
  %indvars.iv330 = phi i64 [ %indvars.iv.next331, %.lr.ph282 ], [ 0, %bb.q ] ; 3 uses
  %i.go = load ptr, ptr %0, align 8, !tbaa !30
  %i.gp = getelementptr inbounds nuw [112 x i8], ptr %i.go, i64 %indvars.iv335
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv330
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !41
  %i.gs = trunc nuw nsw i64 %indvars.iv330 to i32
  call void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105) %i.gp, i32 noundef %i.gs, float noundef %i.gr)
  %indvars.iv.next331 = add nuw nsw i64 %indvars.iv330, 1 ; 2 uses
  %exitcond334.not = icmp eq i64 %indvars.iv.next331, %wide.trip.count333
  br i1 %exitcond334.not, label %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit, label %.lr.ph282, !llvm.loop !256

_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit: ; preds = %.lr.ph.i.i.i.i9.i, %bb.m, %.lr.ph282, %.loopexit246, %bb.q
  %.3 = phi i1 [ true, %.lr.ph282 ], [ true, %bb.q ], [ %.087286, %.loopexit246 ], [ %.087286, %bb.m ], [ %.087286, %.lr.ph.i.i.i.i9.i ]
  %.286 = phi i1 [ false, %.lr.ph282 ], [ false, %bb.q ], [ false, %.loopexit246 ], [ false, %bb.m ], [ %.084287, %.lr.ph.i.i.i.i9.i ] ; 2 uses
  %indvars.iv.next336 = add nuw nsw i64 %indvars.iv335, 1 ; 2 uses
  %exitcond338.not = icmp eq i64 %indvars.iv.next336, %wide.trip.count341
  br i1 %exitcond338.not, label %._crit_edge290, label %.lr.ph289.split, !llvm.loop !254

.critedge:                                        ; preds = %.loopexit258, %._crit_edge290
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.gt = load ptr, ptr %1, align 8, !tbaa !34    ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !96
  %i.gw = ptrtoint ptr %i.gv to i64
  %i.gx = ptrtoint ptr %i.gt to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gy
  store ptr %i.gt, ptr %10, align 8
  %i.ha = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.gz, ptr %i.ha, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.hb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.hb, ptr %11, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr %i.hc, ptr %i.hd, align 8
  %i.he = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17InteractionOfType19interactionTypeNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) %1) ; 2 uses
  %i.hf = load ptr, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.hf, %i.hh
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.critedge
  %.sroa.01.0.copyload.i.i = load ptr, ptr %10, align 8
  %.sroa.22.0.copyload.i.i = load ptr, ptr %i.ha, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %11, align 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %i.hd, align 8
  call void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %i.hf, ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.22.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.he, i1 noundef zeroext false)
  %i.hi = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 112
  store ptr %i.hj, ptr %i.c, align 8, !tbaa !31
  br label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i

bb.s:                                             ; preds = %.critedge
  call void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.hf, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.he)
  br label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  %i.hk = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33
          to label %bb.u unwind label %bb.t       ; 6 uses

bb.t:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  store ptr %i.hk, ptr %12, align 8, !tbaa !101
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 48 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.hk, ptr noundef nonnull align 8 dereferenceable(48) %i.hb, i64 48, i1 false), !tbaa !41
  %i.ho = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store ptr %i.hm, ptr %i.ho, align 8, !tbaa !103
  %i.hp = icmp eq i32 %3, 13
  br i1 %i.hp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hq = load float, ptr %i.hk, align 4, !tbaa !41
  %i.hr = fsub float 1.000000e+00, %i.hq
  store float %i.hr, ptr %i.hk, align 4, !tbaa !41
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !41
  %i.hu = fsub float 1.000000e+00, %i.ht
  store float %i.hu, ptr %i.hs, align 4, !tbaa !41
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  %i.hv = load ptr, ptr %1, align 8, !tbaa !34    ; 4 uses
  %i.hw = load ptr, ptr %i.gu, align 8, !tbaa !96 ; 2 uses
  %.not244312 = icmp eq ptr %i.hw, %i.hv
  br i1 %.not244312, label %._crit_edge316, label %.lr.ph315

.lr.ph315:                                        ; preds = %bb.w
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hv to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %13, i64 16
  br label %bb.x

._crit_edge316.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit
  %i.id = ptrtoint ptr %i.jf to i64
  br label %._crit_edge316

._crit_edge316:                                   ; preds = %._crit_edge316.loopexit, %bb.w
  %i.ie = phi i64 [ 0, %bb.w ], [ %i.id, %._crit_edge316.loopexit ]
  %i.if = phi ptr [ null, %bb.w ], [ %i.jg, %._crit_edge316.loopexit ] ; 4 uses
  store ptr %i.if, ptr %13, align 8
  %i.ig = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17InteractionOfType19interactionTypeNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105) %1)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0205.0313, ptr %13, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.aa, %bb.af, %bb.ae, %._crit_edge316
  %lpad.loopexit.split-lp319 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %13, align 8, !tbaa !34
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.ih = phi ptr [ %.sroa.0205.0313, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp319, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i199 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIiSaIiEED2Ev.exit200, label %bb.ai

bb.x:                                             ; preds = %.lr.ph315, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit
  %i.ii = phi ptr [ null, %.lr.ph315 ], [ %i.je, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ] ; 3 uses
  %i.ij = phi ptr [ null, %.lr.ph315 ], [ %i.jf, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ] ; 3 uses
  %i.ik = phi ptr [ %i.ia, %.lr.ph315 ], [ %i.il, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ]
  %.sroa.0205.0313 = phi ptr [ null, %.lr.ph315 ], [ %i.jg, %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit ] ; 8 uses
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -4 ; 4 uses
  %.not.i188 = icmp eq ptr %i.ij, %i.ii
  br i1 %.not.i188, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.im = load i32, ptr %i.il, align 4, !tbaa !63
  store i32 %i.im, ptr %i.ij, align 4, !tbaa !63
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 2 uses
  store ptr %i.in, ptr %i.ib, align 8, !tbaa !96
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit

bb.z:                                             ; preds = %bb.x
  %i.io = ptrtoint ptr %i.ii to i64
  %i.ip = ptrtoint ptr %.sroa.0205.0313 to i64
  %i.iq = sub i64 %i.io, %i.ip                    ; 6 uses
  %i.ir = icmp eq i64 %i.iq, 9223372036854775804
  br i1 %i.ir, label %bb.aa, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  store ptr %.sroa.0205.0313, ptr %13, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29
          to label %.noexc190 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc190:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.is = ashr exact i64 %i.iq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.is, i64 1)
  %i.it = add nsw i64 %.sroa.speculated.i.i.i, %i.is ; 2 uses
  %i.iu = icmp ult i64 %i.it, %i.is
  %i.iv = call i64 @llvm.umin.i64(i64 %i.it, i64 2305843009213693951)
  %i.iw = select i1 %i.iu, i64 2305843009213693951, i64 %i.iv ; 3 uses
  %.not.i.i.i189 = icmp ne i64 %i.iw, 0
  call void @llvm.assume(i1 %.not.i.i.i189)
  %i.ix = shl nuw nsw i64 %i.iw, 2
  %i.iy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ix) #33
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit ; 4 uses

.noexc191:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 %i.iq ; 2 uses
  %i.ja = load i32, ptr %i.il, align 4, !tbaa !63
  store i32 %i.ja, ptr %i.iz, align 4, !tbaa !63
  %i.jb = icmp sgt i64 %i.iq, 0
  br i1 %i.jb, label %bb.ab, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %.noexc191
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iy, ptr align 4 %.sroa.0205.0313, i64 %i.iq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ab, %.noexc191
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %.sroa.0205.0313, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0205.0313, i64 noundef %i.iq) #31
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.jc, ptr %i.ib, align 8, !tbaa !96
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.iw ; 2 uses
  store ptr %i.jd, ptr %i.ic, align 8, !tbaa !35
  br label %_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit

_ZNSt6vectorIiSaIiEE12emplace_backIJRKiEEERiDpOT_.exit: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.y
  %i.je = phi ptr [ %i.jd, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ii, %bb.y ]
  %i.jf = phi ptr [ %i.jc, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.in, %bb.y ] ; 2 uses
  %i.jg = phi ptr [ %i.iy, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.0205.0313, %bb.y ] ; 2 uses
  %.not244 = icmp eq ptr %i.il, %i.hv
  br i1 %.not244, label %._crit_edge316.loopexit, label %bb.x, !llvm.loop !257

bb.ad:                                            ; preds = %._crit_edge316
  %i.jh = load ptr, ptr %i.c, align 8, !tbaa !31  ; 3 uses
  %i.ji = load ptr, ptr %i.hg, align 8, !tbaa !42
  %.not.i192 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i192, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jj = ptrtoint ptr %i.if to i64
  %i.jk = sub i64 %i.ie, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.jk
  %i.jm = load ptr, ptr %12, align 8, !tbaa !101  ; 3 uses
  %i.jn = load ptr, ptr %i.ho, align 8, !tbaa !103
  %i.jo = ptrtoint ptr %i.jn to i64
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = sub i64 %i.jo, %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jq
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %i.jh, ptr %i.if, ptr %i.jl, ptr %i.jm, ptr %i.jr, ptr noundef nonnull align 8 dereferenceable(32) %i.ig, i1 noundef zeroext false)
          to label %.noexc194 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc194:                                        ; preds = %bb.ae
  %i.js = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 112
  store ptr %i.jt, ptr %i.c, align 8, !tbaa !31
  br label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRS_IiSaIiEERS_IfSaIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_.exit

bb.af:                                            ; preds = %bb.ad
  invoke void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJRS_IiSaIiEERS_IfSaIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.ig)
          to label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRS_IiSaIiEERS_IfSaIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRS_IiSaIiEERS_IfSaIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_.exit: ; preds = %bb.af, %.noexc194
  %i.ju = load ptr, ptr %13, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i196 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRS_IiSaIiEERS_IfSaIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_.exit
  %i.jv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !35
  %i.jx = ptrtoint ptr %i.jw to i64
  %i.jy = ptrtoint ptr %i.ju to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.jz) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE12emplace_backIJRS_IiSaIiEERS_IfSaIfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERS0_DpOT_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.ka = load ptr, ptr %12, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i197 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i197, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kb = load ptr, ptr %i.hn, align 8, !tbaa !102
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.ke) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.ak

bb.ai:                                            ; preds = %.loopexit.split-lp
  %i.kf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !35
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ih to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ih, i64 noundef %i.kj) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit200

_ZNSt6vectorIiSaIiEED2Ev.exit200:                 ; preds = %.loopexit.split-lp, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.kk = load ptr, ptr %12, align 8, !tbaa !101  ; 3 uses
  %.not.i.i.i201 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i201, label %.body, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit200
  %i.kl = load ptr, ptr %i.hn, align 8, !tbaa !102
  %i.km = ptrtoint ptr %i.kl to i64
  %i.kn = ptrtoint ptr %i.kk to i64
  %i.ko = sub i64 %i.km, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.ko) #31
  br label %.body

.body:                                            ; preds = %bb.t, %bb.aj, %_ZNSt6vectorIiSaIiEED2Ev.exit200
  %.pn.pn.pn = phi { ptr, i32 } [ %i.hl, %bb.t ], [ %lpad.phi, %bb.aj ], [ %lpad.phi, %_ZNSt6vectorIiSaIiEED2Ev.exit200 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  br label %bb.al

bb.ak:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %._crit_edge290
  ret void

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %.body
  %.pn117.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %.pn117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ]
  resume { ptr, i32 } %.pn117.pn.pn
}

declare i64 @_ZNK25PreprocessingBondAtomType20bondAtomTypeFromNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #21

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK17InteractionOfType19interactionTypeNameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #29
  unreachable

_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 112                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 82351536043346212)
  %i.l = select i1 %i.j, i64 82351536043346212, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 112                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #33 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.sroa.01.0.copyload.i = load ptr, ptr %2, align 8
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.22.0.copyload.i = load ptr, ptr %.sroa.22.0..sroa_idx.i, align 8
  %.sroa.0.0.copyload.i = load ptr, ptr %3, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %i.q, ptr %.sroa.01.0.copyload.i, ptr %.sroa.22.0.copyload.i, ptr %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit unwind label %bb.g

_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorI17InteractionOfTypeSaIS0_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit ] ; 8 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaI17InteractionOfTypeEE9constructIS0_JN3gmx8ArrayRefIKiEENS5_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRS1_PT_DpOT0_.exit ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !44, !alias.scope !266
  store <2 x ptr> %i.r, ptr %.012.i.i.i, align 8, !tbaa !44, !alias.scope !265
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !35, !alias.scope !266
  store ptr %i.u, ptr %i.s, align 8, !tbaa !35, !alias.scope !265
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !266
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false), !tbaa.struct !45, !alias.scope !267
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 88 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !18, !alias.scope !265
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !22, !alias.scope !266 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 88 ; 5 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !24, !alias.scope !266 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.ab, i64 %i.ag, i1 false), !alias.scope !267
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !22, !alias.scope !265
  %i.ah = load i64, ptr %i.ab, align 8, !tbaa !23, !alias.scope !266
  store i64 %i.ah, ptr %i.z, align 8, !tbaa !23, !alias.scope !265
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !24, !alias.scope !266
  br label %_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aI17InteractionOfTypeS0_SaIS0_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.ai = phi i64 [ %i.ae, %bb.c ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 80
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 80
end_hunk_1
