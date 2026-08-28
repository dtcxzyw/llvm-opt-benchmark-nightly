Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/subdivision2d?download=true
inline.NumInlined: 844
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN2cv8Subdiv2D19getVoronoiFacetListERKSt6vectorIiSaIiEERS1_IS1_INS_6Point_IfEESaIS7_EESaIS9_EERS9_:bb.a
.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i38: ; preds = %bb.s
  %i.fg = ashr exact i64 %i.fe, 3                 ; 3 uses
  %.sroa.speculated.i.i.i39 = call i64 @llvm.umax.i64(i64 %i.fg, i64 1)
  %i.fh = add nsw i64 %.sroa.speculated.i.i.i39, %i.fg ; 2 uses
  %i.fi = icmp ult i64 %i.fh, %i.fg
  %i.fj = call i64 @llvm.umin.i64(i64 %i.fh, i64 1152921504606846975)
  %i.fk = select i1 %i.fi, i64 1152921504606846975, i64 %i.fj ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.fk, 0
  call void @llvm.assume(i1 %.not.i.i.i40)
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #30
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit ; 8 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i38
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fe
  %i.fo = load i64, ptr %i.ev, align 4
  store i64 %i.fo, ptr %i.fn, align 4
  %.not10.i.i.i.i.i41 = icmp eq ptr %i.fb, %i.ew
  br i1 %.not10.i.i.i.i.i41, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46, label %.lr.ph.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i42.preheader:                     ; preds = %.noexc51
  %i.fp = ptrtoaddr ptr %i.fm to i64
  %i.fq = add i64 %i.fc, -8
  %i.fr = sub i64 %i.fq, %i.fd                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fr, 24
  %i.fu = sub i64 %i.fd, %i.fp
  %diff.check = icmp ugt i64 %i.fu, -32
  %or.cond148 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond148, label %.lr.ph.i.i.i.i.i42.preheader150, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i42.preheader
  %n.vec = and i64 %i.ft, 4611686018427387900     ; 3 uses
  %i.fv = shl i64 %n.vec, 3                       ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fm, i64 %i.fv  ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fb, i64 %i.fv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fm, i64 %i.fy ; 2 uses
  %next.gep110 = getelementptr i8, ptr %i.fb, i64 %i.fy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.fz = getelementptr i8, ptr %next.gep110, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep110, align 4, !alias.scope !119, !noalias !116
  %wide.load111 = load <2 x i64>, ptr %i.fz, align 4, !alias.scope !119, !noalias !116
  %i.ga = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !116, !noalias !119
  store <2 x i64> %wide.load111, ptr %i.ga, align 4, !alias.scope !116, !noalias !119
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !121

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ft, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46, label %.lr.ph.i.i.i.i.i42.preheader150

.lr.ph.i.i.i.i.i42.preheader150:                  ; preds = %.lr.ph.i.i.i.i.i42.preheader, %middle.block
  %.012.i.i.i.i.i43.ph = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.fw, %middle.block ]
  %.0911.i.i.i.i.i44.ph = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i42.preheader ], [ %i.fx, %middle.block ]
  br label %.lr.ph.i.i.i.i.i42

