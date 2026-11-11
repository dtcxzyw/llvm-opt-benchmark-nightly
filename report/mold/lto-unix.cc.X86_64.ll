Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/lto-unix.cc.X86_64?download=true
inline.NumInlined: 2846
inline.NumDeleted: 1528
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN4mold14run_lto_pluginINS_6X86_64EEESt6vectorIPNS_10ObjectFileIT_EESaIS6_EERNS_7ContextIS4_EE:._crit_edge.i.i
  %i.ke = icmp eq i64 %i.kd, 0
  br i1 %i.ke, label %bb.bg, label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit56

bb.bg:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit53
  %i.kf = cmpxchg ptr %i.ha, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !630 ; 0 uses
  br label %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit56

_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit56: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_.exit53, %bb.bg
  %i.kg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIA_hSt14default_deleteIS4_EENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE18internal_subscriptILb1EEERS7_m(ptr noundef nonnull align 8 dereferenceable(65) %i.hb, i64 noundef %i.kc), !noalias !630
  store ptr %i.jy, ptr %i.kg, align 8, !tbaa !206, !noalias !630
  %i.kh = load i64, ptr %i.hf, align 8, !tbaa !22 ; 2 uses
  %i.ki = load ptr, ptr %15, align 8, !tbaa !171  ; 2 uses
  %i.kj = icmp eq ptr %i.ki, %i.he
  br i1 %i.kj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit56
  %i.kk = icmp ult i64 %i.kh, 16
  call void @llvm.assume(i1 %i.kk)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZN4mold11save_stringINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERKNSt7__cxx1112basic_stringIcS4_SaIcEEE.exit56
  %i.kl = load i64, ptr %i.he, align 8, !tbaa !29
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.km) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %i.kn = load ptr, ptr %16, align 8, !tbaa !171  ; 2 uses
  %i.ko = icmp eq ptr %i.kn, %i.hc
  br i1 %i.ko, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59
  %i.kp = load i64, ptr %i.hc, align 8, !tbaa !29
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.kr = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 %i.iw, ptr nonnull %i.in) #20
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 33 ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 1
  %i.ku = or i16 %i.kt, 16384
  store i16 %i.ku, ptr %i.ks, align 1
  %i.kv = call noundef ptr @_ZN4mold10get_symbolINS_6X86_64EEEPNS_6SymbolIT_EERNS_7ContextIS3_EESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(14448) %1, i64 %i.kh, ptr nonnull %i.jy) #20
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 33 ; 2 uses
  %i.kx = load i16, ptr %i.kw, align 1
  %i.ky = or i16 %i.kx, 16384
  store i16 %i.ky, ptr %i.kw, align 1
  %.sroa.074.0 = load ptr, ptr %.sroa.074.083, align 8, !tbaa !625 ; 2 uses
  %i.kz = icmp eq ptr %.sroa.074.0, null
  br i1 %i.kz, label %._crit_edge, label %bb.as

._crit_edge87:                                    ; preds = %.lr.ph86, %._crit_edge
  %i.la = load ptr, ptr %i.gp, align 8, !tbaa !471 ; 2 uses
  %i.lb = load ptr, ptr %i.gr, align 8, !tbaa !471 ; 2 uses
  %i.lc = icmp eq ptr %i.la, %i.lb
  br i1 %i.lc, label %._crit_edge91, label %.lr.ph90

.lr.ph86:                                         ; preds = %._crit_edge, %.lr.ph86
  %.sroa.067.084 = phi ptr [ %i.lh, %.lr.ph86 ], [ %i.hh, %._crit_edge ] ; 2 uses
  %i.ld = load ptr, ptr %.sroa.067.084, align 8, !tbaa !161
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 33 ; 2 uses
  %i.lf = load i16, ptr %i.le, align 1
  %i.lg = or i16 %i.lf, 16384
  store i16 %i.lg, ptr %i.le, align 1
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.067.084, i64 8 ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.hj
  br i1 %i.li, label %._crit_edge87, label %.lr.ph86

