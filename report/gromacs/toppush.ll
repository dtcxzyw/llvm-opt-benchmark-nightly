Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/toppush?download=true
inline.NumInlined: 3473
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_Z7push_bt9DirectiveRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS2_95EEEiP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePcP14WarningHandler:bb.a
  %i.jh = load ptr, ptr %18, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i, label %_ZN17InteractionOfTypeD2Ev.exit, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ji = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !35
  %i.jk = ptrtoint ptr %i.jj to i64
  %i.jl = ptrtoint ptr %i.jh to i64
  %i.jm = sub i64 %i.jk, %i.jl
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.jm) #31
  br label %_ZN17InteractionOfTypeD2Ev.exit

_ZN17InteractionOfTypeD2Ev.exit:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.bj
  %i.jn = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.iu
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %_ZN17InteractionOfTypeD2Ev.exit
  %i.jp = load i64, ptr %i.iu, align 8, !tbaa !23
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZN17InteractionOfTypeD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %.not.i.i.i = icmp eq ptr %.sroa.0101.4, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.jr = ptrtoint ptr %.sroa.14.4 to i64
  %i.js = sub i64 %i.jr, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.4, i64 noundef %i.js) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  ret void

bb.bl:                                            ; preds = %._crit_edge.i.i
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bh
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %18) #30
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.ju, %bb.bm ], [ %i.jt, %bb.bl ] ; 2 uses
  %i.jv = load ptr, ptr %19, align 8, !tbaa !22   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.iu
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %bb.bn
  %i.jx = load i64, ptr %i.iu, align 8, !tbaa !23
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %.not.i.i.i96 = icmp eq ptr %.sroa.0101.4, null
  br i1 %.not.i.i.i96, label %_ZNSt6vectorIiSaIiEED2Ev.exit97, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.jz = ptrtoint ptr %.sroa.14.4 to i64
  %i.ka = sub i64 %i.jz, %i.iq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0101.4, i64 noundef %i.ka) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit97

