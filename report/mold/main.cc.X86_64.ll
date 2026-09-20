Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/main.cc.X86_64?download=true
inline.NumInlined: 5581
inline.NumDeleted: 3026
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 101
begin_hunk_0_@_ZN4mold9mold_mainINS_6X86_64EEEiiPPc:bb.a
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS5_EEEES5_EdeEv.exit.i: ; preds = %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i80, %.lr.ph.i79
  %.sroa.574.091.i = phi i64 [ 0, %.lr.ph.i79 ], [ %i.ly, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i80 ] ; 3 uses
  %i.lk = or i64 %.sroa.574.091.i, 1
  %i.ll = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lk, i1 true)
  %i.lm = xor i64 %i.ll, 63
  %i.ln = load atomic ptr, ptr %i.ga acquire, align 8
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ln, i64 %i.lm
  %i.lp = load atomic ptr, ptr %i.lo acquire, align 8
  %i.lq = getelementptr inbounds nuw [120 x i8], ptr %i.lp, i64 %.sroa.574.091.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 80
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !393
  store ptr %39, ptr %32, align 8, !tbaa !66
  store ptr %i.lq, ptr %i.in, align 8, !tbaa !68
  store ptr %i.ls, ptr %i.io, align 8, !tbaa !74
  store i32 0, ptr %i.ip, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iq, i8 0, i64 24, i1 false)
  call void @_ZN4mold6ScriptINS_6X86_64EE19parse_linker_scriptEv(ptr noundef nonnull align 8 dereferenceable(56) %32) #19
  %i.lt = load ptr, ptr %i.iq, align 8, !tbaa !41 ; 3 uses
  %.not.i.i.i.i42.i = icmp eq ptr %i.lt, null
  br i1 %.not.i.i.i.i42.i, label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i80, label %bb.ay

bb.ay:                                            ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS5_EEEES5_EdeEv.exit.i
  %i.lu = load ptr, ptr %i.ir, align 8, !tbaa !42
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.lt to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.lt, i64 noundef %i.lx) #25
  br label %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i80

_ZN4mold6ScriptINS_6X86_64EED2Ev.exit.i80:        ; preds = %bb.ay, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS5_EEEES5_EdeEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %i.ly = add nuw i64 %.sroa.574.091.i, 1         ; 2 uses
  %.not.i81 = icmp eq i64 %i.ly, %.sroa.speculated.i.i.i
  br i1 %.not.i81, label %._crit_edge.i82, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS5_EEEES5_EdeEv.exit.i

._crit_edge97.i:                                  ; preds = %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i, %_ZN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEE3endEv.exit.i
  %i.lz = load atomic i64, ptr %i.it monotonic, align 8
  %.not.i.i.i83 = icmp eq i64 %i.lz, 0
  br i1 %.not.i.i.i83, label %_ZN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge97.i, %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE7destroyISD_EEvRSE_PT_.exit.i.i.i
  %.03.i.i.i = phi i64 [ %i.mn, %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE7destroyISD_EEvRSE_PT_.exit.i.i.i ], [ 0, %._crit_edge97.i ] ; 3 uses
  %i.ma = or i64 %.03.i.i.i, 1
  %i.mb = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ma, i1 true)
  %i.mc = xor i64 %i.mb, 63
  %i.md = load atomic ptr, ptr %i.iv acquire, align 8
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mc
  %i.mf = load atomic ptr, ptr %i.me acquire, align 8
  %i.mg = getelementptr inbounds nuw [32 x i8], ptr %i.mf, i64 %.03.i.i.i ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !394 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE7destroyISD_EEvRSE_PT_.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !395
  %i.mk = ptrtoint ptr %i.mj to i64
  %i.ml = ptrtoint ptr %i.mh to i64
  %i.mm = sub i64 %i.mk, %i.ml
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.mm) #25
  br label %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE7destroyISD_EEvRSE_PT_.exit.i.i.i

_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE7destroyISD_EEvRSE_PT_.exit.i.i.i: ; preds = %bb.az, %.lr.ph.i.i.i
  %i.mn = add nuw i64 %.03.i.i.i, 1               ; 2 uses
  %i.mo = load atomic i64, ptr %i.it monotonic, align 8
  %i.mp = icmp ult i64 %i.mn, %i.mo
  br i1 %i.mp, label %.lr.ph.i.i.i, label %_ZN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEE5clearEv.exit.i, !llvm.loop !723

_ZN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEE5clearEv.exit.i: ; preds = %_ZNSt16allocator_traitsIN3tbb6detail2d123cache_aligned_allocatorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEEEEE7destroyISD_EEvRSE_PT_.exit.i.i.i, %._crit_edge97.i
  store atomic i64 0, ptr %i.it monotonic, align 8
  %i.mq = getelementptr inbounds nuw i8, ptr %39, i64 13088 ; 4 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !769
  %i.ms = getelementptr inbounds nuw i8, ptr %39, i64 13096 ; 5 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !769
  %i.mu = icmp eq ptr %i.mr, %i.mt
  br i1 %i.mu, label %bb.bo, label %bb.bq

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i: ; preds = %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i, %.lr.ph96.i
  %.sroa.5.094.i = phi i64 [ 0, %.lr.ph96.i ], [ %i.qe, %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i ] ; 3 uses
  %i.mv = or i64 %.sroa.5.094.i, 1
  %i.mw = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.mv, i1 true)
  %i.mx = xor i64 %i.mw, 63
  %i.my = load atomic ptr, ptr %i.iv acquire, align 8
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %i.mx
  %i.na = load atomic ptr, ptr %i.mz acquire, align 8
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.na, i64 %.sroa.5.094.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 24
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !398 ; 7 uses
  %i.ne = load i64, ptr %i.jz, align 8, !tbaa !399 ; 2 uses
  %i.nf = add nsw i64 %i.ne, 1
  store i64 %i.nf, ptr %i.jz, align 8, !tbaa !399
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 128
  store i64 %i.ne, ptr %i.ng, align 8, !tbaa !770
  %i.nh = load i8, ptr %i.ka, align 2, !tbaa !771, !range !58, !noundef !59
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  store ptr @_ZSt4cout, ptr %33, align 8, !tbaa !772
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.kc) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.kc, align 8, !tbaa !373
  store ptr null, ptr %i.kd, align 8, !tbaa !778
  store i8 0, ptr %i.ke, align 8, !tbaa !779
  store i8 0, ptr %i.kf, align 1, !tbaa !780
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kg, i8 0, i64 32, i1 false)
  store ptr %i.kh, ptr %i.kb, align 8, !tbaa !373
  %i.nj = load i64, ptr %i.kj, align 8
  %i.nk = getelementptr inbounds i8, ptr %i.kb, i64 %i.nj
  store ptr %i.ki, ptr %i.nk, align 8, !tbaa !373
  store i64 0, ptr %i.kk, align 8, !tbaa !431
  %i.nl = load ptr, ptr %i.kb, align 8, !tbaa !373
  %i.nm = getelementptr i8, ptr %i.nl, i64 -24
  %i.nn = load i64, ptr %i.nm, align 8
  %i.no = getelementptr inbounds i8, ptr %i.kb, i64 %i.nn
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.no, ptr noundef null) #19
  store ptr %i.km, ptr %i.kl, align 8, !tbaa !373
  %i.np = load i64, ptr %i.ko, align 8
  %i.nq = getelementptr inbounds i8, ptr %i.kl, i64 %i.np
  store ptr %i.kn, ptr %i.nq, align 8, !tbaa !373
  %i.nr = load ptr, ptr %i.kl, align 8, !tbaa !373
  %i.ns = getelementptr i8, ptr %i.nr, i64 -24
  %i.nt = load i64, ptr %i.ns, align 8
  %i.nu = getelementptr inbounds i8, ptr %i.kl, i64 %i.nt
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.nu, ptr noundef null) #19
  %i.nv = load i64, ptr %i.kr, align 8
  %i.nw = getelementptr inbounds i8, ptr %i.kb, i64 %i.nv
  store ptr %i.kq, ptr %i.nw, align 8, !tbaa !373
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %i.kb, align 8, !tbaa !373
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.kc, align 8, !tbaa !373
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16)>, ptr %i.kl, align 8, !tbaa !373
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.kt, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ku) #19
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ks, align 8, !tbaa !373
  store i32 24, ptr %i.kv, align 8, !tbaa !781
  store ptr %i.kx, ptr %i.kw, align 8, !tbaa !60
  store i64 0, ptr %i.ky, align 8, !tbaa !62
  store i8 0, ptr %i.kx, align 8, !tbaa !64
  %i.nx = load ptr, ptr %i.kb, align 8, !tbaa !373
  %i.ny = getelementptr i8, ptr %i.nx, i64 -24
  %i.nz = load i64, ptr %i.ny, align 8
  %i.oa = getelementptr inbounds i8, ptr %i.kb, i64 %i.nz
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.oa, ptr noundef nonnull %i.ks) #19
  store i8 0, ptr %i.kz, align 8, !tbaa !439
  %i.ob = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull align 1 dereferenceable(8) @.str.30, i64 noundef 7) #19 ; 0 uses
  %i.oc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE(ptr noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef nonnull align 8 dereferenceable(312) %i.nd) #19 ; 0 uses
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(408) %33)
  store ptr %i.la, ptr %i.kb, align 8, !tbaa !373
  %i.od = load i64, ptr %i.lc, align 8
  %i.oe = getelementptr inbounds i8, ptr %i.kb, i64 %i.od
  store ptr %i.lb, ptr %i.oe, align 8, !tbaa !373
  store ptr %i.ld, ptr %i.kl, align 8, !tbaa !373
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ks, align 8, !tbaa !373
  %i.of = load ptr, ptr %i.kw, align 8, !tbaa !61 ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.kx
  br i1 %i.og, label %_ZN4mold3OutINS_6X86_64EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.oh = load i64, ptr %i.kx, align 8, !tbaa !64
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #25
  br label %_ZN4mold3OutINS_6X86_64EED2Ev.exit.i