.lr.ph.i.i.i.i.i42:                               ; preds = %.lr.ph.i.i.i.i.i42.preheader150, %.lr.ph.i.i.i.i.i42
  %.012.i.i.i.i.i43 = phi ptr [ %i.ge, %.lr.ph.i.i.i.i.i42 ], [ %.012.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i42.preheader150 ] ; 2 uses
  %.0911.i.i.i.i.i44 = phi ptr [ %i.gd, %.lr.ph.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i42.preheader150 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.gc = load i64, ptr %.0911.i.i.i.i.i44, align 4, !alias.scope !119, !noalias !116
  store i64 %i.gc, ptr %.012.i.i.i.i.i43, align 4, !alias.scope !116, !noalias !119
  %i.gd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i44, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i45 = icmp eq ptr %i.gd, %i.ew
  br i1 %.not.i.i.i.i.i45, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46, label %.lr.ph.i.i.i.i.i42, !llvm.loop !122

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46: ; preds = %.lr.ph.i.i.i.i.i42, %middle.block, %.noexc51
  %.0.lcssa.i.i.i.i.i47 = phi ptr [ %i.fm, %.noexc51 ], [ %i.fw, %middle.block ], [ %i.ge, %.lr.ph.i.i.i.i.i42 ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i47, i64 8
  %.not.i23.i.i48 = icmp eq ptr %i.fb, null
  br i1 %.not.i23.i.i48, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46
  %i.gg = load ptr, ptr %i.ad, align 8, !tbaa !98
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = sub i64 %i.gh, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fb, i64 noundef %i.gi) #26
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49: ; preds = %bb.t, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i46
  store ptr %i.fm, ptr %3, align 8, !tbaa !63
  store ptr %i.gf, ptr %i.l, align 8, !tbaa !60
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  store ptr %i.gj, ptr %i.ad, align 8, !tbaa !98
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit52

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit52: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i49, %bb.r, %bb.h
  %i.gk = add nuw i64 %.167, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.gk, %i.x
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !123

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i38, %bb.q, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i.i
  %lpad.loopexit57 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %.noexc.i.i.i
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit57, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp58, %.loopexit.split-lp.loopexit.split-lp ]
  %i.gl = load ptr, ptr %4, align 8, !tbaa !63    ; 3 uses
  %.not.i.i.i53 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp
  %i.gm = load ptr, ptr %i.ab, align 8, !tbaa !98
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = sub i64 %i.gn, %i.go
  call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gp) #26
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %.loopexit.split-lp, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %lpad.phi

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit52
  %.pre70 = load ptr, ptr %4, align 8, !tbaa !63  ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %.pre70, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit55, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.gq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !98
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %.pre70 to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %.pre70, i64 noundef %i.gu) #26
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit55

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit55:  ; preds = %bb.d, %._crit_edge, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv8Subdiv2D11checkSubdivEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %2 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.6", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.6", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.6", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.6", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !8    ; 10 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5                   ; 2 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.h, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %indvars.iv ; 8 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12   ; 5 uses
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.lr.ph
  %i.n = shl nuw nsw i64 %indvars.iv, 2           ; 3 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !12   ; 4 uses
  %i.q = add i32 %i.p, 1
  %i.r = and i32 %i.q, 3                          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12   ; 4 uses
  %i.u = add i32 %i.t, 3
  %i.v = and i32 %i.u, 3                          ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !12   ; 4 uses
  %i.y = and i32 %i.x, 3                          ; 2 uses
  %i.z = xor i32 %i.y, 2                          ; 2 uses
  %i.aa = load i32, ptr %17, align 4, !tbaa !12   ; 3 uses
  %i.ab = lshr i32 %i.l, 2
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 5 uses
  %i.af = and i32 %i.l, 3                         ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12
  %i.aj = icmp eq i32 %i.aa, %i.ai
  br i1 %i.aj, label %bb.f, label %split96

split96:                                          ; preds = %._crit_edge86, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %split96
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 902) #29
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %split96
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.e:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %1, align 8, !tbaa !44    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !39
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.d ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.al, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %bb.bb