_ZNSt6vectorIiSaIiEED2Ev.exit97:                  ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn73.pn.pn = phi { ptr, i32 } [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95 ], [ %.pn, %bb.bo ]
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
  %13 = alloca %"class.std::vector.10", align 8   ; 12 uses
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
  %min.iters.check412 = icmp ult i32 %2, 32
  br i1 %min.iters.check412, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.al, %vector.body ]
  %vec.phi413 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi414 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi415 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load = load <8 x i32>, ptr %i.z, align 4, !tbaa !63
  %wide.load416 = load <8 x i32>, ptr %i.aa, align 4, !tbaa !63
  %wide.load417 = load <8 x i32>, ptr %i.ab, align 4, !tbaa !63
  %wide.load418 = load <8 x i32>, ptr %i.ac, align 4, !tbaa !63
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %wide.load419 = load <8 x i32>, ptr %i.ad, align 4, !tbaa !63
  %wide.load420 = load <8 x i32>, ptr %i.ae, align 4, !tbaa !63
  %wide.load421 = load <8 x i32>, ptr %i.af, align 4, !tbaa !63
  %wide.load422 = load <8 x i32>, ptr %i.ag, align 4, !tbaa !63
  %i.ah = icmp ne <8 x i32> %wide.load, %wide.load419
  %i.ai = icmp ne <8 x i32> %wide.load416, %wide.load420
  %i.aj = icmp ne <8 x i32> %wide.load417, %wide.load421
  %i.ak = icmp ne <8 x i32> %wide.load418, %wide.load422
  %i.al = or <8 x i1> %vec.phi, %i.ah             ; 2 uses
  %i.am = or <8 x i1> %vec.phi413, %i.ai          ; 2 uses
  %i.an = or <8 x i1> %vec.phi414, %i.aj          ; 2 uses
  %i.ao = or <8 x i1> %vec.phi415, %i.ak          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.am, %i.al
  %bin.rdx423 = or <8 x i1> %i.an, %bin.rdx
  %bin.rdx424 = or <8 x i1> %i.ao, %bin.rdx423
  %bin.rdx424.fr = freeze <8 x i1> %bin.rdx424
  %i.aq = bitcast <8 x i1> %bin.rdx424.fr to i8
  %.not = icmp eq i8 %i.aq, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph289, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !258

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %14 = xor i1 %bc.merge.rdx, true
  %n.vec425 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %14, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index426 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next430, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi427 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr433, %vec.epilog.vector.body ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index426
  %wide.load428 = load <4 x i32>, ptr %i.ar, align 4, !tbaa !63
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index426
  %wide.load429 = load <4 x i32>, ptr %i.as, align 4, !tbaa !63
  %i.at = icmp ne <4 x i32> %wide.load428, %wide.load429
  %i.au = or <4 x i1> %vec.phi427, %i.at
  %.fr433 = freeze <4 x i1> %i.au                 ; 2 uses
  %index.next430 = add nuw i64 %index426, 4       ; 2 uses
  %i.av = icmp eq i64 %index.next430, %n.vec425
  br i1 %i.av, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !250

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aw = bitcast <4 x i1> %.fr433 to i4
  %.not434 = icmp eq i4 %i.aw, 0                  ; 2 uses
  %cmp.n431 = icmp eq i64 %n.vec425, %wide.trip.count
  br i1 %cmp.n431, label %.lr.ph289, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec425, %vec.epilog.middle.block ]
  %.082278.ph = phi i1 [ true, %iter.check ], [ %.not, %vec.epilog.iter.check ], [ %.not434, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %.082278 = phi i1 [ %spec.select, %.lr.ph ], [ %.082278.ph, %.lr.ph.preheader ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !63
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !63
  %.not121 = icmp eq i32 %i.ay, %i.ba
  %spec.select = select i1 %.not121, i1 %.082278, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph289, label %.lr.ph, !llvm.loop !251

.loopexit258:                                     ; preds = %bb.a
  %i.bb = icmp sgt i32 %i.j, 0
  br i1 %i.bb, label %.lr.ph289, label %.critedge

.lr.ph289:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.b, %.loopexit258
  %.2385 = phi i1 [ false, %.loopexit258 ], [ true, %bb.b ], [ %.not434, %vec.epilog.middle.block ], [ %.not, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bd = sext i32 %i.q to i64
  %.idx = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %.not6.i.i.i.i = icmp eq i32 %i.q, 0            ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bg = icmp eq i32 %3, 19
  %i.bh = select i1 %i.bg, ptr @.str.77, ptr @.str.15
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = icmp sgt i32 %i.q, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %wide.trip.count340 = and i64 %i.i, 2147483647  ; 2 uses
  br i1 %4, label %.lr.ph289.split.us, label %.lr.ph289.split.preheader

.lr.ph289.split.preheader:                        ; preds = %.lr.ph289
  %i.bp = icmp slt i32 %i.q, 1
  %wide.trip.count327 = zext nneg i32 %i.q to i64
  %wide.trip.count332 = zext nneg i32 %i.q to i64
  br label %.lr.ph289.split

.lr.ph289.split.us:                               ; preds = %.lr.ph289, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us
  %indvars.iv338 = phi i64 [ %indvars.iv.next339, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ 0, %.lr.ph289 ] ; 2 uses
  %.084287.us = phi i1 [ %.286.us, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ true, %.lr.ph289 ] ; 5 uses
  %.090285.us = phi i1 [ %.292.us, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ false, %.lr.ph289 ] ; 5 uses
  %.093284.us = phi i1 [ %.295.us, %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us ], [ false, %.lr.ph289 ] ; 5 uses
  %i.bq = load ptr, ptr %1, align 8, !tbaa !34    ; 4 uses
  %i.br = load ptr, ptr %i.bc, align 8, !tbaa !96 ; 4 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = load ptr, ptr %0, align 8, !tbaa !30
  %i.bu = getelementptr inbounds nuw [112 x i8], ptr %i.bt, i64 %indvars.iv338 ; 3 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !96
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ca
  %i.cc = ptrtoint ptr %i.br to i64
  %i.cd = sub i64 %i.cc, %i.bs
  %i.ce = icmp eq i64 %i.cd, %i.ca
  br i1 %i.ce, label %bb.c, label %.split.us

bb.c:                                             ; preds = %.lr.ph289.split.us
  %.not6.i.i.i.i.i.us = icmp eq ptr %i.bq, %i.br
  br i1 %.not6.i.i.i.i.i.us, label %.loopexit246.us, label %.lr.ph.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.us:                              ; preds = %bb.c, %bb.d
  %.sroa.0.08.i.i.i.i.i.us = phi ptr [ %i.cj, %bb.d ], [ %i.bv, %bb.c ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.us = phi ptr [ %i.ci, %bb.d ], [ %i.bq, %bb.c ] ; 2 uses
  %i.cf = load i32, ptr %.sroa.04.07.i.i.i.i.i.us, align 4, !tbaa !63
  %i.cg = load i32, ptr %.sroa.0.08.i.i.i.i.i.us, align 4, !tbaa !63
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.d, label %.lr.ph.i.i.i.i9.i.us

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.us
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.us, i64 4 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.us, i64 4
  %.not.i.i.i.i.i.us = icmp eq ptr %i.ci, %i.br
  br i1 %.not.i.i.i.i.i.us, label %.loopexit246.us, label %.lr.ph.i.i.i.i.i.us, !llvm.loop !2

.lr.ph.i.i.i.i9.i.us:                             ; preds = %.lr.ph.i.i.i.i.i.us, %bb.e
  %i.ck = phi ptr [ %i.cm, %bb.e ], [ %i.cb, %.lr.ph.i.i.i.i.i.us ]
  %.sroa.0.05.i.i.i.i.i.us = phi ptr [ %i.cp, %bb.e ], [ %i.bq, %.lr.ph.i.i.i.i.i.us ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.0.05.i.i.i.i.i.us, align 4, !tbaa !63
  %i.cm = getelementptr inbounds i8, ptr %i.ck, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !63
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.e, label %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us

bb.e:                                             ; preds = %.lr.ph.i.i.i.i9.i.us
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i.i.us, i64 4 ; 2 uses
  %.not.i.i.i.i11.i.us = icmp eq ptr %i.cp, %i.br
  br i1 %.not.i.i.i.i11.i.us, label %.loopexit246.us, label %.lr.ph.i.i.i.i9.i.us, !llvm.loop !252

.loopexit246.us:                                  ; preds = %bb.d, %bb.e, %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %.idx
  br i1 %.not6.i.i.i.i, label %_ZSt5equalIN3gmx12ArrayRefIterIfEENS1_IKfEEEbT_S5_T0_.exit.us, label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %.loopexit246.us, %.lr.ph.i.i.i.i.us
  %.sroa.0.08.i.i.i.i.us = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.us ], [ %i.be, %.loopexit246.us ] ; 2 uses
  %.sroa.04.07.i.i.i.i.us = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.us ], [ %i.cq, %.loopexit246.us ] ; 2 uses
  %i.cs = load float, ptr %.sroa.04.07.i.i.i.i.us, align 4, !tbaa !41
  %i.ct = load float, ptr %.sroa.0.08.i.i.i.i.us, align 4, !tbaa !41
  %i.cu = fcmp oeq float %i.cs, %i.ct             ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.us, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.us, i64 4
  %.not.i.i.i.i.us = icmp ne ptr %i.cv, %i.cr
  %or.cond437.not = select i1 %i.cu, i1 %.not.i.i.i.i.us, i1 false
  br i1 %or.cond437.not, label %.lr.ph.i.i.i.i.us, label %_ZSt5equalIN3gmx12ArrayRefIterIfEENS1_IKfEEEbT_S5_T0_.exit.us, !llvm.loop !253

_ZSt5equalIN3gmx12ArrayRefIterIfEENS1_IKfEEEbT_S5_T0_.exit.us: ; preds = %.lr.ph.i.i.i.i.us, %.loopexit246.us
  %.not.lcssa.i.i.i.i.us = phi i1 [ true, %.loopexit246.us ], [ %i.cu, %.lr.ph.i.i.i.i.us ] ; 3 uses
  br i1 %.2385, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZSt5equalIN3gmx12ArrayRefIterIfEENS1_IKfEEEbT_S5_T0_.exit.us
  %brmerge = select i1 %.not.lcssa.i.i.i.i.us, i1 true, i1 %.090285.us
  %not..not.lcssa.i.i.i.i.us = xor i1 %.not.lcssa.i.i.i.i.us, true ; 2 uses
  %.090285.us.mux = select i1 %not..not.lcssa.i.i.i.i.us, i1 true, i1 %.090285.us
  %.mux = select i1 %not..not.lcssa.i.i.i.i.us, i1 %.084287.us, i1 false
  br i1 %brmerge, label %_ZL28equalEitherForwardOrBackwardIiEbN3gmx8ArrayRefIKT_EES4_.exit.us, label %.noexc.i146.us

.noexc.i146.us:                                   ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  store ptr %i.bl, ptr %8, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 224, ptr %i.a, align 8, !tbaa !20
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc147.us unwind label %.split293.us ; 3 uses

.noexc147.us:                                     ; preds = %.noexc.i146.us
  store ptr %i.cx, ptr %8, align 8, !tbaa !22
  %i.cy = load i64, ptr %i.a, align 8, !tbaa !20  ; 3 uses
  store i64 %i.cy, ptr %i.bl, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(224) %i.cx, ptr noundef nonnull align 1 dereferenceable(224) @.str.75, i64 224, i1 false)
  store i64 %i.cy, ptr %i.bm, align 8, !tbaa !24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cy
  store i8 0, ptr %i.cz, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.da = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #30 ; 2 uses
  %i.db = load i64, ptr %i.bm, align 8, !tbaa !24
  %i.dc = sub i64 4611686018427387903, %i.db
  %i.dd = icmp ult i64 %i.dc, %i.da
  br i1 %i.dd, label %.split295.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149.us: ; preds = %.noexc147.us
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull %5, i64 noundef %i.da)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit152.us unwind label %.loopexit248.split.us ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit152.us: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i149.us
  %i.df = load ptr, ptr %8, align 8, !tbaa !22
  %i.dg = load i64, ptr %i.bm, align 8, !tbaa !24
  invoke void @_ZN14WarningHandler8addErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %6, i64 %i.dg, ptr %i.df)
          to label %bb.g unwind label %.loopexit248.split.us

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit152.us
  %i.dh = load ptr, ptr %8, align 8, !tbaa !22    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bl
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.us: ; preds = %bb.g
  %i.dj = load i64, ptr %i.bl, align 8, !tbaa !23
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.us: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i155.us
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
end_hunk_0
begin_hunk_1_@_Z22convert_moltype_coupleP19MoleculeInformationifiibiP18InteractionsOfTypeP14WarningHandler:bb.a
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !31 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ch, %i.cj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cw, %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i ], [ %i.ch, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 72
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !22 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 88 ; 2 uses
  %i.cn = icmp eq ptr %i.cl, %i.cm
  br i1 %i.cn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.co = load i64, ptr %i.cm, align 8, !tbaa !23
  %i.cp = add i64 %i.co, 1
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef %i.cp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !35
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #31
  br label %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i

_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i: ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 112 ; 2 uses
  %.not.i.i.i40.i = icmp eq ptr %i.cw, %i.cj
  br i1 %.not.i.i.i40.i, label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyI17InteractionOfTypeEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %15, align 8, !tbaa !30
  br label %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i
  %i.cx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ch, %_ZNSt6vectorI17InteractionOfTypeSaIS0_EE5clearEv.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i.i, label %_ZL23convert_pairs_to_pairsQRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEfP7t_atoms.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !42
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.dc) #31
  br label %_ZL23convert_pairs_to_pairsQRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEfP7t_atoms.exit

