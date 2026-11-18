Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Function?download=true
inline.NumInlined: 1263
inline.NumDeleted: 503
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN8Function20InitializeAttributesEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.14
  %i.lh = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !38 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.lk = icmp eq ptr %i.li, %i.lj
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.14
  %i.ll = load i64, ptr %i.lj, align 8, !tbaa !39
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.lm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.15
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !38 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.15
  %i.lr = load i64, ptr %i.lp, align 8, !tbaa !39
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lo, i64 noundef %i.ls) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.16
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !38 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.lw = icmp eq ptr %i.lu, %i.lv
  br i1 %i.lw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.16
  %i.lx = load i64, ptr %i.lv, align 8, !tbaa !39
  %i.ly = add i64 %i.lx, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.ly) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.17
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !38 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.mc = icmp eq ptr %i.ma, %i.mb
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.17
  %i.md = load i64, ptr %i.mb, align 8, !tbaa !39
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.me) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.18
  %i.mf = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !38 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.18
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !39
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.19
  %i.ml = load ptr, ptr %2, align 8, !tbaa !38    ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.19
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !39
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #23
  br label %.thread

.preheader940.preheader:                          ; preds = %bb.f, %bb.h, %bb.g, %bb.e, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hs, %bb.g ], [ %i.hr, %bb.f ], [ %i.hq, %bb.e ], [ %i.hp, %bb.d ], [ %i.ht, %bb.h ]
  %.19 = phi ptr [ %i.bl, %bb.g ], [ %i.bg, %bb.f ], [ %i.bb, %bb.e ], [ %i.as, %bb.d ], [ %i.bq, %bb.h ]
  br label %.preheader940

.preheader940:                                    ; preds = %.preheader940.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430
  %i.mq = phi ptr [ %i.mr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ], [ %.19, %.preheader940.preheader ] ; 2 uses
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 -32 ; 3 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !38 ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %i.mq, i64 -16 ; 2 uses
  %i.mu = icmp eq ptr %i.ms, %i.mt
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428: ; preds = %.preheader940
  %i.mv = load i64, ptr %i.mt, align 8, !tbaa !39
  %i.mw = add i64 %i.mv, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430: ; preds = %.preheader940, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i428
  %i.mx = icmp eq ptr %i.mr, %2
  br i1 %i.mx, label %.thread, label %.preheader940

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.20
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn859 = phi { ptr, i32 } [ %i.hu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i425.20 ], [ %i.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit427.19 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit430 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.br

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.20, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit
  %.sroa.0830.0944 = phi ptr [ %i.nt, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.20 ] ; 2 uses
  %i.my = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #25
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

bb.i:                                             ; preds = %.lr.ph
  %i.mz = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 96)
          to label %_Z12FuncAttrProbv.exit unwind label %bb.p

_Z12FuncAttrProbv.exit:                           ; preds = %bb.i
  invoke void @_ZN16BooleanAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(44) %i.my, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0830.0944, i32 noundef %i.mz)
          to label %bb.j unwind label %bb.p

bb.j:                                             ; preds = %_Z12FuncAttrProbv.exit
  %i.na = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196 ; 4 uses
  %i.nb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  %.not.i.i = icmp eq ptr %i.na, %i.nb
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.my, ptr %i.na, align 8, !tbaa !198
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %i.nc, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.nd = load ptr, ptr @func_attr_generator, align 8, !tbaa !20 ; 4 uses
  %i.ne = ptrtoint ptr %i.na to i64
  %i.nf = ptrtoint ptr %i.nd to i64
  %i.ng = sub i64 %i.ne, %i.nf                    ; 6 uses
  %i.nh = icmp eq i64 %i.ng, 9223372036854775800
  br i1 %i.nh, label %bb.m, label %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #26
          to label %.noexc432 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc432:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ni = ashr exact i64 %i.ng, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ni, i64 1)
  %i.nj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ni ; 2 uses
  %i.nk = icmp ult i64 %i.nj, %i.ni
  %i.nl = call i64 @llvm.umin.i64(i64 %i.nj, i64 1152921504606846975)
  %i.nm = select i1 %i.nk, i64 1152921504606846975, i64 %i.nl ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.nm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.nn = shl nuw nsw i64 %i.nm, 3
  %i.no = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nn) #25
          to label %.noexc433 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc433:                                        ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 %i.ng ; 2 uses
  store ptr %i.my, ptr %i.np, align 8, !tbaa !198
  %i.nq = icmp sgt i64 %i.ng, 0
  br i1 %i.nq, label %bb.n, label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc433
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.no, ptr align 8 %i.nd, i64 %i.ng, i1 false)
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i

_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i: ; preds = %bb.n, %.noexc433
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.nd, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.nd, i64 noundef %i.ng) #23
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i
  store ptr %i.no, ptr @func_attr_generator, align 8, !tbaa !20
  store ptr %i.nr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  %i.ns = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.nm
  store ptr %i.ns, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.k
  %i.nt = getelementptr inbounds nuw i8, ptr %.sroa.0830.0944, i64 32 ; 2 uses
  %.not = icmp ult ptr %i.nt, %i.cq
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !195

bb.p:                                             ; preds = %bb.i, %_Z12FuncAttrProbv.exit
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef 48) #23
  br label %.loopexit.split-lp

._crit_edge.i.i434:                               ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.nv, ptr %3, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.nv, ptr noundef nonnull align 1 dereferenceable(10) @.str.24, i64 10, i1 false)
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.nw, align 8, !tbaa !43
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.nx, align 2, !tbaa !39
  %i.ny = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 96)
          to label %_Z12FuncAttrProbv.exit443 unwind label %.thread872

_Z12FuncAttrProbv.exit443:                        ; preds = %._crit_edge.i.i434
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.nz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.nz, ptr %5, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.nz, ptr noundef nonnull align 1 dereferenceable(7) @.str.25, i64 7, i1 false)
  %i.oa = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 7, ptr %i.oa, align 8, !tbaa !43
  %i.ob = getelementptr inbounds nuw i8, ptr %5, i64 23
  store i8 0, ptr %i.ob, align 1, !tbaa !39
  %i.oc = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.od = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store ptr %i.od, ptr %i.oc, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.od, ptr noundef nonnull align 1 dereferenceable(6) @.str.26, i64 6, i1 false)
  %i.oe = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 6, ptr %i.oe, align 8, !tbaa !43
  %i.of = getelementptr inbounds nuw i8, ptr %5, i64 54
  store i8 0, ptr %i.of, align 2, !tbaa !39
  %i.og = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.oh = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  store ptr %i.oh, ptr %i.og, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.oh, ptr noundef nonnull align 1 dereferenceable(9) @.str.27, i64 9, i1 false)
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 9, ptr %i.oi, align 8, !tbaa !43
  %i.oj = getelementptr inbounds nuw i8, ptr %5, i64 89
  store i8 0, ptr %i.oj, align 1, !tbaa !39
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.ol = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  store ptr %i.ol, ptr %i.ok, align 8, !tbaa !42
  store i64 7809644666444607081, ptr %i.ol, align 8
  %i.om = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i64 8, ptr %i.om, align 8, !tbaa !43
  %i.on = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i8 0, ptr %i.on, align 8, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.oo = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #25
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i478 unwind label %bb.q ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i478: ; preds = %_Z12FuncAttrProbv.exit443
  %i.op = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr %i.oo, ptr %4, align 8, !tbaa !32
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 128
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !41
  %i.os = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %5, ptr noundef nonnull %i.op, ptr noundef nonnull %i.oo)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i478, %_Z12FuncAttrProbv.exit443
  %i.ot = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ou = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %.not.i.i5.i476 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i5.i476, label %.body479, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ov = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !41
  %i.ox = ptrtoint ptr %i.ow to i64
  %i.oy = ptrtoint ptr %i.ou to i64
  %i.oz = sub i64 %i.ox, %i.oy
  call void @_ZdlPvm(ptr noundef nonnull %i.ou, i64 noundef %i.oz) #23
  br label %.body479

