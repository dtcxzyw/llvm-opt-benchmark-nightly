Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmCMakeHostSystemInformationCommand?download=true
inline.NumInlined: 1891
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #27
  invoke void @_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull align 8 dereferenceable(24) %71)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.ld = load ptr, ptr %72, align 8, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 %i.lf, ptr %i.ld)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  %i.lg = load ptr, ptr %72, align 8, !tbaa !20   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.li = icmp eq ptr %i.lg, %i.lh
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i: ; preds = %bb.ck
  %i.lj = load i64, ptr %i.lh, align 8, !tbaa !21
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lg, i64 noundef %i.lk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i: ; preds = %bb.ck, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i190.i
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #27
  br label %bb.cq

bb.cl:                                            ; preds = %bb.cc, %bb.ca, %bb.bu, %bb.bn
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %.body147.i

bb.cm:                                            ; preds = %bb.ce
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN17cmWindowsRegistryD2Ev.exit219.i

bb.cn:                                            ; preds = %bb.cg
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.co:                                            ; preds = %bb.ci
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

bb.cp:                                            ; preds = %bb.cj
  %i.lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lq = load ptr, ptr %72, align 8, !tbaa !20   ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i: ; preds = %bb.cp
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !21
  %i.lu = add i64 %i.lt, 1
  call void @_ZdlPvm(ptr noundef %i.lq, i64 noundef %i.lu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i: ; preds = %bb.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i, %bb.co
  %.pn98.i = phi { ptr, i32 } [ %i.lo, %bb.co ], [ %i.lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193.i ], [ %i.lp, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #27
  call void @_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %71) #27
  br label %bb.cr

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit192.i, %bb.ch
  call void @_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %71) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27
  br label %bb.dl

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i, %bb.cn
  %.pn98.pn.i = phi { ptr, i32 } [ %.pn98.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195.i ], [ %i.ln, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #27
  br label %bb.dq

bb.cs:                                            ; preds = %bb.cf
  %i.lv = load i8, ptr %i.go, align 1, !tbaa !206, !range !57, !noundef !55
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.ct, label %bb.dd

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #27
  %i.lx = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.ly = load i64, ptr %i.kx, align 8, !tbaa !26
  invoke void @_ZN17cmWindowsRegistry10GetSubKeysB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_4ViewE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.189") align 8 %73, ptr noundef nonnull align 8 dereferenceable(32) %70, i64 %i.ly, ptr %i.lx, i32 noundef %i.ku)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.lz = getelementptr inbounds nuw i8, ptr %73, i64 24
  %i.ma = load i8, ptr %i.lz, align 8, !tbaa !59, !range !57, !noundef !55
  %i.mb = trunc nuw i8 %i.ma to i1
  br i1 %i.mb, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #27
  invoke void @_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr noundef nonnull align 8 dereferenceable(24) %73)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  %i.mc = load ptr, ptr %74, align 8, !tbaa !20
  %i.md = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.me = load i64, ptr %i.md, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 %i.me, ptr %i.mc)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.mf = load ptr, ptr %74, align 8, !tbaa !20   ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i: ; preds = %bb.cx
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !21
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #27
  br label %bb.db

bb.cy:                                            ; preds = %bb.ct
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.cz:                                            ; preds = %bb.cv
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

bb.da:                                            ; preds = %bb.cw
  %i.mm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mn = load ptr, ptr %74, align 8, !tbaa !20   ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.mp = icmp eq ptr %i.mn, %i.mo
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i: ; preds = %bb.da
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !21
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i: ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i, %bb.cz
  %.pn95.i = phi { ptr, i32 } [ %i.ml, %bb.cz ], [ %i.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i203.i ], [ %i.mm, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #27
  call void @_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %73) #27
  br label %bb.dc

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i, %bb.cu
  call void @_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %73) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #27
  br label %bb.dl

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i, %bb.cy
  %.pn95.pn.i = phi { ptr, i32 } [ %.pn95.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i ], [ %i.mk, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #27
  br label %bb.dq

bb.dd:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #27
  %i.ms = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.mt = load i64, ptr %i.kx, align 8, !tbaa !26
  %i.mu = load ptr, ptr %i.gk, align 8, !tbaa !20
  %i.mv = load i64, ptr %i.gm, align 8, !tbaa !26
  %i.mw = load ptr, ptr %i.gs, align 8, !tbaa !20
  %i.mx = load i64, ptr %i.gu, align 8, !tbaa !26
  store i64 %i.mx, ptr %76, align 8
  %i.my = getelementptr inbounds nuw i8, ptr %76, i64 8
  store ptr %i.mw, ptr %i.my, align 8
  invoke void @_ZN17cmWindowsRegistry9ReadValueB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES3_NS_4ViewES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.3") align 8 %75, ptr noundef nonnull align 8 dereferenceable(32) %70, i64 %i.mt, ptr %i.ms, i64 %i.mv, ptr %i.mu, i32 noundef %i.ku, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %76)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.mz = getelementptr inbounds nuw i8, ptr %75, i64 32 ; 5 uses
  %i.na = load i8, ptr %i.mz, align 8, !tbaa !61, !range !57, !noundef !55
  %i.nb = trunc nuw i8 %i.na to i1
  br i1 %i.nb, label %bb.df, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit216.i

bb.df:                                            ; preds = %bb.de
  %i.nc = load ptr, ptr %75, align 8, !tbaa !20
  %i.nd = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.ne = load i64, ptr %i.nd, align 8, !tbaa !26
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 %i.ne, ptr %i.nc)
          to label %bb.dj unwind label %bb.dh

bb.dg:                                            ; preds = %bb.dd
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.dh:                                            ; preds = %bb.df
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.nh = load i8, ptr %i.mz, align 8, !tbaa !61, !range !57, !noundef !55
  %i.ni = trunc nuw i8 %i.nh to i1
  store i8 0, ptr %i.mz, align 8, !tbaa !61
  br i1 %i.ni, label %bb.di, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.di:                                            ; preds = %bb.dh
  %i.nj = load ptr, ptr %75, align 8, !tbaa !20   ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.nl = icmp eq ptr %i.nj, %i.nk
  br i1 %i.nl, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.di
  %i.nm = load i64, ptr %i.nk, align 8, !tbaa !21
  %i.nn = add i64 %i.nm, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nn) #26
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.dj:                                            ; preds = %bb.df
  %.pre.i = load i8, ptr %i.mz, align 8, !tbaa !61, !range !57
  %i.no = trunc nuw i8 %.pre.i to i1
  store i8 0, ptr %i.mz, align 8, !tbaa !61
  br i1 %i.no, label %bb.dk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit216.i

bb.dk:                                            ; preds = %bb.dj
  %i.np = load ptr, ptr %75, align 8, !tbaa !20   ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit216.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i214.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i214.i: ; preds = %bb.dk
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !21
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #26
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit216.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit216.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i214.i, %bb.dj, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #27
  br label %bb.dl

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.dh, %bb.dg
  %.pn93.i = phi { ptr, i32 } [ %i.nf, %bb.dg ], [ %i.ng, %bb.dh ], [ %i.ng, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ %i.ng, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #27
  br label %bb.dq

bb.dl:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit216.i, %bb.db, %bb.cq
  %i.nu = load i64, ptr %i.gx, align 8, !tbaa !26
  %i.nv = icmp eq i64 %i.nu, 0
  br i1 %i.nv, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.nw = invoke { i64, ptr } @_ZNK17cmWindowsRegistry12GetLastErrorEv(ptr noundef nonnull align 8 dereferenceable(32) %70)
          to label %bb.dn unwind label %bb.do     ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %i.nx = extractvalue { i64, ptr } %i.nw, 0
  %i.ny = extractvalue { i64, ptr } %i.nw, 1
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.kp, ptr noundef nonnull align 8 dereferenceable(32) %i.gv, i64 %i.nx, ptr %i.ny)
          to label %bb.dp unwind label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn, %bb.dl
  %i.oa = load ptr, ptr %70, align 8, !tbaa !20   ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.oc = icmp eq ptr %i.oa, %i.ob
  br i1 %i.oc, label %_ZN17cmWindowsRegistryD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.dp
  %i.od = load i64, ptr %i.ob, align 8, !tbaa !21
  %i.oe = add i64 %i.od, 1
  call void @_ZdlPvm(ptr noundef %i.oa, i64 noundef %i.oe) #26
  br label %_ZN17cmWindowsRegistryD2Ev.exit.i

_ZN17cmWindowsRegistryD2Ev.exit.i:                ; preds = %bb.dp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #27
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %bb.dc, %bb.cr
  %.pn101.i = phi { ptr, i32 } [ %i.nz, %bb.do ], [ %.pn98.pn.i, %bb.cr ], [ %.pn95.pn.i, %bb.dc ], [ %.pn93.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 2 uses
  %i.of = load ptr, ptr %70, align 8, !tbaa !20   ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZN17cmWindowsRegistryD2Ev.exit219.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217.i: ; preds = %bb.dq
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !21
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #26
  br label %_ZN17cmWindowsRegistryD2Ev.exit219.i

_ZN17cmWindowsRegistryD2Ev.exit219.i:             ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217.i, %bb.cm
  %.pn101.pn.i = phi { ptr, i32 } [ %i.lm, %bb.cm ], [ %.pn101.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i217.i ], [ %.pn101.i, %bb.dq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #27
  br label %.body147.i

bb.dr:                                            ; preds = %_ZN17cmWindowsRegistryD2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i, %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i
  %.0.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit157.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i ], [ true, %_ZN17cmWindowsRegistryD2Ev.exit.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.i ], [ true, %bb.bo ]
  %i.ok = load ptr, ptr %i.gv, align 8, !tbaa !20 ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.gw
  br i1 %i.ol, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i220.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i220.i: ; preds = %bb.dr
  %i.om = load i64, ptr %i.gw, align 8, !tbaa !21
  %i.on = add i64 %i.om, 1
  call void @_ZdlPvm(ptr noundef %i.ok, i64 noundef %i.on) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i220.i
  %i.oo = load ptr, ptr %i.gs, align 8, !tbaa !20 ; 2 uses
  %i.op = icmp eq ptr %i.oo, %i.gt
  br i1 %i.op, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.oq = load i64, ptr %i.gt, align 8, !tbaa !21
  %i.or = add i64 %i.oq, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.or) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.os = load ptr, ptr %i.gp, align 8, !tbaa !20 ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.gq
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.ou = load i64, ptr %i.gq, align 8, !tbaa !21
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  %i.ow = load ptr, ptr %i.gk, align 8, !tbaa !20 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, %i.gl
  br i1 %i.ox, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %i.oy = load i64, ptr %i.gl, align 8, !tbaa !21
  %i.oz = add i64 %i.oy, 1
  call void @_ZdlPvm(ptr noundef %i.ow, i64 noundef %i.oz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  %i.pa = load ptr, ptr %i.gg, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(184) %65, ptr noundef %i.pa)
          to label %_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev.exit.i unwind label %bb.ds

bb.ds:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %i.pb = landingpad { ptr, i32 }
          catch ptr null
  %i.pc = extractvalue { ptr, i32 } %i.pb, 0
  call void @__clang_call_terminate(ptr %i.pc) #28
  unreachable

_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  %i.pd = load ptr, ptr %64, align 8, !tbaa !25   ; 3 uses
  %i.pe = load ptr, ptr %i.ht, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.pd, %i.pe
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.pk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.pd, %_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev.exit.i ] ; 3 uses
  %i.pf = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ph = icmp eq ptr %i.pf, %i.pg
  br i1 %i.ph, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i222.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i222.i: ; preds = %.lr.ph.i.i.i.i
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !21
  %i.pj = add i64 %i.pi, 1
  call void @_ZdlPvm(ptr noundef %i.pf, i64 noundef %i.pj) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i222.i
  %i.pk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.pk, %i.pe
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %64, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev.exit.i
  %i.pl = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.pd, %_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.pl, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.dt

bb.dt:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %64, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !62
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.pl to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %i.pl, i64 noundef %i.pq) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.dt, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %63) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  br label %_ZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_.exit

