inline.NumInlined: 6455
inline.NumDeleted: 1960
begin_hunk_0_@_ZN4node11SPrintFImplIPN2v86ObjectEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_:bb.a
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %16) ; 0 uses
  %i.by = load ptr, ptr %16, align 8              ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bu
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.i
  %i.ca = load i64, ptr %i.bu, align 8
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #29
  br label %bb.n

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  %i.cc = load ptr, ptr %3, align 8, !noalias !1958
  %.not.i.i55 = icmp eq ptr %i.cc, null           ; 3 uses
  %i.cd = select i1 %.not.i.i55, ptr @.str.310, ptr @.str.309
  %i.ce = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  store ptr %i.ce, ptr %18, align 8, !alias.scope !1959
  %i.cf = select i1 %.not.i.i55, i64 5, i64 4     ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4) %i.ce, ptr noundef nonnull align 1 dereferenceable(4) %i.cd, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.cf, ptr %i.cg, align 8, !alias.scope !1959
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i55, i64 21, i64 20
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %18, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  store i8 0, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 1, !alias.scope !1959
  call void @_ZN4node7ToUpperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18)
  %i.ch = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %17) ; 0 uses
  %i.ci = load ptr, ptr %17, align 8              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.j
  %i.cl = load i64, ptr %i.cj, align 8
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  %i.cn = load ptr, ptr %18, align 8              ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.ce
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.cp = load i64, ptr %i.ce, align 8
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #29
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.cr = load ptr, ptr %3, align 8
  %i.cs = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 20, ptr noundef nonnull @.str.372, ptr noundef %i.cr) #29
  %i.ct = icmp sgt i32 %i.cs, -1
  br i1 %i.ct, label %bb.m, label %bb.l, !prof !39

bb.l:                                             ; preds = %bb.k
  call void @_ZN4node6AssertERKNS_13AssertionInfoE(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN4node11SPrintFImplIPN2v86ObjectEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES9_St17basic_string_viewIcS7_EOT_DpOT0_E20error_and_abort_args_1) #29
  call void @abort() #30
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #29
  %i.cv = add i64 %.0.lcssa, 2                    ; 4 uses
  %i.cw = icmp ugt i64 %i.cv, %1
  br i1 %i.cw, label %bb.o, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.375, i64 noundef %i.cv, i64 noundef %1) #30
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65: ; preds = %bb.n
  %i.cx = sub nuw i64 %1, %i.cv
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %i.cv
  call void @_ZN4node11SPrintFImplIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES6_St17basic_string_viewIcS4_EOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 %i.cx, ptr %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %4) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  %i.cz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !noalias !1962
  %i.db = load ptr, ptr %7, align 8, !noalias !1962
  %i.dc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 0, i64 noundef 0, ptr noundef %i.db, i64 noundef %i.da), !noalias !1962 ; 6 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dd, ptr %0, align 8, !alias.scope !1962
  %i.de = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 5 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

bb.p:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.di = load i64, ptr %i.dh, align 8            ; 3 uses
  %i.dj = icmp ult i64 %i.di, 16
  call void @llvm.assume(i1 %i.dj)
  %i.dk = add nuw nsw i64 %i.di, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dd, ptr noundef nonnull align 8 dereferenceable(1) %i.df, i64 %i.dk, i1 false)
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit65
  store ptr %i.de, ptr %0, align 8, !alias.scope !1962
  %i.dl = load i64, ptr %i.df, align 8
  store i64 %i.dl, ptr %i.dd, align 8, !alias.scope !1962
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66
  %i.dm = phi i64 [ %i.di, %bb.p ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dm, ptr %i.do, align 8, !alias.scope !1962
  store ptr %i.df, ptr %i.dc, align 8
  store i64 0, ptr %i.dn, align 8
  store i8 0, ptr %i.df, align 8
  %i.dp = load ptr, ptr %19, align 8              ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit
  %i.ds = load i64, ptr %i.dq, align 8
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.du = load ptr, ptr %7, align 8               ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.q
  %i.dx = load i64, ptr %i.dv, align 8
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  ret void
}

declare noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef) local_unnamed_addr #5