bb.s:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i478
  %i.pa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.os, ptr %i.pa, align 8, !tbaa !33
  invoke void @_ZN20MultiChoiceAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.ho, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.ny, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.t unwind label %bb.bh

bb.t:                                             ; preds = %bb.s
  %i.pb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196 ; 4 uses
  %i.pc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  %.not.i.i482 = icmp eq ptr %i.pb, %i.pc
  br i1 %.not.i.i482, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.ho, ptr %i.pb, align 8, !tbaa !198
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  store ptr %i.pd, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit491

bb.v:                                             ; preds = %bb.t
  %i.pe = load ptr, ptr @func_attr_generator, align 8, !tbaa !20 ; 4 uses
  %i.pf = ptrtoint ptr %i.pb to i64
  %i.pg = ptrtoint ptr %i.pe to i64
  %i.ph = sub i64 %i.pf, %i.pg                    ; 6 uses
  %i.pi = icmp eq i64 %i.ph, 9223372036854775800
  br i1 %i.pi, label %bb.w, label %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i483

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #26
          to label %.noexc489 unwind label %bb.bh

.noexc489:                                        ; preds = %bb.w
  unreachable

_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i483: ; preds = %bb.v
  %i.pj = ashr exact i64 %i.ph, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i484 = call i64 @llvm.umax.i64(i64 %i.pj, i64 1)
  %i.pk = add nsw i64 %.sroa.speculated.i.i.i.i484, %i.pj ; 2 uses
  %i.pl = icmp ult i64 %i.pk, %i.pj
  %i.pm = call i64 @llvm.umin.i64(i64 %i.pk, i64 1152921504606846975)
  %i.pn = select i1 %i.pl, i64 1152921504606846975, i64 %i.pm ; 3 uses
  %.not.i.i.i.i485 = icmp ne i64 %i.pn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i485)
  %i.po = shl nuw nsw i64 %i.pn, 3
  %i.pp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.po) #25
          to label %.noexc490 unwind label %bb.bh ; 4 uses

.noexc490:                                        ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i483
  %i.pq = getelementptr inbounds i8, ptr %i.pp, i64 %i.ph ; 2 uses
  store ptr %i.ho, ptr %i.pq, align 8, !tbaa !198
  %i.pr = icmp sgt i64 %i.ph, 0
  br i1 %i.pr, label %bb.x, label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i486

bb.x:                                             ; preds = %.noexc490
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pp, ptr align 8 %i.pe, i64 %i.ph, i1 false)
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i486

_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i486: ; preds = %bb.x, %.noexc490
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %.not.i17.i.i.i487 = icmp eq ptr %i.pe, null
  br i1 %.not.i17.i.i.i487, label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i488, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i486
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.ph) #23
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i488

_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i488: ; preds = %bb.y, %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i486
  store ptr %i.pp, ptr @func_attr_generator, align 8, !tbaa !20
  store ptr %i.ps, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pn
  store ptr %i.pt, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit491

_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit491: ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i488, %bb.u
  %i.pu = load ptr, ptr %4, align 8, !tbaa !32    ; 3 uses
  %i.pv = load ptr, ptr %i.pa, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.pu, %i.pv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit491, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.qb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.pu, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit491 ] ; 3 uses
  %i.pw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.py = icmp eq ptr %i.pw, %i.px
  br i1 %i.py, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !39
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.qa) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.qb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.qb, %i.pv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit491
  %i.qc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.pu, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit491 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.qc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.qd = load ptr, ptr %i.or, align 8, !tbaa !41
  %i.qe = ptrtoint ptr %i.qd to i64
  %i.qf = ptrtoint ptr %i.qc to i64
  %i.qg = sub i64 %i.qe, %i.qf
  call void @_ZdlPvm(ptr noundef nonnull %i.qc, i64 noundef %i.qg) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.z
  %i.qh = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !38 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.qk = icmp eq ptr %i.qi, %i.qj
  br i1 %i.qk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ql = load i64, ptr %i.qj, align 8, !tbaa !39
  %i.qm = add i64 %i.ql, 1
  call void @_ZdlPvm(ptr noundef %i.qi, i64 noundef %i.qm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493
  %i.qn = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !38 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495
  %i.qr = load i64, ptr %i.qp, align 8, !tbaa !39
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qs) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.1
  %i.qt = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !38 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.1
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !39
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.2
  %i.qz = load ptr, ptr %5, align 8, !tbaa !38    ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.rb = icmp eq ptr %i.qz, %i.ra
  br i1 %i.rb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.2
  %i.rc = load i64, ptr %i.ra, align 8, !tbaa !39
  %i.rd = add i64 %i.rc, 1
  call void @_ZdlPvm(ptr noundef %i.qz, i64 noundef %i.rd) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i493.3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.re = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.rf = icmp eq ptr %i.re, %i.nv
  br i1 %i.rf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.3
  %i.rg = load i64, ptr %i.nv, align 8, !tbaa !39
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.re, i64 noundef %i.rh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit495.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i496
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ri = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %._crit_edge.i.i499 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

._crit_edge.i.i499:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.rj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 9 uses
  store ptr %i.rj, ptr %6, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.rj, ptr noundef nonnull align 1 dereferenceable(11) @.str.29, i64 11, i1 false)
  %i.rk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 11, ptr %i.rk, align 8, !tbaa !43
  %i.rl = getelementptr inbounds nuw i8, ptr %6, i64 27
  store i8 0, ptr %i.rl, align 1, !tbaa !39
  %i.rm = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 96)
          to label %_Z12FuncAttrProbv.exit508 unwind label %.thread894

_Z12FuncAttrProbv.exit508:                        ; preds = %._crit_edge.i.i499
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.rn = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.rn, ptr %8, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.rn, ptr noundef nonnull align 1 dereferenceable(7) @.str.30, i64 7, i1 false)
  %i.ro = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 7, ptr %i.ro, align 8, !tbaa !43
  %i.rp = getelementptr inbounds nuw i8, ptr %8, i64 23
  store i8 0, ptr %i.rp, align 1, !tbaa !39
  %i.rq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.rr = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr %i.rr, ptr %i.rq, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.rr, ptr noundef nonnull align 1 dereferenceable(6) @.str.31, i64 6, i1 false)
  %i.rs = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 6, ptr %i.rs, align 8, !tbaa !43
  %i.rt = getelementptr inbounds nuw i8, ptr %8, i64 54
  store i8 0, ptr %i.rt, align 2, !tbaa !39
  %i.ru = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.rv = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  store ptr %i.rv, ptr %i.ru, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.rv, ptr noundef nonnull align 1 dereferenceable(9) @.str.32, i64 9, i1 false)
  %i.rw = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i64 9, ptr %i.rw, align 8, !tbaa !43
  %i.rx = getelementptr inbounds nuw i8, ptr %8, i64 89
  store i8 0, ptr %i.rx, align 1, !tbaa !39
  %i.ry = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.rz = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  store ptr %i.rz, ptr %i.ry, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.rz, ptr noundef nonnull align 1 dereferenceable(14) @.str.33, i64 14, i1 false)
  %i.sa = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i64 14, ptr %i.sa, align 8, !tbaa !43
  %i.sb = getelementptr inbounds nuw i8, ptr %8, i64 126
  store i8 0, ptr %i.sb, align 2, !tbaa !39
  %i.sc = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.sd = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  store ptr %i.sd, ptr %i.sc, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.sd, ptr noundef nonnull align 1 dereferenceable(15) @.str.34, i64 15, i1 false)
  %i.se = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i64 15, ptr %i.se, align 8, !tbaa !43
  %i.sf = getelementptr inbounds nuw i8, ptr %8, i64 159
  store i8 0, ptr %i.sf, align 1, !tbaa !39
  %i.sg = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #25
          to label %.noexc555 unwind label %.loopexit.thread ; 3 uses