_ZN4mold3OutINS_6X86_64EED2Ev.exit.i:             ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ks, align 8, !tbaa !373
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ku) #19
  store ptr %i.kh, ptr %i.kb, align 8, !tbaa !373
  %i.oj = load i64, ptr %i.kj, align 8
  %i.ok = getelementptr inbounds i8, ptr %i.kb, i64 %i.oj
  store ptr %i.ki, ptr %i.ok, align 8, !tbaa !373
  store i64 0, ptr %i.kk, align 8, !tbaa !431
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.kc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4mold3OutINS_6X86_64EED2Ev.exit.i, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nd, i64 120
  %i.om = load i8, ptr %i.ol, align 8, !tbaa !782, !range !58, !noundef !59
  %i.on = trunc nuw i8 %i.om to i1
  br i1 %i.on, label %bb.bc, label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.oo = load ptr, ptr %i.li, align 8, !tbaa !783 ; 4 uses
  %i.op = load ptr, ptr %i.lj, align 8, !tbaa !440
  %.not.i.i46.i = icmp eq ptr %i.oo, %i.op
  br i1 %.not.i.i46.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.nd, ptr %i.oo, align 8, !tbaa !442
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store ptr %i.oq, ptr %i.li, align 8, !tbaa !783
  br label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.or = load ptr, ptr %i.lh, align 8, !tbaa !443 ; 4 uses
  %i.os = ptrtoint ptr %i.oo to i64
  %i.ot = ptrtoint ptr %i.or to i64               ; 2 uses
  %i.ou = sub i64 %i.os, %i.ot                    ; 6 uses
  %i.ov = icmp eq i64 %i.ou, 9223372036854775800
  br i1 %i.ov, label %bb.bf, label %_ZNKSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.be
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.be
  %i.ow = ashr exact i64 %i.ou, 3
  %mul2.i.i.i.i = ashr exact i64 %i.ou, 2
  %62 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i.i, i64 1) ; 2 uses
  %i.ox = icmp ult i64 %62, %i.ow
  %i.oy = call i64 @llvm.umin.i64(i64 %62, i64 1152921504606846975)
  %i.oz = select i1 %i.ox, i64 1152921504606846975, i64 %i.oy ; 2 uses
  %i.pa = shl nuw nsw i64 %i.oz, 3
  %i.pb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pa) #28 ; 4 uses
  %i.pc = getelementptr inbounds i8, ptr %i.pb, i64 %i.ou ; 2 uses
  store ptr %i.nd, ptr %i.pc, align 8, !tbaa !442
  %i.pd = icmp sgt i64 %i.ou, 0
  br i1 %i.pd, label %bb.bg, label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

bb.bg:                                            ; preds = %_ZNKSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pb, ptr align 8 %i.or, i64 %i.ou, i1 false)
  br label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i: ; preds = %bb.bg, %_ZNKSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.or, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  %i.pf = load ptr, ptr %i.lj, align 8, !tbaa !440
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = sub i64 %i.pg, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %i.or, i64 noundef %i.ph) #25
  br label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.bh, %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  store ptr %i.pb, ptr %i.lh, align 8, !tbaa !443
  store ptr %i.pe, ptr %i.li, align 8, !tbaa !783
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.pb, i64 %i.oz
  store ptr %i.pi, ptr %i.lj, align 8, !tbaa !440
  br label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i

bb.bi:                                            ; preds = %bb.bb
  %i.pj = load ptr, ptr %i.lf, align 8, !tbaa !784 ; 4 uses
  %i.pk = load ptr, ptr %i.lg, align 8, !tbaa !444
  %.not.i.i49.i = icmp eq ptr %i.pj, %i.pk
  br i1 %.not.i.i49.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store ptr %i.nd, ptr %i.pj, align 8, !tbaa !445
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store ptr %i.pl, ptr %i.lf, align 8, !tbaa !784
  br label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i