declare noundef i64 @_ZN2v815SnapshotCreator7AddDataENS_5LocalINS_7ContextEEEm(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE15_M_range_insertIPKNS0_5LocalIS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EET_SG_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64                   ; 5 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 9 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 16 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 7 uses
  %i.l = sub i64 %i.j, %i.k
  %.not46 = icmp ult i64 %i.l, %i.d
  br i1 %.not46, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.n = sub i64 %i.k, %i.m                       ; 4 uses
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 4 uses
  %4 = add i64 %i.b, -8
  %5 = sub i64 %4, %i.c                           ; 2 uses
  %i.r = lshr i64 %5, 3
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %min.iters.check154 = icmp ult i64 %5, 56
  %i.t = sub i64 %i.b, %i.c
  %diff.check152 = icmp ult i64 %i.t, 32
  %or.cond = or i1 %min.iters.check154, %diff.check152
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %bb.d
  %n.vec157 = and i64 %i.s, 4611686018427387900   ; 3 uses
  %i.u = shl i64 %n.vec157, 3                     ; 2 uses
  %i.v = getelementptr i8, ptr %i.i, i64 %i.u
  %i.w = getelementptr i8, ptr %i.q, i64 %i.u
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next164, %vector.body158 ] ; 2 uses
  %i.x = shl i64 %index159, 3                     ; 2 uses
  %next.gep160 = getelementptr i8, ptr %i.i, i64 %i.x ; 2 uses
  %next.gep161 = getelementptr i8, ptr %i.q, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep161, i64 16
  %wide.load162 = load <2 x i64>, ptr %next.gep161, align 8
  %wide.load163 = load <2 x i64>, ptr %i.y, align 8
  %i.z = getelementptr i8, ptr %next.gep160, i64 16
  store <2 x i64> %wide.load162, ptr %next.gep160, align 8
  store <2 x i64> %wide.load163, ptr %i.z, align 8
  %index.next164 = add nuw i64 %index159, 4       ; 2 uses
  %i.aa = icmp eq i64 %index.next164, %n.vec157
  br i1 %i.aa, label %middle.block165, label %vector.body158, !llvm.loop !1965

middle.block165:                                  ; preds = %vector.body158
  %cmp.n166 = icmp eq i64 %i.s, %n.vec157
  br i1 %cmp.n166, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %middle.block165
  %.08.i.i.i.i.i.ph = phi ptr [ %i.i, %bb.d ], [ %i.v, %middle.block165 ]
  %.sroa.04.07.i.i.i.i.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.w, %middle.block165 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.ab = load i64, ptr %.sroa.04.07.i.i.i.i.i, align 8
  store i64 %i.ab, ptr %.08.i.i.i.i.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %i.i
  br i1 %i.ae, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1966

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block165
  %i.af = load ptr, ptr %i.h, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.d
  store ptr %i.ag, ptr %i.h, align 8
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = ashr exact i64 %i.ai, 3                 ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 1
  br i1 %i.ak, label %bb.e, label %bb.f, !prof !39

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.al = sub nsw i64 0, %i.aj
  %i.am = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.al
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.am, ptr align 8 %1, i64 %i.ai, i1 false)
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %i.an = icmp eq i64 %i.ai, 8
  br i1 %i.an, label %bb.g, label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.ap = load i64, ptr %1, align 8
  store i64 %i.ap, ptr %i.ao, align 8
  br label %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit

_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.aq = icmp sgt i64 %i.e, 0
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i47.preheader, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i47.preheader:                     ; preds = %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit
  %min.iters.check172 = icmp ult i64 %i.e, 6
  %i.ar = sub i64 %i.m, %i.c
  %diff.check170 = icmp ult i64 %i.ar, 32
  %or.cond244 = or i1 %min.iters.check172, %diff.check170
  br i1 %or.cond244, label %.lr.ph.i.i.i.i.i47.preheader254, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i.i.i.i.i47.preheader
  %n.vec175 = and i64 %i.e, 9223372036854775804   ; 3 uses
  %i.as = and i64 %i.e, 3
  %i.at = shl i64 %n.vec175, 3                    ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %2, i64 %i.at
  br label %vector.body176