.noexc555:                                        ; preds = %_Z12FuncAttrProbv.exit508
  %i.sh = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.si = getelementptr inbounds nuw i8, ptr %8, i64 160
  store ptr %i.sg, ptr %i.si, align 8, !tbaa !38
  store i64 16, ptr %i.sh, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sg, ptr noundef nonnull align 1 dereferenceable(16) @.str.35, i64 16, i1 false)
  %i.sj = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i64 16, ptr %i.sj, align 8, !tbaa !43
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store i8 0, ptr %i.sk, align 1, !tbaa !39
  %i.sl = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.sm = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  store ptr %i.sm, ptr %i.sl, align 8, !tbaa !42
  store i32 1801545068, ptr %i.sm, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %8, i64 200
  store i64 4, ptr %i.sn, align 8, !tbaa !43
  %i.so = getelementptr inbounds nuw i8, ptr %8, i64 212
  store i8 0, ptr %i.so, align 4, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.sp = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #25
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i567 unwind label %bb.aa ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i567: ; preds = %.noexc555
  %i.sq = getelementptr inbounds nuw i8, ptr %8, i64 224
  store ptr %i.sp, ptr %7, align 8, !tbaa !32
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 224
  %i.ss = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr %i.sr, ptr %i.ss, align 8, !tbaa !41
  %i.st = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %8, ptr noundef nonnull %i.sq, ptr noundef nonnull %i.sp)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i567, %.noexc555
  %i.su = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sv = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %.not.i.i5.i565 = icmp eq ptr %i.sv, null
  br i1 %.not.i.i5.i565, label %.body568, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.sw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !41
  %i.sy = ptrtoint ptr %i.sx to i64
  %i.sz = ptrtoint ptr %i.sv to i64
  %i.ta = sub i64 %i.sy, %i.sz
  call void @_ZdlPvm(ptr noundef nonnull %i.sv, i64 noundef %i.ta) #23
  br label %.body568

bb.ac:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i567
  %i.tb = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.st, ptr %i.tb, align 8, !tbaa !33
  invoke void @_ZN20MultiChoiceAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.ri, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.rm, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.ad unwind label %bb.bj

bb.ad:                                            ; preds = %bb.ac
  %i.tc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196 ; 4 uses
  %i.td = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  %.not.i.i571 = icmp eq ptr %i.tc, %i.td
  br i1 %.not.i.i571, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.ri, ptr %i.tc, align 8, !tbaa !198
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  store ptr %i.te, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit580

bb.af:                                            ; preds = %bb.ad
  %i.tf = load ptr, ptr @func_attr_generator, align 8, !tbaa !20 ; 4 uses
  %i.tg = ptrtoint ptr %i.tc to i64
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = sub i64 %i.tg, %i.th                    ; 6 uses
  %i.tj = icmp eq i64 %i.ti, 9223372036854775800
  br i1 %i.tj, label %bb.ag, label %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i572

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #26
          to label %.noexc578 unwind label %bb.bj

.noexc578:                                        ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i572: ; preds = %bb.af
  %i.tk = ashr exact i64 %i.ti, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i573 = call i64 @llvm.umax.i64(i64 %i.tk, i64 1)
  %i.tl = add nsw i64 %.sroa.speculated.i.i.i.i573, %i.tk ; 2 uses
  %i.tm = icmp ult i64 %i.tl, %i.tk
  %i.tn = call i64 @llvm.umin.i64(i64 %i.tl, i64 1152921504606846975)
  %i.to = select i1 %i.tm, i64 1152921504606846975, i64 %i.tn ; 3 uses
  %.not.i.i.i.i574 = icmp ne i64 %i.to, 0
  call void @llvm.assume(i1 %.not.i.i.i.i574)
  %i.tp = shl nuw nsw i64 %i.to, 3
  %i.tq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tp) #25
          to label %.noexc579 unwind label %bb.bj ; 4 uses

.noexc579:                                        ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i572
  %i.tr = getelementptr inbounds i8, ptr %i.tq, i64 %i.ti ; 2 uses
  store ptr %i.ri, ptr %i.tr, align 8, !tbaa !198
  %i.ts = icmp sgt i64 %i.ti, 0
  br i1 %i.ts, label %bb.ah, label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i575

bb.ah:                                            ; preds = %.noexc579
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tq, ptr align 8 %i.tf, i64 %i.ti, i1 false)
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i575

_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i575: ; preds = %bb.ah, %.noexc579
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  %.not.i17.i.i.i576 = icmp eq ptr %i.tf, null
  br i1 %.not.i17.i.i.i576, label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i577, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i575
  call void @_ZdlPvm(ptr noundef nonnull %i.tf, i64 noundef %i.ti) #23
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i577

_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i577: ; preds = %bb.ai, %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i575
  store ptr %i.tq, ptr @func_attr_generator, align 8, !tbaa !20
  store ptr %i.tt, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.to
  store ptr %i.tu, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit580

_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit580: ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i577, %bb.ae
  %i.tv = load ptr, ptr %7, align 8, !tbaa !32    ; 3 uses
  %i.tw = load ptr, ptr %i.tb, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i581 = icmp eq ptr %i.tv, %i.tw
  br i1 %.not4.i.i.i581, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i589, label %.lr.ph.i.i.i582