._crit_edge91:                                    ; preds = %bb.bk, %._crit_edge87
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.lj = getelementptr inbounds nuw i8, ptr %18, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.lj) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.lj, align 8, !tbaa !27
  %i.lk = getelementptr inbounds nuw i8, ptr %18, i64 328
  store ptr null, ptr %i.lk, align 8, !tbaa !188
  %i.ll = getelementptr inbounds nuw i8, ptr %18, i64 336
  store i8 0, ptr %i.ll, align 8, !tbaa !189
  %i.lm = getelementptr inbounds nuw i8, ptr %18, i64 337
  store i8 0, ptr %i.lm, align 1, !tbaa !190
  %i.ln = getelementptr inbounds nuw i8, ptr %18, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ln, i8 0, i64 32, i1 false)
  %i.lo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.lo, ptr %18, align 8, !tbaa !27
  %i.lp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8
  %i.lq = getelementptr i8, ptr %i.lo, i64 -24
  %i.lr = load i64, ptr %i.lq, align 8
  %i.ls = getelementptr inbounds i8, ptr %18, i64 %i.lr
  store ptr %i.lp, ptr %i.ls, align 8, !tbaa !27
  %i.lt = load ptr, ptr %18, align 8, !tbaa !27
  %i.lu = getelementptr i8, ptr %i.lt, i64 -24
  %i.lv = load i64, ptr %i.lu, align 8
  %i.lw = getelementptr inbounds i8, ptr %18, i64 %i.lv
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.lw, ptr noundef null) #20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %18, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.lj, align 8, !tbaa !27
  %i.lx = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lx, align 8, !tbaa !27
  %i.ly = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.lz = getelementptr inbounds nuw i8, ptr %18, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ly, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.lz) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lx, align 8, !tbaa !27
  %i.ma = getelementptr inbounds nuw i8, ptr %18, i64 72
  store i32 16, ptr %i.ma, align 8, !tbaa !194
  %i.mb = getelementptr inbounds nuw i8, ptr %18, i64 80 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %18, i64 96 ; 4 uses
  store ptr %i.mc, ptr %i.mb, align 8, !tbaa !28
  %i.md = getelementptr inbounds nuw i8, ptr %18, i64 88
  store i64 0, ptr %i.md, align 8, !tbaa !22
  store i8 0, ptr %i.mc, align 8, !tbaa !29
  %i.me = load ptr, ptr %18, align 8, !tbaa !27
  %i.mf = getelementptr i8, ptr %i.me, i64 -24
  %i.mg = load i64, ptr %i.mf, align 8
  %i.mh = getelementptr inbounds i8, ptr %18, i64 %i.mg
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.mh, ptr noundef nonnull %i.lx) #20
  %i.mi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(112) %18, ptr noundef nonnull @.str.13, i64 noundef 17) #20 ; 0 uses
  %i.mj = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.mj, ptr %18, align 8, !tbaa !27
  %i.mk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ml = getelementptr i8, ptr %i.mj, i64 -24
  %i.mm = load i64, ptr %i.ml, align 8
  %i.mn = getelementptr inbounds i8, ptr %18, i64 %i.mm
  store ptr %i.mk, ptr %i.mn, align 8, !tbaa !27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.lx, align 8, !tbaa !27
  %i.mo = load ptr, ptr %i.mb, align 8, !tbaa !171 ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.mc
  br i1 %i.mp, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %._crit_edge91
  %i.mq = load i64, ptr %i.mc, align 8, !tbaa !29
  %i.mr = add i64 %i.mq, 1
  call void @_ZdlPvm(ptr noundef %i.mo, i64 noundef %i.mr) #26
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %._crit_edge91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.lx, align 8, !tbaa !27
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lz) #20
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.lj) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.ms = load ptr, ptr @_ZN4moldL21all_symbols_read_hookE, align 8, !tbaa !25
  %i.mt = call noundef i32 %i.ms() #20            ; 2 uses
  store i32 %i.mt, ptr %i.d, align 4, !tbaa !473
  %.not = icmp eq i32 %i.mt, 0
  br i1 %.not, label %bb.bm, label %bb.bl