bb.bk:                                            ; preds = %bb.bi
  %i.pm = load ptr, ptr %i.le, align 8, !tbaa !446 ; 4 uses
  %i.pn = ptrtoint ptr %i.pj to i64
  %i.po = ptrtoint ptr %i.pm to i64               ; 2 uses
  %i.pp = sub i64 %i.pn, %i.po                    ; 6 uses
  %i.pq = icmp eq i64 %i.pp, 9223372036854775800
  br i1 %i.pq, label %bb.bl, label %_ZNKSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.bk
  %i.pr = ashr exact i64 %i.pp, 3
  %mul2.i.i.i48.i = ashr exact i64 %i.pp, 2
  %63 = call i64 @llvm.umax.i64(i64 %mul2.i.i.i48.i, i64 1) ; 2 uses
  %i.ps = icmp ult i64 %63, %i.pr
  %i.pt = call i64 @llvm.umin.i64(i64 %63, i64 1152921504606846975)
  %i.pu = select i1 %i.ps, i64 1152921504606846975, i64 %i.pt ; 2 uses
  %i.pv = shl nuw nsw i64 %i.pu, 3
  %i.pw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pv) #28 ; 4 uses
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 %i.pp ; 2 uses
  store ptr %i.nd, ptr %i.px, align 8, !tbaa !445
  %i.py = icmp sgt i64 %i.pp, 0
  br i1 %i.py, label %bb.bm, label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

bb.bm:                                            ; preds = %_ZNKSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pw, ptr align 8 %i.pm, i64 %i.pp, i1 false)
  br label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i: ; preds = %bb.bm, %_ZNKSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.pz = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %.not.i17.i.i.i52.i = icmp eq ptr %i.pm, null
  br i1 %.not.i17.i.i.i52.i, label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  %i.qa = load ptr, ptr %i.lg, align 8, !tbaa !444
  %i.qb = ptrtoint ptr %i.qa to i64
  %i.qc = sub i64 %i.qb, %i.po
  call void @_ZdlPvm(ptr noundef nonnull %i.pm, i64 noundef %i.qc) #25
  br label %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.bn, %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  store ptr %i.pw, ptr %i.le, align 8, !tbaa !446
  store ptr %i.pz, ptr %i.lf, align 8, !tbaa !784
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.pu
  store ptr %i.qd, ptr %i.lg, align 8, !tbaa !444
  br label %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i

_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE9push_backEOS4_.exit.i: ; preds = %_ZNSt6vectorIPN4mold10ObjectFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.bj, %_ZNSt6vectorIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.bd
  %i.qe = add nuw i64 %.sroa.5.094.i, 1           ; 2 uses
  %.not85.i = icmp eq i64 %i.qe, %.sroa.speculated.i.i40.i
  br i1 %.not85.i, label %._crit_edge97.i, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS8_6X86_64EEEENS1_23cache_aligned_allocatorISD_EEEESD_EdeEv.exit.i

bb.bo:                                            ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEE5clearEv.exit.i
  %i.qf = getelementptr inbounds nuw i8, ptr %39, i64 13112
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !785
  %i.qh = getelementptr inbounds nuw i8, ptr %39, i64 13120
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !785
  %i.qj = icmp eq ptr %i.qg, %i.qi
  br i1 %i.qj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %34, ptr noundef nonnull align 8 dereferenceable(14448) %39) #19
  %i.qk = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA15_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %34, ptr noundef nonnull align 1 dereferenceable(15) @.str.31) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %34) #26
  unreachable

bb.bq:                                            ; preds = %bb.bo, %_ZN3tbb6detail2d117concurrent_vectorISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EEE5clearEv.exit.i
  %i.ql = load atomic ptr, ptr %i.ga acquire, align 8 ; 2 uses
  %i.qm = icmp eq ptr %i.ql, %scevgep.i.i.i.i
  %i.qn = select i1 %i.qm, i64 3, i64 64
  br label %bb.br

bb.br:                                            ; preds = %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14delete_segmentEm.exit.i.i.i.i, %bb.bq
  %.07.i.i.i.i = phi i64 [ %i.qn, %bb.bq ], [ %i.qo, %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14delete_segmentEm.exit.i.i.i.i ]
  %i.qo = add nsw i64 %.07.i.i.i.i, -1            ; 8 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qo
  %i.qq = load atomic ptr, ptr %i.qp monotonic, align 8
  %.not6.i.i.i.i = icmp eq ptr %i.qq, null
  br i1 %.not6.i.i.i.i, label %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14delete_segmentEm.exit.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qr = load atomic ptr, ptr %i.ga acquire, align 8 ; 2 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %i.qo ; 2 uses
  %i.qt = load atomic ptr, ptr %i.qs monotonic, align 8 ; 2 uses
  %i.qu = load atomic i64, ptr %i.gb seq_cst, align 8
  %.not.i.i.i.i.i56.i = icmp ult i64 %i.qo, %i.qu
  br i1 %.not.i.i.i.i.i56.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store atomic ptr null, ptr %i.qs monotonic, align 8
  br label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15nullify_segmentEPSt6atomicIPS4_Em.exit.i.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.qv = icmp eq i64 %i.qo, 0
  br i1 %i.qv, label %.preheader.i.i.i.i.i.i, label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15nullify_segmentEPSt6atomicIPS4_Em.exit.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.bu
  %i.qw = load atomic i64, ptr %i.gb seq_cst, align 8
  %.not13.i.i.i.i.i.i = icmp eq i64 %i.qw, 0
  br i1 %.not13.i.i.i.i.i.i, label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15nullify_segmentEPSt6atomicIPS4_Em.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.qy, %.lr.ph.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qr, i64 %.012.i.i.i.i.i.i
  store atomic ptr null, ptr %i.qx monotonic, align 8
  %i.qy = add nuw i64 %.012.i.i.i.i.i.i, 1        ; 2 uses
  %i.qz = load atomic i64, ptr %i.gb seq_cst, align 8
  %i.ra = icmp ult i64 %i.qy, %i.qz
  br i1 %i.ra, label %.lr.ph.i.i.i.i.i.i, label %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15nullify_segmentEPSt6atomicIPS4_Em.exit.i.i.i.i.i, !llvm.loop !724

_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15nullify_segmentEPSt6atomicIPS4_Em.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.bu, %bb.bt
  %i.rb = load ptr, ptr %30, align 8, !tbaa !351
  %i.rc = icmp eq ptr %i.qt, %i.rb
  br i1 %i.rc, label %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14delete_segmentEm.exit.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15nullify_segmentEPSt6atomicIPS4_Em.exit.i.i.i.i.i
  %i.rd = shl nuw i64 1, %i.qo
  %i.re = and i64 %i.rd, -2
  %i.rf = getelementptr inbounds nuw [120 x i8], ptr %i.qt, i64 %i.re
  call void @_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15destroy_segmentEPS4_m(ptr noundef nonnull align 8 dereferenceable(65) %30, ptr noundef %i.rf, i64 noundef %i.qo)
  br label %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14delete_segmentEm.exit.i.i.i.i

_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14delete_segmentEm.exit.i.i.i.i: ; preds = %bb.bv, %_ZN3tbb6detail2d117concurrent_vectorIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EEE15nullify_segmentEPSt6atomicIPS4_Em.exit.i.i.i.i.i, %bb.br
  %.not.i.i.i.i = icmp eq i64 %i.qo, 0
  br i1 %.not.i.i.i.i, label %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14clear_segmentsEv.exit.i.i.i, label %bb.br, !llvm.loop !725