.body147.i:                                       ; preds = %_ZN17cmWindowsRegistryD2Ev.exit219.i, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i, %bb.bf, %bb.ba
  %.pn106.pn.pn.i = phi { ptr, i32 } [ %i.ha, %bb.ba ], [ %i.hr, %bb.bf ], [ %.pn106.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit175.i ], [ %.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163.i ], [ %.pn91.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit183.i ], [ %.pn101.pn.i, %_ZN17cmWindowsRegistryD2Ev.exit219.i ], [ %i.ll, %bb.cl ]
  call fastcc void @_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %65) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #27
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %64) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #27
  br label %.body.i

.body.i:                                          ; preds = %.body147.i, %bb.ax, %bb.aw, %bb.aq, %bb.ap, %bb.aj, %bb.ai, %bb.ac, %bb.ab, %bb.v, %bb.u, %bb.o, %bb.n
  %.pn106.pn.pn.pn.i = phi { ptr, i32 } [ %.pn106.pn.pn.i, %.body147.i ], [ %i.dq, %bb.n ], [ %i.dq, %bb.o ], [ %i.ec, %bb.u ], [ %i.ec, %bb.v ], [ %i.eo, %bb.ab ], [ %i.eo, %bb.ac ], [ %i.fa, %bb.ai ], [ %i.fa, %bb.aj ], [ %i.fm, %bb.ap ], [ %i.fm, %bb.aq ], [ %i.fy, %bb.aw ], [ %i.fy, %bb.ax ]
  call void @_ZN14ArgumentParser9ActionMapD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %63) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #27
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn106.pn.pn.pn.i, %.body.i ], [ %.pn111.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit117.i ], [ %.pn88, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit96 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114 ], [ %.pn83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223 ], [ %i.pv, %bb.ea ]
  resume { ptr, i32 } %common.resume.op

_ZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %.1.i = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.0.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %61)
  call void @llvm.lifetime.end.p0(ptr nonnull %76)
  br label %bb.ke

bb.du:                                            ; preds = %_ZStneIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit102, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.pr = load atomic i8, ptr @_ZGVZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info acquire, align 8
  %i.ps = icmp eq i8 %i.pr, 0
  br i1 %i.ps, label %bb.dv, label %bb.dy, !prof !230

bb.dv:                                            ; preds = %bb.du
  %i.pt = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info) #27
  %.not = icmp eq i32 %i.pt, 0
  br i1 %.not, label %bb.dy, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  invoke void @_ZN5cmsys17SystemInformationC1Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
          to label %bb.dx unwind label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.pu = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5cmsys17SystemInformationD1Ev, ptr nonnull @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info) #27
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dv, %bb.du
  %.b = load i1, ptr @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE11initialized, align 1
  br i1 %.b, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @_ZN5cmsys17SystemInformation11RunCPUCheckEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
  tail call void @_ZN5cmsys17SystemInformation10RunOSCheckEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
  tail call void @_ZN5cmsys17SystemInformation14RunMemoryCheckEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
  store i1 true, ptr @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE11initialized, align 1
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dw
  %i.pv = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info) #27
  br label %common.resume

bb.eb:                                            ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #27
  %i.pw = getelementptr inbounds nuw i8, ptr %79, i64 16 ; 7 uses
  store ptr %i.pw, ptr %79, align 8, !tbaa !27
  %i.px = getelementptr inbounds nuw i8, ptr %79, i64 8 ; 4 uses
  store i64 0, ptr %i.px, align 8, !tbaa !26
  store i8 0, ptr %i.pw, align 8, !tbaa !21
  %i.py = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.pz = load ptr, ptr %0, align 8, !tbaa !25
  %i.qa = ptrtoint ptr %i.py to i64
  %i.qb = ptrtoint ptr %i.pz to i64
  %i.qc = sub i64 %i.qa, %i.qb
  %.not82403 = icmp ult i64 %i.qc, 128
  br i1 %.not82403, label %.critedge92, label %.lr.ph

.lr.ph:                                           ; preds = %bb.eb
  %i.qd = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 127 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 3 uses
  %.phi.trans.insert217.i.i.i = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 42 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %52, i64 32 ; 46 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 8 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 3 uses
  %.phi.trans.insert213.i.i.i = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  %.phi.trans.insert241.i.i.i = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %.phi.trans.insert201.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 3 uses
  %.phi.trans.insert215.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %.phi.trans.insert203.i.i.i = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  %.phi.trans.insert229.i.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %.phi.trans.insert205.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.qt = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 5 uses
  %.phi.trans.insert223.i.i.i = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %.phi.trans.insert207.i.i.i = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %.phi.trans.insert209.i.i.i = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 4 uses
  %.phi.trans.insert245.i.i.i = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %.phi.trans.insert237.i.i.i = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %.phi.trans.insert199.i.i.i = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  %.phi.trans.insert211.i.i.i = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %.phi.trans.insert249.i.i.i = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %.phi.trans.insert251.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  %.phi.trans.insert253.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 3 uses
  %.phi.trans.insert219.i.i.i = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 3 uses
  %.phi.trans.insert233.i.i.i = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 3 uses
  %.phi.trans.insert221.i.i.i = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 3 uses
  %.phi.trans.insert235.i.i.i = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %.phi.trans.insert187.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.rr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 8 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 4 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.rv = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 5 uses
  %.phi.trans.insert225.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 4 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  %.phi.trans.insert239.i.i.i = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 4 uses
  %.phi.trans.insert243.i.i.i = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 4 uses
  %.phi.trans.insert247.i.i.i = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %.phi.trans.insert255.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 7 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 3 uses
  %.phi.trans.insert257.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 3 uses
  %.phi.trans.insert231.i.i.i = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.si = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 12 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.so = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ss = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.st = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.su = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %.sroa.4.0..sroa_idx.i3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0..sroa_idx.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.sv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.sw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.4.0..sroa_idx.i19.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.sy = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.sz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %80, i64 32 ; 7 uses
  %i.td = getelementptr inbounds nuw i8, ptr %80, i64 16 ; 10 uses
  %i.te = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 3 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %81, i64 16 ; 7 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %81, i64 8 ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.ed

bb.ec:                                            ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.ti = add nuw i64 %.059404, 1                 ; 2 uses
  %i.tj = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.tk = load ptr, ptr %0, align 8, !tbaa !25
  %i.tl = ptrtoint ptr %i.tj to i64
  %i.tm = ptrtoint ptr %i.tk to i64
  %i.tn = sub i64 %i.tl, %i.tm
  %i.to = ashr exact i64 %i.tn, 5
  %.not82.not = icmp ult i64 %i.ti, %i.to
  br i1 %.not82.not, label %bb.ed, label %.critedge92.loopexit, !llvm.loop !93

bb.ed:                                            ; preds = %.lr.ph, %bb.ec
  %.059404 = phi i64 [ 3, %.lr.ph ], [ %i.ti, %bb.ec ] ; 2 uses
  %i.tp = load i64, ptr %i.px, align 8, !tbaa !26 ; 2 uses
  %i.tq = icmp ne i64 %i.tp, 0
  %i.tr = zext i1 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [32 x i8], ptr @_ZN12_GLOBAL__N_15DELIMB5cxx11E, i64 %i.tr ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !26 ; 2 uses
  %i.tv = sub i64 4611686018427387903, %i.tp
  %i.tw = icmp ult i64 %i.tv, %i.tu
  br i1 %i.tw, label %bb.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.noexc122 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc122:                                        ; preds = %bb.ee
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.ed
  %i.tx = load ptr, ptr %i.ts, align 16, !tbaa !20
  %i.ty = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef %i.tx, i64 noundef %i.tu)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.tz = load ptr, ptr %0, align 8, !tbaa !25
  %i.ua = getelementptr inbounds nuw [32 x i8], ptr %i.tz, i64 %.059404 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #27, !noalias !231
  %.val.val.i = load ptr, ptr %i.ua, align 8, !tbaa !20, !noalias !231 ; 69 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 8      ; 4 uses
  %.val.val1.i = load i64, ptr %i.ub, align 8, !tbaa !26, !noalias !231
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  switch i64 %.val.val1.i, label %.thread32.i.i [
    i64 23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
    i64 24, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i344.i.i.i
    i64 8, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i369.i.i.i
    i64 4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i381.i.i.i
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i400.i.i.i
    i64 20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i416.i.i.i
    i64 21, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i438.i.i.i
    i64 25, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i449.i.i.i
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i471.i.i.i
    i64 12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i493.i.i.i
    i64 10, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i526.i.i.i
    i64 11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i537.i.i.i
    i64 13, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i548.i.i.i
    i64 18, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i559.i.i.i
    i64 17, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i581.i.i.i
    i64 9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i691.i.i.i
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  %i.uc = load i128, ptr %.val.val.i, align 1
  %i.ud = xor i128 %i.uc, 86749189881183614334552229994946188622
  %i.ue = getelementptr i8, ptr %.val.val.i, i64 7
  %i.uf = load i128, ptr %i.ue, align 1
  %i.ug = xor i128 %i.uf, 110685861570849962335875080954627180111
  %i.uh = or i128 %i.ud, %i.ug
  %i.ui = icmp ne i128 %i.uh, 0
  %i.uj = zext i1 %i.ui to i32
  %i.uk = icmp eq i32 %i.uj, 0
  br i1 %i.uk, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i636.i.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27, !noalias !234
  %i.ul = invoke noundef i32 @_ZN5cmsys17SystemInformation21GetNumberOfLogicalCPUEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
          to label %.noexc138 unwind label %bb.jy ; 5 uses

.noexc138:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
end_hunk_0
begin_hunk_1_@_Z35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
  %.pre222.i.i.i = load i64, ptr %.phi.trans.insert221.i.i.i, align 8, !tbaa !26, !noalias !234
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i757.i.i.i, %bb.im
  %i.bct = phi i64 [ %i.bcp, %bb.im ], [ %.pre222.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i757.i.i.i ]
  store i64 %i.bct, ptr %i.qf, align 8, !tbaa !26, !alias.scope !239, !noalias !231
  store i8 1, ptr %i.qg, align 8, !tbaa !61, !alias.scope !239, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27, !noalias !234
  br label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i"

.invoke:                                          ; preds = %.noexc187, %.noexc185
  invoke void @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRA1_KcTnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESC_ISD_ISt10in_place_tSK_EESt16is_constructibleIS5_JSG_EESt14is_convertibleISG_S5_EEEbE4typeELb1EEEOSG_(ptr noundef nonnull align 8 dereferenceable(40) %52, ptr noundef nonnull align 1 dereferenceable(1) @.str.26)
          to label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i" unwind label %bb.jy

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i764.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i449.i.i.i
  %i.bcu = load i128, ptr %.val.val.i, align 1
  %i.bcv = xor i128 %i.bcu, 126667447068027712206303828254410101328
  %i.bcw = getelementptr i8, ptr %.val.val.i, i64 9
  %i.bcx = load i128, ptr %i.bcw, align 1
  %i.bcy = xor i128 %i.bcx, 118650763035476120641277035771509621599
  %i.bcz = or i128 %i.bcv, %i.bcy
  %i.bda = icmp ne i128 %i.bcz, 0
  %i.bdb = zext i1 %i.bda to i32
  %i.bdc = icmp eq i32 %i.bdb, 0
  br i1 %i.bdc, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit767.i.i.i, label %.thread32.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit767.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i764.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27, !noalias !234
  %i.bdd = invoke noundef float @_ZN5cmsys17SystemInformation26GetProcessorClockFrequencyEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
          to label %.noexc189 unwind label %bb.jy

.noexc189:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit767.i.i.i
  %i.bde = fpext float %i.bdd to double
  invoke void (ptr, ptr, i64, ptr, ...) @_ZN9__gnu_cxx12__to_xstringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEET_PFiPT0_mPKS8_P13__va_list_tagEmSB_z(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %49, ptr noundef nonnull @vsnprintf, i64 noundef 58, ptr noundef nonnull @.str.69, double noundef %i.bde)
          to label %.noexc190 unwind label %bb.jy

.noexc190:                                        ; preds = %.noexc189
  store ptr %i.qd, ptr %52, align 8, !tbaa !27, !alias.scope !239, !noalias !231
  %i.bdf = load ptr, ptr %49, align 8, !tbaa !20, !noalias !234 ; 2 uses
  %i.bdg = icmp eq ptr %i.bdf, %i.re
  br i1 %i.bdg, label %bb.in, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i768.i.i.i

bb.in:                                            ; preds = %.noexc190
  %i.bdh = load i64, ptr %.phi.trans.insert219.i.i.i, align 8, !tbaa !26, !noalias !234 ; 3 uses
  %i.bdi = icmp ult i64 %i.bdh, 16
  call void @llvm.assume(i1 %i.bdi)
  %i.bdj = add nuw nsw i64 %i.bdh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qd, ptr noundef nonnull align 8 dereferenceable(1) %i.re, i64 %i.bdj, i1 false), !noalias !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i768.i.i.i: ; preds = %.noexc190
  store ptr %i.bdf, ptr %52, align 8, !tbaa !20, !alias.scope !239, !noalias !231
  %i.bdk = load i64, ptr %i.re, align 8, !tbaa !21, !noalias !234
  store i64 %i.bdk, ptr %i.qd, align 8, !tbaa !21, !alias.scope !239, !noalias !231
  %.pre220.i.i.i = load i64, ptr %.phi.trans.insert219.i.i.i, align 8, !tbaa !26, !noalias !234
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i768.i.i.i, %bb.in
  %i.bdl = phi i64 [ %i.bdh, %bb.in ], [ %.pre220.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i768.i.i.i ]
  store i64 %i.bdl, ptr %i.qf, align 8, !tbaa !26, !alias.scope !239, !noalias !231
  store i8 1, ptr %i.qg, align 8, !tbaa !61, !alias.scope !239, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27, !noalias !234
  br label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i775.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i691.i.i.i
  %i.bdm = load i64, ptr %.val.val.i, align 1
  %i.bdn = xor i64 %i.bdm, 5287034987958125910
  %i.bdo = getelementptr i8, ptr %.val.val.i, i64 8
  %i.bdp = load i8, ptr %i.bdo, align 1
  %i.bdq = zext i8 %i.bdp to i64
  %i.bdr = xor i64 %i.bdq, 68
  %i.bds = or i64 %i.bdn, %i.bdr
  %i.bdt = icmp ne i64 %i.bds, 0
  %i.bdu = zext i1 %i.bdt to i32
  %i.bdv = icmp eq i32 %i.bdu, 0
  br i1 %i.bdv, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit778.i.i.i, label %.thread32.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit778.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i775.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27, !noalias !234
  %i.bdw = invoke noundef ptr @_ZN5cmsys17SystemInformation11GetVendorIDEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
          to label %.noexc191 unwind label %bb.jy