.lr.ph.i.i.i582:                                  ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit580, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i585
  %.05.i.i.i583 = phi ptr [ %i.uc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i585 ], [ %i.tv, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit580 ] ; 3 uses
  %i.tx = load ptr, ptr %.05.i.i.i583, align 8, !tbaa !38 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.05.i.i.i583, i64 16 ; 2 uses
  %i.tz = icmp eq ptr %i.tx, %i.ty
  br i1 %i.tz, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i585, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i584

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i584: ; preds = %.lr.ph.i.i.i582
  %i.ua = load i64, ptr %i.ty, align 8, !tbaa !39
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ub) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i585

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i585: ; preds = %.lr.ph.i.i.i582, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i584
  %i.uc = getelementptr inbounds nuw i8, ptr %.05.i.i.i583, i64 32 ; 2 uses
  %.not.i.i.i586 = icmp eq ptr %i.uc, %i.tw
  br i1 %.not.i.i.i586, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i587, label %.lr.ph.i.i.i582, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i587: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i585
  %.pr.i588 = load ptr, ptr %7, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i589

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i589: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i587, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit580
  %i.ud = phi ptr [ %.pr.i588, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i587 ], [ %i.tv, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit580 ] ; 3 uses
  %.not.i.i1.i590 = icmp eq ptr %i.ud, null
  br i1 %.not.i.i1.i590, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit593, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i589
  %i.ue = load ptr, ptr %i.ss, align 8, !tbaa !41
  %i.uf = ptrtoint ptr %i.ue to i64
  %i.ug = ptrtoint ptr %i.ud to i64
  %i.uh = sub i64 %i.uf, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef %i.uh) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit593

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit593: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i589, %bb.aj
  %i.ui = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !38 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.ul = icmp eq ptr %i.uj, %i.uk
  br i1 %i.ul, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit593
  %i.um = load i64, ptr %i.uk, align 8, !tbaa !39
  %i.un = add i64 %i.um, 1
  call void @_ZdlPvm(ptr noundef %i.uj, i64 noundef %i.un) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit593, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594
  %i.uo = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !38 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 2 uses
  %i.ur = icmp eq ptr %i.up, %i.uq
  br i1 %i.ur, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596
  %i.us = load i64, ptr %i.uq, align 8, !tbaa !39
  %i.ut = add i64 %i.us, 1
  call void @_ZdlPvm(ptr noundef %i.up, i64 noundef %i.ut) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.1
  %i.uu = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !38 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.ux = icmp eq ptr %i.uv, %i.uw
  br i1 %i.ux, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.1
  %i.uy = load i64, ptr %i.uw, align 8, !tbaa !39
  %i.uz = add i64 %i.uy, 1
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.uz) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.2
  %i.va = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.vb = load ptr, ptr %i.va, align 8, !tbaa !38 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.vd = icmp eq ptr %i.vb, %i.vc
  br i1 %i.vd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.2
  %i.ve = load i64, ptr %i.vc, align 8, !tbaa !39
  %i.vf = add i64 %i.ve, 1
  call void @_ZdlPvm(ptr noundef %i.vb, i64 noundef %i.vf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.3
  %i.vg = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !38 ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.vj = icmp eq ptr %i.vh, %i.vi
  br i1 %i.vj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.3
  %i.vk = load i64, ptr %i.vi, align 8, !tbaa !39
  %i.vl = add i64 %i.vk, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vl) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.4
  %i.vm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !38 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.vp = icmp eq ptr %i.vn, %i.vo
  br i1 %i.vp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.4
  %i.vq = load i64, ptr %i.vo, align 8, !tbaa !39
  %i.vr = add i64 %i.vq, 1
  call void @_ZdlPvm(ptr noundef %i.vn, i64 noundef %i.vr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.5
  %i.vs = load ptr, ptr %8, align 8, !tbaa !38    ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.vu = icmp eq ptr %i.vs, %i.vt
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.5
  %i.vv = load i64, ptr %i.vt, align 8, !tbaa !39
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i594.6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.vx = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.vy = icmp eq ptr %i.vx, %i.rj
  br i1 %i.vy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.6
  %i.vz = load i64, ptr %i.rj, align 8, !tbaa !39
  %i.wa = add i64 %i.vz, 1
  call void @_ZdlPvm(ptr noundef %i.vx, i64 noundef %i.wa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit596.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.wb = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #25
          to label %._crit_edge.i.i600 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

._crit_edge.i.i600:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.wc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  store ptr %i.wc, ptr %9, align 8, !tbaa !42
  store i64 7312272863631011951, ptr %i.wc, align 8
  %i.wd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 8, ptr %i.wd, align 8, !tbaa !43
  %i.we = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 0, ptr %i.we, align 8, !tbaa !39
  %i.wf = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 96)
          to label %_Z12FuncAttrProbv.exit609 unwind label %.thread916

_Z12FuncAttrProbv.exit609:                        ; preds = %._crit_edge.i.i600
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  %i.wg = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.wg, ptr %11, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.wg, ptr noundef nonnull align 1 dereferenceable(3) @.str.38, i64 3, i1 false)
  %i.wh = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.wh, align 8, !tbaa !43
  %i.wi = getelementptr inbounds nuw i8, ptr %11, i64 19
  store i8 0, ptr %i.wi, align 1, !tbaa !39
  %i.wj = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.wk = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store ptr %i.wk, ptr %i.wj, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.wk, ptr noundef nonnull align 1 dereferenceable(3) @.str.39, i64 3, i1 false)
  %i.wl = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 3, ptr %i.wl, align 8, !tbaa !43
  %i.wm = getelementptr inbounds nuw i8, ptr %11, i64 51
  store i8 0, ptr %i.wm, align 1, !tbaa !39
  %i.wn = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.wo = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  store ptr %i.wo, ptr %i.wn, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.wo, ptr noundef nonnull align 1 dereferenceable(3) @.str.40, i64 3, i1 false)
  %i.wp = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i64 3, ptr %i.wp, align 8, !tbaa !43
  %i.wq = getelementptr inbounds nuw i8, ptr %11, i64 83
  store i8 0, ptr %i.wq, align 1, !tbaa !39
  %i.wr = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ws = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  store ptr %i.ws, ptr %i.wr, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ws, ptr noundef nonnull align 1 dereferenceable(3) @.str.41, i64 3, i1 false)
  %i.wt = getelementptr inbounds nuw i8, ptr %11, i64 104
  store i64 3, ptr %i.wt, align 8, !tbaa !43
  %i.wu = getelementptr inbounds nuw i8, ptr %11, i64 115
  store i8 0, ptr %i.wu, align 1, !tbaa !39
  %i.wv = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ww = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  store ptr %i.ww, ptr %i.wv, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ww, ptr noundef nonnull align 1 dereferenceable(3) @.str.42, i64 3, i1 false)
  %i.wx = getelementptr inbounds nuw i8, ptr %11, i64 136
  store i64 3, ptr %i.wx, align 8, !tbaa !43
  %i.wy = getelementptr inbounds nuw i8, ptr %11, i64 147
  store i8 0, ptr %i.wy, align 1, !tbaa !39
  %i.wz = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.xa = getelementptr inbounds nuw i8, ptr %11, i64 176 ; 2 uses
  store ptr %i.xa, ptr %i.wz, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.xa, ptr noundef nonnull align 1 dereferenceable(6) @.str.43, i64 6, i1 false)
  %i.xb = getelementptr inbounds nuw i8, ptr %11, i64 168
  store i64 6, ptr %i.xb, align 8, !tbaa !43
  %i.xc = getelementptr inbounds nuw i8, ptr %11, i64 182
  store i8 0, ptr %i.xc, align 2, !tbaa !39
  %i.xd = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.xe = getelementptr inbounds nuw i8, ptr %11, i64 208 ; 2 uses
  store ptr %i.xe, ptr %i.xd, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.xe, ptr noundef nonnull align 1 dereferenceable(3) @.str.44, i64 3, i1 false)
  %i.xf = getelementptr inbounds nuw i8, ptr %11, i64 200
  store i64 3, ptr %i.xf, align 8, !tbaa !43
  %i.xg = getelementptr inbounds nuw i8, ptr %11, i64 211
  store i8 0, ptr %i.xg, align 1, !tbaa !39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.xh = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #25
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i668 unwind label %bb.ak ; 3 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i668: ; preds = %_Z12FuncAttrProbv.exit609
  %i.xi = getelementptr inbounds nuw i8, ptr %11, i64 224
  store ptr %i.xh, ptr %10, align 8, !tbaa !32
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 224
  %i.xk = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.xj, ptr %i.xk, align 8, !tbaa !41
  %i.xl = invoke noundef ptr @_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(ptr noundef nonnull %11, ptr noundef nonnull %i.xi, ptr noundef nonnull %i.xh)
          to label %bb.am unwind label %bb.ak

bb.ak:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i668, %_Z12FuncAttrProbv.exit609
  %i.xm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xn = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %.not.i.i5.i666 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i5.i666, label %.body669, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.xo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !41
  %i.xq = ptrtoint ptr %i.xp to i64
  %i.xr = ptrtoint ptr %i.xn to i64
  %i.xs = sub i64 %i.xq, %i.xr
  call void @_ZdlPvm(ptr noundef nonnull %i.xn, i64 noundef %i.xs) #23
  br label %.body669

bb.am:                                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i668
  %i.xt = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %i.xl, ptr %i.xt, align 8, !tbaa !33
  invoke void @_ZN20MultiChoiceAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72) %i.wb, ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef %i.wf, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.an unwind label %bb.bl

bb.an:                                            ; preds = %bb.am
  %i.xu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196 ; 4 uses
  %i.xv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  %.not.i.i672 = icmp eq ptr %i.xu, %i.xv
  br i1 %.not.i.i672, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  store ptr %i.wb, ptr %i.xu, align 8, !tbaa !198
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xu, i64 8
  store ptr %i.xw, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit681

bb.ap:                                            ; preds = %bb.an
  %i.xx = load ptr, ptr @func_attr_generator, align 8, !tbaa !20 ; 4 uses
  %i.xy = ptrtoint ptr %i.xu to i64
  %i.xz = ptrtoint ptr %i.xx to i64
  %i.ya = sub i64 %i.xy, %i.xz                    ; 6 uses
  %i.yb = icmp eq i64 %i.ya, 9223372036854775800
  br i1 %i.yb, label %bb.aq, label %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i673

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #26
          to label %.noexc679 unwind label %bb.bl