vector.body176:                                   ; preds = %vector.body176, %vector.ph173
  %index177 = phi i64 [ 0, %vector.ph173 ], [ %index.next182, %vector.body176 ] ; 2 uses
  %i.aw = shl i64 %index177, 3                    ; 2 uses
  %next.gep178 = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  %next.gep179 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep179, i64 16
  %wide.load180 = load <2 x i64>, ptr %next.gep179, align 8
  %wide.load181 = load <2 x i64>, ptr %i.ax, align 8
  %i.ay = getelementptr i8, ptr %next.gep178, i64 16
  store <2 x i64> %wide.load180, ptr %next.gep178, align 8
  store <2 x i64> %wide.load181, ptr %i.ay, align 8
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.az = icmp eq i64 %index.next182, %n.vec175
  br i1 %i.az, label %middle.block183, label %vector.body176, !llvm.loop !1967

middle.block183:                                  ; preds = %vector.body176
  %cmp.n184 = icmp eq i64 %i.e, %n.vec175
  br i1 %cmp.n184, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i47.preheader254

.lr.ph.i.i.i.i.i47.preheader254:                  ; preds = %.lr.ph.i.i.i.i.i47.preheader, %middle.block183
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.as, %middle.block183 ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.au, %middle.block183 ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i47.preheader ], [ %i.av, %middle.block183 ]
  br label %.lr.ph.i.i.i.i.i47

.lr.ph.i.i.i.i.i47:                               ; preds = %.lr.ph.i.i.i.i.i47.preheader254, %.lr.ph.i.i.i.i.i47
  %.012.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i47 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i47 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i47 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i47.preheader254 ] ; 2 uses
  %i.ba = load i64, ptr %.0910.i.i.i.i.i, align 8
  store i64 %i.ba, ptr %.0811.i.i.i.i.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  %i.bd = add nsw i64 %.012.i.i.i.i.i, -1
  %i.be = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i47, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !1968

_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.n ; 4 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bf, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bg = add i64 %i.b, %i.m
  %i.bh = add i64 %i.bg, -8
  %6 = add i64 %i.k, %i.c
  %7 = sub i64 %i.bh, %6                          ; 2 uses
  %i.bi = lshr i64 %7, 3
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %7, 56
  %i.bk = sub i64 %i.m, %i.c
  %diff.check = icmp ult i64 %i.bk, 32
  %or.cond245 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond245, label %.lr.ph.i.i.i.i.preheader258, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.bj, 4611686018427387900     ; 3 uses
  %i.bl = shl i64 %n.vec, 3                       ; 2 uses
  %i.bm = getelementptr i8, ptr %i.i, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bf, i64 %i.bl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bo = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.i, i64 %i.bo ; 2 uses
  %next.gep111 = getelementptr i8, ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep111, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep111, align 8
  %wide.load112 = load <2 x i64>, ptr %i.bp, align 8
  %i.bq = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load112, ptr %i.bq, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !1969

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  br i1 %cmp.n, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i.preheader258