.noexc191:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit778.i.i.i
  invoke fastcc void @_ZN12_GLOBAL__N_113ValueToStringB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %50, ptr noundef %i.bdw)
          to label %.noexc192 unwind label %bb.jy

.noexc192:                                        ; preds = %.noexc191
  store ptr %i.qd, ptr %52, align 8, !tbaa !27, !alias.scope !239, !noalias !231
  %i.bdx = load ptr, ptr %50, align 8, !tbaa !20, !noalias !234 ; 2 uses
  %i.bdy = icmp eq ptr %i.bdx, %i.qe
  br i1 %i.bdy, label %bb.io, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i779.i.i.i

bb.io:                                            ; preds = %.noexc192
  %i.bdz = load i64, ptr %.phi.trans.insert217.i.i.i, align 8, !tbaa !26, !noalias !234 ; 3 uses
  %i.bea = icmp ult i64 %i.bdz, 16
  call void @llvm.assume(i1 %i.bea)
  %i.beb = add nuw nsw i64 %i.bdz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qd, ptr noundef nonnull align 8 dereferenceable(1) %i.qe, i64 %i.beb, i1 false), !noalias !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i779.i.i.i: ; preds = %.noexc192
  store ptr %i.bdx, ptr %52, align 8, !tbaa !20, !alias.scope !239, !noalias !231
  %i.bec = load i64, ptr %i.qe, align 8, !tbaa !21, !noalias !234
  store i64 %i.bec, ptr %i.qd, align 8, !tbaa !21, !alias.scope !239, !noalias !231
  %.pre218.i.i.i = load i64, ptr %.phi.trans.insert217.i.i.i, align 8, !tbaa !26, !noalias !234
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i779.i.i.i, %bb.io
  %i.bed = phi i64 [ %i.bdz, %bb.io ], [ %.pre218.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i779.i.i.i ]
  store i64 %i.bed, ptr %i.qf, align 8, !tbaa !26, !alias.scope !239, !noalias !231
  store i8 1, ptr %i.qg, align 8, !tbaa !61, !alias.scope !239, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27, !noalias !234
  br label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i"

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i786.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i548.i.i.i
  %i.bee = load i64, ptr %.val.val.i, align 1
  %i.bef = xor i64 %i.bee, 6007610928337405270
  %i.beg = getelementptr i8, ptr %.val.val.i, i64 5
  %i.beh = load i64, ptr %i.beg, align 1
  %i.bei = xor i64 %i.beh, 5138124842827210578
  %i.bej = or i64 %i.bef, %i.bei
  %i.bek = icmp ne i64 %i.bej, 0
  %i.bel = zext i1 %i.bek to i32
  %i.bem = icmp eq i32 %i.bel, 0
  br i1 %i.bem, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit789.i.i.i, label %.thread32.i.i

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit789.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i786.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #27, !noalias !234
  %i.ben = invoke noundef ptr @_ZN5cmsys17SystemInformation15GetVendorStringEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusE4info)
          to label %.noexc193 unwind label %bb.jy

.noexc193:                                        ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit789.i.i.i
  invoke fastcc void @_ZN12_GLOBAL__N_113ValueToStringB5cxx11EPKc(ptr dead_on_unwind noalias writable align 8 %51, ptr noundef %i.ben)
          to label %.noexc194 unwind label %bb.jy

.noexc194:                                        ; preds = %.noexc193
  store ptr %i.qd, ptr %52, align 8, !tbaa !27, !alias.scope !239, !noalias !231
  %i.beo = load ptr, ptr %51, align 8, !tbaa !20, !noalias !234 ; 2 uses
  %i.bep = icmp eq ptr %i.beo, %i.qo
  br i1 %i.bep, label %bb.ip, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i790.i.i.i

bb.ip:                                            ; preds = %.noexc194
  %i.beq = load i64, ptr %.phi.trans.insert215.i.i.i, align 8, !tbaa !26, !noalias !234 ; 3 uses
  %i.ber = icmp ult i64 %i.beq, 16
  call void @llvm.assume(i1 %i.ber)
  %i.bes = add nuw nsw i64 %i.beq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.qd, ptr noundef nonnull align 8 dereferenceable(1) %i.qo, i64 %i.bes, i1 false), !noalias !231
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit794.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i790.i.i.i: ; preds = %.noexc194
  store ptr %i.beo, ptr %52, align 8, !tbaa !20, !alias.scope !239, !noalias !231
  %i.bet = load i64, ptr %i.qo, align 8, !tbaa !21, !noalias !234
  store i64 %i.bet, ptr %i.qd, align 8, !tbaa !21, !alias.scope !239, !noalias !231
  %.pre216.i.i.i = load i64, ptr %.phi.trans.insert215.i.i.i, align 8, !tbaa !26, !noalias !234
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit794.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit794.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i790.i.i.i, %bb.ip
  %i.beu = phi i64 [ %i.beq, %bb.ip ], [ %.pre216.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i790.i.i.i ]
  store i64 %i.beu, ptr %i.qf, align 8, !tbaa !26, !alias.scope !239, !noalias !231
  store i8 1, ptr %i.qg, align 8, !tbaa !61, !alias.scope !239, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #27, !noalias !234
  br label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i"

.thread32.i.i:                                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i786.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i775.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i764.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i753.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i742.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i725.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i708.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i680.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i647.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i636.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i625.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i614.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i603.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i559.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i427.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i381.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit
  store i8 0, ptr %i.qg, align 8, !tbaa !61, !alias.scope !239, !noalias !231
  br label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i"

"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i": ; preds = %.invoke, %.thread32.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit794.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit783.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit772.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit761.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit736.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit719.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit702.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit677.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit655.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit644.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit622.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit611.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit589.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit578.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit567.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit545.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit534.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit512.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit501.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit479.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit468.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit457.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit446.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit435.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit424.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413.i.i.i, %bb.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit378.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.bev = load i8, ptr %i.qg, align 8, !tbaa !61, !range !57, !noalias !231, !noundef !55
  %i.bew = trunc nuw i8 %i.bev to i1
  br i1 %i.bew, label %bb.iq, label %bb.is

bb.iq:                                            ; preds = %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i"
  store ptr %i.td, ptr %80, align 8, !tbaa !27, !alias.scope !231
  %i.bex = load ptr, ptr %52, align 8, !tbaa !20, !noalias !231 ; 2 uses
  %i.bey = icmp eq ptr %i.bex, %i.qd
  br i1 %i.bey, label %bb.ir, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.ir:                                            ; preds = %bb.iq
  %i.bez = load i64, ptr %i.qf, align 8, !tbaa !26, !noalias !231 ; 3 uses
  %i.bfa = icmp ult i64 %i.bez, 16
  call void @llvm.assume(i1 %i.bfa)
  %i.bfb = add nuw nsw i64 %i.bez, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.td, ptr noundef nonnull align 8 dereferenceable(1) %i.qd, i64 %i.bfb, i1 false)
  br label %.thread.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.iq
  store ptr %i.bex, ptr %80, align 8, !tbaa !20, !alias.scope !231
  %i.bfc = load i64, ptr %i.qd, align 8, !tbaa !21, !noalias !231
  store i64 %i.bfc, ptr %i.td, align 8, !tbaa !21, !alias.scope !231
  %.pre.i135 = load i64, ptr %i.qf, align 8, !tbaa !26, !noalias !231
  br label %.thread.i136

.thread.i136:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.ir
  %i.bfd = phi i64 [ %i.bez, %bb.ir ], [ %.pre.i135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ]
  store i64 %i.bfd, ptr %i.te, align 8, !tbaa !26, !alias.scope !231
  store ptr %i.qd, ptr %52, align 8, !tbaa !20, !noalias !231
  store i64 0, ptr %i.qf, align 8, !tbaa !26, !noalias !231
  store i8 0, ptr %i.qd, align 8, !tbaa !21, !noalias !231
  store i8 1, ptr %i.tc, align 8, !tbaa !61, !alias.scope !231
  store i8 0, ptr %i.qg, align 8, !tbaa !61, !noalias !231
  br label %bb.jv

bb.is:                                            ; preds = %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_0clB5cxx11Ev.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27, !noalias !277
  call void @llvm.experimental.noalias.scope.decl(metadata !278)
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.bfe = load i64, ptr %i.ub, align 8, !tbaa !26, !noalias !280 ; 3 uses
  %i.bff = icmp eq i64 %i.bfe, 0
  br i1 %i.bff, label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i", label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.is
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bfe, i64 8)
  %i.bfg = load ptr, ptr %i.ua, align 8, !tbaa !20, !noalias !280
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.bfg, ptr nonnull @.str.70, i64 %.sroa.speculated.i.i.i.i.i.i.i), !noalias !280
  %i.bfh = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.bfi = icmp ugt i64 %i.bfe, 7
  %or.cond.i.i.i.i = and i1 %i.bfi, %i.bfh
  br i1 %or.cond.i.i.i.i, label %bb.it, label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i"

bb.it:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.bfj = load atomic i8, ptr @_ZGVZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11 acquire, align 8, !noalias !280
  %i.bfk = icmp eq i8 %i.bfj, 0
  br i1 %i.bfk, label %bb.iu, label %bb.ix, !prof !230

bb.iu:                                            ; preds = %bb.it
  %i.bfl = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11) #27, !noalias !280
  %.not.i.i.i.i134 = icmp eq i32 %i.bfl, 0
  br i1 %.not.i.i.i.i134, label %bb.ix, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %.val.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !229, !noalias !280
  invoke fastcc void @_ZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatus(ptr %.val.i.i.i.i)
          to label %bb.iw unwind label %bb.jd, !noalias !280

bb.iw:                                            ; preds = %bb.iv
  %i.bfm = call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr nonnull @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, ptr nonnull @__dso_handle) #27, !noalias !280 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11) #27, !noalias !280
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iu, %bb.it
  %i.bfn = load ptr, ptr %1, align 8, !tbaa !229, !noalias !280, !nonnull !55, !align !56
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27, !noalias !280
  %i.bfo = load i64, ptr %i.ub, align 8, !tbaa !26, !noalias !280 ; 3 uses
  %i.bfp = add i64 %i.bfo, -8                     ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !281)
  %i.bfq = icmp ult i64 %i.bfo, 8
  br i1 %i.bfq, label %bb.iy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i.i