.noexc679:                                        ; preds = %bb.aq
  unreachable

_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i673: ; preds = %bb.ap
  %i.yc = ashr exact i64 %i.ya, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i674 = call i64 @llvm.umax.i64(i64 %i.yc, i64 1)
  %i.yd = add nsw i64 %.sroa.speculated.i.i.i.i674, %i.yc ; 2 uses
  %i.ye = icmp ult i64 %i.yd, %i.yc
  %i.yf = call i64 @llvm.umin.i64(i64 %i.yd, i64 1152921504606846975)
  %i.yg = select i1 %i.ye, i64 1152921504606846975, i64 %i.yf ; 3 uses
  %.not.i.i.i.i675 = icmp ne i64 %i.yg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i675)
  %i.yh = shl nuw nsw i64 %i.yg, 3
  %i.yi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yh) #25
          to label %.noexc680 unwind label %bb.bl ; 4 uses

.noexc680:                                        ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i673
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 %i.ya ; 2 uses
  store ptr %i.wb, ptr %i.yj, align 8, !tbaa !198
  %i.yk = icmp sgt i64 %i.ya, 0
  br i1 %i.yk, label %bb.ar, label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i676

bb.ar:                                            ; preds = %.noexc680
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.yi, ptr align 8 %i.xx, i64 %i.ya, i1 false)
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i676

_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i676: ; preds = %bb.ar, %.noexc680
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yj, i64 8
  %.not.i17.i.i.i677 = icmp eq ptr %i.xx, null
  br i1 %.not.i17.i.i.i677, label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i678, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i676
  call void @_ZdlPvm(ptr noundef nonnull %i.xx, i64 noundef %i.ya) #23
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i678

_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i678: ; preds = %bb.as, %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i676
  store ptr %i.yi, ptr @func_attr_generator, align 8, !tbaa !20
  store ptr %i.yl, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  %i.ym = getelementptr inbounds nuw [8 x i8], ptr %i.yi, i64 %i.yg
  store ptr %i.ym, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit681

_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit681: ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i678, %bb.ao
  %i.yn = load ptr, ptr %10, align 8, !tbaa !32   ; 3 uses
  %i.yo = load ptr, ptr %i.xt, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i682 = icmp eq ptr %i.yn, %i.yo
  br i1 %.not4.i.i.i682, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i690, label %.lr.ph.i.i.i683

.lr.ph.i.i.i683:                                  ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit681, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i686
  %.05.i.i.i684 = phi ptr [ %i.yu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i686 ], [ %i.yn, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit681 ] ; 3 uses
  %i.yp = load ptr, ptr %.05.i.i.i684, align 8, !tbaa !38 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.05.i.i.i684, i64 16 ; 2 uses
  %i.yr = icmp eq ptr %i.yp, %i.yq
  br i1 %i.yr, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i686, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i685

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i685: ; preds = %.lr.ph.i.i.i683
  %i.ys = load i64, ptr %i.yq, align 8, !tbaa !39
  %i.yt = add i64 %i.ys, 1
  call void @_ZdlPvm(ptr noundef %i.yp, i64 noundef %i.yt) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i686

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i686: ; preds = %.lr.ph.i.i.i683, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i685
  %i.yu = getelementptr inbounds nuw i8, ptr %.05.i.i.i684, i64 32 ; 2 uses
  %.not.i.i.i687 = icmp eq ptr %i.yu, %i.yo
  br i1 %.not.i.i.i687, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i688, label %.lr.ph.i.i.i683, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i688: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i686
  %.pr.i689 = load ptr, ptr %10, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i690

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i690: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i688, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit681
  %i.yv = phi ptr [ %.pr.i689, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i688 ], [ %i.yn, %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit681 ] ; 3 uses
  %.not.i.i1.i691 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i1.i691, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit694, label %bb.at

bb.at:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i690
  %i.yw = load ptr, ptr %i.xk, align 8, !tbaa !41
end_hunk_0
begin_hunk_1_@_ZN8Function20InitializeAttributesEv:bb.a
  store i64 7, ptr %i.abx, align 8, !tbaa !43
  %i.aby = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.aby, align 1, !tbaa !39
  %i.abz = invoke noundef i32 @_ZN13Probabilities8get_probE8ProbName(i32 noundef 96)
          to label %_Z12FuncAttrProbv.exit733 unwind label %bb.bp

_Z12FuncAttrProbv.exit733:                        ; preds = %._crit_edge.i.i724
  invoke void @_ZN16SectionAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(44) %i.abv, ptr noundef nonnull align 8 dereferenceable(32) %13, i32 noundef %i.abz)
          to label %bb.ba unwind label %bb.bp

bb.ba:                                            ; preds = %_Z12FuncAttrProbv.exit733
  %i.aca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196 ; 4 uses
  %i.acb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  %.not.i.i734 = icmp eq ptr %i.aca, %i.acb
  br i1 %.not.i.i734, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.abv, ptr %i.aca, align 8, !tbaa !198
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  store ptr %i.acc, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit743

bb.bc:                                            ; preds = %bb.ba
  %i.acd = load ptr, ptr @func_attr_generator, align 8, !tbaa !20 ; 4 uses
  %i.ace = ptrtoint ptr %i.aca to i64
  %i.acf = ptrtoint ptr %i.acd to i64
  %i.acg = sub i64 %i.ace, %i.acf                 ; 6 uses
  %i.ach = icmp eq i64 %i.acg, 9223372036854775800
  br i1 %i.ach, label %bb.bd, label %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i735

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.91) #26
          to label %.noexc741 unwind label %bb.bp

.noexc741:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i735: ; preds = %bb.bc
  %i.aci = ashr exact i64 %i.acg, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i736 = call i64 @llvm.umax.i64(i64 %i.aci, i64 1)
  %i.acj = add nsw i64 %.sroa.speculated.i.i.i.i736, %i.aci ; 2 uses
  %i.ack = icmp ult i64 %i.acj, %i.aci
  %i.acl = call i64 @llvm.umin.i64(i64 %i.acj, i64 1152921504606846975)
  %i.acm = select i1 %i.ack, i64 1152921504606846975, i64 %i.acl ; 3 uses
  %.not.i.i.i.i737 = icmp ne i64 %i.acm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i737)
  %i.acn = shl nuw nsw i64 %i.acm, 3
  %i.aco = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acn) #25
          to label %.noexc742 unwind label %bb.bp ; 4 uses

.noexc742:                                        ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i735
  %i.acp = getelementptr inbounds i8, ptr %i.aco, i64 %i.acg ; 2 uses
  store ptr %i.abv, ptr %i.acp, align 8, !tbaa !198
  %i.acq = icmp sgt i64 %i.acg, 0
  br i1 %i.acq, label %bb.be, label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i738

bb.be:                                            ; preds = %.noexc742
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aco, ptr align 8 %i.acd, i64 %i.acg, i1 false)
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i738

_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i738: ; preds = %bb.be, %.noexc742
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %.not.i17.i.i.i739 = icmp eq ptr %i.acd, null
  br i1 %.not.i17.i.i.i739, label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i740, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i738
  call void @_ZdlPvm(ptr noundef nonnull %i.acd, i64 noundef %i.acg) #23
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i740

_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i740: ; preds = %bb.bf, %_ZNSt6vectorIP9AttributeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i738
  store ptr %i.aco, ptr @func_attr_generator, align 8, !tbaa !20
  store ptr %i.acr, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 8), align 8, !tbaa !196
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.aco, i64 %i.acm
  store ptr %i.acs, ptr getelementptr inbounds nuw (i8, ptr @func_attr_generator, i64 16), align 8, !tbaa !21
  br label %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit743