common.resume:                                    ; preds = %bb.av, %bb.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt6vectorIiSaIiEED2Ev.exit84.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %.pn30.i, %bb.x ], [ %.pn.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i34 ], [ %.pn58.pn.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit84.i ], [ %.pn63.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn.i, %bb.aw ], [ %.pn.i, %bb.av ]
  resume { ptr, i32 } %common.resume.op

bb.x:                                             ; preds = %.body.i, %bb.f, %bb.b
  %.pn30.i = phi { ptr, i32 } [ %i.v, %bb.f ], [ %.pn28.i, %.body.i ], [ %i.p, %bb.b ]
  call void @_ZNSt6vectorI17InteractionOfTypeSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br label %common.resume

_ZL23convert_pairs_to_pairsQRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEfP7t_atoms.exit: ; preds = %_ZSt8_DestroyIP17InteractionOfTypeS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br i1 %5, label %_ZL12set_excl_allPN3gmx11ListOfListsIiEE.exit, label %bb.y

bb.y:                                             ; preds = %_ZL23convert_pairs_to_pairsQRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEfP7t_atoms.exit
  %i.dd = load i32, ptr %i.a, align 8, !tbaa !441 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !442 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !31
  %i.di = load ptr, ptr %7, align 8, !tbaa !30
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = sdiv exact i64 %i.dl, 112
  %i.dn = uitofp i64 %i.dm to double
  %sqrt.i = call double @llvm.sqrt.f64(double %i.dn)
  %i.do = fptosi double %sqrt.i to i32            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.dq = icmp sgt i32 %i.dd, 0
  br i1 %i.dq, label %.lr.ph148.i, label %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit

.lr.ph148.i:                                      ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.not.i14 = icmp eq i32 %6, 37
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.dt = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 88 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.dy = zext nneg i32 %i.dd to i64              ; 5 uses
  br i1 %.not.i14, label %.lr.ph148.split.us.i, label %.lr.ph148.split.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.i, %.loopexit.us.i
  %indvars.iv179.i = phi i64 [ %indvars.iv.next180.i, %.loopexit.us.i ], [ 0, %.lr.ph148.i ] ; 4 uses
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i, %.loopexit.us.i ], [ 1, %.lr.ph148.i ] ; 2 uses
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i, 1 ; 3 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next180.i, %i.dy
  br i1 %i.dz, label %.lr.ph125.us.i, label %.loopexit.us.i