.lr.ph.i.i.i.i.preheader258:                      ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.i, %.lr.ph.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader258, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader258 ] ; 2 uses
  %i.bs = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bs, ptr %.011.i.i.i.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bt, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1970

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.bv = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit.loopexit ], [ %i.i, %_ZSt9__advanceIPKN2v85LocalINS0_6StringEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = sub nuw nsw i64 %i.e, %i.o
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx ; 6 uses
  store ptr %i.by, ptr %i.h, align 8
  %i.bz = icmp eq ptr %1, %i.i
  br i1 %i.bz, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, label %.lr.ph.i.i.i.i.i48.preheader

.lr.ph.i.i.i.i.i48.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %8 = add i64 %i.k, -8
  %9 = sub i64 %8, %i.m                           ; 2 uses
  %i.ca = lshr i64 %9, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check117 = icmp ult i64 %9, 104
  br i1 %min.iters.check117, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader
  %i.cc = add i64 %i.d, %i.bw
  %i.cd = sub i64 %i.cc, %i.k
  %diff.check115 = icmp ult i64 %i.cd, 32
  br i1 %diff.check115, label %.lr.ph.i.i.i.i.i48.preheader257, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck114
  %n.vec120 = and i64 %i.cb, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec120, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 %i.ce
  %i.cg = getelementptr i8, ptr %1, i64 %i.ce
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph118
  %index122 = phi i64 [ 0, %vector.ph118 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %i.ch = shl i64 %index122, 3                    ; 2 uses
  %next.gep123 = getelementptr i8, ptr %i.by, i64 %i.ch ; 2 uses
  %next.gep124 = getelementptr i8, ptr %1, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep124, i64 16
  %wide.load125 = load <2 x i64>, ptr %next.gep124, align 8
  %wide.load126 = load <2 x i64>, ptr %i.ci, align 8
  %i.cj = getelementptr i8, ptr %next.gep123, i64 16
  store <2 x i64> %wide.load125, ptr %next.gep123, align 8
  store <2 x i64> %wide.load126, ptr %i.cj, align 8
  %index.next127 = add nuw i64 %index122, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.ck, label %middle.block128, label %vector.body121, !llvm.loop !1971

middle.block128:                                  ; preds = %vector.body121
  %cmp.n129 = icmp eq i64 %i.cb, %n.vec120
  br i1 %cmp.n129, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48.preheader257

.lr.ph.i.i.i.i.i48.preheader257:                  ; preds = %vector.memcheck114, %.lr.ph.i.i.i.i.i48.preheader, %middle.block128
  %.08.i.i.i.i.i49.ph = phi ptr [ %i.by, %vector.memcheck114 ], [ %i.by, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cf, %middle.block128 ]
  %.sroa.04.07.i.i.i.i.i50.ph = phi ptr [ %1, %vector.memcheck114 ], [ %1, %.lr.ph.i.i.i.i.i48.preheader ], [ %i.cg, %middle.block128 ]
  br label %.lr.ph.i.i.i.i.i48

.lr.ph.i.i.i.i.i48:                               ; preds = %.lr.ph.i.i.i.i.i48.preheader257, %.lr.ph.i.i.i.i.i48
  %.08.i.i.i.i.i49 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i48 ], [ %.08.i.i.i.i.i49.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i50 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i48 ], [ %.sroa.04.07.i.i.i.i.i50.ph, %.lr.ph.i.i.i.i.i48.preheader257 ] ; 2 uses
  %i.cl = load i64, ptr %.sroa.04.07.i.i.i.i.i50, align 8
  store i64 %i.cl, ptr %.08.i.i.i.i.i49, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i50, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i49, i64 8
  %i.co = icmp eq ptr %i.cm, %i.i
  br i1 %i.co, label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, label %.lr.ph.i.i.i.i.i48, !llvm.loop !1972

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit: ; preds = %.lr.ph.i.i.i.i.i48, %middle.block128
  %.pre90 = load ptr, ptr %i.h, align 8
  br label %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52

_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52: ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit
  %i.cp = phi ptr [ %.pre90, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52.loopexit ], [ %i.by, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.n
  store ptr %i.cq, ptr %i.h, align 8
  %i.cr = ashr exact i64 %i.n, 3                  ; 6 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i54.preheader, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52
  %min.iters.check135 = icmp ult i64 %i.cr, 6
  %i.ct = sub i64 %i.m, %i.c
  %diff.check133 = icmp ult i64 %i.ct, 32
  %or.cond246 = or i1 %min.iters.check135, %diff.check133
  br i1 %or.cond246, label %.lr.ph.i.i.i.i.i54.preheader255, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec138 = and i64 %i.cr, 9223372036854775804  ; 3 uses
  %i.cu = and i64 %i.cr, 3
  %i.cv = shl i64 %n.vec138, 3                    ; 2 uses
  %i.cw = getelementptr i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr i8, ptr %2, i64 %i.cv
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %i.cy = shl i64 %index140, 3                    ; 2 uses
  %next.gep141 = getelementptr i8, ptr %1, i64 %i.cy ; 2 uses
  %next.gep142 = getelementptr i8, ptr %2, i64 %i.cy ; 2 uses
  %i.cz = getelementptr i8, ptr %next.gep142, i64 16
  %wide.load143 = load <2 x i64>, ptr %next.gep142, align 8
  %wide.load144 = load <2 x i64>, ptr %i.cz, align 8
  %i.da = getelementptr i8, ptr %next.gep141, i64 16
  store <2 x i64> %wide.load143, ptr %next.gep141, align 8
  store <2 x i64> %wide.load144, ptr %i.da, align 8
  %index.next145 = add nuw i64 %index140, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.db, label %middle.block146, label %vector.body139, !llvm.loop !1973

middle.block146:                                  ; preds = %vector.body139
  %cmp.n147 = icmp eq i64 %i.cr, %n.vec138
  br i1 %cmp.n147, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, label %.lr.ph.i.i.i.i.i54.preheader255

.lr.ph.i.i.i.i.i54.preheader255:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block146
  %.012.i.i.i.i.i55.ph = phi i64 [ %i.cr, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cu, %middle.block146 ]
  %.0811.i.i.i.i.i56.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cw, %middle.block146 ]
  %.0910.i.i.i.i.i57.ph = phi ptr [ %2, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cx, %middle.block146 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader255, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0811.i.i.i.i.i56 = phi ptr [ %i.de, %.lr.ph.i.i.i.i.i54 ], [ %.0811.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %.0910.i.i.i.i.i57 = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i54 ], [ %.0910.i.i.i.i.i57.ph, %.lr.ph.i.i.i.i.i54.preheader255 ] ; 2 uses
  %i.dc = load i64, ptr %.0910.i.i.i.i.i57, align 8
  store i64 %i.dc, ptr %.0811.i.i.i.i.i56, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i57, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i56, i64 8
  %i.df = add nsw i64 %.012.i.i.i.i.i55, -1
  %i.dg = icmp samesign ugt i64 %.012.i.i.i.i.i55, 1
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i54, label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit, !llvm.loop !1974

bb.h:                                             ; preds = %bb.b
  %i.dh = load ptr, ptr %0, align 8               ; 7 uses
  %i.di = ptrtoint ptr %i.dh to i64               ; 4 uses
  %i.dj = sub i64 %i.k, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 4 uses
  %i.dl = sub nsw i64 1152921504606846975, %i.dk
  %i.dm = icmp ult i64 %i.dl, %i.e
  br i1 %i.dm, label %bb.i, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.406) #30
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.e)
  %i.dn = add nsw i64 %.sroa.speculated.i, %i.dk  ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dk
  %i.dp = tail call i64 @llvm.umin.i64(i64 %i.dn, i64 1152921504606846975)
  %i.dq = select i1 %i.do, i64 1152921504606846975, i64 %i.dp ; 3 uses
  %.not.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.dr = shl nuw nsw i64 %i.dq, 3
  %i.ds = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dr) #31
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit, %bb.j
  %i.dt = phi ptr [ %i.ds, %bb.j ], [ null, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 7 uses
  %i.du = icmp eq ptr %i.dh, %1
  br i1 %i.du, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader

.lr.ph.i.i.i.i.i59.preheader:                     ; preds = %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit
  %i.dv = ptrtoaddr ptr %i.dt to i64
  %i.dw = add i64 %i.a, -8
  %i.dx = sub i64 %i.dw, %i.di                    ; 2 uses
  %i.dy = lshr i64 %i.dx, 3
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.dx, 56
  %i.ea = sub i64 %i.dv, %i.di
  %diff.check189 = icmp ult i64 %i.ea, 32
  %or.cond247 = or i1 %min.iters.check191, %diff.check189
  br i1 %or.cond247, label %.lr.ph.i.i.i.i.i59.preheader252, label %vector.ph192

vector.ph192:                                     ; preds = %.lr.ph.i.i.i.i.i59.preheader
  %n.vec194 = and i64 %i.dz, 4611686018427387900  ; 3 uses
  %i.eb = shl i64 %n.vec194, 3                    ; 2 uses
  %i.ec = getelementptr i8, ptr %i.dt, i64 %i.eb  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.dh, i64 %i.eb
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph192
  %index196 = phi i64 [ 0, %vector.ph192 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %i.ee = shl i64 %index196, 3                    ; 2 uses
  %next.gep197 = getelementptr i8, ptr %i.dt, i64 %i.ee ; 2 uses
  %next.gep198 = getelementptr i8, ptr %i.dh, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <2 x i64>, ptr %next.gep198, align 8
  %wide.load200 = load <2 x i64>, ptr %i.ef, align 8
  %i.eg = getelementptr i8, ptr %next.gep197, i64 16
  store <2 x i64> %wide.load199, ptr %next.gep197, align 8
  store <2 x i64> %wide.load200, ptr %i.eg, align 8
  %index.next201 = add nuw i64 %index196, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.eh, label %middle.block202, label %vector.body195, !llvm.loop !1975

middle.block202:                                  ; preds = %vector.body195
  %cmp.n203 = icmp eq i64 %i.dz, %n.vec194
  br i1 %cmp.n203, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59.preheader252

.lr.ph.i.i.i.i.i59.preheader252:                  ; preds = %.lr.ph.i.i.i.i.i59.preheader, %middle.block202
  %.08.i.i.i.i.i60.ph = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ec, %middle.block202 ]
  %.sroa.04.07.i.i.i.i.i61.ph = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i59.preheader ], [ %i.ed, %middle.block202 ]
  br label %.lr.ph.i.i.i.i.i59