_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit743: ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i740, %bb.bb
  %i.act = load ptr, ptr %13, align 8, !tbaa !38  ; 2 uses
  %i.acu = icmp eq ptr %i.act, %i.abw
  br i1 %i.acu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744: ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit743
  %i.acv = load i64, ptr %i.abw, align 8, !tbaa !39
  %i.acw = add i64 %i.acv, 1
  call void @_ZdlPvm(ptr noundef %i.act, i64 noundef %i.acw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746: ; preds = %_ZNSt6vectorIP9AttributeSaIS1_EE9push_backEOS1_.exit743, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i744
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.acx = load ptr, ptr %1, align 8, !tbaa !32   ; 5 uses
  %i.acy = load ptr, ptr %i.cs, align 8, !tbaa !33 ; 2 uses
  %.not4.i.i.i747 = icmp eq ptr %i.acx, %i.acy
  br i1 %.not4.i.i.i747, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i755, label %.lr.ph.i.i.i748

.lr.ph.i.i.i748:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i751
  %.05.i.i.i749 = phi ptr [ %i.ade, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i751 ], [ %i.acx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746 ] ; 3 uses
  %i.acz = load ptr, ptr %.05.i.i.i749, align 8, !tbaa !38 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.05.i.i.i749, i64 16 ; 2 uses
  %i.adb = icmp eq ptr %i.acz, %i.ada
  br i1 %i.adb, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i751, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i750

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i750: ; preds = %.lr.ph.i.i.i748
  %i.adc = load i64, ptr %i.ada, align 8, !tbaa !39
  %i.add = add i64 %i.adc, 1
  call void @_ZdlPvm(ptr noundef %i.acz, i64 noundef %i.add) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i751

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i751: ; preds = %.lr.ph.i.i.i748, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i750
  %i.ade = getelementptr inbounds nuw i8, ptr %.05.i.i.i749, i64 32 ; 2 uses
  %.not.i.i.i752 = icmp eq ptr %i.ade, %i.acy
  br i1 %.not.i.i.i752, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i755, label %.lr.ph.i.i.i748, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i755: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i751, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit746
  %.not.i.i1.i756 = icmp eq ptr %i.acx, null
  br i1 %.not.i.i1.i756, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit759, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i755
  %i.adf = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.adg = ptrtoint ptr %i.adf to i64
  %i.adh = ptrtoint ptr %i.acx to i64
  %i.adi = sub i64 %i.adg, %i.adh
  call void @_ZdlPvm(ptr noundef nonnull %i.acx, i64 noundef %i.adi) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit759

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit759: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i755, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.bs

bb.bh:                                            ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i483, %bb.w, %bb.s
  %.0184 = phi i1 [ false, %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i483 ], [ true, %bb.s ], [ false, %bb.w ]
  %i.adj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #24
  br label %.body479

.body479:                                         ; preds = %bb.r, %bb.q, %bb.bh
  %.1185 = phi i1 [ %.0184, %bb.bh ], [ true, %bb.q ], [ true, %bb.r ] ; 2 uses
  %.pn220 = phi { ptr, i32 } [ %i.adj, %bb.bh ], [ %i.ot, %bb.q ], [ %i.ot, %bb.r ] ; 4 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !38 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %5, i64 112 ; 2 uses
  %i.adn = icmp eq ptr %i.adl, %i.adm
  br i1 %i.adn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %.body479
  %i.ado = load i64, ptr %i.adm, align 8, !tbaa !39
  %i.adp = add i64 %i.ado, 1
  call void @_ZdlPvm(ptr noundef %i.adl, i64 noundef %i.adp) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %.body479, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760
  %i.adq = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !38 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 2 uses
  %i.adt = icmp eq ptr %i.adr, %i.ads
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762
  %i.adu = load i64, ptr %i.ads, align 8, !tbaa !39
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.adr, i64 noundef %i.adv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.1
  %i.adw = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.adx = load ptr, ptr %i.adw, align 8, !tbaa !38 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.adz = icmp eq ptr %i.adx, %i.ady
  br i1 %i.adz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.1
  %i.aea = load i64, ptr %i.ady, align 8, !tbaa !39
  %i.aeb = add i64 %i.aea, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.aeb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.2
  %i.aec = load ptr, ptr %5, align 8, !tbaa !38   ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aee = icmp eq ptr %i.aec, %i.aed
  br i1 %i.aee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.2
  %i.aef = load i64, ptr %i.aed, align 8, !tbaa !39
  %i.aeg = add i64 %i.aef, 1
  call void @_ZdlPvm(ptr noundef %i.aec, i64 noundef %i.aeg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760.3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.aeh = load ptr, ptr %3, align 8, !tbaa !38   ; 2 uses
  %i.aei = icmp eq ptr %i.aeh, %i.nv
  br i1 %i.aei, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766

.thread872:                                       ; preds = %._crit_edge.i.i434
  %i.aej = landingpad { ptr, i32 }
          cleanup
  %i.aek = load ptr, ptr %3, align 8, !tbaa !38   ; 2 uses
  %i.ael = icmp eq ptr %i.aek, %i.nv
  br i1 %i.ael, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766.thread: ; preds = %.thread872
  %i.aem = load i64, ptr %i.nv, align 8, !tbaa !39
  %i.aen = add i64 %i.aem, 1
  call void @_ZdlPvm(ptr noundef %i.aek, i64 noundef %i.aen) #23
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.3
  %i.aeo = load i64, ptr %i.nv, align 8, !tbaa !39
  %i.aep = add i64 %i.aeo, 1
  call void @_ZdlPvm(ptr noundef %i.aeh, i64 noundef %i.aep) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.1185, label %bb.bi, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.1185, label %bb.bi, label %.loopexit.split-lp

.sink.split:                                      ; preds = %.thread872, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bi

bb.bi:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768
  %.pn220.pn.pn.pn.pn.pn.pn871 = phi { ptr, i32 } [ %.pn220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766 ], [ %.pn220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768 ], [ %i.aej, %.sink.split ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef 72) #23
  br label %.loopexit.split-lp

bb.bj:                                            ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i572, %bb.ag, %bb.ac
  %.081 = phi i1 [ false, %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i572 ], [ true, %bb.ac ], [ false, %bb.ag ]
  %i.aeq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #24
  br label %.body568

.body568:                                         ; preds = %bb.ab, %bb.aa, %bb.bj
  %.pn229 = phi { ptr, i32 } [ %i.aeq, %bb.bj ], [ %i.su, %bb.aa ], [ %i.su, %bb.ab ] ; 4 uses
  %.182 = phi i1 [ %.081, %bb.bj ], [ true, %bb.aa ], [ true, %bb.ab ] ; 2 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %8, i64 192
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !38 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %8, i64 208 ; 2 uses
  %i.aeu = icmp eq ptr %i.aes, %i.aet
  br i1 %i.aeu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769: ; preds = %.body568
  %i.aev = load i64, ptr %i.aet, align 8, !tbaa !39
  %i.aew = add i64 %i.aev, 1
  call void @_ZdlPvm(ptr noundef %i.aes, i64 noundef %i.aew) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771: ; preds = %.body568, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769
  %i.aex = getelementptr inbounds nuw i8, ptr %8, i64 160
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !38 ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %8, i64 176 ; 2 uses
  %i.afa = icmp eq ptr %i.aey, %i.aez
  br i1 %i.afa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771
  %i.afb = load i64, ptr %i.aez, align 8, !tbaa !39
  %i.afc = add i64 %i.afb, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.1
  %i.afd = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !38 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.afg = icmp eq ptr %i.afe, %i.aff
  br i1 %i.afg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.1
  %i.afh = load i64, ptr %i.aff, align 8, !tbaa !39
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.afe, i64 noundef %i.afi) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.2
  %i.afj = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !38 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.afm = icmp eq ptr %i.afk, %i.afl
  br i1 %i.afm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.2
  %i.afn = load i64, ptr %i.afl, align 8, !tbaa !39
  %i.afo = add i64 %i.afn, 1
  call void @_ZdlPvm(ptr noundef %i.afk, i64 noundef %i.afo) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.3
  %i.afp = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !38 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.afs = icmp eq ptr %i.afq, %i.afr
  br i1 %i.afs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.3
  %i.aft = load i64, ptr %i.afr, align 8, !tbaa !39
  %i.afu = add i64 %i.aft, 1
  call void @_ZdlPvm(ptr noundef %i.afq, i64 noundef %i.afu) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.4
  %i.afv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.afw = load ptr, ptr %i.afv, align 8, !tbaa !38 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.afy = icmp eq ptr %i.afw, %i.afx
  br i1 %i.afy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.4
  %i.afz = load i64, ptr %i.afx, align 8, !tbaa !39
  %i.aga = add i64 %i.afz, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.aga) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.5
  %i.agb = load ptr, ptr %8, align 8, !tbaa !38   ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.agd = icmp eq ptr %i.agb, %i.agc
  br i1 %i.agd, label %.loopexit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.5
  %i.age = load i64, ptr %i.agc, align 8, !tbaa !39
  %i.agf = add i64 %i.age, 1
  call void @_ZdlPvm(ptr noundef %i.agb, i64 noundef %i.agf) #23
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit771.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i769.6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.agg = load ptr, ptr %6, align 8, !tbaa !38   ; 2 uses
  %i.agh = icmp eq ptr %i.agg, %i.rj
  br i1 %i.agh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775.a