.lr.ph125.us.i:                                   ; preds = %.lr.ph148.split.us.i
  %i.ea = getelementptr inbounds nuw [36 x i8], ptr %i.df, i64 %indvars.iv179.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ed = trunc nuw nsw i64 %indvars.iv179.i to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %.lr.ph125.us.i
  %indvars.iv174.i = phi i64 [ %indvars.iv.next175.i, %bb.af ], [ %indvars.iv172.i, %.lr.ph125.us.i ] ; 6 uses
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !34 ; 2 uses
  %i.ef = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.eg = getelementptr [4 x i8], ptr %i.ef, i64 %indvars.iv179.i ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !63 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eg, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !63 ; 2 uses
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ek
  %.not110120.us.us.i = icmp eq i32 %i.eh, %i.ej
  br i1 %.not110120.us.us.i, label %.critedge.i, label %iter.check225

iter.check225:                                    ; preds = %bb.z
  %i.em = sext i32 %i.eh to i64                   ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.em ; 5 uses
  %i.eo = shl nsw i64 %i.ek, 2
  %i.ep = add nsw i64 %i.eo, -4
  %i.eq = shl nsw i64 %i.em, 2
  %i.er = sub nsw i64 %i.ep, %i.eq                ; 3 uses
  %i.es = lshr exact i64 %i.er, 2
  %i.et = add nuw nsw i64 %i.es, 1                ; 5 uses
  %min.iters.check199 = icmp ult i64 %i.er, 28
  br i1 %min.iters.check199, label %.lr.ph.us.us.i.preheader, label %vector.main.loop.iter.check200

vector.main.loop.iter.check200:                   ; preds = %iter.check225
  %min.iters.check201 = icmp ult i64 %i.er, 124
  br i1 %min.iters.check201, label %vec.epilog.ph229, label %vector.ph202

vector.ph202:                                     ; preds = %vector.main.loop.iter.check200
  %i.eu = and i64 %i.et, 24
  %n.vec203 = and i64 %i.et, 9223372036854775776  ; 4 uses
  %i.ev = shl i64 %n.vec203, 2
  %i.ew = getelementptr i8, ptr %i.en, i64 %i.ev
  %broadcast.splatinsert204 = insertelement <8 x i64> poison, i64 %indvars.iv174.i, i64 0
  %broadcast.splat205 = shufflevector <8 x i64> %broadcast.splatinsert204, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body206

vector.body206:                                   ; preds = %vector.ph202, %vector.body206
  %index207 = phi i64 [ 0, %vector.ph202 ], [ %index.next217, %vector.body206 ] ; 2 uses
  %vec.phi208 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fj, %vector.body206 ]
  %vec.phi209 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fk, %vector.body206 ]
  %vec.phi210 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fl, %vector.body206 ]
  %vec.phi211 = phi <8 x i1> [ zeroinitializer, %vector.ph202 ], [ %i.fm, %vector.body206 ]
  %i.ex = shl i64 %index207, 2
  %next.gep212 = getelementptr i8, ptr %i.en, i64 %i.ex ; 4 uses
  %i.ey = getelementptr i8, ptr %next.gep212, i64 32
  %i.ez = getelementptr i8, ptr %next.gep212, i64 64
  %i.fa = getelementptr i8, ptr %next.gep212, i64 96
  %wide.load213 = load <8 x i32>, ptr %next.gep212, align 4, !tbaa !63
  %wide.load214 = load <8 x i32>, ptr %i.ey, align 4, !tbaa !63
  %wide.load215 = load <8 x i32>, ptr %i.ez, align 4, !tbaa !63
  %wide.load216 = load <8 x i32>, ptr %i.fa, align 4, !tbaa !63
  %i.fb = zext <8 x i32> %wide.load213 to <8 x i64>
  %i.fc = zext <8 x i32> %wide.load214 to <8 x i64>
  %i.fd = zext <8 x i32> %wide.load215 to <8 x i64>
  %i.fe = zext <8 x i32> %wide.load216 to <8 x i64>
  %i.ff = icmp eq <8 x i64> %broadcast.splat205, %i.fb
  %i.fg = icmp eq <8 x i64> %broadcast.splat205, %i.fc
  %i.fh = icmp eq <8 x i64> %broadcast.splat205, %i.fd
  %i.fi = icmp eq <8 x i64> %broadcast.splat205, %i.fe
  %i.fj = or <8 x i1> %vec.phi208, %i.ff          ; 2 uses
  %i.fk = or <8 x i1> %vec.phi209, %i.fg          ; 2 uses
  %i.fl = or <8 x i1> %vec.phi210, %i.fh          ; 2 uses
  %i.fm = or <8 x i1> %vec.phi211, %i.fi          ; 2 uses
  %index.next217 = add nuw i64 %index207, 32      ; 2 uses
  %i.fn = icmp eq i64 %index.next217, %n.vec203
  br i1 %i.fn, label %middle.block218, label %vector.body206, !llvm.loop !428

middle.block218:                                  ; preds = %vector.body206
  %bin.rdx219 = or <8 x i1> %i.fk, %i.fj
  %bin.rdx220 = or <8 x i1> %i.fl, %bin.rdx219
  %bin.rdx221 = or <8 x i1> %i.fm, %bin.rdx220
  %bin.rdx221.fr = freeze <8 x i1> %bin.rdx221
  %i.fo = bitcast <8 x i1> %bin.rdx221.fr to i8
  %i.fp = icmp ne i8 %i.fo, 0                     ; 3 uses
  %cmp.n222 = icmp eq i64 %i.et, %n.vec203
  br i1 %cmp.n222, label %._crit_edge.us.us.i, label %vec.epilog.iter.check227

vec.epilog.iter.check227:                         ; preds = %middle.block218
  %min.epilog.iters.check228 = icmp eq i64 %i.eu, 0
  br i1 %min.epilog.iters.check228, label %.lr.ph.us.us.i.preheader, label %vec.epilog.ph229, !prof !61