.lr.ph.i.i.i.i.i59:                               ; preds = %.lr.ph.i.i.i.i.i59.preheader252, %.lr.ph.i.i.i.i.i59
  %.08.i.i.i.i.i60 = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i59 ], [ %.08.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i61 = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i59 ], [ %.sroa.04.07.i.i.i.i.i61.ph, %.lr.ph.i.i.i.i.i59.preheader252 ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.04.07.i.i.i.i.i61, align 8
  store i64 %i.ei, ptr %.08.i.i.i.i.i60, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i61, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i60, i64 8 ; 2 uses
  %i.el = icmp eq ptr %i.ej, %1
  br i1 %i.el, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i.i.i.i59, !llvm.loop !1976

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i59, %middle.block202, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit
  %.0.lcssa.i.i.i.i.i62 = phi ptr [ %i.dt, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE11_M_allocateEm.exit ], [ %i.ec, %middle.block202 ], [ %i.ek, %.lr.ph.i.i.i.i.i59 ] ; 4 uses
  %10 = add i64 %i.b, -8
  %11 = sub i64 %10, %i.c                         ; 2 uses
  %i.em = lshr i64 %11, 3
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %min.iters.check210 = icmp ult i64 %11, 56
  %.0.lcssa.i.i.i.i.i62207 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i62 to i64
  %i.eo = sub i64 %.0.lcssa.i.i.i.i.i62207, %i.c
  %diff.check208 = icmp ult i64 %i.eo, 32
  %or.cond248 = select i1 %min.iters.check210, i1 true, i1 %diff.check208
  br i1 %or.cond248, label %.lr.ph.i.i.i.i64.preheader, label %vector.ph211

vector.ph211:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit
  %n.vec213 = and i64 %i.en, 4611686018427387900  ; 3 uses
  %i.ep = shl i64 %n.vec213, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.ep ; 2 uses
  %i.er = getelementptr i8, ptr %2, i64 %i.ep
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph211
  %index215 = phi i64 [ 0, %vector.ph211 ], [ %index.next220, %vector.body214 ] ; 2 uses
  %i.es = shl i64 %index215, 3                    ; 2 uses
  %next.gep216 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i62, i64 %i.es ; 2 uses
  %next.gep217 = getelementptr i8, ptr %2, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep217, i64 16
  %wide.load218 = load <2 x i64>, ptr %next.gep217, align 8
  %wide.load219 = load <2 x i64>, ptr %i.et, align 8
  %i.eu = getelementptr i8, ptr %next.gep216, i64 16
  store <2 x i64> %wide.load218, ptr %next.gep216, align 8
  store <2 x i64> %wide.load219, ptr %i.eu, align 8
  %index.next220 = add nuw i64 %index215, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next220, %n.vec213
  br i1 %i.ev, label %middle.block221, label %vector.body214, !llvm.loop !1977

middle.block221:                                  ; preds = %vector.body214
  %cmp.n222 = icmp eq i64 %i.en, %n.vec213
  br i1 %cmp.n222, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64.preheader

.lr.ph.i.i.i.i64.preheader:                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit, %middle.block221
  %.011.i.i.i.i65.ph = phi ptr [ %.0.lcssa.i.i.i.i.i62, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.eq, %middle.block221 ]
  %.0810.i.i.i.i66.ph = phi ptr [ %2, %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit ], [ %i.er, %middle.block221 ]
  br label %.lr.ph.i.i.i.i64

.lr.ph.i.i.i.i64:                                 ; preds = %.lr.ph.i.i.i.i64.preheader, %.lr.ph.i.i.i.i64
  %.011.i.i.i.i65 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i64 ], [ %.011.i.i.i.i65.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %.0810.i.i.i.i66 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i64 ], [ %.0810.i.i.i.i66.ph, %.lr.ph.i.i.i.i64.preheader ] ; 2 uses
  %i.ew = load i64, ptr %.0810.i.i.i.i66, align 8
  store i64 %i.ew, ptr %.011.i.i.i.i65, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i66, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i65, i64 8 ; 2 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.ex, %3
  br i1 %.not.i.i.i.i67, label %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69, label %.lr.ph.i.i.i.i64, !llvm.loop !1978