_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14clear_segmentsEv.exit.i.i.i: ; preds = %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14delete_segmentEm.exit.i.i.i.i
  %i.rg = load atomic ptr, ptr %i.ga acquire, align 8 ; 2 uses
  %.not.i1.i.i.i = icmp eq ptr %i.rg, %scevgep.i.i.i.i
  br i1 %.not.i1.i.i.i, label %_ZN4moldL16read_input_filesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_9ReaderJobESaIS7_EE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14clear_segmentsEv.exit.i.i.i
  call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %i.rg) #19
  store atomic ptr %scevgep.i.i.i.i, ptr %i.ga monotonic, align 8
  store atomic ptr null, ptr %scevgep.i.i.i.i monotonic, align 8
  store atomic ptr null, ptr %i.gc monotonic, align 8
  store atomic ptr null, ptr %i.gd monotonic, align 8
  br label %_ZN4moldL16read_input_filesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_9ReaderJobESaIS7_EE.exit

_ZN4moldL16read_input_filesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_9ReaderJobESaIS7_EE.exit: ; preds = %_ZN3tbb6detail2d113segment_tableIN4mold9ReaderJobENS1_23cache_aligned_allocatorIS4_EENS1_17concurrent_vectorIS4_S6_EELm3EE14clear_segmentsEv.exit.i.i.i, %.lr.ph.i.i.i.i.i
  store atomic i64 0, ptr %i.hc monotonic, align 8
  store atomic i64 0, ptr %i.gb monotonic, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #19
  %i.rh = load ptr, ptr %28, align 8, !tbaa !449
  call void @_ZN4mold11TimerRecord4stopEv(ptr noundef nonnull align 8 dereferenceable(145) %i.rh) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.ri = getelementptr inbounds nuw i8, ptr %46, i64 48 ; 2 uses
  store ptr %i.ri, ptr %46, align 8, !tbaa !450
  %i.rj = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 3 uses
  store i64 1, ptr %i.rj, align 8, !tbaa !451
  %i.rk = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %46, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rk, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.rl, align 8, !tbaa !452
  %i.rm = getelementptr inbounds nuw i8, ptr %46, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rm, i8 0, i64 16, i1 false)
  %i.rn = getelementptr inbounds nuw i8, ptr %39, i64 13112 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %46, ptr %10, align 8
  %i.ro = getelementptr inbounds nuw i8, ptr %39, i64 13120 ; 5 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !783 ; 5 uses
  %i.rq = load ptr, ptr %i.rn, align 8, !tbaa !443
  %i.rr = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_9mold_mainIS4_EEiiPPcEUlS6_E_EEEET_SL_SL_T0_St26random_access_iterator_tag(ptr %i.rq, ptr %i.rp, ptr nonnull %10) ; 4 uses
  %i.rs = icmp eq ptr %i.rr, %i.rp
  br i1 %i.rs, label %_ZSt8erase_ifIPN4mold10SharedFileINS0_6X86_64EEESaIS4_EZNS0_9mold_mainIS2_EEiiPPcEUlS4_E_ENSt6vectorIT_T0_E9size_typeERSD_T1_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN4moldL16read_input_filesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_9ReaderJobESaIS7_EE.exit
  %.sroa.07.016.i.i = getelementptr inbounds nuw i8, ptr %i.rr, i64 8 ; 2 uses
  %i.rt = icmp eq ptr %.sroa.07.016.i.i, %i.rp
  br i1 %i.rt, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_9mold_mainIS4_EEiiPPcEUlS6_E_EEEET_SL_SL_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %.lr.ph.i.i
  %.sroa.07.018.i.i = phi ptr [ %.sroa.07.016.i.i, %.lr.ph.i.i ], [ %.sroa.07.0.i.i, %bb.by ] ; 3 uses
  %.sroa.013.017.i.i = phi ptr [ %i.rr, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %bb.by ] ; 3 uses
  %i.rv = load ptr, ptr %.sroa.07.018.i.i, align 8, !tbaa !442 ; 2 uses
  %i.rw = load ptr, ptr %10, align 8, !tbaa !455, !nonnull !59, !align !456 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rv, i64 312
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !61
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 320
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !62
  store i64 %i.sa, ptr %9, align 8
  store ptr %i.ry, ptr %i.ru, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  store ptr %i.rw, ptr %8, align 8, !tbaa !458
  %i.sb = call { ptr, i8 } @_ZNSt10_HashtableISt17basic_string_viewIcSt11char_traitsIcEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIS3_S3_NS5_10_AllocNodeISaINS5_10_Hash_nodeIS3_Lb1EEEEEEEESt4pairINS5_14_Node_iteratorIS3_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.rw, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  %.fca.1.extract.i.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.sb, 1
  %i.sc = trunc i8 %.fca.1.extract.i.i.i.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br i1 %i.sc, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.sd = load ptr, ptr %.sroa.07.018.i.i, align 8, !tbaa !442
  store ptr %i.sd, ptr %.sroa.013.017.i.i, align 8, !tbaa !442
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 8
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.017.i.i, %bb.bw ], [ %i.se, %bb.bx ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.018.i.i, i64 8 ; 2 uses
  %i.sf = icmp eq ptr %.sroa.07.0.i.i, %i.rp
  br i1 %i.sf, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_9mold_mainIS4_EEiiPPcEUlS6_E_EEEET_SL_SL_T0_.exit.i, label %bb.bw, !llvm.loop !726

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold10SharedFileINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZNS2_9mold_mainIS4_EEiiPPcEUlS6_E_EEEET_SL_SL_T0_.exit.i: ; preds = %bb.by, %.preheader.i.i
  %.sroa.013.2.i.i = phi ptr [ %i.rr, %.preheader.i.i ], [ %.sroa.013.1.i.i, %bb.by ] ; 3 uses
  %i.sg = icmp eq ptr %.sroa.013.2.i.i, %i.rp
  %i.sh = load ptr, ptr %i.ro, align 8
  %i.si = icmp eq ptr %.sroa.013.2.i.i, %i.sh
  %or.cond237 = select i1 %i.sg, i1 true, i1 %i.si
end_hunk_0
begin_hunk_1_@_ZN4mold9read_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

._crit_edge.i.i30:                                ; preds = %bb.a, %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.db, ptr %9, align 8, !tbaa !60
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.dc, align 8, !tbaa !62
  store i8 0, ptr %i.db, align 8, !tbaa !64
  call fastcc void @_ZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(32) %9)
  %i.dd = load ptr, ptr %9, align 8, !tbaa !61    ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.db
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %._crit_edge.i.i30
  %i.df = load i64, ptr %i.db, align 8, !tbaa !64
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %10, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.dh = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %10, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.di = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA20_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.dh, ptr noundef nonnull align 1 dereferenceable(20) @.str.7) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %10) #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i30, %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZN4mold6ScriptINS_6X86_64EED2Ev.exit, %_ZNSt6vectorIPN4mold10MappedFileESaIS2_EED2Ev.exit, %_ZN4moldL15new_shared_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE.exit
  ret void
}