.lr.ph90:                                         ; preds = %._crit_edge87, %bb.bk
  %.sroa.063.088 = phi ptr [ %i.ni, %bb.bk ], [ %i.la, %._crit_edge87 ] ; 2 uses
  %i.mu = load ptr, ptr %.sroa.063.088, align 8, !tbaa !156 ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 136
  %i.mw = load atomic i8, ptr %i.mv monotonic, align 1, !range !462, !noundef !463
  %i.mx = trunc nuw i8 %i.mw to i1
  br i1 %i.mx, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %.lr.ph90
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 809
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !167, !range !462, !noundef !463
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mu, i64 810
  %i.nc = load i8, ptr %i.nb, align 2, !tbaa !631, !range !462, !noundef !463
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !168
  call fastcc void @_ZN4moldL24create_plugin_input_fileINS_6X86_64EEENS_15PluginInputFileERNS_7ContextIT_EEPNS_10MappedFileE(ptr dead_on_unwind noalias writable align 8 %17, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef %i.nf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4, !tbaa !195
  %i.ng = load ptr, ptr @_ZN4moldL15claim_file_hookE, align 8, !tbaa !25
  %i.nh = call noundef i32 %i.ng(ptr noundef nonnull %17, ptr noundef nonnull %i.c) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %.lr.ph90
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.063.088, i64 8 ; 2 uses
  %i.nj = icmp eq ptr %i.ni, %i.lb
  br i1 %i.nj, label %._crit_edge91, label %.lr.ph90

bb.bl:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #20
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %19, ptr noundef nonnull align 8 dereferenceable(14448) %1) #20
  %i.nk = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA36_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %19, ptr noundef nonnull align 1 dereferenceable(36) @.str.14)
  %i.nl = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12PluginStatusEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.nk, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %19) #27
  unreachable

bb.bm:                                            ; preds = %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.nm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4moldL11lto_objectsINS_6X86_64EEE, i64 8), align 8, !tbaa !474 ; 2 uses
  %i.nn = load ptr, ptr @_ZN4moldL11lto_objectsINS_6X86_64EEE, align 8, !tbaa !475 ; 3 uses
  %i.no = ptrtoint ptr %i.nm to i64               ; 2 uses
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = sub i64 %i.no, %i.np                    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.nm, %i.nn
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2EmRKS5_.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nr = icmp ugt i64 %i.nq, 9223372036854775800
  br i1 %i.nr, label %bb.bo, label %_ZNSt15__new_allocatorIPN4mold10ObjectFileINS0_6X86_64EEEE8allocateEmPKv.exit.i.i.i.i, !prof !172

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt15__new_allocatorIPN4mold10ObjectFileINS0_6X86_64EEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.bn
  %i.ns = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nq) #28
  %.pre = load ptr, ptr @_ZN4moldL11lto_objectsINS_6X86_64EEE, align 8, !tbaa !471
  %.pre94 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4moldL11lto_objectsINS_6X86_64EEE, i64 8), align 8, !tbaa !471
  %.pre96 = ptrtoint ptr %.pre94 to i64
  br label %_ZNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2EmRKS5_.exit.i

_ZNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2EmRKS5_.exit.i: ; preds = %_ZNSt15__new_allocatorIPN4mold10ObjectFileINS0_6X86_64EEEE8allocateEmPKv.exit.i.i.i.i, %bb.bm
  %.pre-phi = phi i64 [ %.pre96, %_ZNSt15__new_allocatorIPN4mold10ObjectFileINS0_6X86_64EEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.no, %bb.bm ]
  %i.nt = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4mold10ObjectFileINS0_6X86_64EEEE8allocateEmPKv.exit.i.i.i.i ], [ %i.nn, %bb.bm ] ; 3 uses
  %i.nu = phi ptr [ %i.ns, %_ZNSt15__new_allocatorIPN4mold10ObjectFileINS0_6X86_64EEEE8allocateEmPKv.exit.i.i.i.i ], [ null, %bb.bm ] ; 5 uses
  %.pre-phi97 = ptrtoint ptr %i.nt to i64
  store ptr %i.nu, ptr %0, align 8, !tbaa !475
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nq
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.nv, ptr %i.nw, align 8, !tbaa !476
  %i.nx = sub i64 %.pre-phi, %.pre-phi97          ; 4 uses
  %i.ny = icmp sgt i64 %i.nx, 8
  br i1 %i.ny, label %bb.bp, label %bb.bq, !prof !470