_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69: ; preds = %.lr.ph.i.i.i.i64, %middle.block221
  %.lcssa109 = phi ptr [ %i.eq, %middle.block221 ], [ %i.ey, %.lr.ph.i.i.i.i64 ] ; 5 uses
  %i.ez = icmp eq ptr %1, %i.i
  br i1 %i.ez, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader

.lr.ph.i.i.i.i.i70.preheader:                     ; preds = %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.lcssa109226 = ptrtoaddr ptr %.lcssa109 to i64
  %i.fa = add i64 %i.k, -8
  %i.fb = sub i64 %i.fa, %i.a                     ; 2 uses
  %i.fc = lshr i64 %i.fb, 3
  %i.fd = add nuw nsw i64 %i.fc, 1                ; 2 uses
  %min.iters.check229 = icmp ult i64 %i.fb, 56
  %i.fe = sub i64 %.lcssa109226, %i.a
  %diff.check227 = icmp ult i64 %i.fe, 32
  %or.cond249 = select i1 %min.iters.check229, i1 true, i1 %diff.check227
  br i1 %or.cond249, label %.lr.ph.i.i.i.i.i70.preheader250, label %vector.ph230

vector.ph230:                                     ; preds = %.lr.ph.i.i.i.i.i70.preheader
  %n.vec232 = and i64 %i.fd, 4611686018427387900  ; 3 uses
  %i.ff = shl i64 %n.vec232, 3                    ; 2 uses
  %i.fg = getelementptr i8, ptr %.lcssa109, i64 %i.ff ; 2 uses
  %i.fh = getelementptr i8, ptr %1, i64 %i.ff
  br label %vector.body233