declare noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !564
  %i.c = load atomic i8, ptr @_ZGVZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !565

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count) #19
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4mold7CounterC2ESt17basic_string_viewIcSt11char_traitsIcEEl(ptr noundef nonnull align 8 dereferenceable(120) @_ZZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count, i64 11, ptr nonnull @.str.43, i64 noundef 0)
  %i.f = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4mold7CounterD2Ev, ptr nonnull @_ZZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count, ptr nonnull @__dso_handle) #19 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count) #19
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = load i8, ptr @_ZN4mold7Counter7enabledE, align 1, !tbaa !566, !range !58, !noundef !59
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %_ZN4mold7CounterppEi.exit, !prof !63

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d18ets_baseILNS1_18ets_key_usage_typeE1EE12table_lookupERb(ptr noundef nonnull align 8 dereferenceable(104) getelementptr inbounds nuw (i8, ptr @_ZZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5count, i64 16), ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = load i64, ptr %i.i, align 8, !tbaa !44
  %i.k = add nsw i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !44
  br label %_ZN4mold7CounterppEi.exit

_ZN4mold7CounterppEi.exit:                        ; preds = %bb.d, %bb.e
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !564
  call fastcc void @_ZN4moldL24check_file_compatibilityINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.n = call noundef ptr @_ZN4mold13ArenaResource8allocateEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef 992, i64 noundef 8) #19
  %i.o = call noundef ptr @_ZSt12construct_atIN4mold10ObjectFileINS0_6X86_64EEEJRNS0_7ContextIS2_EERPNS0_10MappedFileERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPSI_DpOSJ_(ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3) ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12632
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12688
  %i.r = atomicrmw add ptr %i.q, i64 1 seq_cst, align 8, !noalias !900
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12680 ; 2 uses
  %i.t = load atomic i64, ptr %i.s monotonic, align 8, !noalias !900
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.f, label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit

bb.f:                                             ; preds = %_ZN4mold7CounterppEi.exit
  %i.v = cmpxchg ptr %i.s, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !900 ; 0 uses
  br label %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit

_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit: ; preds = %_ZN4mold7CounterppEi.exit, %bb.f
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3tbb6detail2d113segment_tableISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EENS1_17concurrent_vectorISA_SC_EELm3EE18internal_subscriptILb1EEERSA_m(ptr noundef nonnull align 8 dereferenceable(65) %i.p, i64 noundef %i.r), !noalias !900
  store ptr %i.o, ptr %i.w, align 8, !tbaa !445, !noalias !900
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !567, !range !58, !noundef !59
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !568, !range !58, !noundef !59
  %i.af = xor i8 %i.ae, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit
  %i.ag = phi i8 [ 1, %_ZN3tbb6detail2d117concurrent_vectorISt10unique_ptrIN4mold10ObjectFileINS4_6X86_64EEENS4_18ArenaObjectDeleterIS7_EEENS1_23cache_aligned_allocatorISA_EEE12emplace_backIJRPS7_EEENS1_15vector_iteratorISD_SA_EEDpOT_.exit ], [ 0, %bb.g ], [ %i.af, %bb.h ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 200
  store i8 %i.ag, ptr %i.ah, align 8, !tbaa !555
  call void @_ZN4mold10ObjectFileINS_6X86_64EE13parse_symbolsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992) %i.o, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !556 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !394 ; 3 uses
  %i.am = ptrtoint ptr %i.ak to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.k, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !63

bb.k:                                             ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.aq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #28
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !557 ; 2 uses
  %.pre19 = load ptr, ptr %i.aj, align 8, !tbaa !557
  %.pre20 = ptrtoint ptr %.pre19 to i64
  %.pre21 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i:    ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.i
  %.pre-phi22 = phi i64 [ %.pre21, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.an, %bb.i ]
  %.pre-phi = phi i64 [ %.pre20, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.am, %bb.i ]
  %i.ar = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %i.as = phi ptr [ %i.aq, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.i ] ; 5 uses
  %i.at = sub i64 %.pre-phi, %.pre-phi22          ; 4 uses
  %i.au = icmp sgt i64 %i.at, 4
  br i1 %i.au, label %bb.l, label %bb.m, !prof !558

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.as, ptr align 4 %i.ar, i64 %i.at, i1 false)
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i
  %i.av = icmp eq i64 %i.at, 4
  br i1 %i.av, label %bb.n, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit

bb.n:                                             ; preds = %bb.m
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !546
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !546
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4160
  %i.ay = atomicrmw add ptr %i.ax, i64 1 seq_cst, align 8, !noalias !901
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 2 uses
  %i.ba = load atomic i64, ptr %i.az monotonic, align 8, !noalias !901
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.o, label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit

bb.o:                                             ; preds = %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit
  %i.bc = cmpxchg ptr %i.az, i64 0, i64 1 seq_cst seq_cst, align 8, !noalias !901 ; 0 uses
  br label %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit

_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEED2Ev.exit: ; preds = %bb.o, %_ZNSt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS3_6X86_64EEEEC2IRS2_RPNS3_10ObjectFileIS5_EEQaacl16_S_constructibleITL0__TL0_0_EEntcl10_S_danglesISF_SG_EEEEOT_OT0_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.be = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.bf = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN3tbb6detail2d113segment_tableISt4pairISt6vectorIjSaIjEEPN4mold9InputFileINS7_6X86_64EEEENS1_23cache_aligned_allocatorISC_EENS1_17concurrent_vectorISC_SE_EELm3EE18internal_subscriptILb1EEERSC_m(ptr noundef nonnull align 8 dereferenceable(65) %i.bd, i64 noundef %i.ay), !noalias !901 ; 4 uses
  store ptr %i.as, ptr %i.bg, align 8, !tbaa !394, !noalias !901
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.be, ptr %i.bh, align 8, !tbaa !556, !noalias !901
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !395, !noalias !901
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.o, ptr %i.bj, align 8, !tbaa !398, !noalias !901
  ret void
}