bb.bp:                                            ; preds = %_ZNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2EmRKS5_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.nu, ptr align 8 %i.nt, i64 %i.nx, i1 false)
  br label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2ERKS6_.exit

bb.bq:                                            ; preds = %_ZNSt12_Vector_baseIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2EmRKS5_.exit.i
  %i.nz = icmp eq i64 %i.nx, 8
  br i1 %i.nz, label %bb.br, label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2ERKS6_.exit

bb.br:                                            ; preds = %bb.bq
  %i.oa = load ptr, ptr %i.nt, align 8, !tbaa !156
  store ptr %i.oa, ptr %i.nu, align 8, !tbaa !156
  br label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2ERKS6_.exit

_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EEC2ERKS6_.exit: ; preds = %bb.bp, %bb.bq, %bb.br
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.oc = getelementptr inbounds i8, ptr %i.nu, i64 %i.nx
  store ptr %i.oc, ptr %i.ob, align 8, !tbaa !474
  %i.od = load ptr, ptr %10, align 8, !tbaa !479
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.od) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr nofree noundef align 8 dereferenceable(32) %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !28
  %i.c = load ptr, ptr %2, align 8, !tbaa !171    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !22   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !172

bb.e:                                             ; preds = %bb.d
  call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !171
  store i64 %i.e, ptr %i.b, align 8, !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.a ] ; 3 uses
  switch i64 %i.e, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !29
  store i8 %i.l, ptr %i.k, align 1, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !29
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.o = load ptr, ptr %3, align 8, !tbaa !479
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit, %bb.h
  %i.p = phi ptr [ %i.o, %bb.h ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ]
  call void @_ZN4mold11TimerRecordC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS0_(ptr noundef nonnull align 8 dereferenceable(145) %i.a, ptr nofree noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.p) #20
  store ptr %i.a, ptr %0, align 8, !tbaa !479
  %i.q = load ptr, ptr %4, align 8, !tbaa !171    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.b
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.s = load i64, ptr %i.b, align 8, !tbaa !29
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12616
  %i.v = atomicrmw add ptr %i.u, i64 1 seq_cst, align 8, !noalias !636
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12608 ; 2 uses
  %i.x = load atomic i64, ptr %i.w monotonic, align 8, !noalias !636
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.j, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_.exit

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.z = cmpxchg ptr %i.w, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !636 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_.exit

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EEE12emplace_backIJRPS5_EEENS1_15vector_iteratorISB_S8_EEDpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 12560
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold11TimerRecordESt14default_deleteIS5_EENS1_23cache_aligned_allocatorIS8_EENS1_17concurrent_vectorIS8_SA_EELm3EE18internal_subscriptILb1EEERS8_m(ptr noundef nonnull align 8 dereferenceable(65) %i.aa, i64 noundef %i.v), !noalias !636
  %i.ac = load ptr, ptr %0, align 8, !tbaa !637, !noalias !636
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !637, !noalias !636
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA36_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(36) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(36) %1) #20
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(36) %1, i64 noundef %i.b) #20 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12PluginStatusEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %1, align 4, !tbaa !473
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %i.b) #20 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold11lto_cleanupINS_6X86_64EEEvRNS_7ContextIT_EE(ptr noundef nonnull align 8 dereferenceable(14448) %0) local_unnamed_addr #2 comdat {
._crit_edge.i.i:
  %1 = alloca %"class.mold::Timer", align 8       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.15, i64 11, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 11, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 27
  store i8 0, ptr %i.c, align 1, !tbaa !29
  call void @_ZN4mold5TimerINS_7ContextINS_6X86_64EEEEC2ERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS4_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2, ptr noundef null)
  %i.d = load ptr, ptr %2, align 8, !tbaa !171    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  %i.f = load i64, ptr %i.a, align 8, !tbaa !29
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr @_ZN4moldL12cleanup_hookE, align 8, !tbaa !25 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = call noundef i32 %i.h() #20              ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load ptr, ptr %1, align 8, !tbaa !479
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIN4mold12PluginSymbolESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !200    ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN4mold12PluginSymbolESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !480
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE17_M_default_appendEm:bb.a
  br label %bb.j