vector.body233:                                   ; preds = %vector.body233, %vector.ph230
  %index234 = phi i64 [ 0, %vector.ph230 ], [ %index.next239, %vector.body233 ] ; 2 uses
  %i.fi = shl i64 %index234, 3                    ; 2 uses
  %next.gep235 = getelementptr i8, ptr %.lcssa109, i64 %i.fi ; 2 uses
  %next.gep236 = getelementptr i8, ptr %1, i64 %i.fi ; 2 uses
  %i.fj = getelementptr i8, ptr %next.gep236, i64 16
  %wide.load237 = load <2 x i64>, ptr %next.gep236, align 8
  %wide.load238 = load <2 x i64>, ptr %i.fj, align 8
  %i.fk = getelementptr i8, ptr %next.gep235, i64 16
  store <2 x i64> %wide.load237, ptr %next.gep235, align 8
  store <2 x i64> %wide.load238, ptr %i.fk, align 8
  %index.next239 = add nuw i64 %index234, 4       ; 2 uses
  %i.fl = icmp eq i64 %index.next239, %n.vec232
  br i1 %i.fl, label %middle.block240, label %vector.body233, !llvm.loop !1979

middle.block240:                                  ; preds = %vector.body233
  %cmp.n241 = icmp eq i64 %i.fd, %n.vec232
  br i1 %cmp.n241, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70.preheader250

.lr.ph.i.i.i.i.i70.preheader250:                  ; preds = %.lr.ph.i.i.i.i.i70.preheader, %middle.block240
  %.08.i.i.i.i.i71.ph = phi ptr [ %.lcssa109, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fg, %middle.block240 ]
  %.sroa.04.07.i.i.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i70.preheader ], [ %i.fh, %middle.block240 ]
  br label %.lr.ph.i.i.i.i.i70