declare void @_ZN4mold20read_archive_membersINS_6X86_64EEESt6vectorIPNS_10MappedFileESaIS4_EERNS_7ContextIT_EES4_(ptr dead_on_unwind writable sret(%"class.std::vector.366") align 8, ptr noundef nonnull align 8 dereferenceable(14448), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold13ReaderContext10next_childEv(ptr dead_on_unwind noalias writable sret(%"struct.mold::ReaderContext") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8
  store i32 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !556  ; 3 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !394  ; 4 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h                       ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.i, 9223372036854775804
  br i1 %i.k, label %bb.c, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, !prof !63

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #28
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !557 ; 2 uses
  %.pre3 = load ptr, ptr %i.d, align 8, !tbaa !557
  %.pre4 = ptrtoint ptr %.pre3 to i64
  %.pre5 = ptrtoint ptr %.pre to i64
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i:    ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i, %bb.a
  %.pre-phi6 = phi i64 [ %.pre5, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.h, %bb.a ]
  %.pre-phi = phi i64 [ %.pre4, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.g, %bb.a ]
  %i.m = phi ptr [ %.pre, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.f, %bb.a ] ; 2 uses
  %i.n = phi ptr [ %i.l, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i.i.i.i.i ], [ null, %bb.a ] ; 8 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !394
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !395
  %i.r = sub i64 %.pre-phi, %.pre-phi6            ; 5 uses
  %i.s = icmp sgt i64 %i.r, 4
  br i1 %i.s, label %bb.d, label %bb.e, !prof !558

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.n, ptr align 4 %i.m, i64 %i.r, i1 false)
  br label %_ZN4mold13ReaderContextC2ERKS0_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.i.i
  %i.t = icmp eq i64 %i.r, 4
  br i1 %i.t, label %bb.f, label %_ZN4mold13ReaderContextC2ERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.m, align 4, !tbaa !546
  store i32 %i.u, ptr %i.n, align 4, !tbaa !546
  br label %_ZN4mold13ReaderContextC2ERKS0_.exit

_ZN4mold13ReaderContextC2ERKS0_.exit:             ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !569  ; 3 uses
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 8, !tbaa !569
  %.not.i.i = icmp eq i64 %i.r, %i.i
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN4mold13ReaderContextC2ERKS0_.exit
  %i.y = getelementptr inbounds i8, ptr %i.n, i64 %i.r ; 2 uses
  store i32 %i.w, ptr %i.y, align 4, !tbaa !546
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store ptr %i.z, ptr %i.o, align 8, !tbaa !556
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.h:                                             ; preds = %_ZN4mold13ReaderContextC2ERKS0_.exit
  %i.aa = icmp eq i64 %i.i, 9223372036854775804
  br i1 %i.aa, label %bb.i, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.ab = lshr exact i64 %i.i, 2
  %mul2.i.i.i = lshr exact i64 %i.i, 1
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %2 = icmp samesign ult i64 %.sroa.speculated.i.i.i.i, %i.ab
  %i.ac = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated.i.i.i.i, i64 2305843009213693951)
  %3 = select i1 %2, i64 2305843009213693951, i64 %i.ac ; 2 uses
  %i.ad = shl nuw nsw i64 %3, 2
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #28 ; 4 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.i ; 2 uses
  store i32 %i.w, ptr %i.af, align 4, !tbaa !546
  %.not = icmp eq ptr %i.e, %i.f
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr align 4 %i.n, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.i) #25
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ae, ptr %i.b, align 8, !tbaa !394
  store ptr %i.ag, ptr %i.o, align 8, !tbaa !556
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %3
  store ptr %i.ah, ptr %i.q, align 8, !tbaa !395
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.g, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ai, align 8, !tbaa !569
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN4moldL19read_archive_memberINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.mold::Warn", align 8        ; 17 uses
  %i.a = tail call noundef i32 @_ZN4mold13get_file_typeINS_6X86_64EEENS_8FileTypeERNS_7ContextIT_EEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %2) #19
  switch i32 %i.a, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit [
    i32 2, label %bb.b
    i32 7, label %bb.i
    i32 8, label %bb.i
    i32 3, label %bb.p
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !60
  %i.c = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !62   ; 8 uses
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = add nuw i64 %i.e, 1                      ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !63

bb.f:                                             ; preds = %bb.e
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.e
  %i.j = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #28 ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !61
  store i64 %i.e, ptr %i.b, align 8, !tbaa !64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.b
  %i.k = phi ptr [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.b, %bb.b ] ; 3 uses
  switch i64 %i.e, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.c, align 1, !tbaa !64
  store i8 %i.l, ptr %i.k, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.g, %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.m, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.e
  store i8 0, ptr %i.n, align 1, !tbaa !64
  call fastcc void @_ZN4moldL15new_object_fileINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(32) %4)
  %i.o = load ptr, ptr %4, align 8, !tbaa !61     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.b
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load i64, ptr %i.b, align 8, !tbaa !64
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.a, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !60
  %i.t = load ptr, ptr %3, align 8, !tbaa !61     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62   ; 8 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.j, label %._crit_edge.i.i10

bb.j:                                             ; preds = %bb.i
  %i.x = icmp slt i64 %i.v, 0
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #26
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.y = add nuw i64 %i.v, 1                      ; 2 uses
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11, !prof !63

bb.m:                                             ; preds = %bb.l
  call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11: ; preds = %bb.l
  %i.aa = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #28 ; 2 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !61
  store i64 %i.v, ptr %i.s, align 8, !tbaa !64
  br label %._crit_edge.i.i10

._crit_edge.i.i10:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11, %bb.i
  %i.ab = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i11 ], [ %i.s, %bb.i ] ; 3 uses
  switch i64 %i.v, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12
  ]

bb.n:                                             ; preds = %._crit_edge.i.i10
  %i.ac = load i8, ptr %i.t, align 1, !tbaa !64
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12

bb.o:                                             ; preds = %._crit_edge.i.i10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12: ; preds = %._crit_edge.i.i10, %bb.n, %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.v, ptr %i.ad, align 8, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  store i8 0, ptr %i.ae, align 1, !tbaa !64
  call fastcc void @_ZN4moldL11new_lto_objINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(32) %5)
  %i.af = load ptr, ptr %5, align 8, !tbaa !61    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.s
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit12
  %i.ah = load i64, ptr %i.s, align 8, !tbaa !64
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZN4mold4WarnINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(416) %6, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 408 ; 6 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58, !noundef !59
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit: ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.an = load ptr, ptr %3, align 8, !tbaa !61
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !62
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef %i.an, i64 noundef %i.ap) #19 ; 0 uses
  %.pre = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.ar = trunc nuw i8 %.pre to i1
  br i1 %i.ar, label %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 1 dereferenceable(2) @.str.48, i64 noundef 1) #19 ; 0 uses
  %.pre17 = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.au = trunc nuw i8 %.pre17 to i1
  br i1 %i.au, label %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit16, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit16: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA2_KcEERS2_OT_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aw = load ptr, ptr %2, align 8, !tbaa !61
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !62
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.aw, i64 noundef %i.ay) #19 ; 0 uses
  %.pre18 = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.ba = trunc nuw i8 %.pre18 to i1
  br i1 %i.ba, label %_ZN4mold4WarnINS_6X86_64EElsIRA47_KcEERS2_OT_.exit, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

_ZN4mold4WarnINS_6X86_64EElsIRA47_KcEERS2_OT_.exit: ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_.exit16
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.bc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, ptr noundef nonnull align 1 dereferenceable(47) @.str.49, i64 noundef 46) #19 ; 0 uses
  %.pre19 = load i8, ptr %i.aj, align 8, !tbaa !571, !range !58
  %i.bd = trunc nuw i8 %.pre19 to i1
  store i8 0, ptr %i.aj, align 8, !tbaa !571
  br i1 %i.bd, label %bb.q, label %_ZN4mold4WarnINS_6X86_64EED2Ev.exit