vec.epilog.ph229:                                 ; preds = %vector.main.loop.iter.check200, %vec.epilog.iter.check227
  %vec.epilog.resume.val223 = phi i64 [ %n.vec203, %vec.epilog.iter.check227 ], [ 0, %vector.main.loop.iter.check200 ]
  %bc.merge.rdx224 = phi i1 [ %i.fp, %vec.epilog.iter.check227 ], [ false, %vector.main.loop.iter.check200 ]
  %n.vec230 = and i64 %i.et, 9223372036854775800  ; 3 uses
  %i.fq = shl i64 %n.vec230, 2
  %i.fr = getelementptr i8, ptr %i.en, i64 %i.fq
  %broadcast.splatinsert231.a = insertelement <8 x i64> poison, i64 %indvars.iv174.i, i64 0
  %broadcast.splat232.a = shufflevector <8 x i64> %broadcast.splatinsert231.a, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert233 = insertelement <8 x i1> poison, i1 %bc.merge.rdx224, i64 0
  %broadcast.splat234 = shufflevector <8 x i1> %broadcast.splatinsert233, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph229
  %index236 = phi i64 [ %vec.epilog.resume.val223, %vec.epilog.ph229 ], [ %index.next240, %vec.epilog.vector.body235 ] ; 2 uses
  %vec.phi237 = phi <8 x i1> [ %broadcast.splat234, %vec.epilog.ph229 ], [ %i.fv, %vec.epilog.vector.body235 ]
  %i.fs = shl i64 %index236, 2
  %next.gep238 = getelementptr i8, ptr %i.en, i64 %i.fs
  %wide.load239 = load <8 x i32>, ptr %next.gep238, align 4, !tbaa !63
  %i.ft = zext <8 x i32> %wide.load239 to <8 x i64>
  %i.fu = icmp eq <8 x i64> %broadcast.splat232.a, %i.ft
  %.fr275 = freeze <8 x i1> %i.fu
  %i.fv = or <8 x i1> %vec.phi237, %.fr275        ; 2 uses
  %index.next240 = add nuw i64 %index236, 8       ; 2 uses
  %i.fw = icmp eq i64 %index.next240, %n.vec230
  br i1 %i.fw, label %vec.epilog.middle.block241, label %vec.epilog.vector.body235, !llvm.loop !429

vec.epilog.middle.block241:                       ; preds = %vec.epilog.vector.body235
  %i.fx = bitcast <8 x i1> %i.fv to i8
  %i.fy = icmp ne i8 %i.fx, 0                     ; 2 uses
  %cmp.n242 = icmp eq i64 %i.et, %n.vec230
  br i1 %cmp.n242, label %._crit_edge.us.us.i, label %.lr.ph.us.us.i.preheader

.lr.ph.us.us.i.preheader:                         ; preds = %iter.check225, %vec.epilog.iter.check227, %vec.epilog.middle.block241
  %.053122.us.us.i.ph = phi i1 [ false, %iter.check225 ], [ %i.fp, %vec.epilog.iter.check227 ], [ %i.fy, %vec.epilog.middle.block241 ]
  %.sroa.0107.0121.us.us.i.ph = phi ptr [ %i.en, %iter.check225 ], [ %i.ew, %vec.epilog.iter.check227 ], [ %i.fr, %vec.epilog.middle.block241 ]
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %.lr.ph.us.us.i
  %.053122.us.us.i = phi i1 [ %spec.select.us.us.i, %.lr.ph.us.us.i ], [ %.053122.us.us.i.ph, %.lr.ph.us.us.i.preheader ]
  %.sroa.0107.0121.us.us.i = phi ptr [ %i.gc, %.lr.ph.us.us.i ], [ %.sroa.0107.0121.us.us.i.ph, %.lr.ph.us.us.i.preheader ] ; 2 uses
  %i.fz = load i32, ptr %.sroa.0107.0121.us.us.i, align 4, !tbaa !63
  %i.ga = zext i32 %i.fz to i64
  %i.gb = icmp eq i64 %indvars.iv174.i, %i.ga
  %spec.select.us.us.i = select i1 %i.gb, i1 true, i1 %.053122.us.us.i ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0107.0121.us.us.i, i64 4 ; 2 uses
  %.not110.us.us.i = icmp eq ptr %i.gc, %i.el
  br i1 %.not110.us.us.i, label %._crit_edge.us.us.i, label %.lr.ph.us.us.i, !llvm.loop !430

._crit_edge.us.us.i:                              ; preds = %.lr.ph.us.us.i, %vec.epilog.middle.block241, %middle.block218
  %spec.select.us.us.i.lcssa = phi i1 [ %i.fy, %vec.epilog.middle.block241 ], [ %i.fp, %middle.block218 ], [ %spec.select.us.us.i, %.lr.ph.us.us.i ]
  br i1 %spec.select.us.us.i.lcssa, label %bb.af, label %.critedge.i

.critedge.i:                                      ; preds = %._crit_edge.us.us.i, %bb.z
  %i.gd = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i32 %i.ed, ptr %i.gd, align 4
  %.sroa.598.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = trunc nuw nsw i64 %indvars.iv174.i to i32
  store i32 %i.gf, ptr %.sroa.598.0..sroa_idx.us.us.i, align 4
  %i.gg = load float, ptr %i.eb, align 4, !tbaa !149
  %i.gh = getelementptr inbounds nuw [36 x i8], ptr %i.df, i64 %indvars.iv174.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !149
  %i.gk = load i16, ptr %i.ec, align 4, !tbaa !148
  %i.gl = zext i16 %i.gk to i32
  %i.gm = mul nuw nsw i32 %i.gl, %i.do
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.go = load i16, ptr %i.gn, align 4, !tbaa !148
  %i.gp = zext i16 %i.go to i32
  %i.gq = add nuw nsw i32 %i.gm, %i.gp
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = load ptr, ptr %7, align 8, !tbaa !30
  %i.gt = getelementptr inbounds nuw [112 x i8], ptr %i.gs, i64 %i.gr
  %i.gu = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c0Ev(ptr noundef nonnull align 8 dereferenceable(105) %i.gt)
          to label %bb.aa unwind label %.split.us.split.us.i

bb.aa:                                            ; preds = %.critedge.i
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !41
  %i.gw = load i16, ptr %i.ec, align 4, !tbaa !148
  %i.gx = zext i16 %i.gw to i32
  %i.gy = mul nuw nsw i32 %i.gx, %i.do
  %i.gz = load i16, ptr %i.gn, align 4, !tbaa !148
  %i.ha = zext i16 %i.gz to i32
  %i.hb = add nuw nsw i32 %i.gy, %i.ha
  %i.hc = zext nneg i32 %i.hb to i64
  %i.hd = load ptr, ptr %7, align 8, !tbaa !30
  %i.he = getelementptr inbounds nuw [112 x i8], ptr %i.hd, i64 %i.hc
  %i.hf = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c1Ev(ptr noundef nonnull align 8 dereferenceable(105) %i.he)
          to label %bb.ab unwind label %.split.us.split.us.i