bb.f:                                             ; preds = %.preheader
  %i.ar = ashr i32 %i.p, 2
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.as ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 5 uses
  %i.av = zext nneg i32 %i.r to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !12
  %i.ay = icmp eq i32 %i.aa, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.az, %bb.at, %bb.aq, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 903) #29
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.k:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bb = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.k
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !39
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.j
  %.pn45 = phi { ptr, i32 } [ %i.az, %bb.j ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.ba, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.bb

bb.l:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !12 ; 3 uses
  %i.bi = ashr i32 %i.x, 2
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 5 uses
  %i.bm = zext nneg i32 %i.y to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !12
  %i.bp = icmp eq i32 %i.bh, %i.bo
  br i1 %i.bp, label %bb.q, label %split98

split98:                                          ; preds = %bb.ar, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %split98
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 904) #29
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %split98
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.p:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !44    ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.p
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !39
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.o
  %.pn47 = phi { ptr, i32 } [ %i.bq, %bb.o ], [ %i.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.br, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bb

bb.q:                                             ; preds = %bb.l
  %i.bx = ashr i32 %i.t, 2
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.by ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16 ; 5 uses
  %i.cb = xor i32 %i.v, 2
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !12
  %i.cf = icmp eq i32 %i.bh, %i.ce
  br i1 %i.cf, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.ba, %bb.au, %bb.as, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 905) #29
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.v:                                             ; preds = %bb.s
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load ptr, ptr %7, align 8, !tbaa !44    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %bb.v
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !39
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.u
  %.pn49 = phi { ptr, i32 } [ %i.cg, %bb.u ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %i.ch, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.bb

bb.w:                                             ; preds = %bb.q
  %i.cn = xor i32 %i.af, 2
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12
  %i.cr = zext nneg i32 %i.v to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !12
  %i.cu = icmp eq i32 %i.cq, %i.ct
  br i1 %i.cu, label %bb.ab, label %split

split:                                            ; preds = %bb.av, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %split
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 909) #29
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %split
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

bb.aa:                                            ; preds = %bb.x
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69: ; preds = %bb.aa
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !39
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69, %bb.z
  %.pn51 = phi { ptr, i32 } [ %i.cv, %bb.z ], [ %i.cw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i69 ], [ %i.cw, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.bb

bb.ab:                                            ; preds = %bb.w
  %i.dc = xor i32 %i.r, 2
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !12
  %i.dg = zext nneg i32 %i.z to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !12
  %i.dj = icmp eq i32 %i.df, %i.di
  br i1 %i.dj, label %bb.ag, label %split89

split89:                                          ; preds = %bb.aw, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %split89
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 910) #29
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %split89
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

bb.af:                                            ; preds = %bb.ac
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %11, align 8, !tbaa !44   ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %bb.af
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !39
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72, %bb.ae
  %.pn53 = phi { ptr, i32 } [ %i.dk, %bb.ae ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72 ], [ %i.dl, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.bb

bb.ag:                                            ; preds = %bb.ab
  %i.dr = and i32 %i.t, 3                         ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !12 ; 2 uses
  %i.dv = ashr i32 %i.du, 2
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.dw
  %i.dy = and i32 %i.du, 3
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !12 ; 2 uses
  %i.ec = and i32 %i.eb, -4
  %i.ed = add i32 %i.eb, 1
  %i.ee = and i32 %i.ed, 3
  %i.ef = or disjoint i32 %i.ee, %i.ec
  %i.eg = zext i32 %i.ef to i64
  %i.eh = icmp eq i64 %i.n, %i.eg
  br i1 %i.eh, label %bb.al, label %split91

split91:                                          ; preds = %bb.ax, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.20, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %split91
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 911) #29
          to label %bb.ai unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  unreachable

