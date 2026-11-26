Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FileTransform?download=true
inline.NumInlined: 1682
inline.NumDeleted: 724
begin_hunk_0_@_ZN16OpenColorIO_v2_5lsERSoRKNS_13FileTransformE:bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !21
  %i.x = getelementptr i8, ptr %i.w, i64 -24
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds i8, ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !68
  %i.ac = or i32 %i.ab, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.z, i32 noundef %i.ac)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ad = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #31
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.v, i64 noundef %i.ad) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21: ; preds = %bb.d, %bb.e
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.6, i64 noundef 6) ; 0 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 3 uses
  %.not.i22 = icmp eq ptr %i.ai, null
  br i1 %.not.i22, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.aj = load ptr, ptr %0, align 8, !tbaa !21
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !68
  %i.ap = or i32 %i.ao, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.am, i32 noundef %i.ap)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit21
  %i.aq = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #31
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.ai, i64 noundef %i.aq) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23: ; preds = %bb.f, %bb.g
  %i.as = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 2 uses
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, label %bb.h

bb.h:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.av = load i8, ptr %i.au, align 1, !tbaa !39
  %.not18 = icmp eq i8 %i.av, 0
  br i1 %.not18, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.7, i64 noundef 8) ; 0 uses
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 3 uses
  %.not.i24 = icmp eq ptr %i.az, null
  br i1 %.not.i24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %0, align 8, !tbaa !21
  %i.bb = getelementptr i8, ptr %i.ba, i64 -24
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !68
  %i.bg = or i32 %i.bf, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.bd, i32 noundef %i.bg)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25

bb.k:                                             ; preds = %bb.i
  %i.bh = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.az) #31
  %i.bi = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef %i.bh) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %bb.k, %bb.j, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit23
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !40 ; 2 uses
  %.not19 = icmp eq i32 %i.bl, 1
  br i1 %.not19, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, label %bb.l

bb.l:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.8, i64 noundef 12) ; 0 uses
  %i.bn = tail call noundef ptr @_ZN16OpenColorIO_v2_516CDLStyleToStringENS_8CDLStyleE(i32 noundef %i.bl) ; 3 uses
  %.not.i26 = icmp eq ptr %i.bn, null
  br i1 %.not.i26, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = load ptr, ptr %0, align 8, !tbaa !21
  %i.bp = getelementptr i8, ptr %i.bo, i64 -24
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = getelementptr inbounds i8, ptr %0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !68
  %i.bu = or i32 %i.bt, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.br, i32 noundef %i.bu)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27

bb.n:                                             ; preds = %bb.l
  %i.bv = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #31
  %i.bw = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bn, i64 noundef %i.bv) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %bb.n, %bb.m, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.bx = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.9, i64 noundef 1) ; 0 uses
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZN16OpenColorIO_v2_526TransformDirectionToStringENS_18TransformDirectionE(i32 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN16OpenColorIO_v2_521InterpolationToStringENS_13InterpolationE(i32 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN16OpenColorIO_v2_516CDLStyleToStringENS_8CDLStyleE(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_510getLutDataERKNS_6ConfigERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt13_Ios_Openmode(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.22", align 8 ; 5 uses
  %5 = alloca %"class.std::vector.25", align 8    ; 8 uses
  %6 = alloca %"class.std::shared_ptr.22", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZNK16OpenColorIO_v2_56Config16getConfigIOProxyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.22") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.a = load ptr, ptr %4, align 8, !tbaa !138
  %.not = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 8 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !24
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #31, !inline_history !2
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #31, !inline_history !2
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.g, %bb.e ], [ %i.q, %bb.f ]
  %i.r = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.r, label %bb.g, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #31
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.not, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNK16OpenColorIO_v2_56Config16getConfigIOProxyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.22") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %6, align 8, !tbaa !138    ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !47
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t)
          to label %_ZNSt6vectorIhSaIhEEaSEOS1_.exit unwind label %bb.q

_ZNSt6vectorIhSaIhEEaSEOS1_.exit:                 ; preds = %bb.i
  %i.x = load ptr, ptr %5, align 8, !tbaa !140    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !141  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !142 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 8 uses
  %.not.i.i28 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i28, label %bb.x, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !24
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !2
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31, !inline_history !2
  br label %bb.x

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i29 = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i31 = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i31, 1
  br i1 %i.as, label %bb.o, label %bb.x, !prof !46

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #31
  br label %bb.x

bb.p:                                             ; preds = %bb.h
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.au, %bb.q ], [ %i.at, %bb.p ] ; 3 uses
  %.012 = extractvalue { ptr, i32 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.av = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #31
  %i.aw = icmp eq i32 %.012, %i.av
  br i1 %i.aw, label %bb.s, label %_ZNSt6vectorIhSaIhEED2Ev.exit39

bb.s:                                             ; preds = %bb.r
  %.013 = extractvalue { ptr, i32 } %.pn, 0
  %i.ax = call ptr @__cxa_begin_catch(ptr %.013) #31 ; 0 uses
  %i.ay = invoke noundef zeroext i1 @_ZN8pystring2os4path5isabsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %i.ay, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_rethrow() #32
          to label %bb.aq unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit39 unwind label %bb.ap

bb.w:                                             ; preds = %bb.t
  invoke void @__cxa_end_catch()
          to label %.thread unwind label %bb.ac

bb.x:                                             ; preds = %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i30, %bb.k, %_ZNSt6vectorIhSaIhEEaSEOS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  %i.ba = icmp eq ptr %i.x, %i.z
  br i1 %i.ba, label %.thread, label %bb.z

.thread:                                          ; preds = %bb.w, %bb.x
  %.sroa.14.065 = phi ptr [ %i.ab, %bb.x ], [ null, %bb.w ] ; 3 uses
  %.sroa.11.062 = phi ptr [ %i.z, %bb.x ], [ null, %bb.w ]
  %.sroa.11.062.a = phi ptr [ %i.x, %bb.x ], [ null, %bb.w ] ; 3 uses
  %i.bb = invoke noundef zeroext i1 @_ZN8pystring2os4path5isabsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %.thread
  br i1 %i.bb, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sroa.14.063 = phi ptr [ %.sroa.14.065, %bb.y ], [ %i.ab, %bb.x ] ; 4 uses
  %.sroa.11.061 = phi ptr [ %.sroa.11.062, %bb.y ], [ %i.z, %bb.x ]
  %.sroa.046.058 = phi ptr [ %.sroa.11.062.a, %bb.y ], [ %i.x, %bb.x ] ; 6 uses
  %i.bc = invoke noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #30
          to label %bb.aa unwind label %bb.ad     ; 6 uses

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.bc)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = ptrtoint ptr %.sroa.11.061 to i64
  %i.bf = ptrtoint ptr %.sroa.046.058 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %.sroa.046.058, i64 noundef %i.bg)
          to label %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit unwind label %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit35 ; 0 uses