bb.ab:                                            ; preds = %bb.aa
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !41
  %i.hh = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33
          to label %._crit_edge.i.i.us.us.i unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i.split.us.split.us.i ; 8 uses

._crit_edge.i.i.us.us.i:                          ; preds = %bb.ab
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store float %i.gg, ptr %i.hh, align 4
  %.sroa.5.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %i.gj, ptr %.sroa.5.0..sroa_idx.us.us.i, align 4
  %.sroa.6.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store float %i.gv, ptr %.sroa.6.0..sroa_idx.us.us.i, align 4
  %.sroa.7.0..sroa_idx.us.us.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store float %i.hg, ptr %.sroa.7.0..sroa_idx.us.us.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30
  store ptr %i.dt, ptr %14, align 8, !tbaa !18
  store i64 0, ptr %i.du, align 8, !tbaa !24
  store i8 0, ptr %i.dt, align 8, !tbaa !23
  invoke void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105) %13, ptr nonnull %i.gd, ptr nonnull %i.ge, ptr nonnull %i.hh, ptr nonnull %i.hi, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.ac unwind label %.split130.us.split.us.i

bb.ac:                                            ; preds = %._crit_edge.i.i.us.us.i
  invoke void @_Z17add_param_to_listP18InteractionsOfTypeRK17InteractionOfType(ptr noundef nonnull %i.ds, ptr noundef nonnull align 8 dereferenceable(105) %13)
          to label %bb.ad unwind label %.split137.us.split.us.i

bb.ad:                                            ; preds = %bb.ac
  %i.hj = load ptr, ptr %i.dv, align 8, !tbaa !22 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.dw
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us.us.i: ; preds = %bb.ad
  %i.hl = load i64, ptr %i.dw, align 8, !tbaa !23
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us.us.i
  %i.hn = load ptr, ptr %13, align 8, !tbaa !34   ; 3 uses
  %.not.i.i.i.i.us.us.i = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.us.us.i, label %_ZN17InteractionOfTypeD2Ev.exit.us.us.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i
  %i.ho = load ptr, ptr %i.dx, align 8, !tbaa !35
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = ptrtoint ptr %i.hn to i64
  %i.hr = sub i64 %i.hp, %i.hq
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hr) #31
  br label %_ZN17InteractionOfTypeD2Ev.exit.us.us.i

_ZN17InteractionOfTypeD2Ev.exit.us.us.i:          ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us.us.i
  %i.hs = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.dt
  br i1 %i.ht, label %_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.us.us.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.us.us.i: ; preds = %_ZN17InteractionOfTypeD2Ev.exit.us.us.i
  %i.hu = load i64, ptr %i.dt, align 8, !tbaa !23
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i

_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i:            ; preds = %_ZN17InteractionOfTypeD2Ev.exit.us.us.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 16) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 8) #31
  br label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.us.us.i, %._crit_edge.us.us.i
  %indvars.iv.next175.i = add nuw nsw i64 %indvars.iv174.i, 1 ; 2 uses
  %exitcond178.not.i = icmp eq i64 %indvars.iv.next175.i, %i.dy
  br i1 %exitcond178.not.i, label %.loopexit.us.i, label %bb.z, !llvm.loop !431

.loopexit.us.i:                                   ; preds = %bb.af, %.lr.ph148.split.us.i
  %indvars.iv.next173.i = add nuw nsw i64 %indvars.iv172.i, 1
  %exitcond183.not.i = icmp eq i64 %indvars.iv.next180.i, %i.dy
  br i1 %exitcond183.not.i, label %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit, label %.lr.ph148.split.us.i, !llvm.loop !432

.split.us.split.us.i:                             ; preds = %bb.aa, %.critedge.i
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84.i

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i.split.us.split.us.i: ; preds = %bb.ab
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84.i

.split130.us.split.us.i:                          ; preds = %._crit_edge.i.i.us.us.i
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.split137.us.split.us.i:                          ; preds = %bb.ac
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17InteractionOfTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %13) #30
  br label %bb.al

.loopexit.i:                                      ; preds = %bb.am, %.lr.ph148.split.i
  %exitcond171.not.i = icmp eq i64 %indvars.iv.next.i, %i.dy
  br i1 %exitcond171.not.i, label %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit, label %.lr.ph148.split.i, !llvm.loop !432

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %.lr.ph148.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 4 uses
  %i.ia = icmp samesign ult i64 %indvars.iv.next.i, %i.dy
  br i1 %i.ia, label %.lr.ph125.i, label %.loopexit.i

.lr.ph125.i:                                      ; preds = %.lr.ph148.split.i
  %i.ib = load ptr, ptr %i.dr, align 8, !tbaa !34 ; 2 uses
  %i.ic = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.id = getelementptr [4 x i8], ptr %i.ic, i64 %indvars.iv.i ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !63 ; 2 uses
  %i.if = sext i32 %i.ie to i64                   ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.if ; 5 uses
  %i.ih = getelementptr i8, ptr %i.id, i64 4
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !63 ; 2 uses
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ij
  %.not110120.i = icmp eq i32 %i.ie, %i.ii
  br i1 %.not110120.i, label %.split.us145.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph125.i
  %i.il = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.im = shl nsw i64 %i.ij, 2
  %i.in = add nsw i64 %i.im, -4
  %i.io = shl nsw i64 %i.if, 2
  %i.ip = sub nsw i64 %i.in, %i.io                ; 3 uses
  %i.iq = lshr exact i64 %i.ip, 2
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ip, 28
  %min.iters.check177 = icmp ult i64 %i.ip, 124
  %i.is = and i64 %i.ir, 24
  %n.vec = and i64 %i.ir, 9223372036854775776     ; 4 uses
  %i.it = shl i64 %n.vec, 2
  %i.iu = getelementptr i8, ptr %i.ig, i64 %i.it
  %cmp.n = icmp eq i64 %i.ir, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.is, 0
  %n.vec186 = and i64 %i.ir, 9223372036854775800  ; 3 uses
  %i.iv = shl i64 %n.vec186, 2
  %i.iw = getelementptr i8, ptr %i.ig, i64 %i.iv
  %cmp.n196 = icmp eq i64 %i.ir, %n.vec186
  br label %iter.check