bb.aj:                                            ; preds = %split91
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.ak:                                            ; preds = %bb.ah
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ek = load ptr, ptr %13, align 8, !tbaa !44   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.ak
  %i.en = load i64, ptr %i.el, align 8, !tbaa !39
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.aj
  %.pn55 = phi { ptr, i32 } [ %i.ei, %bb.aj ], [ %i.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.ej, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.bb

bb.al:                                            ; preds = %bb.ag
  %i.ep = and i32 %i.p, 3
  %i.eq = zext nneg i32 %i.ep to i64              ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !12 ; 2 uses
  %i.et = ashr i32 %i.es, 2
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.eu
  %i.ew = and i32 %i.es, 3
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !12 ; 2 uses
  %i.fa = and i32 %i.ez, -4
  %i.fb = add i32 %i.ez, 3
  %i.fc = and i32 %i.fb, 3
  %i.fd = or disjoint i32 %i.fc, %i.fa
  %i.fe = zext i32 %i.fd to i64
  %i.ff = icmp eq i64 %i.n, %i.fe
  br i1 %i.ff, label %._crit_edge86, label %split94

split94:                                          ; preds = %bb.ay, %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %16)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %split94
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZNK2cv8Subdiv2D11checkSubdivEv, ptr noundef nonnull @.str.1, i32 noundef 912) #29
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %split94
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.ap:                                            ; preds = %bb.am
  %i.fh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fi = load ptr, ptr %15, align 8, !tbaa !44   ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.ap
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !39
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.ao
  %.pn57 = phi { ptr, i32 } [ %i.fg, %bb.ao ], [ %i.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %i.fh, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #27
  br label %bb.bb

._crit_edge86:                                    ; preds = %bb.al
  %i.fn = add nuw i32 %i.l, 3
  %i.fo = and i32 %i.fn, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !12 ; 3 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.eq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !12
  %i.ft = icmp eq i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.aq, label %split96

bb.aq:                                            ; preds = %._crit_edge86
  %i.fu = add i32 %i.x, 1
  %i.fv = and i32 %i.fu, 3
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !12
  %i.fz = icmp eq i32 %i.fq, %i.fy
  br i1 %i.fz, label %bb.ar, label %bb.g

bb.ar:                                            ; preds = %bb.aq
  %i.ga = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !12 ; 3 uses
  %i.gc = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !12
  %i.gf = icmp eq i32 %i.gb, %i.ge
  br i1 %i.gf, label %bb.as, label %split98

bb.as:                                            ; preds = %bb.ar
  %i.gg = xor i32 %i.fo, 2
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !12
  %i.gk = icmp eq i32 %i.gb, %i.gj
  br i1 %i.gk, label %bb.at, label %bb.r

bb.at:                                            ; preds = %bb.as
  %i.gl = or disjoint i64 %i.n, 2                 ; 2 uses
  %i.gm = add i32 %i.t, 1
  %i.gn = and i32 %i.gm, 3                        ; 2 uses
  %i.go = add i32 %i.p, 3
  %i.gp = and i32 %i.go, 3                        ; 2 uses
  %i.gq = xor i32 %i.af, 2
  %i.gr = zext nneg i32 %i.gn to i64
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.gr
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !12
  %i.gu = icmp eq i32 %i.bh, %i.gt
  br i1 %i.gu, label %bb.au, label %bb.g

bb.au:                                            ; preds = %bb.at
  %i.gv = xor i32 %i.gp, 2
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.gw
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !12
  %i.gz = icmp eq i32 %i.aa, %i.gy
  br i1 %i.gz, label %bb.av, label %bb.r

bb.av:                                            ; preds = %bb.au
  %i.ha = zext nneg i32 %i.z to i64
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !12
  %i.hd = zext nneg i32 %i.gp to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !12
  %i.hg = icmp eq i32 %i.hc, %i.hf
  br i1 %i.hg, label %bb.aw, label %split

bb.aw:                                            ; preds = %bb.av
  %i.hh = xor i32 %i.gn, 2
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !12
  %i.hl = zext nneg i32 %i.gq to i64
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hl
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !12
  %i.ho = icmp eq i32 %i.hk, %i.hn
  br i1 %i.ho, label %bb.ax, label %split89

bb.ax:                                            ; preds = %bb.aw
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.eq
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !12 ; 2 uses
  %i.hr = ashr i32 %i.hq, 2
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.hs
  %i.hu = and i32 %i.hq, 3
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.hv
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !12 ; 2 uses
  %i.hy = and i32 %i.hx, -4
  %i.hz = add i32 %i.hx, 1
  %i.ia = and i32 %i.hz, 3
  %i.ib = or disjoint i32 %i.ia, %i.hy
  %i.ic = zext i32 %i.ib to i64
  %i.id = icmp eq i64 %i.gl, %i.ic
  br i1 %i.id, label %bb.ay, label %split91

bb.ay:                                            ; preds = %bb.ax
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.gc
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !12 ; 2 uses
  %i.ig = ashr i32 %i.if, 2
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.ih
  %i.ij = and i32 %i.if, 3
  %i.ik = zext nneg i32 %i.ij to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ik
  %i.im = load i32, ptr %i.il, align 4, !tbaa !12 ; 2 uses
  %i.in = and i32 %i.im, -4
  %i.io = add i32 %i.im, 3
  %i.ip = and i32 %i.io, 3
  %i.iq = or disjoint i32 %i.ip, %i.in
  %i.ir = zext i32 %i.iq to i64
  %i.is = icmp eq i64 %i.gl, %i.ir
  br i1 %i.is, label %bb.az, label %split94

bb.az:                                            ; preds = %bb.ay
  %i.it = add nuw i32 %i.l, 1
  %i.iu = and i32 %i.it, 3
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !12
  %i.iy = icmp eq i32 %i.gb, %i.ix
  br i1 %i.iy, label %bb.ba, label %bb.g

bb.ba:                                            ; preds = %bb.az
  %i.iz = add i32 %i.x, 3
  %i.ja = and i32 %i.iz, 3
  %i.jb = xor i32 %i.ja, 2
  %i.jc = zext nneg i32 %i.jb to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.jc
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !12
  %i.jf = icmp eq i32 %i.fq, %i.je
  br i1 %i.jf, label %.loopexit, label %bb.r

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn57.pn = phi { ptr, i32 } [ %.pn57, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %.pn55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %.pn53, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74 ], [ %.pn51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit71 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68 ], [ %.pn47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %.pn45, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn57.pn

.loopexit:                                        ; preds = %bb.ba, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !124

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #13

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #18 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #19

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #21

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !8      ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #29
  unreachable

_ZNKSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5                  ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN2cv8Subdiv2D8QuadEdgeC1Ev(ptr noundef nonnull align 4 dereferenceable(32) %i.q)
          to label %_ZNSt16allocator_traitsISaIN2cv8Subdiv2D8QuadEdgeEEE9constructIS2_JEEEvRS3_PT_DpOT0_.exit unwind label %bb.e

_ZNSt16allocator_traitsISaIN2cv8Subdiv2D8QuadEdgeEEE9constructIS2_JEEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN2cv8Subdiv2D8QuadEdgeEEE9constructIS2_JEEEvRS3_PT_DpOT0_.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN2cv8Subdiv2D8QuadEdgeEEE9constructIS2_JEEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN2cv8Subdiv2D8QuadEdgeEEE9constructIS2_JEEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(32) %.0911.i.i.i, i64 32, i1 false), !tbaa.struct !38, !alias.scope !125
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !129

_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNSt16allocator_traitsISaIN2cv8Subdiv2D8QuadEdgeEEE9constructIS2_JEEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN2cv8Subdiv2D8QuadEdgeEEE9constructIS2_JEEEvRS3_PT_DpOT0_.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i25 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i25, label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, label %.lr.ph.i.i.i26

.lr.ph.i.i.i26:                                   ; preds = %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %.lr.ph.i.i.i26
  %.012.i.i.i27 = phi ptr [ %i.v, %.lr.ph.i.i.i26 ], [ %i.t, %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  %.0911.i.i.i28 = phi ptr [ %i.u, %.lr.ph.i.i.i26 ], [ %1, %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.012.i.i.i27, ptr noundef nonnull align 4 dereferenceable(32) %.0911.i.i.i28, i64 32, i1 false), !tbaa.struct !38, !alias.scope !130
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i28, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i27, i64 32 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31, label %.lr.ph.i.i.i26, !llvm.loop !129

_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit31: ; preds = %.lr.ph.i.i.i26, %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i30 = phi ptr [ %i.t, %_ZNSt6vectorIN2cv8Subdiv2D8QuadEdgeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.v, %.lr.ph.i.i.i26 ]
end_hunk_0