bb.q:                                             ; preds = %_ZN4mold4WarnINS_6X86_64EElsIRA47_KcEERS2_OT_.exit
  call void @_ZN4mold10SyncStream4emitEv(ptr noundef nonnull align 8 dereferenceable(416) %6)
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bf = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !373
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
end_hunk_1
begin_hunk_2_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISH_EENS1_23cache_aligned_allocatorISK_EEEESK_EEZNSG_9mold_mainINSG_6X86_64EEEiiPPcEUlRSK_E_SK_EEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 128 ; 2 uses
  store ptr null, ptr %i.ke, align 64, !tbaa !661
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ju, i64 136
  %i.kg = load i64, ptr %i.am, align 8, !tbaa !624
  %i.kh = lshr i64 %i.kg, 1                       ; 2 uses
  store i64 %i.kh, ptr %i.am, align 8, !tbaa !624
  store i64 %i.kh, ptr %i.kf, align 8, !tbaa !624
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ju, i64 144
  store i32 2, ptr %i.ki, align 16, !tbaa !622
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ju, i64 148
  %i.kk = load i8, ptr %i.an, align 4, !tbaa !623
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ju, i64 152
  %i.km = load i64, ptr %4, align 8, !tbaa !625
  store i64 %i.km, ptr %i.kl, align 8, !tbaa !625
  %i.kn = sub i8 %i.kk, %i.jt
  store i8 %i.kn, ptr %i.kj, align 4, !tbaa !623
  %i.ko = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3) #19, !inline_history !1369 ; 6 uses
  %i.kp = load ptr, ptr %i.ah, align 64, !tbaa !642
  store ptr %i.kp, ptr %i.ko, align 8, !tbaa !627
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  store i32 2, ptr %i.kq, align 8, !tbaa !543
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ks = load i64, ptr %4, align 8, !tbaa !625
  store i64 %i.ks, ptr %i.kr, align 8, !tbaa !625
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store i8 0, ptr %i.kt, align 8, !tbaa !643
  store ptr %i.ko, ptr %i.ah, align 64, !tbaa !661
  store ptr %i.ko, ptr %i.ke, align 64, !tbaa !661
  %i.ku = load ptr, ptr %3, align 8, !tbaa !644
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(160) %i.ju, ptr noundef nonnull align 8 dereferenceable(128) %i.ku) #19, !inline_history !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.kv = add i8 %i.jo, -1
  %i.kw = add nuw nsw i8 %i.ao, 1
  %i.kx = and i8 %i.kw, 7
  br label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.ky = zext i8 %i.ja to i64                    ; 4 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ky
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !64
  %i.lb = icmp ult i8 %i.la, %i.jm
  br i1 %i.lb, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.z
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ky ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !639
  %i.lf = load i64, ptr %i.lc, align 8, !tbaa !640
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !641
  %i.li = sub i64 %i.lf, %i.lh
  %i.lj = icmp ult i64 %i.le, %i.li
  br i1 %i.lj, label %thread-pre-split25, label %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit

_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge, %bb.z, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %i.lk = phi i8 [ %i.jk, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.ja, %bb.z ], [ %i.ja, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.ll = phi i8 [ %i.jl, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.iz, %bb.z ], [ %i.iz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %.pre-phi = phi i64 [ %.pre, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit_crit_edge ], [ %i.ky, %bb.z ], [ %i.ky, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.lm = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.pre-phi ; 2 uses
  %.sroa.03.0.copyload.i.i.i.i.i10 = load i64, ptr %i.lm, align 8, !tbaa !44 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i11 = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i11, align 8, !tbaa !44 ; 2 uses
  %.not3.i.i.i.i.i.i13 = icmp eq i64 %.sroa.2.0.copyload.i.i.i.i.i12, %.sroa.03.0.copyload.i.i.i.i.i10
  br i1 %.not3.i.i.i.i.i.i13, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit22, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EENS1_23cache_aligned_allocatorIS9_EEEES9_EdeEv.exit.i.i.i.i.i.i15

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EENS1_23cache_aligned_allocatorIS9_EEEES9_EdeEv.exit.i.i.i.i.i.i15: ; preds = %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18
  %.04.i.i.i.i.i.i16 = phi i64 [ %i.mg, %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18 ], [ %.sroa.2.0.copyload.i.i.i.i.i12, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit ] ; 2 uses
  %i.ln = load ptr, ptr %i.ai, align 8, !tbaa !530, !noalias !1375
  %i.lo = load i64, ptr %i.aj, align 32, !tbaa !532, !noalias !1375
  %i.lp = add i64 %i.lo, %.04.i.i.i.i.i.i16       ; 2 uses
  %i.lq = or i64 %i.lp, 1
  %i.lr = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.lq, i1 true)
  %i.ls = xor i64 %i.lr, 63
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lu = load atomic ptr, ptr %i.lt acquire, align 8
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.ls
  %i.lw = load atomic ptr, ptr %i.lv acquire, align 8
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lp
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !564 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 56
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !663
  %.not.i.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i17, label %bb.aa, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18

bb.aa:                                            ; preds = %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EENS1_23cache_aligned_allocatorIS9_EEEES9_EdeEv.exit.i.i.i.i.i.i15
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !664 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i20 = icmp eq ptr %i.mc, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i20, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  %i.me = load i64, ptr %i.md, align 8, !tbaa !1374 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i21 = icmp eq i64 %i.me, 0
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i21, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.mf = call i32 @madvise(ptr noundef nonnull %i.mc, i64 noundef %i.me, i32 noundef 4) #19 ; 0 uses
  br label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18: ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EENS1_23cache_aligned_allocatorIS9_EEEES9_EdeEv.exit.i.i.i.i.i.i15
  %i.mg = add i64 %.04.i.i.i.i.i.i16, 1           ; 2 uses
  %.not.i.i.i.i.i.i19 = icmp eq i64 %i.mg, %.sroa.03.0.copyload.i.i.i.i.i10
  br i1 %.not.i.i.i.i.i.i19, label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit22, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteIS6_EENS1_23cache_aligned_allocatorIS9_EEEES9_EdeEv.exit.i.i.i.i.i.i15, !llvm.loop !1367

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit22: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i18, %_ZN3tbb6detail2d119auto_partition_type16check_for_demandINS1_9start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISD_EENS1_23cache_aligned_allocatorISG_EEEESG_EEZNSC_9mold_mainINSC_6X86_64EEEiiPPcEUlRSG_E_SG_EEKNS1_16auto_partitionerEEEEEbRT_.exit
  %i.mh = add i8 %i.ll, -1
  %i.mi = add i8 %i.lk, 7
  %i.mj = and i8 %i.mi, 7
  br label %thread-pre-split25

thread-pre-split25:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit22
  %i.mk = phi i8 [ %i.mh, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit22 ], [ %i.iz, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ] ; 2 uses
  %i.ml = phi i8 [ %i.mj, %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit22 ], [ %i.ja, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.mm = icmp eq i8 %i.mk, 0
  br i1 %i.mm, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %.thread, %thread-pre-split25
  %i.mn = phi i8 [ %i.kx, %.thread ], [ %i.ao, %thread-pre-split25 ]
  %i.mo = phi i8 [ %i.kv, %.thread ], [ %i.mk, %thread-pre-split25 ]
  %i.mp = phi i8 [ %i.jp, %.thread ], [ %i.ml, %thread-pre-split25 ]
  %i.mq = load ptr, ptr %3, align 8, !tbaa !644   ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 15
  %i.ms = load atomic i8, ptr %i.mr monotonic, align 1
  %i.mt = icmp eq i8 %i.ms, -1
  br i1 %i.mt, label %bb.ae, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

bb.ae:                                            ; preds = %bb.ad
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mq, i64 16
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !64
  br label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %bb.ad, %bb.ae
  %.0.i.i = phi ptr [ %i.mv, %bb.ae ], [ %i.mq, %bb.ad ]
  %i.mw = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i) #19
  br i1 %i.mw, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit, label %bb.h, !llvm.loop !1372

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit: ; preds = %thread-pre-split25, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit

_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperINS1_15vector_iteratorINS1_17concurrent_vectorISt10unique_ptrIN4mold10MappedFileESt14default_deleteISB_EENS1_23cache_aligned_allocatorISE_EEEESE_EEZNSA_9mold_mainINSA_6X86_64EEEiiPPcEUlRSE_E_SE_EEKNS1_16auto_partitionerEE8run_bodyERS4_.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4mold9mold_mainINS3_6X86_64EEEiiPPcEUlRSt10unique_ptrINS3_10MappedFileESt14default_deleteIS9_EEE_E4callISD_NS1_11feeder_implISE_SC_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIT_Efp0_EEcvv_EERKSE_OSJ_PT0_.exit.i.i.i.i.i.i, %bb.c, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold7CounterC2ESt17basic_string_viewIcSt11char_traitsIcEEl(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 %1, ptr %2, i64 noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !44
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EEE, i64 16), ptr %i.a, align 8, !tbaa !373
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = tail call noundef ptr @_ZN3tbb6detail2r115allocate_memoryEm(i64 noundef 16) #19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.e, align 8, !tbaa !666
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d113callback_leafINS1_21construct_by_exemplarIlEEEE, i64 16), ptr %i.d, align 8, !tbaa !373
  store ptr %i.d, ptr %i.c, align 8, !tbaa !675
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr inttoptr (i64 1 to ptr), ptr %i.f, align 8, !tbaa !676
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %scevgep.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.h, i8 0, i64 17, i1 false)
  store atomic ptr %scevgep.i.i.i.i, ptr %i.g monotonic, align 8
  store atomic ptr null, ptr %scevgep.i.i.i.i monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic ptr null, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store atomic ptr null, ptr %i.j monotonic, align 8
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4mold7CounterC1ESt17basic_string_viewIcSt11char_traitsIcEElE2mu) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #26
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 8), align 8, !tbaa !1376 ; 4 uses
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 16), align 8, !tbaa !36
  %.not.i.i1 = icmp eq ptr %i.l, %i.m
  br i1 %.not.i.i1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  store ptr %0, ptr %i.l, align 8, !tbaa !1378
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 8), align 8, !tbaa !1376
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.o = load ptr, ptr @_ZN4mold7Counter9instancesE, align 8, !tbaa !35 ; 4 uses
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3
  %mul2.i.i.i = ashr exact i64 %i.r, 2
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.u = icmp ult i64 %4, %i.t
  %i.v = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 2 uses
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #28 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.r ; 2 uses
  store ptr %0, ptr %i.z, align 8, !tbaa !1378
  %i.aa = icmp sgt i64 %i.r, 0
  br i1 %i.aa, label %bb.f, label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %i.o, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN4mold7CounterESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 16), align 8, !tbaa !36
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = sub i64 %i.ad, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.ae) #25
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN4mold7CounterESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.y, ptr @_ZN4mold7Counter9instancesE, align 8, !tbaa !35
  store ptr %i.ab, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 8), align 8, !tbaa !1376
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @_ZN4mold7Counter9instancesE, i64 16), align 8, !tbaa !36
  br label %_ZNSt6vectorIPN4mold7CounterESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIPN4mold7CounterESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN4mold7CounterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.ag = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN4mold7CounterC1ESt17basic_string_viewIcSt11char_traitsIcEElE2mu) #19 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold7CounterD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EEE, i64 16), ptr %i.a, align 8, !tbaa !373
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !675  ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !373
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #19, !inline_history !677
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.h, null
  br i1 %.not6.i.i, label %_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !587
  store atomic ptr %i.j, ptr %i.g monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !588
  %i.m = shl i64 16, %i.l
  %i.n = add nuw i64 %i.m, 16
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !373
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull %i.i, i64 noundef %i.n) #19, !inline_history !17
  %i.r = load atomic ptr, ptr %i.g monotonic, align 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EED2Ev.exit, label %.lr.ph.i.i