bb.iy:                                            ; preds = %bb.ix
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.81, i64 noundef 8, i64 noundef %i.bfo) #29
          to label %.noexc.i133 unwind label %.loopexit.split-lp235.loopexit.split-lp.loopexit.split-lp, !noalias !231

.noexc.i133:                                      ; preds = %bb.iy
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.ix
  store ptr %i.sj, ptr %4, align 8, !tbaa !27, !alias.scope !281, !noalias !280
  %i.bfr = load ptr, ptr %i.ua, align 8, !tbaa !20, !noalias !282
  %i.bfs = getelementptr inbounds nuw i8, ptr %i.bfr, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27, !noalias !282
  store i64 %i.bfp, ptr %i.c, align 8, !tbaa !28, !noalias !282
  %i.bft = icmp ugt i64 %i.bfp, 15
  br i1 %i.bft, label %.noexc10.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

.noexc10.i.i.i.i.i.i:                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i.i
  %i.bfu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc4.i unwind label %.loopexit.split-lp235.loopexit.split-lp.loopexit.split-lp, !noalias !231 ; 2 uses

.noexc4.i:                                        ; preds = %.noexc10.i.i.i.i.i.i
  store ptr %i.bfu, ptr %4, align 8, !tbaa !20, !alias.scope !281, !noalias !280
  %i.bfv = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !282
  store i64 %i.bfv, ptr %i.sj, align 8, !tbaa !21, !alias.scope !281, !noalias !280
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.noexc4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i.i
  %i.bfw = phi ptr [ %i.bfu, %.noexc4.i ], [ %i.sj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.bfp, label %bb.ja [
    i64 1, label %bb.iz
    i64 0, label %bb.jb
  ]

bb.iz:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bfx = load i8, ptr %i.bfs, align 1, !tbaa !21, !noalias !280
  store i8 %i.bfx, ptr %i.bfw, align 1, !tbaa !21, !noalias !280
  br label %bb.jb

bb.ja:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bfw, ptr nonnull align 1 %i.bfs, i64 %i.bfp, i1 false), !noalias !280
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %._crit_edge.i.i.i.i.i.i.i
  %i.bfy = load i64, ptr %i.c, align 8, !tbaa !28, !noalias !282 ; 2 uses
  store i64 %i.bfy, ptr %i.sk, align 8, !tbaa !26, !alias.scope !281, !noalias !280
  %i.bfz = load ptr, ptr %4, align 8, !tbaa !20, !alias.scope !281, !noalias !280
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bfy
  store i8 0, ptr %i.bga, align 1, !tbaa !21, !noalias !280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27, !noalias !282
  %i.bgb = load ptr, ptr %4, align 8, !tbaa !20, !noalias !280 ; 3 uses
  %i.bgc = load i64, ptr %i.sk, align 8, !tbaa !26, !noalias !280 ; 5 uses
  %i.bgd = icmp eq i64 %i.bgc, 4
  br i1 %i.bgd, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, label %bb.jl

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.jb
  %i.bge = load i32, ptr %i.bgb, align 1
  %i.bgf = icmp ne i32 %i.bge, 1330007625
  %i.bgg = zext i1 %i.bgf to i32
  %i.bgh = icmp eq i32 %i.bgg, 0
  br i1 %i.bgh, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i, label %bb.jl

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27, !noalias !280
  store ptr %i.so, ptr %5, align 8, !tbaa !27, !noalias !280
  store i64 0, ptr %i.sp, align 8, !tbaa !26, !noalias !280
  store i8 0, ptr %i.so, align 8, !tbaa !21, !noalias !280
  %i.bgi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, i64 24), align 8, !tbaa !39, !noalias !280 ; 2 uses
  %.not7494.i.i.i.i = icmp eq ptr %i.bgi, getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, i64 8)
  br i1 %.not7494.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i132

._crit_edge.thread.i.i.i.i:                       ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i
  store ptr %i.sl, ptr %8, align 8, !tbaa !27, !alias.scope !283, !noalias !277
  br label %bb.jc

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i
  %.pre.i.i.i.i = load ptr, ptr %5, align 8, !tbaa !20, !noalias !280 ; 2 uses
  store ptr %i.sl, ptr %8, align 8, !tbaa !27, !alias.scope !283, !noalias !277
  %i.bgj = icmp eq ptr %.pre.i.i.i.i, %i.so
  %.pre.i.i3.i = load i64, ptr %i.sp, align 8, !tbaa !26, !noalias !280 ; 2 uses
  br i1 %i.bgj, label %bb.jc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.jc:                                            ; preds = %._crit_edge.i.i.i.i, %._crit_edge.thread.i.i.i.i
  %i.bgk = phi i64 [ 0, %._crit_edge.thread.i.i.i.i ], [ %.pre.i.i3.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bgl = icmp ult i64 %i.bgk, 16
  call void @llvm.assume(i1 %i.bgl)
  %i.bgm = add nuw nsw i64 %i.bgk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sl, ptr noundef nonnull align 8 dereferenceable(1) %i.so, i64 %i.bgm, i1 false), !noalias !277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i
  store ptr %.pre.i.i.i.i, ptr %8, align 8, !tbaa !20, !alias.scope !283, !noalias !277
  %i.bgn = load i64, ptr %i.so, align 8, !tbaa !21, !noalias !280
  store i64 %i.bgn, ptr %i.sl, align 8, !tbaa !21, !alias.scope !283, !noalias !277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.jc
  %i.bgo = phi i64 [ %i.bgk, %bb.jc ], [ %.pre.i.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.bgo, ptr %i.sm, align 8, !tbaa !26, !alias.scope !283, !noalias !277
  store i8 1, ptr %i.sn, align 8, !tbaa !61, !alias.scope !283, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !280
  br label %bb.jq

bb.jd:                                            ; preds = %bb.iv
  %i.bgp = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11) #27, !noalias !280
  br label %.body.i128

.lr.ph.i.i.i.i132:                                ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i
  %.sroa.066.095.i.i.i.i = phi ptr [ %i.bii, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.i.i.i.i ], [ %i.bgi, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i.i ] ; 5 uses
  %i.bgq = getelementptr inbounds nuw i8, ptr %.sroa.066.095.i.i.i.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !280
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !284
  %i.bgr = load ptr, ptr %i.ay, align 8, !tbaa !20, !noalias !284
  %i.bgs = load i64, ptr %i.sq, align 8, !tbaa !26, !noalias !284
  store i64 %i.bgs, ptr %2, align 8, !tbaa !28, !alias.scope !285, !noalias !284
  store ptr %i.bgr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !51, !alias.scope !285, !noalias !284
  store ptr null, ptr %i.sr, align 8, !tbaa !54, !alias.scope !285, !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !284
  store i64 0, ptr %3, align 8, !noalias !284
  store i8 95, ptr %i.su, align 8, !tbaa !21, !noalias !284
  store i64 1, ptr %i.st, align 8, !tbaa !28, !noalias !284
  store ptr %i.su, ptr %.sroa.4.0..sroa_idx.i3.i.i.i.i.i, align 8, !tbaa !51, !noalias !284
  store i64 1, ptr %i.ss, align 8, !tbaa !28, !alias.scope !286, !noalias !284
  store ptr %i.su, ptr %.sroa.4.0..sroa_idx.i11.i.i.i.i.i, align 8, !tbaa !51, !alias.scope !286, !noalias !284
  store ptr null, ptr %i.sv, align 8, !tbaa !54, !alias.scope !286, !noalias !284
  %i.bgt = load ptr, ptr %i.bgq, align 8, !tbaa !20, !noalias !284
  %i.bgu = getelementptr inbounds nuw i8, ptr %.sroa.066.095.i.i.i.i, i64 40
  %i.bgv = load i64, ptr %i.bgu, align 8, !tbaa !26, !noalias !284
  store i64 %i.bgv, ptr %i.sw, align 8, !tbaa !28, !alias.scope !287, !noalias !284
  store ptr %i.bgt, ptr %.sroa.4.0..sroa_idx.i19.i.i.i.i.i, align 8, !tbaa !51, !alias.scope !287, !noalias !284
  store ptr null, ptr %i.sx, align 8, !tbaa !54, !alias.scope !287, !noalias !284
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %2, i64 3)
          to label %bb.je unwind label %bb.ji, !noalias !280

bb.je:                                            ; preds = %.lr.ph.i.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !284
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !284
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27, !noalias !280
  %i.bgw = load i64, ptr %i.sp, align 8, !tbaa !26, !noalias !280
  %i.bgx = icmp ne i64 %i.bgw, 0
  %i.bgy = zext i1 %i.bgx to i64
  %i.bgz = getelementptr inbounds nuw [32 x i8], ptr @_ZN12_GLOBAL__N_15DELIMB5cxx11E, i64 %i.bgy ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.bha = load ptr, ptr %i.bgz, align 16, !tbaa !20, !noalias !289
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bgz, i64 8
  %i.bhc = load i64, ptr %i.bhb, align 8, !tbaa !26, !noalias !289 ; 3 uses
  %i.bhd = load ptr, ptr %6, align 8, !tbaa !20, !noalias !289
  %i.bhe = load i64, ptr %i.sy, align 8, !tbaa !26, !noalias !289 ; 3 uses
  store ptr %i.sz, ptr %7, align 8, !tbaa !27, !alias.scope !290, !noalias !280
  store i64 0, ptr %i.ta, align 8, !tbaa !26, !alias.scope !290, !noalias !280
end_hunk_1
begin_hunk_2_@_Z35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatus:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !280
  br label %bb.jr

bb.jl:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.jb
  %i.bix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, i64 16), align 8, !tbaa !38, !noalias !280 ; 2 uses
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bix, null
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i125

.lr.ph.i.i.i.i.i.i.i125:                          ; preds = %bb.jl, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i.i ], [ %i.bix, %bb.jl ] ; 4 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, i64 8), %bb.jl ]
  %i.biy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 40
  %i.biz = load i64, ptr %i.biy, align 8, !tbaa !26, !noalias !280 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bgc, i64 %i.biz) ; 2 uses
  %i.bja = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bja, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i125
  %i.bjb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 32
  %i.bjc = load ptr, ptr %i.bjb, align 8, !tbaa !20, !noalias !280
  %i.bjd = call i32 @memcmp(ptr noundef %i.bjc, ptr noundef %i.bgb, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i) #27, !noalias !280 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i126 = icmp eq i32 %i.bjd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i126, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i125
  %i.bje = sub i64 %i.biz, %i.bgc
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bje, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bjd, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i ]
  %i.bjf = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %.19.i.i.i.i.i.i.i = select i1 %i.bjf, ptr %.0811.i.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i.i.i.i = select i1 %i.bjf, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i, align 8, !tbaa !63, !noalias !280 ; 2 uses
  %.not.i.i.i.i.i.i.i127 = icmp eq ptr %.1.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i127, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i125, !llvm.loop !190

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i.i
  %i.bjg = icmp eq ptr %.19.i.i.i.i.i.i.i, getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, i64 8)
  br i1 %i.bjg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i.i.i, label %bb.jm

bb.jm:                                            ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i.i.i
  %i.bjh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 40
  %i.bji = load i64, ptr %i.bjh, align 8, !tbaa !26, !noalias !280 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bji, i64 %i.bgc) ; 2 uses
  %i.bjj = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bjj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.jm
  %i.bjk = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 32
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !20, !noalias !280
  %i.bjm = call i32 @memcmp(ptr noundef %i.bgb, ptr noundef %i.bjl, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i) #27, !noalias !280 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.bjm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.jm
  %i.bjn = sub i64 %i.bgc, %i.bji
  %spec.select7.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.bjn, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bjm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i ]
  %i.bjo = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bjo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.i.i.i.i

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.i.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i
  %i.bjp = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 64
  store ptr %i.sl, ptr %8, align 8, !tbaa !27, !alias.scope !283, !noalias !277
  %i.bjq = load ptr, ptr %i.bjp, align 8, !tbaa !20, !noalias !277 ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i.i, i64 72
  %i.bjs = load i64, ptr %i.bjr, align 8, !tbaa !26, !noalias !277 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !280
  store i64 %i.bjs, ptr %i.b, align 8, !tbaa !28, !noalias !280
  %i.bjt = icmp ugt i64 %i.bjs, 15
  br i1 %i.bjt, label %.noexc.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.i.i.i.i
  %i.bju = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc51.i.i.i.i unwind label %bb.jp, !noalias !277 ; 2 uses