.loopexit.thread:                                 ; preds = %_Z12FuncAttrProbv.exit508
  %i.agi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.agj = load ptr, ptr %6, align 8, !tbaa !38   ; 2 uses
  %i.agk = icmp eq ptr %i.agj, %i.rj
  br i1 %i.agk, label %.sink.split1206, label %.sink.split1206.sink.split

.thread894:                                       ; preds = %._crit_edge.i.i499
  %i.agl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.agm = load ptr, ptr %6, align 8, !tbaa !38   ; 2 uses
  %i.agn = icmp eq ptr %i.agm, %i.rj
  br i1 %i.agn, label %.sink.split1206, label %.sink.split1206.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775.a: ; preds = %.loopexit
  %i.ago = load i64, ptr %i.rj, align 8, !tbaa !39
  %i.agp = add i64 %i.ago, 1
  call void @_ZdlPvm(ptr noundef %i.agg, i64 noundef %i.agp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.182, label %bb.bk, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777.a: ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br i1 %.182, label %bb.bk, label %.loopexit.split-lp

.sink.split1206.sink.split:                       ; preds = %.thread894, %.loopexit.thread
  %.sink = phi ptr [ %i.agj, %.loopexit.thread ], [ %i.agm, %.thread894 ]
  %.pn229.pn.pn.pn.pn.pn.pn.pn.pn.pn893.ph.ph = phi { ptr, i32 } [ %i.agi, %.loopexit.thread ], [ %i.agl, %.thread894 ]
  %i.agq = load i64, ptr %i.rj, align 8, !tbaa !39
  %i.agr = add i64 %i.agq, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.agr) #23
  br label %.sink.split1206