iter.check:                                       ; preds = %bb.am, %.lr.ph.preheader.i
  %.055123.i = phi i32 [ %i.kg, %bb.am ], [ %i.il, %.lr.ph.preheader.i ] ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check177, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.055123.i, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.jf, %vector.body ]
  %vec.phi178 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.jg, %vector.body ]
  %vec.phi179 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.jh, %vector.body ]
  %vec.phi180 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.ji, %vector.body ]
  %i.ix = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ig, i64 %i.ix ; 4 uses
  %i.iy = getelementptr i8, ptr %next.gep, i64 32
  %i.iz = getelementptr i8, ptr %next.gep, i64 64
  %i.ja = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !63
  %wide.load181 = load <8 x i32>, ptr %i.iy, align 4, !tbaa !63
  %wide.load182 = load <8 x i32>, ptr %i.iz, align 4, !tbaa !63
  %wide.load183 = load <8 x i32>, ptr %i.ja, align 4, !tbaa !63
  %i.jb = icmp eq <8 x i32> %wide.load, %broadcast.splat
  %i.jc = icmp eq <8 x i32> %wide.load181, %broadcast.splat
  %i.jd = icmp eq <8 x i32> %wide.load182, %broadcast.splat
  %i.je = icmp eq <8 x i32> %wide.load183, %broadcast.splat
  %i.jf = or <8 x i1> %vec.phi, %i.jb             ; 2 uses
  %i.jg = or <8 x i1> %vec.phi178, %i.jc          ; 2 uses
  %i.jh = or <8 x i1> %vec.phi179, %i.jd          ; 2 uses
  %i.ji = or <8 x i1> %vec.phi180, %i.je          ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %middle.block, label %vector.body, !llvm.loop !433

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %i.jg, %i.jf
  %bin.rdx184 = or <8 x i1> %i.jh, %bin.rdx
  %bin.rdx185 = or <8 x i1> %i.ji, %bin.rdx184
  %bin.rdx185.fr = freeze <8 x i1> %bin.rdx185
  %i.jk = bitcast <8 x i1> %bin.rdx185.fr to i8
  %i.jl = icmp ne i8 %i.jk, 0                     ; 3 uses
  br i1 %cmp.n, label %._crit_edge.i16, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.jl, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %broadcast.splatinsert187 = insertelement <8 x i32> poison, i32 %.055123.i, i64 0
  %broadcast.splat188 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert189 = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat190 = shufflevector <8 x i1> %broadcast.splatinsert189, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index191 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next195, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi192 = phi <8 x i1> [ %broadcast.splat190, %vec.epilog.ph ], [ %i.jo, %vec.epilog.vector.body ]
  %i.jm = shl i64 %index191, 2
  %next.gep193 = getelementptr i8, ptr %i.ig, i64 %i.jm
  %wide.load194 = load <8 x i32>, ptr %next.gep193, align 4, !tbaa !63
  %i.jn = icmp eq <8 x i32> %wide.load194, %broadcast.splat188
  %.fr = freeze <8 x i1> %i.jn
  %i.jo = or <8 x i1> %vec.phi192, %.fr           ; 2 uses
  %index.next195 = add nuw i64 %index191, 8       ; 2 uses
  %i.jp = icmp eq i64 %index.next195, %n.vec186
  br i1 %i.jp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !434

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.jq = bitcast <8 x i1> %i.jo to i8
  %i.jr = icmp ne i8 %i.jq, 0                     ; 2 uses
  br i1 %cmp.n196, label %._crit_edge.i16, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.053122.i.ph = phi i1 [ false, %iter.check ], [ %i.jl, %vec.epilog.iter.check ], [ %i.jr, %vec.epilog.middle.block ]
  %.sroa.0107.0121.i.ph = phi ptr [ %i.ig, %iter.check ], [ %i.iu, %vec.epilog.iter.check ], [ %i.iw, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i16:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.i.lcssa = phi i1 [ %i.jr, %vec.epilog.middle.block ], [ %i.jl, %middle.block ], [ %spec.select.i, %vec.epilog.scalar.ph ]
  br i1 %spec.select.i.lcssa, label %bb.am, label %.split.us145.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.053122.i = phi i1 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %.053122.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.sroa.0107.0121.i = phi ptr [ %i.ju, %vec.epilog.scalar.ph ], [ %.sroa.0107.0121.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.js = load i32, ptr %.sroa.0107.0121.i, align 4, !tbaa !63
  %i.jt = icmp eq i32 %i.js, %.055123.i
  %spec.select.i = select i1 %i.jt, i1 true, i1 %.053122.i ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0107.0121.i, i64 4 ; 2 uses
  %.not110.i = icmp eq ptr %i.ju, %i.ik
  br i1 %.not110.i, label %._crit_edge.i16, label %vec.epilog.scalar.ph, !llvm.loop !435

.split.us145.i:                                   ; preds = %.lr.ph125.i, %._crit_edge.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  call void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.201)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, i8 noundef zeroext 2)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %.split.us145.i
  invoke void @_Z22warning_error_and_exitP14WarningHandlerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKNSt10filesystem7__cxx114pathEi(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 3136) #29
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  unreachable

bb.ai:                                            ; preds = %.split.us145.i
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %12) #30
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.pn63.i = phi { ptr, i32 } [ %i.jw, %bb.aj ], [ %i.jv, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #30
  %i.jx = load ptr, ptr %11, align 8, !tbaa !22   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy
  br i1 %i.jz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.ka = load i64, ptr %i.jy, align 8, !tbaa !23
  %i.kb = add i64 %i.ka, 1
  call void @_ZdlPvm(ptr noundef %i.jx, i64 noundef %i.kb) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %common.resume

bb.al:                                            ; preds = %.split137.us.split.us.i, %.split130.us.split.us.i
  %.pn58.i = phi { ptr, i32 } [ %i.hz, %.split137.us.split.us.i ], [ %i.hy, %.split130.us.split.us.i ]
  %i.kc = load ptr, ptr %14, align 8, !tbaa !22   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.dt
  br i1 %i.kd, label %_ZNSt6vectorIfSaIfEED2Ev.exit81.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i: ; preds = %bb.al
  %i.ke = load i64, ptr %i.dt, align 8, !tbaa !23
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit81.i

_ZNSt6vectorIfSaIfEED2Ev.exit81.i:                ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i76.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef 16) #31
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit84.i