.noexc51.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.bju, ptr %8, align 8, !tbaa !20, !alias.scope !283, !noalias !277
  %i.bjv = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !280
  store i64 %i.bjv, ptr %i.sl, align 8, !tbaa !21, !alias.scope !283, !noalias !277
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.noexc51.i.i.i.i, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.i.i.i.i
  %i.bjw = phi ptr [ %i.bju, %.noexc51.i.i.i.i ], [ %i.sl, %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE4findERS9_.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.bjs, label %bb.jo [
    i64 1, label %bb.jn
    i64 0, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i.i.i.i
  ]

bb.jn:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bjx = load i8, ptr %i.bjq, align 1, !tbaa !21, !noalias !277
  store i8 %i.bjx, ptr %i.bjw, align 1, !tbaa !21, !noalias !277
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i.i.i.i

bb.jo:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bjw, ptr align 1 %i.bjq, i64 %i.bjs, i1 false), !noalias !277
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i.i.i.i

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i.i.i.i: ; preds = %bb.jo, %bb.jn, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bjy = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !280 ; 2 uses
  store i64 %i.bjy, ptr %i.sm, align 8, !tbaa !26, !alias.scope !283, !noalias !277
  %i.bjz = load ptr, ptr %8, align 8, !tbaa !20, !alias.scope !283, !noalias !277
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bjz, i64 %i.bjy
  store i8 0, ptr %i.bka, align 1, !tbaa !21, !noalias !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !280
  store i8 1, ptr %i.sn, align 8, !tbaa !61, !alias.scope !283, !noalias !277
  br label %bb.jq

bb.jp:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i
  %i.bkb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i.i.i.i, %bb.jl
  store ptr %i.sl, ptr %8, align 8, !tbaa !27, !alias.scope !283, !noalias !277
  store i8 0, ptr %i.sl, align 8, !alias.scope !283, !noalias !277
  store i64 0, ptr %i.sm, align 8, !tbaa !26, !alias.scope !283, !noalias !277
  store i8 1, ptr %i.sn, align 8, !tbaa !61, !alias.scope !283, !noalias !277
  br label %bb.jq

bb.jq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.i.i.i.i, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRKS5_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISC_ISt10in_place_tSJ_EESt16is_constructibleIS5_JSF_EESt14is_convertibleISF_S5_EEEbE4typeELb1EEEOSF_.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.bkc = load ptr, ptr %4, align 8, !tbaa !20, !noalias !280 ; 2 uses
  %i.bkd = icmp eq ptr %i.bkc, %i.sj
  br i1 %i.bkd, label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread39.i.i", label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.i.i"

"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread39.i.i": ; preds = %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !280
  br label %bb.js

bb.jr:                                            ; preds = %bb.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i
  %.pn25.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn25.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i.i.i.i ], [ %i.bkb, %bb.jp ]
  %i.bke = load ptr, ptr %4, align 8, !tbaa !20, !noalias !280 ; 2 uses
  %i.bkf = icmp eq ptr %i.bke, %i.sj
  br i1 %i.bkf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i: ; preds = %bb.jr
  %i.bkg = load i64, ptr %i.sj, align 8, !tbaa !21, !noalias !280
  %i.bkh = add i64 %i.bkg, 1
  call void @_ZdlPvm(ptr noundef %i.bke, i64 noundef %i.bkh) #26, !noalias !277
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i: ; preds = %bb.jr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !280
  br label %.body.i128

"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.i.i": ; preds = %bb.jq
  %i.bki = load i64, ptr %i.sj, align 8, !tbaa !21, !noalias !280
  %i.bkj = add i64 %i.bki, 1
  call void @_ZdlPvm(ptr noundef %i.bkc, i64 noundef %i.bkj) #26, !noalias !277
  %.pre.pre.i.i = load i8, ptr %i.sn, align 8, !tbaa !61, !range !57, !noalias !277
  %i.bkk = trunc nuw i8 %.pre.pre.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !280
  br i1 %i.bkk, label %bb.js, label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i"

bb.js:                                            ; preds = %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.i.i", %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread39.i.i"
  store ptr %i.td, ptr %80, align 8, !tbaa !27, !alias.scope !277
  %i.bkl = load ptr, ptr %8, align 8, !tbaa !20, !noalias !277 ; 2 uses
  %i.bkm = icmp eq ptr %i.bkl, %i.sl
  br i1 %i.bkm, label %bb.jt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2.i

bb.jt:                                            ; preds = %bb.js
  %i.bkn = load i64, ptr %i.sm, align 8, !tbaa !26, !noalias !277 ; 3 uses
  %i.bko = icmp ult i64 %i.bkn, 16
  call void @llvm.assume(i1 %i.bko)
  %i.bkp = add nuw nsw i64 %i.bkn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.td, ptr noundef nonnull align 8 dereferenceable(1) %i.sl, i64 %i.bkp, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2.i: ; preds = %bb.js
  store ptr %i.bkl, ptr %80, align 8, !tbaa !20, !alias.scope !277
  %i.bkq = load i64, ptr %i.sl, align 8, !tbaa !21, !noalias !277
  store i64 %i.bkq, ptr %i.td, align 8, !tbaa !21, !alias.scope !277
  %.pre10.i.i = load i64, ptr %i.sm, align 8, !tbaa !26, !noalias !277
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i2.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2.i, %bb.jt
  %i.bkr = phi i64 [ %.pre10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i2.i ], [ %i.bkn, %bb.jt ]
  store i64 %i.bkr, ptr %i.te, align 8, !tbaa !26, !alias.scope !277
  br label %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i"

.loopexit.split-lp235.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc10.i.i.i.i.i.i, %bb.iy
  %lpad.loopexit.split-lp819 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i128

.body.i128:                                       ; preds = %.loopexit.split-lp235.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i, %bb.jd
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bgp, %bb.jd ], [ %.pn25.pn.pn.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62.i.i.i.i ], [ %lpad.loopexit.split-lp819, %.loopexit.split-lp235.loopexit.split-lp.loopexit.split-lp ]
  %i.bks = load i8, ptr %i.qg, align 8, !tbaa !61, !range !57, !noalias !231, !noundef !55
  %i.bkt = trunc nuw i8 %i.bks to i1
  store i8 0, ptr %i.qg, align 8, !tbaa !61, !noalias !231
  br i1 %i.bkt, label %bb.ju, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i129

bb.ju:                                            ; preds = %.body.i128
  %i.bku = load ptr, ptr %52, align 8, !tbaa !20, !noalias !231 ; 2 uses
  %i.bkv = icmp eq ptr %i.bku, %i.qd
  br i1 %i.bkv, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i130: ; preds = %bb.ju
  %i.bkw = load i64, ptr %i.qd, align 8, !tbaa !21, !noalias !231
  %i.bkx = add i64 %i.bkw, 1
  call void @_ZdlPvm(ptr noundef %i.bku, i64 noundef %i.bkx) #26, !noalias !231
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i129

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i129: ; preds = %bb.ju, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i130, %.body.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27, !noalias !231
  br label %.body

"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i": ; preds = %bb.is, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.i.i", %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i2.i.i
  %i.bky = phi i8 [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i2.i.i ], [ 0, %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.i.i" ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ 0, %bb.is ] ; 3 uses
  store i8 %i.bky, ptr %i.tc, align 8, !tbaa !61, !alias.scope !277
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27, !noalias !277
  %.pre74.i = load i8, ptr %i.qg, align 8, !tbaa !61, !range !57, !noalias !231
  %i.bkz = trunc nuw i8 %.pre74.i to i1
  store i8 0, ptr %i.qg, align 8, !tbaa !61, !noalias !231
  br i1 %i.bkz, label %bb.jv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i6.i

bb.jv:                                            ; preds = %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i", %.thread.i136
  %i.bla = phi i8 [ %i.bky, %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i" ], [ 1, %.thread.i136 ]
  %i.blb = load ptr, ptr %52, align 8, !tbaa !20, !noalias !231 ; 2 uses
  %i.blc = icmp eq ptr %i.blb, %i.qd
  br i1 %i.blc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5.i: ; preds = %bb.jv
  %i.bld = load i64, ptr %i.qd, align 8, !tbaa !21, !noalias !231
  %i.ble = add i64 %i.bld, 1
  call void @_ZdlPvm(ptr noundef %i.blb, i64 noundef %i.ble) #26
  %.pre = load i8, ptr %i.tc, align 8, !tbaa !61, !range !57
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i6.i: ; preds = %bb.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5.i, %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i"
  %i.blf = phi i8 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i5.i ], [ %i.bky, %"_ZZ35cmCMakeHostSystemInformationCommandRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EER17cmExecutionStatusENK3$_1clB5cxx11Ev.exit.thread.i.i" ], [ %i.bla, %bb.jv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #27, !noalias !231
  %i.blg = trunc nuw i8 %i.blf to i1              ; 2 uses
  br i1 %i.blg, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit, label %bb.jw

bb.jw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i6.i
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.blh = load ptr, ptr %i.ua, align 8, !tbaa !20, !noalias !291
  %i.bli = load i64, ptr %i.ub, align 8, !tbaa !26, !noalias !291 ; 3 uses
  store ptr %i.tf, ptr %81, align 8, !tbaa !27, !alias.scope !292
  store i64 0, ptr %i.tg, align 8, !tbaa !26, !alias.scope !292
  store i8 0, ptr %i.tf, align 8, !tbaa !21, !alias.scope !292
  %i.blj = add i64 %i.bli, 25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %81, i64 noundef %i.blj)
          to label %bb.jx unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp

bb.jx:                                            ; preds = %bb.jw
  %i.blk = load i64, ptr %i.tg, align 8, !tbaa !26, !alias.scope !292
  %i.bll = add i64 %i.blk, -4611686018427387879
  %i.blm = icmp ult i64 %i.bll, 25
  br i1 %i.blm, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.jx
  %i.bln = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @.str.8, i64 noundef 25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.blo = load i64, ptr %i.tg, align 8, !tbaa !26, !alias.scope !292
  %i.blp = sub i64 4611686018427387903, %i.blo
  %i.blq = icmp ult i64 %i.blp, %i.bli
  br i1 %i.blq, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.jx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.cont.i.i unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.blr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef %i.blh, i64 noundef %i.bli)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.jw, %.invoke.i.i
  %lpad.loopexit.split-lp822 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bls = load ptr, ptr %81, align 8, !tbaa !20, !alias.scope !292 ; 2 uses
  %i.blt = icmp eq ptr %i.bls, %i.tf
  br i1 %i.blt, label %.body198, label %.body198.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.th, ptr noundef nonnull align 8 dereferenceable(32) %81)
          to label %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit201 unwind label %bb.jz

_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit201: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.blu = load ptr, ptr %81, align 8, !tbaa !20  ; 2 uses
  %i.blv = icmp eq ptr %i.blu, %i.tf
  br i1 %i.blv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit201
  %i.blw = load i64, ptr %i.tf, align 8, !tbaa !21
  %i.blx = add i64 %i.blw, 1
  call void @_ZdlPvm(ptr noundef %i.blu, i64 noundef %i.blx) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204: ; preds = %_ZN17cmExecutionStatus8SetErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit212

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.ee, %.critedge92
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.jy:                                            ; preds = %.invoke, %.noexc193, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit789.i.i.i, %.noexc191, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit778.i.i.i, %.noexc189, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit767.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit756.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit745.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit728.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit711.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit694.i.i.i, %.noexc180, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit683.i.i.i, %.noexc178, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit672.i.i.i, %.noexc176, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit661.i.i.i, %.noexc174, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit650.i.i.i, %.noexc172, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit639.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit628.i.i.i, %.noexc169, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit617.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit606.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit595.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit584.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit573.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit562.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit551.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit540.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit529.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit518.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit507.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit496.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit485.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit474.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit463.i.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit452.i.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i11.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit441.i.i.i, %.noexc149, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit430.i.i.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i24.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit419.i.i.i, %bb.fo, %bb.fl, %bb.fj, %bb.fi, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit384.i.i.i, %.noexc.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit372.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit347.i.i.i, %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit.i.i.i
  %i.bly = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.jz:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.blz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bma = load ptr, ptr %81, align 8, !tbaa !20  ; 2 uses
  %i.bmb = icmp eq ptr %i.bma, %i.tf
  br i1 %i.bmb, label %.body198, label %.body198.sink.split