.lr.ph.i.i.i.i.i70:                               ; preds = %.lr.ph.i.i.i.i.i70.preheader250, %.lr.ph.i.i.i.i.i70
  %.08.i.i.i.i.i71 = phi ptr [ %i.fo, %.lr.ph.i.i.i.i.i70 ], [ %.08.i.i.i.i.i71.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i72 = phi ptr [ %i.fn, %.lr.ph.i.i.i.i.i70 ], [ %.sroa.04.07.i.i.i.i.i72.ph, %.lr.ph.i.i.i.i.i70.preheader250 ] ; 2 uses
  %i.fm = load i64, ptr %.sroa.04.07.i.i.i.i.i72, align 8
  store i64 %i.fm, ptr %.08.i.i.i.i.i71, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i72, i64 8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i71, i64 8 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.i
  br i1 %i.fp, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i.i.i.i70, !llvm.loop !1980

_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i.i.i.i70, %middle.block240, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ %.lcssa109, %_ZSt22__uninitialized_copy_aIPKN2v85LocalINS0_6StringEEEPNS0_8internal14LocalUncheckedIS2_EES8_ET0_T_SB_SA_RSaIT1_E.exit69 ], [ %i.fg, %middle.block240 ], [ %i.fo, %.lr.ph.i.i.i.i.i70 ]
  %.not.i75 = icmp eq ptr %i.dh, null
  br i1 %.not.i75, label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74
  %i.fq = load ptr, ptr %i.f, align 8
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dh, i64 noundef %i.fs) #32
  br label %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit74, %bb.k
  store ptr %i.dt, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.h, align 8
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dq
  store ptr %i.ft, ptr %i.f, align 8
  br label %_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit

_ZSt4copyIPKN2v85LocalINS0_6StringEEEN9__gnu_cxx17__normal_iteratorIPNS0_8internal14LocalUncheckedIS2_EESt6vectorISA_SaISA_EEEEET0_T_SH_SG_.exit: ; preds = %.lr.ph.i.i.i.i.i54, %.lr.ph.i.i.i.i.i47, %middle.block146, %middle.block183, %_ZSt22__uninitialized_move_aIPN2v88internal14LocalUncheckedINS0_6StringEEES5_SaIS4_EET0_T_S8_S7_RT1_.exit52, %_ZSt13move_backwardIPN2v88internal14LocalUncheckedINS0_6StringEEES5_ET0_T_S7_S6_.exit, %_ZNSt12_Vector_baseIN2v88internal14LocalUncheckedINS0_6StringEEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

declare ptr @_ZN2v811ArrayBuffer3NewEPNS_7IsolateEmNS_30BackingStoreInitializationModeE(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK2v811ArrayBuffer4DataEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare ptr @_ZN2v810Uint8Array3NewENS_5LocalINS_11ArrayBufferEEEmm(ptr, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4node17AliasedBufferBaseIhN2v810Uint8ArrayEED0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4node17AliasedBufferBaseIhN2v810Uint8ArrayEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v812api_internal13DisposeGlobalEPm(ptr noundef nonnull %i.b) #29
  br label %_ZN4node17AliasedBufferBaseIhN2v810Uint8ArrayEED2Ev.exit

_ZN4node17AliasedBufferBaseIhN2v810Uint8ArrayEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK4node17AliasedBufferBaseIhN2v810Uint8ArrayEE10MemoryInfoEPNS_13MemoryTrackerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::Local.558", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN4node13MemoryTracker10TrackFieldIN2v810Uint8ArrayEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit, label %_ZNK2v814PersistentBaseINS_10Uint8ArrayEE6IsWeakEv.exit.i

_ZNK2v814PersistentBaseINS_10Uint8ArrayEE6IsWeakEv.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 3
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %_ZN4node13MemoryTracker10TrackFieldIN2v810Uint8ArrayEEEvPKcRKNS2_14PersistentBaseIT_EES5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK2v814PersistentBaseINS_10Uint8ArrayEE6IsWeakEv.exit.i
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %i.i = load i64, ptr %i.b, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = add i64 %i.j, 560
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.m, %i.o
  br i1 %i.p, label %bb.c, label %_ZN2v89LocalBaseINS_10Uint8ArrayEE3NewEPNS_7IsolateEPS1_.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.h) #29
  br label %_ZN2v89LocalBaseINS_10Uint8ArrayEE3NewEPNS_7IsolateEPS1_.exit.i

_ZN2v89LocalBaseINS_10Uint8ArrayEE3NewEPNS_7IsolateEPS1_.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi ptr [ %i.q, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.r = ptrtoint ptr %.0.i.i.i to i64
  %i.s = add i64 %i.r, 8
  %i.t = inttoptr i64 %i.s to ptr
  store ptr %i.t, ptr %i.l, align 8
  store i64 %i.i, ptr %.0.i.i.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load ptr, ptr %i.w, align 8              ; 3 uses
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = icmp eq ptr %i.y, %i.z
end_hunk_0