_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.ab
  store ptr %i.bc, ptr %0, align 8, !tbaa !144
  br label %bb.af

bb.ac:                                            ; preds = %.thread, %bb.w
  %.sroa.046.1 = phi ptr [ %.sroa.11.062.a, %.thread ], [ null, %bb.w ]
  %.sroa.14.1 = phi ptr [ %.sroa.14.065, %.thread ], [ null, %bb.w ]
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ad:                                            ; preds = %bb.z
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.aa
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 392) #34
  br label %bb.ah

_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit35: ; preds = %bb.ab
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #31, !inline_history !135
  br label %bb.ah

bb.af:                                            ; preds = %bb.y, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.sroa.14.064 = phi ptr [ %.sroa.14.063, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ %.sroa.14.065, %bb.y ]
  %.sroa.046.059 = phi ptr [ %.sroa.046.058, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ %.sroa.11.062.a, %bb.y ] ; 3 uses
  %i.bp = phi i1 [ false, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit ], [ true, %bb.y ]
  %.not.i.i.i36 = icmp eq ptr %.sroa.046.059, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIhSaIhEED2Ev.exit37, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bq = ptrtoint ptr %.sroa.14.064 to i64
  %i.br = ptrtoint ptr %.sroa.046.059 to i64
  %i.bs = sub i64 %i.bq, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.059, i64 noundef %i.bs) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit37

_ZNSt6vectorIhSaIhEED2Ev.exit37:                  ; preds = %bb.af, %bb.ag
  br i1 %i.bp, label %bb.aj, label %bb.ao

bb.ah:                                            ; preds = %bb.ad, %bb.ae, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit35, %bb.ac
  %.sroa.046.2 = phi ptr [ %.sroa.046.058, %bb.ae ], [ %.sroa.046.1, %bb.ac ], [ %.sroa.046.058, %bb.ad ], [ %.sroa.046.058, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit35 ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.063, %bb.ae ], [ %.sroa.14.1, %bb.ac ], [ %.sroa.14.063, %bb.ad ], [ %.sroa.14.063, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit35 ]
  %.merged26 = phi { ptr, i32 } [ %i.bk, %bb.ae ], [ %i.bi, %bb.ac ], [ %i.bj, %bb.ad ], [ %i.bl, %_ZNSt10unique_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit35 ] ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.sroa.046.2, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIhSaIhEED2Ev.exit39, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bt = ptrtoint ptr %.sroa.14.2 to i64
  %i.bu = ptrtoint ptr %.sroa.046.2 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.2, i64 noundef %i.bv) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit39

bb.aj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit37, %_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bw = call noalias noundef nonnull dereferenceable(520) ptr @_Znwm(i64 noundef 520) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  invoke void @_ZN16OpenColorIO_v2_58Platform13filenameToUTFERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %3)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  store ptr %i.bw, ptr %0, align 8, !tbaa !70
  %i.bx = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !39
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.ao

bb.am:                                            ; preds = %bb.aj
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.an:                                            ; preds = %bb.ak
  %i.cd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ce = load ptr, ptr %7, align 8, !tbaa !47    ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.an
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !39
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %bb.am
  %.pn24 = phi { ptr, i32 } [ %i.cc, %bb.am ], [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.cd, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 520) #34
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit39

bb.ao:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit39:                  ; preds = %bb.v, %bb.r, %bb.ai, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42
  %.merged = phi { ptr, i32 } [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42 ], [ %.merged26, %bb.ai ], [ %.merged26, %bb.ah ], [ %.pn, %bb.r ], [ %i.az, %bb.v ]
  resume { ptr, i32 } %.merged

bb.ap:                                            ; preds = %bb.v
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #33
  unreachable

bb.aq:                                            ; preds = %bb.u
  unreachable
}

declare void @_ZNK16OpenColorIO_v2_56Config16getConfigIOProxyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.22") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_513ConfigIOProxyELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !24
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !0
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !0
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !46

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
end_hunk_0