.body198.sink.split:                              ; preds = %bb.jz, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp
  %.sink809 = phi ptr [ %i.bls, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp ], [ %i.bma, %bb.jz ]
  %.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp822, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp ], [ %i.blz, %bb.jz ]
  %i.bmc = load i64, ptr %i.tf, align 8, !tbaa !21
  %i.bmd = add i64 %i.bmc, 1
  call void @_ZdlPvm(ptr noundef %.sink809, i64 noundef %i.bmd) #26
  br label %.body198

.body198:                                         ; preds = %.body198.sink.split, %bb.jz, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp822, %.loopexit.split-lp240.loopexit.split-lp.loopexit.split-lp ], [ %i.blz, %bb.jz ], [ %.pn.ph, %.body198.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #27
  br label %bb.kc

_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i6.i
  %i.bme = load i64, ptr %i.te, align 8, !tbaa !26 ; 2 uses
  %i.bmf = load i64, ptr %i.px, align 8, !tbaa !26
  %i.bmg = sub i64 4611686018427387903, %i.bmf
  %i.bmh = icmp ult i64 %i.bmg, %i.bme
  br i1 %i.bmh, label %bb.ka, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209

bb.ka:                                            ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #29
          to label %.noexc210 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp

.noexc210:                                        ; preds = %bb.ka
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209: ; preds = %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit
  %i.bmi = load ptr, ptr %80, align 8, !tbaa !20
  %i.bmj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef %i.bmi, i64 noundef %i.bme)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit212 unwind label %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit212: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %i.bmk = load i8, ptr %i.tc, align 8, !tbaa !61, !range !57, !noundef !55
  %i.bml = trunc nuw i8 %i.bmk to i1
  store i8 0, ptr %i.tc, align 8, !tbaa !61
  br i1 %i.bml, label %bb.kb, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.kb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit212
  %i.bmm = load ptr, ptr %80, align 8, !tbaa !20  ; 2 uses
  %i.bmn = icmp eq ptr %i.bmm, %i.td
  br i1 %i.bmn, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.kb
  %i.bmo = load i64, ptr %i.td, align 8, !tbaa !21
  %i.bmp = add i64 %i.bmo, 1
  call void @_ZdlPvm(ptr noundef %i.bmm, i64 noundef %i.bmp) #26
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.kb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #27
  br i1 %i.blg, label %bb.ec, label %.loopexit249

.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i209, %bb.ka
  %lpad.loopexit.split-lp825 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.kc:                                            ; preds = %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp, %.body198
  %.pn78 = phi { ptr, i32 } [ %.pn, %.body198 ], [ %lpad.loopexit.split-lp825, %.loopexit.split-lp245.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %i.bmq = load i8, ptr %i.tc, align 8, !tbaa !61, !range !57, !noundef !55
  %i.bmr = trunc nuw i8 %i.bmq to i1
  store i8 0, ptr %i.tc, align 8, !tbaa !61
  br i1 %i.bmr, label %bb.kd, label %.body

bb.kd:                                            ; preds = %bb.kc
  %i.bms = load ptr, ptr %80, align 8, !tbaa !20  ; 2 uses
  %i.bmt = icmp eq ptr %i.bms, %i.td
  br i1 %i.bmt, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213: ; preds = %bb.kd
  %i.bmu = load i64, ptr %i.td, align 8, !tbaa !21
  %i.bmv = add i64 %i.bmu, 1
  call void @_ZdlPvm(ptr noundef %i.bms, i64 noundef %i.bmv) #26
  br label %.body

.body:                                            ; preds = %bb.kd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213, %bb.kc, %bb.jy, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397.i.i.i
  %.pn78.pn = phi { ptr, i32 } [ %i.bbe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit739.i.i.i ], [ %i.bly, %bb.jy ], [ %eh.lpad-body.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i129 ], [ %i.aak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397.i.i.i ], [ %i.azk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit705.i.i.i ], [ %i.bae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit722.i.i.i ], [ %.pn78, %bb.kc ], [ %.pn78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i213 ], [ %.pn78, %bb.kd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #27
  br label %.loopexit.split-lp

.critedge92.loopexit:                             ; preds = %bb.ec
  %.pre442 = load ptr, ptr %79, align 8, !tbaa !20
  %.pre443 = load i64, ptr %i.px, align 8, !tbaa !26
  br label %.critedge92

.critedge92:                                      ; preds = %.critedge92.loopexit, %bb.eb
  %i.bmw = phi i64 [ %.pre443, %.critedge92.loopexit ], [ 0, %bb.eb ]
  %i.bmx = phi ptr [ %.pre442, %.critedge92.loopexit ], [ %i.pw, %bb.eb ]
  %i.bmy = load ptr, ptr %1, align 8, !tbaa !229, !nonnull !55, !align !56
  invoke void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952) %i.bmy, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 %i.bmw, ptr %i.bmx)
          to label %.loopexit249 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit249:                                     ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %.critedge92
  %.not82380 = phi i1 [ true, %.critedge92 ], [ false, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ]
  %i.bmz = load ptr, ptr %79, align 8, !tbaa !20  ; 2 uses
  %i.bna = icmp eq ptr %i.bmz, %i.pw
  br i1 %i.bna, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218: ; preds = %.loopexit249
  %i.bnb = load i64, ptr %i.pw, align 8, !tbaa !21
  %i.bnc = add i64 %i.bnb, 1
  call void @_ZdlPvm(ptr noundef %i.bmz, i64 noundef %i.bnc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220: ; preds = %.loopexit249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i218
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  br label %bb.ke

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn83 = phi { ptr, i32 } [ %.pn78.pn, %.body ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.bnd = load ptr, ptr %79, align 8, !tbaa !20  ; 2 uses
  %i.bne = icmp eq ptr %i.bnd, %i.pw
  br i1 %i.bne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221: ; preds = %.loopexit.split-lp
  %i.bnf = load i64, ptr %i.pw, align 8, !tbaa !21
  %i.bng = add i64 %i.bnf, 1
  call void @_ZdlPvm(ptr noundef %i.bnd, i64 noundef %i.bng) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223: ; preds = %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i221
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #27
  br label %common.resume

bb.ke:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.5 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111 ], [ %.1.i, %_ZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_.exit ], [ %.not82380, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit220 ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

declare void @_ZN5cmsys17SystemInformationC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN5cmsys17SystemInformationD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

declare void @_ZN5cmsys17SystemInformation11RunCPUCheckEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN5cmsys17SystemInformation10RunOSCheckEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN5cmsys17SystemInformation14RunMemoryCheckEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN10cmMakefile13AddDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt17basic_string_viewIcS3_E(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32), i64, ptr) local_unnamed_addr #0

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #28
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #11

declare void @_Z6cmJoinRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EESt17basic_string_viewIcS3_ESB_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), i64, ptr, i64, ptr) local_unnamed_addr #0

declare noundef zeroext i1 @_ZNK14ArgumentParser11ParseResult16MaybeReportErrorER10cmMakefile(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(2952)) local_unnamed_addr #0

declare i64 @_ZN17cmWindowsRegistry6ToViewESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z8cmStrCatIRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJcEES8_OT_OT0_DpOT1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #12 comdat {
.cont.cont:
  %4 = alloca [3 x %"struct.std::pair.216"], align 8 ; 12 uses
  %5 = alloca %class.cmAlphaNum, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  store i64 %i.a, ptr %4, align 8, !tbaa !28, !alias.scope !299
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !51, !alias.scope !299
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !54, !alias.scope !299
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = load ptr, ptr %2, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !26
  store i64 %i.f, ptr %i.c, align 8, !tbaa !28, !alias.scope !300
  %.sroa.4.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx.i10, align 8, !tbaa !51, !alias.scope !300
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !54, !alias.scope !300
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.i = load i8, ptr %3, align 1, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  store i64 0, ptr %5, align 8
  store i8 %i.i, ptr %i.k, align 8, !tbaa !21
  store i64 1, ptr %i.j, align 8, !tbaa !28
  %.sroa.4.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i11, align 8, !tbaa !51
  store i64 1, ptr %i.h, align 8, !tbaa !28, !alias.scope !301
  %.sroa.4.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i19, align 8, !tbaa !51, !alias.scope !301
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr null, ptr %i.l, align 8, !tbaa !54, !alias.scope !301
  call void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull %4, i64 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

declare void @_ZN17cmWindowsRegistryC1ER10cmMakefileRKN2cm8enum_setINS_9ValueTypeELm8ELi0EEE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 1) unnamed_addr #0

declare void @_ZN17cmWindowsRegistry13GetValueNamesB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_4ViewE(ptr dead_on_unwind writable sret(%"class.std::optional.189") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64, ptr, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6cmList9to_stringISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EETnNSt9enable_ifIXsr2cm8is_rangeIT_EE5valueEiE4typeELi0EEES7_RKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @_ZN6cmList17element_separatorE, align 8, !tbaa !28
  %.sroa.2.0.copyload = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6cmList17element_separatorE, i64 8), align 8, !tbaa !51
  tail call void @llvm.experimental.noalias.scope.decl(metadata !304)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24, !noalias !304 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !25, !noalias !304 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !27, !alias.scope !304
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !26, !alias.scope !304
  store i8 0, ptr %i.e, align 8, !tbaa !21, !alias.scope !304
  br label %_ZN6cmList4JoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEES7_RKT_St17basic_string_viewIcS5_E.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6cmList4JoinIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS8_SaIS8_EEEEEES8_T_SF_St17basic_string_viewIcS6_E(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr %i.c, ptr %i.b, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  br label %_ZN6cmList4JoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEES7_RKT_St17basic_string_viewIcS5_E.exit

_ZN6cmList4JoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEES7_RKT_St17basic_string_viewIcS5_E.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !59, !range !57, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !59
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.b, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !21
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %bb.b
  %i.m = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !62
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26
  br label %_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.c
  ret void
}

declare void @_ZN17cmWindowsRegistry10GetSubKeysB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEENS_4ViewE(ptr dead_on_unwind writable sret(%"class.std::optional.189") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64, ptr, i32 noundef) local_unnamed_addr #0

declare void @_ZN17cmWindowsRegistry9ReadValueB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEES3_NS_4ViewES3_(ptr dead_on_unwind writable sret(%"class.std::optional.3") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64, ptr, i64, ptr, i32 noundef, ptr noundef byval(%"class.std::basic_string_view") align 8) local_unnamed_addr #0

declare { i64, ptr } @_ZNK17cmWindowsRegistry12GetLastErrorEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZN12_GLOBAL__N_120QueryWindowsRegistryI7cmRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEEEEEbT_R17cmExecutionStatusRSA_EN9ArgumentsD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !21
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !21
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !20   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeISt17basic_string_viewIcSt11char_traitsIcEESt4pairIKS3_St3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISA_ESaISA_EEESt10_Select1stISF_ESB_IS3_ESaISF_EE8_M_eraseEPSt13_Rb_tree_nodeISF_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.z)
          to label %_ZN14ArgumentParser11ParseResultD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #28
  unreachable

_ZN14ArgumentParser11ParseResultD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !21
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN14ArgumentParser4Base4BindESt17basic_string_viewIcSt11char_traitsIcEESt8functionIFvRNS_8InstanceEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 %1, ptr %2, ptr noundef align 8 %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function.172", align 8 ; 16 uses
  %5 = alloca %"class.std::function.172", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 24, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRN14ArgumentParser8InstanceEEEC2EOS4_.exit.thread, label %bb.b

_ZNSt8functionIFvRN14ArgumentParser8InstanceEEEC2EOS4_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.f, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %_ZNSt8functionIFvRN14ArgumentParser8InstanceEEEC2EOS4_.exit.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatus:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.an, %bb.am
  %i.gx = load i64, ptr %i.b, align 8, !tbaa !28, !noalias !408 ; 2 uses
  store i64 %i.gx, ptr %i.aq, align 8, !tbaa !26, !noalias !408
  %i.gy = load ptr, ptr %5, align 8, !tbaa !20, !noalias !408
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gx
  store i8 0, ptr %i.gz, align 1, !tbaa !21, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !408
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !27, !noalias !408
  %i.ha = load ptr, ptr %4, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.hb = load i64, ptr %i.ao, align 8, !tbaa !26, !noalias !408 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !408
  store i64 %i.hb, ptr %i.a, align 8, !tbaa !28, !noalias !408
  %i.hc = icmp ugt i64 %i.hb, 15
  br i1 %i.hc, label %.noexc.i5.i, label %._crit_edge.i.i4.i