_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EED2Ev.exit: ; preds = %.lr.ph.i.i, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i64 0, ptr %i.s monotonic, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN3tbb6detail2d113segment_tableINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EENS1_17concurrent_vectorIS7_S9_EELm3EE5clearEv(ptr noundef nonnull align 8 dereferenceable(65) %i.t), !inline_history !677
  ret void
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZN4moldL24check_file_compatibilityINS_6X86_64EEEvRNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %5 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = tail call { i64, ptr } @_ZN4mold16get_machine_typeINS_6X86_64EEESt17basic_string_viewIcSt11char_traitsIcEERNS_7ContextIT_EERNS_13ReaderContextEPNS_10MappedFileE(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) #19 ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 4 uses
  store i64 %i.b, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.f = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.g = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA23_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.f, ptr noundef nonnull align 1 dereferenceable(23) @.str.44) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3376 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8, !tbaa !44
  %i.i = icmp eq i64 %i.b, %.sroa.0.0.copyload
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.d

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.c
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3384
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !38
  %bcmp.i = tail call i32 @bcmp(ptr %i.d, ptr %.sroa.2.0.copyload, i64 %i.b)
  %i.j = icmp eq i32 %bcmp.i, 0
  br i1 %i.j, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(14448) %0) #19
  %i.k = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.l = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA27_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.k, ptr noundef nonnull align 1 dereferenceable(27) @.str.45)
  %i.m = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
  %i.n = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA22_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.m, ptr noundef nonnull align 1 dereferenceable(22) @.str.46)
  %i.o = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %5) #26
  unreachable

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  ret void
}

declare void @_ZN4mold10ObjectFileINS_6X86_64EE13parse_symbolsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992), ptr noundef nonnull align 8 dereferenceable(14448)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE12create_localEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"class.tbb::detail::d1::vector_iterator.751", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = atomicrmw add ptr %i.b, i64 1 seq_cst, align 8, !noalias !1383 ; 2 uses
  %i.d = add i64 %i.c, 1
  call void @_ZN3tbb6detail2d117concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS7_EEE13internal_growIJEEENS1_15vector_iteratorISA_S7_EEmmDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.tbb::detail::d1::vector_iterator.751") align 8 %1, ptr noundef nonnull align 8 dereferenceable(65) %i.a, i64 noundef %i.c, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !680  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !681
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !682  ; 2 uses
  %i.k = or i64 %i.j, 1
  %i.l = call noundef range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = xor i64 %i.l, 63
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load atomic ptr, ptr %i.n acquire, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.m
  %i.q = load atomic ptr, ptr %i.p acquire, align 8
  %i.r = getelementptr inbounds nuw [128 x i8], ptr %i.q, i64 %i.j
  br label %_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit

_ZNK3tbb6detail2d115vector_iteratorINS1_17concurrent_vectorINS0_2d06paddedINS1_11ets_elementIlEELm128EEENS1_23cache_aligned_allocatorIS8_EEEES8_EdeEv.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.r, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !675  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !373
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %.0.i) #19
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i8 1, ptr %i.x, align 8, !tbaa !1386
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE12create_arrayEm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = add i64 %1, 7
  %i.b = and i64 %i.a, -8
  %i.c = tail call noundef ptr @_ZN3tbb6detail2r122cache_aligned_allocateEm(i64 noundef %i.b) #19
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EE10free_arrayEPvm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN3tbb6detail2r124cache_aligned_deallocateEPv(ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN3tbb6detail2d126enumerable_thread_specificIlNS1_23cache_aligned_allocatorIlEELNS1_18ets_key_usage_typeE1EEE, i64 16), ptr %0, align 8, !tbaa !373
end_hunk_2