_ZNSt6vectorIiSaIiEED2Ev.exit84.i:                ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit81.i, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i.split.us.split.us.i, %.split.us.split.us.i
  %.pn58.pn.pn.i = phi { ptr, i32 } [ %.pn58.i, %_ZNSt6vectorIfSaIfEED2Ev.exit81.i ], [ %i.hw, %.split.us.split.us.i ], [ %i.hx, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i.split.us.split.us.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 8) #31
  br label %common.resume

bb.am:                                            ; preds = %._crit_edge.i16
  %i.kg = add nuw nsw i32 %.055123.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.kg, %i.dd
  br i1 %exitcond.not.i, label %.loopexit.i, label %iter.check, !llvm.loop !431

_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit: ; preds = %.loopexit.i, %.loopexit.us.i, %bb.y
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !96
  %i.kj = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = ashr exact i64 %i.km, 2
  %i.ko = add nsw i64 %i.kn, -1                   ; 6 uses
  %i.kp = trunc i64 %i.ko to i32                  ; 2 uses
  %sext.i = shl i64 %i.ko, 32                     ; 3 uses
  %i.kq = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.kr = icmp ugt i64 %i.kq, 2305843009213693951
  br i1 %i.kr, label %.noexc.i27, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i27:                                       ; preds = %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.84) #29
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZL19generate_LJCpairsNBP19MoleculeInformationiP18InteractionsOfTypeP14WarningHandler.exit
  %.not.i.i.i.i.i18 = icmp eq i64 %sext.i, 0
  br i1 %.not.i.i.i.i.i18, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %.noexc20.i

.noexc20.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ks = ashr exact i64 %sext.i, 30
  %i.kt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ks) #33 ; 5 uses
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.kq ; 2 uses
  store i32 0, ptr %i.kt, align 4, !tbaa !63
  %i.kv = getelementptr i8, ptr %i.kt, i64 4      ; 3 uses
  %i.kw = add nsw i64 %i.kq, -1                   ; 2 uses
  %i.kx = icmp eq i64 %i.kw, 0
  br i1 %i.kx, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc20.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.kw, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.kv, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !63
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 %.idx.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc20.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.12.0.i = phi ptr [ %i.ku, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ku, %.noexc20.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.026.0.i = phi ptr [ %i.kt, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.kt, %.noexc20.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 12 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ky, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.kv, %.noexc20.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %i.kz = icmp sgt i32 %i.kp, 0                   ; 2 uses
  br i1 %i.kz, label %iter.check256, label %._crit_edge.i19

iter.check256:                                    ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %wide.trip.count.i = and i64 %i.ko, 2147483647  ; 5 uses
  %min.iters.check245 = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check245, label %.lr.ph.i23.preheader, label %vector.main.loop.iter.check246

vector.main.loop.iter.check246:                   ; preds = %iter.check256
  %min.iters.check247 = icmp samesign ult i64 %wide.trip.count.i, 32
  br i1 %min.iters.check247, label %vec.epilog.ph260, label %vector.ph248

vector.ph248:                                     ; preds = %vector.main.loop.iter.check246
  %i.la = and i64 %i.ko, 24
  %n.vec249 = and i64 %i.ko, 2147483616           ; 4 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.ph248, %vector.body250
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next252, %vector.body250 ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph248 ], [ %vec.ind.next, %vector.body250 ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.0.i, i64 %index251 ; 4 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 64
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 96
  store <8 x i32> %vec.ind, ptr %i.lb, align 4, !tbaa !63
  store <8 x i32> %step.add, ptr %i.lc, align 4, !tbaa !63
  store <8 x i32> %step.add.2, ptr %i.ld, align 4, !tbaa !63
  store <8 x i32> %step.add.3, ptr %i.le, align 4, !tbaa !63
  %index.next252 = add nuw i64 %index251, 32      ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.lf = icmp eq i64 %index.next252, %n.vec249
  br i1 %i.lf, label %middle.block253, label %vector.body250, !llvm.loop !436

middle.block253:                                  ; preds = %vector.body250
  %cmp.n254 = icmp eq i64 %wide.trip.count.i, %n.vec249
  br i1 %cmp.n254, label %._crit_edge.i19, label %vec.epilog.iter.check258

vec.epilog.iter.check258:                         ; preds = %middle.block253
  %min.epilog.iters.check259 = icmp eq i64 %i.la, 0
  br i1 %min.epilog.iters.check259, label %.lr.ph.i23.preheader, label %vec.epilog.ph260, !prof !61

vec.epilog.ph260:                                 ; preds = %vector.main.loop.iter.check246, %vec.epilog.iter.check258
  %vec.epilog.resume.val255 = phi i64 [ %n.vec249, %vec.epilog.iter.check258 ], [ 0, %vector.main.loop.iter.check246 ] ; 2 uses
  %n.vec261 = and i64 %i.ko, 2147483640           ; 3 uses
  %i.lg = trunc nuw nsw i64 %vec.epilog.resume.val255 to i32
  %broadcast.splatinsert262 = insertelement <8 x i32> poison, i32 %i.lg, i64 0
  %broadcast.splat263 = shufflevector <8 x i32> %broadcast.splatinsert262, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i32> %broadcast.splat263, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vec.epilog.vector.body264

vec.epilog.vector.body264:                        ; preds = %vec.epilog.vector.body264, %vec.epilog.ph260
  %index265 = phi i64 [ %vec.epilog.resume.val255, %vec.epilog.ph260 ], [ %index.next267, %vec.epilog.vector.body264 ] ; 2 uses
  %vec.ind266 = phi <8 x i32> [ %induction, %vec.epilog.ph260 ], [ %vec.ind.next268, %vec.epilog.vector.body264 ] ; 2 uses
end_hunk_1