.noexc.i5.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.hd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i252 unwind label %bb.aq, !noalias !408 ; 2 uses

.noexc.i252:                                      ; preds = %.noexc.i5.i
  store ptr %i.hd, ptr %i.ar, align 8, !tbaa !20, !noalias !408
  %i.he = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !408
  store i64 %i.he, ptr %i.as, align 8, !tbaa !21, !noalias !408
  br label %._crit_edge.i.i4.i

._crit_edge.i.i4.i:                               ; preds = %.noexc.i252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.hf = phi ptr [ %i.hd, %.noexc.i252 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  switch i64 %i.hb, label %bb.ap [
    i64 1, label %bb.ao
    i64 0, label %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i4.i
  %i.hg = load i8, ptr %i.ha, align 1, !tbaa !21, !noalias !408
  store i8 %i.hg, ptr %i.hf, align 1, !tbaa !21, !noalias !408
  br label %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i

bb.ap:                                            ; preds = %._crit_edge.i.i4.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %i.ha, i64 %i.hb, i1 false), !noalias !408
  br label %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i

bb.aq:                                            ; preds = %.noexc.i5.i
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %5, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.ap
  br i1 %i.hj, label %.body254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249: ; preds = %bb.aq
  %i.hk = load i64, ptr %i.ap, align 8, !tbaa !21, !noalias !408
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #26, !noalias !408
  br label %.body254

_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i: ; preds = %bb.ap, %bb.ao, %._crit_edge.i.i4.i
  %i.hm = load i64, ptr %i.a, align 8, !tbaa !28, !noalias !408 ; 2 uses
  store i64 %i.hm, ptr %i.at, align 8, !tbaa !26, !noalias !408
  %i.hn = load ptr, ptr %i.ar, align 8, !tbaa !20, !noalias !408
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hm
  store i8 0, ptr %i.ho, align 1, !tbaa !21, !noalias !408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !408
  store ptr %i.au, ptr %11, align 8, !tbaa !27, !alias.scope !408
  %i.hp = load ptr, ptr %5, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, %i.ap
  br i1 %i.hq, label %bb.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i
  %i.hr = load i64, ptr %i.aq, align 8, !tbaa !26, !noalias !408 ; 3 uses
  %i.hs = icmp ult i64 %i.hr, 16
  call void @llvm.assume(i1 %i.hs)
  %i.ht = add nuw nsw i64 %i.hr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.ap, i64 %i.ht, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt9make_pairIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS8_INS9_IT0_E4typeEE6__typeEEOSA_OSF_.exit.i
  store ptr %i.hp, ptr %11, align 8, !tbaa !20, !alias.scope !408
  %i.hu = load i64, ptr %i.ap, align 8, !tbaa !21, !noalias !408
  store i64 %i.hu, ptr %i.au, align 8, !tbaa !21, !alias.scope !408
  %.pre27.i = load i64, ptr %i.aq, align 8, !tbaa !26, !noalias !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.ar
  %i.hv = phi i64 [ %.pre27.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.hr, %bb.ar ]
  store i64 %i.hv, ptr %i.av, align 8, !tbaa !26, !alias.scope !408
  store ptr %i.ap, ptr %5, align 8, !tbaa !20, !noalias !408
  store i64 0, ptr %i.aq, align 8, !tbaa !26, !noalias !408
  store i8 0, ptr %i.ap, align 8, !tbaa !21, !noalias !408
  store ptr %i.ax, ptr %i.aw, align 8, !tbaa !27, !alias.scope !408
  %i.hw = load ptr, ptr %i.ar, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.as
  br i1 %i.hx, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  %i.hy = load i64, ptr %i.at, align 8, !tbaa !26, !noalias !408 ; 3 uses
  %i.hz = icmp ult i64 %i.hy, 16
  call void @llvm.assume(i1 %i.hz)
  %i.ia = add nuw nsw i64 %i.hy, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ia, i1 false)
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
  store ptr %i.hw, ptr %i.aw, align 8, !tbaa !20, !alias.scope !408
  %i.ib = load i64, ptr %i.as, align 8, !tbaa !21, !noalias !408
  store i64 %i.ib, ptr %i.ax, align 8, !tbaa !21, !alias.scope !408
  %.pre29.i = load i64, ptr %i.at, align 8, !tbaa !26, !noalias !408
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i, %bb.as
  %i.ic = phi i64 [ %i.hy, %bb.as ], [ %.pre29.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i3.i.i.i.i.i.i.i.i ]
  store i64 %i.ic, ptr %i.ay, align 8, !tbaa !26, !alias.scope !408
  store i8 1, ptr %i.az, align 8, !tbaa !76, !alias.scope !408
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !408
  br label %bb.au

bb.at:                                            ; preds = %.noexc.i.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %.body254

.body254:                                         ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249, %bb.at
  %eh.lpad-body255 = phi { ptr, i32 } [ %i.id, %bb.at ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249 ], [ %i.hh, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27, !noalias !408
  br label %.loopexit.split-lp.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.n
  store i8 0, ptr %i.az, align 8, !tbaa !76, !alias.scope !408
  br label %bb.au

bb.au:                                            ; preds = %.critedge.thread.i, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.i
  %i.ie = load ptr, ptr %4, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.if = icmp eq ptr %i.ie, %i.an
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.au
  %i.ig = load i64, ptr %i.an, align 8, !tbaa !21, !noalias !408
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ih) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !408
  %i.ii = load ptr, ptr %3, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, %i.al
  br i1 %i.ij, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ik = load i64, ptr %i.al, align 8, !tbaa !21, !noalias !408
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.il) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body254
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body255, %.body254 ], [ %lpad.loopexit.split-lp412, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.im = load ptr, ptr %4, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.an
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i: ; preds = %.loopexit.split-lp.i
  %i.io = load i64, ptr %i.an, align 8, !tbaa !21, !noalias !408
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #26, !noalias !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i: ; preds = %.loopexit.split-lp.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27, !noalias !408
  %i.iq = load ptr, ptr %3, align 8, !tbaa !20, !noalias !408 ; 2 uses
  %i.ir = icmp eq ptr %i.iq, %i.al
  br i1 %i.ir, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i
  %i.is = load i64, ptr %i.al, align 8, !tbaa !21, !noalias !408
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.it) #26, !noalias !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !408
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !408
  %i.iu = load i8, ptr %i.az, align 8, !tbaa !76, !range !57, !noundef !55
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %_ZNRSt8optionalISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE5valueEv.exit, label %_ZNSt14_Optional_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0EED2Ev.exit

_ZNRSt8optionalISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE5valueEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79.i
  %i.iw = invoke { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE17_M_emplace_uniqueIJRS6_IS5_S5_EEEES6_ISt17_Rb_tree_iteratorIS8_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, ptr noundef nonnull align 8 dereferenceable(64) %11)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS8_IS5_S5_EEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_.exit unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %_ZNRSt8optionalISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE5valueEv.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %11) #27
  br label %.body

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS8_IS5_S5_EEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_.exit: ; preds = %_ZNRSt8optionalISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE5valueEv.exit
  %.pre = load i8, ptr %i.az, align 8, !tbaa !76, !range !57
  %i.iy = trunc nuw i8 %.pre to i1
  store i8 0, ptr %i.az, align 8, !tbaa !76
  br i1 %i.iy, label %bb.aw, label %_ZNSt14_Optional_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0EED2Ev.exit

bb.aw:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS8_IS5_S5_EEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_.exit
  %i.iz = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.ax
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.aw
  %i.jb = load i64, ptr %i.ax, align 8, !tbaa !21
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.jd = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.je = icmp eq ptr %i.jd, %i.au
  br i1 %i.je, label %_ZNSt14_Optional_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.jf = load i64, ptr %i.au, align 8, !tbaa !21
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jg) #26
  br label %_ZNSt14_Optional_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i79.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEE7emplaceIJRS8_IS5_S5_EEEES8_ISt17_Rb_tree_iteratorISA_EbEDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.jh = load ptr, ptr %9, align 8, !tbaa !385
  %i.ji = getelementptr i8, ptr %i.jh, i64 -24
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = getelementptr inbounds i8, ptr %9, i64 %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 240
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !400 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jm, null
  br i1 %.not.i.i.i, label %._crit_edge, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i, !llvm.loop !363

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i, %bb.av
  %.pn113 = phi { ptr, i32 } [ %i.ix, %bb.av ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.loopexit.split-lp61

.loopexit.split-lp61:                             ; preds = %.loopexit.split-lp61.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %.pn113.pn = phi { ptr, i32 } [ %.pn113, %.body ], [ %lpad.loopexit.split-lp416, %.loopexit.split-lp61.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.jn = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.jo = icmp eq ptr %i.jn, %i.ad
  br i1 %i.jo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %.loopexit.split-lp61
  %i.jp = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %.loopexit.split-lp61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %9) #27
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %bb.m
  %.pn113.pn.pn = phi { ptr, i32 } [ %.pn113.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %bb.ba

.critedge:                                        ; preds = %bb.d
  %i.jr = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.js = icmp eq ptr %i.jr, %i.t
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %.critedge
  %i.jt = load i64, ptr %i.t, align 8, !tbaa !21
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jr, i64 noundef %i.ju) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27, !noalias !381
  %i.jv = load ptr, ptr %i.k, align 8, !tbaa !20, !noalias !381
  %i.jw = load i64, ptr %i.p, align 8, !tbaa !26, !noalias !381
  store i64 %i.jw, ptr %6, align 8, !tbaa !28, !alias.scope !382, !noalias !381
  store ptr %i.jv, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !51, !alias.scope !382, !noalias !381
  store ptr null, ptr %i.q, align 8, !tbaa !54, !alias.scope !382, !noalias !381
  store i64 19, ptr %i.r, align 8, !tbaa !28, !alias.scope !383, !noalias !381
  store ptr @.str.76, ptr %.sroa.4.0..sroa_idx.i11.i, align 8, !tbaa !51, !alias.scope !383, !noalias !381
  store ptr null, ptr %i.s, align 8, !tbaa !54, !alias.scope !383, !noalias !381
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull %6, i64 2)
          to label %bb.ay unwind label %bb.k

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27, !noalias !381
  %i.jx = invoke noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.az unwind label %bb.l

bb.az:                                            ; preds = %bb.ay
  br i1 %i.jx, label %bb.e, label %.critedge.1

.critedge.1:                                      ; preds = %bb.az
  %i.jy = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.t
  br i1 %i.jz, label %.loopexit65, label %.loopexit65.sink.split

bb.ba:                                            ; preds = %bb.ax, %bb.l
  %.pn113.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn, %bb.ax ], [ %i.by, %bb.l ]
  %i.ka = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.kb = icmp eq ptr %i.ka, %i.t
  br i1 %i.kb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.ba
  %i.kc = load i64, ptr %i.t, align 8, !tbaa !21
  %i.kd = add i64 %i.kc, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.kd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ea

.loopexit65.sink.split:                           ; preds = %.critedge.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %.sink = phi ptr [ %i.bv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %i.jy, %.critedge.1 ]
  %i.ke = load i64, ptr %i.t, align 8, !tbaa !21
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.kf) #26
  br label %.loopexit65

.loopexit65:                                      ; preds = %.loopexit65.sink.split, %.critedge.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.kg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11, i64 40), align 8, !tbaa !41
  %i.kh = icmp eq i64 %i.kg, 0
  br i1 %i.kh, label %bb.bb, label %bb.dz