bb.e:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.n, %1
  br i1 %i.u, label %bb.f, label %_ZNKSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
  unreachable

_ZNKSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.v = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 384307168202282325) ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 24
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.f ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  %i.aa = add nsw i64 %1, -1                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt27__uninitialized_default_n_aIPN4mold6ElfSymINS0_6X86_64EEEmS3_ET_S5_T0_RSaIT1_E.exit30, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %.idx.i.i.i.i.i25 = mul nuw nsw i64 %i.aa, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i.i.i25
  br label %.lr.ph.i.i.i.i.i.i.i26

.lr.ph.i.i.i.i.i.i.i26:                           ; preds = %.lr.ph.i.i.i.i.i.i.i26, %bb.g
  %.06.i.i.i.i.i.i.i27 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i26 ], [ %i.ac, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.06.i.i.i.i.i.i.i27, ptr noundef nonnull align 1 dereferenceable(24) %i.z, i64 24, i1 false), !tbaa.struct !656
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i27, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i28 = icmp eq ptr %i.ae, %i.ad
  br i1 %.not.i.i.i.i.i.i.i28, label %_ZSt27__uninitialized_default_n_aIPN4mold6ElfSymINS0_6X86_64EEEmS3_ET_S5_T0_RSaIT1_E.exit30, label %.lr.ph.i.i.i.i.i.i.i26, !llvm.loop !655

_ZSt27__uninitialized_default_n_aIPN4mold6ElfSymINS0_6X86_64EEEmS3_ET_S5_T0_RSaIT1_E.exit30: ; preds = %.lr.ph.i.i.i.i.i.i.i26, %_ZNKSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit
  %i.af = icmp sgt i64 %i.f, 0
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4mold6ElfSymINS0_6X86_64EEEmS3_ET_S5_T0_RSaIT1_E.exit30
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit

_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPN4mold6ElfSymINS0_6X86_64EEEmS3_ET_S5_T0_RSaIT1_E.exit30, %bb.h
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %i.ag = load ptr, ptr %i.h, align 8, !tbaa !483
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ai) #26
  br label %_ZNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %bb.i
  store ptr %i.y, ptr %0, align 8, !tbaa !202
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %1
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !201
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %i.w
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !483
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4mold6ElfSymINS0_6X86_64EEEmS3_ET_S5_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4mold6ElfSymINS0_6X86_64EEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !204    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !484
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !161
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !161
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !203
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #27
  unreachable

_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !161
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !161
  br label %_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit

_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !484
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #26
  br label %_ZNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !204
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !203
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !484
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN4mold6SymbolINS0_6X86_64EEEmS4_ET_S6_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN4mold6SymbolINS0_6X86_64EEESaIS4_EE13_M_deallocateEPS4_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.neg = sext i1 %4 to i8                        ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = load ptr, ptr %0, align 8, !tbaa !44
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.l to i64                     ; 3 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %i.r = sub i64 %i.h, %i.q
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %1 to i64
  %i.t = sub i64 %i.m, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %2 to i64                       ; 4 uses
  %i.w = sub nsw i64 %i.p, %i.v
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.z = add nsw i64 %3, %i.p                     ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 63
  %i.ac = sdiv i64 %i.z, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ac
  %i.ae = and i64 %i.z, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.x, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %storemerge.i.i.i, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.ab, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.j, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.ah = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.ah, i32 63, i32 %i.ag ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.ah, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.ai = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.al = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0  ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.al, i32 63, i32 %i.ak ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.al, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.am = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ao = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !207
  %i.ap = and i64 %i.aj, %i.ao
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.aq = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !207
  %i.ar = or i64 %i.aq, %i.an
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.as = xor i64 %i.an, -1
  %i.at = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !207
  %i.au = and i64 %i.at, %i.as
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.e, %bb.d
  %storemerge.i.i.i.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.au, %bb.e ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !207
  %i.av = add nsw i64 %.024.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.aw, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !657

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.c
  %i.ax = add nsw i64 %3, %i.v                    ; 3 uses
  %i.ay = sdiv i64 %i.ax, 64
  %.idx = shl nsw i64 %i.ay, 3
  %i.az = and i64 %i.ax, -9223372036854775745
  %i.ba = icmp ugt i64 %i.az, -9223372036854775808
  %storemerge.idx.i.i.i75 = select i1 %i.ba, i64 -8, i64 0
  %i.bb = add nsw i64 %storemerge.idx.i.i.i75, %.idx ; 2 uses
  %storemerge.i.i.i76 = getelementptr inbounds i8, ptr %1, i64 %i.bb ; 4 uses
  %i.bc = trunc i64 %i.ax to i32
  %i.bd = and i32 %i.bc, 63                       ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not26.i.i.i = icmp eq i32 %2, 0
  br i1 %.not26.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = shl nsw i64 -1, %i.v                    ; 2 uses
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load i64, ptr %1, align 8, !tbaa !207
  %i.bh = or i64 %i.bg, %i.bf
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bf, -1
  %i.bj = load i64, ptr %1, align 8, !tbaa !207
  %i.bk = and i64 %i.bj, %i.bi
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

_ZSt14__fill_bvectorPmjjb.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %storemerge.i.i.i.i = phi i64 [ %i.bk, %bb.i ], [ %i.bh, %bb.h ]
  store i64 %storemerge.i.i.i.i, ptr %1, align 8, !tbaa !207
  br label %bb.j

bb.j:                                             ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i, %bb.f
  %.0.i.i.i = phi ptr [ %i.be, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %1, %bb.f ] ; 2 uses
  %.pre-phi = ptrtoint ptr %.0.i.i.i to i64
  %i.bl = ptrtoint ptr %storemerge.i.i.i76 to i64
  %i.bm = sub i64 %i.bl, %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i, i8 %.neg, i64 %i.bm, i1 false)
  %.not27.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = sub nuw nsw i32 64, %i.bd
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 -1, %i.bo                      ; 2 uses
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !207
  %i.br = or i64 %i.bq, %i.bp
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bs = xor i64 %i.bp, -1
  %i.bt = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !207
  %i.bu = and i64 %i.bt, %i.bs
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.m, %bb.l
  %storemerge.i28.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.br, %bb.l ]
  store i64 %storemerge.i28.i.i.i, ptr %storemerge.i.i.i76, align 8, !tbaa !207
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.n:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not25.i.i.i = icmp eq i32 %2, %i.bd
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = shl nsw i64 -1, %i.v
  %i.bw = sub nuw nsw i32 64, %i.bd
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = lshr i64 -1, %i.bx
  %i.bz = and i64 %i.by, %i.bv                    ; 2 uses
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = load i64, ptr %1, align 8, !tbaa !207
  %i.cb = or i64 %i.ca, %i.bz
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cc = xor i64 %i.bz, -1
  %i.cd = load i64, ptr %1, align 8, !tbaa !207
  %i.ce = and i64 %i.cd, %i.cc
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i:           ; preds = %bb.q, %bb.p
  %storemerge.i30.i.i.i = phi i64 [ %i.ce, %bb.q ], [ %i.cb, %bb.p ]
  store i64 %storemerge.i30.i.i.i, ptr %1, align 8, !tbaa !207
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %bb.j, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i, %bb.n, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i
  %i.cf = load i32, ptr %i.k, align 8, !tbaa !45
  %i.cg = zext i32 %i.cf to i64
  %i.ch = add nsw i64 %3, %i.cg                   ; 3 uses
  %i.ci = sdiv i64 %i.ch, 64
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.ci
  %i.cl = and i64 %i.ch, -9223372036854775745
  %i.cm = icmp ugt i64 %i.cl, -9223372036854775808
  %storemerge.idx.i.i = select i1 %i.cm, i64 -8, i64 0
  %storemerge.i.i = getelementptr inbounds i8, ptr %i.ck, i64 %storemerge.idx.i.i
  store ptr %storemerge.i.i, ptr %i.i, align 8, !tbaa !44
  %i.cn = trunc i64 %i.ch to i32
  %i.co = and i32 %i.cn, 63
  br label %.sink.split