.sink.split1206:                                  ; preds = %.sink.split1206.sink.split, %.thread894, %.loopexit.thread
  %.pn229.pn.pn.pn.pn.pn.pn.pn.pn.pn893.ph = phi { ptr, i32 } [ %i.agi, %.loopexit.thread ], [ %i.agl, %.thread894 ], [ %.pn229.pn.pn.pn.pn.pn.pn.pn.pn.pn893.ph.ph, %.sink.split1206.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.bk

bb.bk:                                            ; preds = %.sink.split1206, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777.a
  %.pn229.pn.pn.pn.pn.pn.pn.pn.pn.pn893 = phi { ptr, i32 } [ %.pn229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775.a ], [ %.pn229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777.a ], [ %.pn229.pn.pn.pn.pn.pn.pn.pn.pn.pn893.ph, %.sink.split1206 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef 72) #23
  br label %.loopexit.split-lp

bb.bl:                                            ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i673, %bb.aq, %bb.am
  %.035 = phi i1 [ false, %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i673 ], [ true, %bb.am ], [ false, %bb.aq ]
  %i.ags = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #24
  br label %.body669

.body669:                                         ; preds = %bb.al, %bb.ak, %bb.bl
  %.pn241 = phi { ptr, i32 } [ %i.ags, %bb.bl ], [ %i.xm, %bb.ak ], [ %i.xm, %bb.al ] ; 4 uses
  %.136 = phi i1 [ %.035, %bb.bl ], [ true, %bb.ak ], [ true, %bb.al ] ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !38 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %11, i64 208 ; 2 uses
  %i.agw = icmp eq ptr %i.agu, %i.agv
  br i1 %i.agw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778: ; preds = %.body669
  %i.agx = load i64, ptr %i.agv, align 8, !tbaa !39
  %i.agy = add i64 %i.agx, 1
  call void @_ZdlPvm(ptr noundef %i.agu, i64 noundef %i.agy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780: ; preds = %.body669, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778
  %i.agz = getelementptr inbounds nuw i8, ptr %11, i64 160
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !38 ; 2 uses
  %i.ahb = getelementptr inbounds nuw i8, ptr %11, i64 176 ; 2 uses
  %i.ahc = icmp eq ptr %i.aha, %i.ahb
  br i1 %i.ahc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780
  %i.ahd = load i64, ptr %i.ahb, align 8, !tbaa !39
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.aha, i64 noundef %i.ahe) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.1
  %i.ahf = getelementptr inbounds nuw i8, ptr %11, i64 128
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !38 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %11, i64 144 ; 2 uses
  %i.ahi = icmp eq ptr %i.ahg, %i.ahh
  br i1 %i.ahi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.1
  %i.ahj = load i64, ptr %i.ahh, align 8, !tbaa !39
  %i.ahk = add i64 %i.ahj, 1
  call void @_ZdlPvm(ptr noundef %i.ahg, i64 noundef %i.ahk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.2
  %i.ahl = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !38 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.aho = icmp eq ptr %i.ahm, %i.ahn
  br i1 %i.aho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.2
  %i.ahp = load i64, ptr %i.ahn, align 8, !tbaa !39
  %i.ahq = add i64 %i.ahp, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.3
  %i.ahr = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !38 ; 2 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 2 uses
  %i.ahu = icmp eq ptr %i.ahs, %i.aht
  br i1 %i.ahu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.3
  %i.ahv = load i64, ptr %i.aht, align 8, !tbaa !39
  %i.ahw = add i64 %i.ahv, 1
  call void @_ZdlPvm(ptr noundef %i.ahs, i64 noundef %i.ahw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.4
  %i.ahx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !38 ; 2 uses
  %i.ahz = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.aia = icmp eq ptr %i.ahy, %i.ahz
  br i1 %i.aia, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.4
  %i.aib = load i64, ptr %i.ahz, align 8, !tbaa !39
  %i.aic = add i64 %i.aib, 1
  call void @_ZdlPvm(ptr noundef %i.ahy, i64 noundef %i.aic) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.5
  %i.aid = load ptr, ptr %11, align 8, !tbaa !38  ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aif = icmp eq ptr %i.aid, %i.aie
  br i1 %i.aif, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.5
  %i.aig = load i64, ptr %i.aie, align 8, !tbaa !39
  %i.aih = add i64 %i.aig, 1
  call void @_ZdlPvm(ptr noundef %i.aid, i64 noundef %i.aih) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i778.6
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.aii = load ptr, ptr %9, align 8, !tbaa !38   ; 2 uses
  %i.aij = icmp eq ptr %i.aii, %i.wc
  br i1 %i.aij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784

.thread916:                                       ; preds = %._crit_edge.i.i600
  %i.aik = landingpad { ptr, i32 }
          cleanup
  %i.ail = load ptr, ptr %9, align 8, !tbaa !38   ; 2 uses
  %i.aim = icmp eq ptr %i.ail, %i.wc
  br i1 %i.aim, label %.sink.split1207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784.thread: ; preds = %.thread916
  %i.ain = load i64, ptr %i.wc, align 8, !tbaa !39
  %i.aio = add i64 %i.ain, 1
  call void @_ZdlPvm(ptr noundef %i.ail, i64 noundef %i.aio) #23
  br label %.sink.split1207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.6
  %i.aip = load i64, ptr %i.wc, align 8, !tbaa !39
  %i.aiq = add i64 %i.aip, 1
  call void @_ZdlPvm(ptr noundef %i.aii, i64 noundef %i.aiq) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.136, label %bb.bm, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit780.6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %.136, label %bb.bm, label %.loopexit.split-lp

.sink.split1207:                                  ; preds = %.thread916, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split1207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786
  %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn915 = phi { ptr, i32 } [ %.pn241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784 ], [ %.pn241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786 ], [ %i.aik, %.sink.split1207 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.wb, i64 noundef 72) #23
  br label %.loopexit.split-lp

bb.bn:                                            ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i712, %bb.ax, %._crit_edge.i.i701, %_Z12FuncAttrProbv.exit710
  %.033 = phi i1 [ false, %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i712 ], [ true, %_Z12FuncAttrProbv.exit710 ], [ true, %._crit_edge.i.i701 ], [ false, %bb.ax ] ; 2 uses
  %i.air = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ais = load ptr, ptr %12, align 8, !tbaa !38  ; 2 uses
  %i.ait = icmp eq ptr %i.ais, %i.aau
  br i1 %i.ait, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit789, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i787

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i787: ; preds = %bb.bn
  %i.aiu = load i64, ptr %i.aau, align 8, !tbaa !39
  %i.aiv = add i64 %i.aiu, 1
  call void @_ZdlPvm(ptr noundef %i.ais, i64 noundef %i.aiv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %.033, label %bb.bo, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit789: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %.033, label %bb.bo, label %.loopexit.split-lp

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i787, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit789
  call void @_ZdlPvm(ptr noundef nonnull %i.aat, i64 noundef 48) #23
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit700, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit498, %._crit_edge, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit723
  %lpad.loopexit.split-lp1212 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bp:                                            ; preds = %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i735, %bb.bd, %._crit_edge.i.i724, %_Z12FuncAttrProbv.exit733
  %.0 = phi i1 [ false, %_ZNKSt6vectorIP9AttributeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i735 ], [ true, %_Z12FuncAttrProbv.exit733 ], [ true, %._crit_edge.i.i724 ], [ false, %bb.bd ] ; 2 uses
  %i.aiw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aix = load ptr, ptr %13, align 8, !tbaa !38  ; 2 uses
  %i.aiy = icmp eq ptr %i.aix, %i.abw
  br i1 %i.aiy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790: ; preds = %bb.bp
  %i.aiz = load i64, ptr %i.abw, align 8, !tbaa !39
  %i.aja = add i64 %i.aiz, 1
  call void @_ZdlPvm(ptr noundef %i.aix, i64 noundef %i.aja) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.0, label %bb.bq, label %.loopexit.split-lp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %.0, label %bb.bq, label %.loopexit.split-lp

bb.bq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792
  call void @_ZdlPvm(ptr noundef nonnull %i.abv, i64 noundef 48) #23
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit789, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i787, %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784, %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775.a, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766, %bb.p
  %.pn259.pn = phi { ptr, i32 } [ %i.nu, %bb.p ], [ %i.air, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i787 ], [ %.pn241, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i784 ], [ %.pn229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i775.a ], [ %.pn220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i766 ], [ %i.aiw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i790 ], [ %.pn220.pn.pn.pn.pn.pn.pn871, %bb.bi ], [ %.pn220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit768 ], [ %i.air, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit789 ], [ %.pn229.pn.pn.pn.pn.pn.pn.pn.pn.pn893, %bb.bk ], [ %.pn229, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit777.a ], [ %i.aiw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit792 ], [ %.pn241.pn.pn.pn.pn.pn.pn.pn.pn.pn915, %bb.bm ], [ %.pn241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit786 ], [ %i.aiw, %bb.bq ], [ %i.air, %bb.bo ], [ %lpad.loopexit.split-lp1212, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #24
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.split-lp, %.thread
  %.pn259.pn.pn = phi { ptr, i32 } [ %.pn259.pn, %.loopexit.split-lp ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn859, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn259.pn.pn

bb.bs:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit759, %bb.a
  ret void
}

declare noundef zeroext i1 @_ZN9CGOptions14func_attr_flagEv() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN16BooleanAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare void @_ZN20MultiChoiceAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiRKSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare void @_ZN16AlignedAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #4

declare void @_ZN16SectionAttributeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8FuncList, i64 8), align 8, !tbaa !44 ; 2 uses
  %i.b = load ptr, ptr @_ZL8FuncList, align 8, !tbaa !24 ; 3 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0611 = phi i64 [ %i.j, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0611
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.i = icmp eq ptr %i.h, %0
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.0611, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %i.f
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %i.k = load ptr, ptr @_ZL6FMList, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0611
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.n = phi ptr [ %i.m, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z12get_fact_mgrPK9CGContext(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !199
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8FuncList, i64 8), align 8, !tbaa !44 ; 2 uses
  %i.c = load ptr, ptr @_ZL8FuncList, align 8, !tbaa !24 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %_Z21get_fact_mgr_for_funcPK8Function.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.0611.i = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0611.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = add nuw i64 %.0611.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not.i, label %_Z21get_fact_mgr_for_funcPK8Function.exit, label %.lr.ph.i, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = load ptr, ptr @_ZL6FMList, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0611.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48
  br label %_Z21get_fact_mgr_for_funcPK8Function.exit

_Z21get_fact_mgr_for_funcPK8Function.exit:        ; preds = %bb.b, %bb.a, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_Z21find_function_by_nameRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL8FuncList, i64 8), align 8, !tbaa !44 ; 2 uses
  %i.b = load ptr, ptr @_ZL8FuncList, align 8, !tbaa !24 ; 3 uses
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !43   ; 3 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = icmp eq i64 %i.h, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8
  %.0611 = phi i64 [ 0, %.lr.ph ], [ %i.r, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.0611
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !43
  %i.o = icmp eq i64 %i.n, %i.h
  br i1 %i.o, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8

bb.c:                                             ; preds = %bb.b
  br i1 %i.j, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !38
  %bcmp.i = tail call i32 @bcmp(ptr %i.p, ptr %i.i, i64 %i.h)
  %i.q = icmp eq i32 %bcmp.i, 0
  br i1 %i.q, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.r = add nuw i64 %.0611, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.r, %i.f
  br i1 %exitcond.not, label %.thread, label %bb.b, !llvm.loop !200

.thread:                                          ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %bb.c, %bb.a
  %i.s = phi ptr [ null, %bb.a ], [ %i.l, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ %i.l, %bb.c ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread8 ]
  ret ptr %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_Z20find_function_in_setRKSt6vectorIPK8FunctionSaIS2_EES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !204    ; 3 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0813 = phi i64 [ %i.k, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.0813
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = icmp eq ptr %i.i, %1
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = add nuw i64 %.0813, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %i.g
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !201

bb.c:                                             ; preds = %.lr.ph
  %i.l = trunc i64 %.0813 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.m = phi i32 [ %i.l, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ]
  ret i32 %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_Z16find_blk_for_varPK8Variable(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
end_hunk_1