bb.bb:                                            ; preds = %.loopexit65
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  invoke void @_ZN5cmsys4GlobC1Ev(ptr noundef nonnull align 8 dereferenceable(82) %12)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.ki = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools12GetCMakeRootB5cxx11Ev()
          to label %bb.bd unwind label %bb.bj     ; 2 uses

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !409
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !20, !noalias !409
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !26, !noalias !409
  store i64 %i.kl, ptr %2, align 8, !tbaa !28, !alias.scope !410, !noalias !409
  %.sroa.4.0..sroa_idx.i.i149 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.kj, ptr %.sroa.4.0..sroa_idx.i.i149, align 8, !tbaa !51, !alias.scope !410, !noalias !409
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr null, ptr %i.km, align 8, !tbaa !54, !alias.scope !410, !noalias !409
  %i.kn = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 35, ptr %i.kn, align 8, !tbaa !28, !alias.scope !411, !noalias !409
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @.str.77, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !tbaa !51, !alias.scope !411, !noalias !409
  %i.ko = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.ko, align 8, !tbaa !54, !alias.scope !411, !noalias !409
  invoke void @_Z10cmCatViewsSt16initializer_listISt4pairISt17basic_string_viewIcSt11char_traitsIcEEPNSt7__cxx1112basic_stringIcS3_SaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr nonnull %2, i64 2)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !409
  %i.kp = invoke noundef zeroext i1 @_ZN5cmsys4Glob9FindFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_7MessageESaISA_EE(ptr noundef nonnull align 8 dereferenceable(82) %12, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef null)
          to label %bb.bf unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.be
  br i1 %i.kp, label %bb.bg, label %.noexc.i152

bb.bg:                                            ; preds = %bb.bf
  %i.kq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5cmsys4Glob8GetFilesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(82) %12)
          to label %bb.bh unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bg
  %i.kr = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.kq)
          to label %.noexc.i152 unwind label %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bi:                                            ; preds = %bb.bb
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.bj:                                            ; preds = %bb.bd, %bb.bc
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

.noexc.i152:                                      ; preds = %bb.bh, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.ku = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store ptr %i.ku, ptr %15, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #27
  store i64 37, ptr %i.g, align 8, !tbaa !28
  %i.kv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc153 unwind label %bb.cg ; 3 uses

.noexc153:                                        ; preds = %.noexc.i152
  store ptr %i.kv, ptr %15, align 8, !tbaa !20
  %i.kw = load i64, ptr %i.g, align 8, !tbaa !28  ; 3 uses
  store i64 %i.kw, ptr %i.ku, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.kv, ptr noundef nonnull align 1 dereferenceable(37) @.str.78, i64 37, i1 false)
  %i.kx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.kw, ptr %i.kx, align 8, !tbaa !26
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_121GetOSReleaseVariablesB5cxx11ER17cmExecutionStatus:._crit_edge.i.i
bb.dr:                                            ; preds = %bb.do, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  switch i32 %.289307, label %._crit_edge154 [
    i32 0, label %.thread
    i32 7, label %.thread
  ]

bb.ds:                                            ; preds = %bb.dp, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.jt6
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %._crit_edge154

bb.dt:                                            ; preds = %bb.dq, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.jt7
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.thread

.thread:                                          ; preds = %bb.dt, %bb.cm, %bb.cl, %_ZN13cmSystemTools20GetErrorOccurredFlagEv.exit, %bb.dr, %bb.dr
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.06.0152, i64 32 ; 2 uses
  %.not22 = icmp eq ptr %i.uc, %i.oi
  br i1 %.not22, label %._crit_edge154, label %bb.cj

bb.du:                                            ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit229 ], [ %i.td, %bb.dn ]
  call void @_ZN6cmListD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #27
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.loopexit
  %.pn100.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn.pn, %bb.du ], [ %.pn96, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.loopexit.split-lp26

._crit_edge154:                                   ; preds = %bb.dr, %.thread, %bb.ds, %.noexc181
  invoke void @_ZN10cmMakefile16RemoveDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952) %.0.val, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %bb.dw unwind label %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dw:                                            ; preds = %._crit_edge154
  %i.ud = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.ue = icmp eq ptr %i.ud, %i.oc
  br i1 %i.ue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235: ; preds = %bb.dw
  %i.uf = load i64, ptr %i.oc, align 8, !tbaa !21
  %i.ug = add i64 %i.uf, 1
  call void @_ZdlPvm(ptr noundef %i.ud, i64 noundef %i.ug) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237: ; preds = %bb.dw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.uh = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.uj = icmp eq ptr %i.uh, %i.ui
  br i1 %i.uj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237
  %i.uk = load i64, ptr %i.ui, align 8, !tbaa !21
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.ul) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i238
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  %i.um = load ptr, ptr %13, align 8, !tbaa !25   ; 3 uses
  %i.un = load ptr, ptr %i.la, align 8, !tbaa !24 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.um, %i.un
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ut, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.um, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ] ; 3 uses
  %i.uo = load ptr, ptr %.05.i.i.i, align 8, !tbaa !20 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.uq = icmp eq ptr %i.uo, %i.up
  br i1 %i.uq, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ur = load i64, ptr %i.up, align 8, !tbaa !21
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.us) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ut = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i241 = icmp eq ptr %i.ut, %i.un
  br i1 %.not.i.i.i241, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %13, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %i.uu = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.um, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.uu, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.dx

bb.dx:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.uv = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !62
  %i.ux = ptrtoint ptr %i.uw to i64
  %i.uy = ptrtoint ptr %i.uu to i64
  %i.uz = sub i64 %i.ux, %i.uy
  call void @_ZdlPvm(ptr noundef nonnull %i.uu, i64 noundef %i.uz) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @_ZN5cmsys4GlobD1Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82) %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.dz

.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cj, %bb.ck, %bb.cn, %._crit_edge154
  %lpad.loopexit.split-lp380 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp26

.loopexit.split-lp26:                             ; preds = %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dv
  %.pn107 = phi { ptr, i32 } [ %.pn100.pn.pn.pn.pn, %bb.dv ], [ %lpad.loopexit.split-lp380, %.loopexit.split-lp26.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.va = load ptr, ptr %16, align 8, !tbaa !20   ; 2 uses
  %i.vb = icmp eq ptr %i.va, %i.oc
  br i1 %i.vb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %.loopexit.split-lp26
  %i.vc = load i64, ptr %i.oc, align 8, !tbaa !21
  %i.vd = add i64 %i.vc, 1
  call void @_ZdlPvm(ptr noundef %i.va, i64 noundef %i.vd) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %.loopexit.split-lp26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.ci
  %.pn107.pn = phi { ptr, i32 } [ %i.pf, %bb.ci ], [ %.pn107, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %.pn107, %.loopexit.split-lp26 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.loopexit.split-lp31

.loopexit.split-lp31:                             ; preds = %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185
  %.pn107.pn.pn = phi { ptr, i32 } [ %.pn107.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244 ], [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit185 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp31.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ve = load ptr, ptr %14, align 8, !tbaa !20   ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.vg = icmp eq ptr %i.ve, %i.vf
  br i1 %i.vg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %.loopexit.split-lp31
  %i.vh = load i64, ptr %i.vf, align 8, !tbaa !21
  %i.vi = add i64 %i.vh, 1
  call void @_ZdlPvm(ptr noundef %i.ve, i64 noundef %i.vi) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %.loopexit.split-lp31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bj
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.kt, %bb.bj ], [ %.pn107.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %.pn107.pn.pn, %.loopexit.split-lp31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  call void @_ZN5cmsys4GlobD1Ev(ptr noundef nonnull align 8 dead_on_return(82) dereferenceable(82) %12) #27
  br label %bb.dy

bb.dy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, %bb.bi
  %.pn107.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247 ], [ %i.ks, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.ea

bb.dz:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %.loopexit65
  ret void

bb.ea:                                            ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %bb.dy
  %.pn113.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn, %bb.dy ], [ %.pn113.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148 ], [ %i.bx, %bb.k ]
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) @_ZZN12_GLOBAL__N_115GetDistribValueER17cmExecutionStatusRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_E12s_os_releaseB5cxx11) #27
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125
  %.pn113.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn.pn.pn.pn, %bb.ea ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ]
  resume { ptr, i32 } %.pn113.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #28
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK10cmMakefile17GetSafeDefinitionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(2952), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN5cmsys11SystemTools10FileExistsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !76, !range !57, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !76
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = load i64, ptr %i.f, align 8, !tbaa !21
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt17_Optional_payloadISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.m = load i64, ptr %i.k, align 8, !tbaa !21
  %i.n = add i64 %i.m, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #26
  br label %_ZNSt17_Optional_payloadISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ELb0ELb0ELb0EED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #14 align 2

declare void @_ZN5cmsys4GlobC1Ev(ptr noundef nonnull align 8 dereferenceable(82)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN13cmSystemTools12GetCMakeRootB5cxx11Ev() local_unnamed_addr #0

declare noundef zeroext i1 @_ZN5cmsys4Glob9FindFilesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS0_7MessageESaISA_EE(ptr noundef nonnull align 8 dereferenceable(82), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5cmsys4Glob8GetFilesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(82)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !25     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 5 uses
  %i.g = ashr exact i64 %i.f, 5                   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.j = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEEEPS5_mT_SF_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, ptr %i.c, ptr %i.b) ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !25     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.p, %i.r
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.p, %bb.c ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !21
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !25
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split, %bb.c
  %i.y = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split ], [ %i.p, %bb.c ] ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #26
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit, %bb.d
  store ptr %i.o, ptr %0, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !62
  br label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ag, %i.l                     ; 3 uses
  %.not24 = icmp ult i64 %i.ah, %i.f
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp sgt i64 %i.g, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.al, %.lr.ph.i.i.i.i.i ], [ %i.g, %bb.f ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.f ] ; 2 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.c, %bb.f ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.al = add nsw i64 %.012.i.i.i.i.i, -1
  %i.am = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, !llvm.loop !417

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !50
  %.pre45 = ptrtoint ptr %i.ak to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit, %bb.f
  %.pre-phi46 = phi i64 [ %.pre45, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.l, %bb.f ]
  %i.an = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.af, %bb.f ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.ak, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit.loopexit ], [ %i.j, %bb.f ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.an
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS1_IPS7_SC_EEET0_T_SH_SG_.exit
  %i.ao = sub i64 %.pre-phi46, %i.l
  %i.ap = getelementptr inbounds i8, ptr %i.j, i64 %i.ao
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28
  %.sroa.01.05.i.i = phi ptr [ %i.av, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28 ], [ %i.ap, %.lr.ph.i.i26.preheader ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.01.05.i.i, align 8, !tbaa !20 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27: ; preds = %.lr.ph.i.i26
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !21
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i28: ; preds = %.lr.ph.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 32 ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.av, %i.an
  br i1 %.not.i.i29, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i26, !llvm.loop !418

bb.g:                                             ; preds = %bb.e
  %i.aw = ashr exact i64 %i.ah, 5                 ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

.lr.ph.i.i.i.i.i32:                               ; preds = %bb.g, %.lr.ph.i.i.i.i.i32
  %.012.i.i.i.i.i33 = phi i64 [ %i.ba, %.lr.ph.i.i.i.i.i32 ], [ %i.aw, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i34 = phi ptr [ %i.az, %.lr.ph.i.i.i.i.i32 ], [ %i.j, %bb.g ] ; 2 uses
  %.0910.i.i.i.i.i35 = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i32 ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i35)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i35, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i34, i64 32
  %i.ba = add nsw i64 %.012.i.i.i.i.i33, -1
  %i.bb = icmp samesign ugt i64 %.012.i.i.i.i.i33, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i32, label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, !llvm.loop !419

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i32
  %.pre36 = load ptr, ptr %1, align 8, !tbaa !25
  %.pre37 = load ptr, ptr %i.ae, align 8, !tbaa !24 ; 2 uses
  %.pre38 = load ptr, ptr %0, align 8, !tbaa !25
  %.pre39 = load ptr, ptr %i.a, align 8, !tbaa !24
  %.pre40 = ptrtoint ptr %.pre37 to i64
  %.pre41 = ptrtoint ptr %.pre38 to i64
  %.pre43 = sub i64 %.pre40, %.pre41
  br label %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit: ; preds = %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit, %bb.g
  %.pre-phi44 = phi i64 [ %.pre43, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.ah, %bb.g ]
  %i.bc = phi ptr [ %.pre39, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.b, %bb.g ]
  %i.bd = phi ptr [ %.pre37, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.af, %bb.g ]
  %i.be = phi ptr [ %.pre36, %_ZSt4copyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_ET0_T_S8_S7_.exit.loopexit ], [ %i.c, %bb.g ]
end_hunk_4