bb.r:                                             ; preds = %bb.b
  %i.cp = sub i64 9223372036854775744, %i.q
  %i.cq = icmp ult i64 %i.cp, %3
  br i1 %i.cq, label %bb.s, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.26) #27
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.r
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %3)
  %i.cr = add i64 %.sroa.speculated.i, %i.q       ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.q
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 9223372036854775744)
  %i.cu = add nuw nsw i64 %i.ct, 63
  %i.cv = select i1 %i.cs, i64 9223372036854775807, i64 %i.cu ; 2 uses
  %i.cw = lshr i64 %i.cv, 3
  %i.cx = and i64 %i.cw, 1152921504606846968
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #28 ; 5 uses
  %i.cz = load ptr, ptr %0, align 8, !tbaa !44    ; 3 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 4 uses
  %i.dd = icmp sgt i64 %i.dc, 8
  br i1 %i.dd, label %bb.t, label %bb.u, !prof !470

bb.t:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr align 8 %i.cz, i64 %i.dc, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.u:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.de = icmp eq i64 %i.dc, 8
  br i1 %i.de, label %bb.v, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.v:                                             ; preds = %bb.u
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !207
  store i64 %i.df, ptr %i.cy, align 8, !tbaa !207
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.v, %bb.u, %bb.t
  %i.dg = getelementptr inbounds i8, ptr %i.cy, i64 %i.dc ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.dh = zext i32 %2 to i64
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.dx, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.dg, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %1, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %i.di = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !207
  %i.dl = and i64 %i.dk, %i.dj
  %.not.i.i.i.i.i.i81 = icmp eq i64 %i.dl, 0
  %i.dm = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.dn = shl nuw i64 1, %i.dm                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.do = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !207
  %i.dp = or i64 %i.do, %i.dn
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.dq = xor i64 %i.dn, -1
  %i.dr = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !207
  %i.ds = and i64 %i.dr, %i.dq
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.x, %bb.w
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.ds, %bb.x ], [ %i.dp, %bb.w ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !207
  %i.dt = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.du = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.du, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.du, i32 0, i32 %i.dt
  %i.dv = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.dw = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.dw, i32 0, i32 %i.dv ; 2 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.dw, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 2 uses
  %i.dx = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.dy = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, !llvm.loop !658

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dg, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ] ; 9 uses
  %i.dz = zext i32 %.sroa.55.0.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ea = add nsw i64 %3, %i.dz                   ; 3 uses
  %i.eb = sdiv i64 %i.ea, 64
  %.idx157 = shl nsw i64 %i.eb, 3
  %i.ec = and i64 %i.ea, -9223372036854775745
  %i.ed = icmp ugt i64 %i.ec, -9223372036854775808
  %storemerge.idx.i.i.i85 = select i1 %i.ed, i64 -8, i64 0
  %i.ee = add nsw i64 %storemerge.idx.i.i.i85, %.idx157 ; 2 uses
  %storemerge.i.i.i86 = getelementptr inbounds i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 %i.ee ; 6 uses
  %i.ef = trunc i64 %i.ea to i32
  %i.eg = and i32 %i.ef, 63                       ; 6 uses
  %.not.i.i.i89 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i89, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not26.i.i.i90 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not26.i.i.i90, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.ei = shl nsw i64 -1, %i.dz                   ; 2 uses
  br i1 %4, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ej = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !207
  %i.ek = or i64 %i.ej, %i.ei
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

bb.ab:                                            ; preds = %bb.z
  %i.el = xor i64 %i.ei, -1
  %i.em = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !207
  %i.en = and i64 %i.em, %i.el
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

end_hunk_1
