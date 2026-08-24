Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/ogg_file?download=true
inline.NumInlined: 227
inline.NumDeleted: 115
begin_hunk_0_@_ZN5sound11RAIIOggFile13getDecodeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pre283 = load i64, ptr %i.n, align 8, !tbaa !9
  br label %_ZNSt8optionalIN5sound17OggFileDecodeInfoEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit

_ZNSt8optionalIN5sound17OggFileDecodeInfoEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.oa = phi i64 [ %i.nw, %bb.di ], [ %.pre283, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ]
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.oa, ptr %i.ob, align 8, !tbaa !9
  store ptr %i.m, ptr %3, align 8, !tbaa !17
  store i64 0, ptr %i.n, align 8, !tbaa !9
  store i8 0, ptr %i.m, align 8, !tbaa !18
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.oc, ptr noundef nonnull align 8 dereferenceable(28) %i.od, i64 28, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.noexc227.invoke, %.noexc216.invoke, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit172, %bb.da, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit143, %bb.ch, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit115, %bb.bo, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit99, %bb.ax, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit84, %bb.al, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit69, %bb.y, %.noexc184, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %bb.i, %_ZNSt8optionalIN5sound17OggFileDecodeInfoEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit
  %.sink335 = phi i8 [ 0, %.noexc216.invoke ], [ 0, %bb.da ], [ 0, %.noexc227.invoke ], [ 0, %.noexc184 ], [ 0, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit172 ], [ 0, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit143 ], [ 1, %_ZNSt8optionalIN5sound17OggFileDecodeInfoEEC2IS1_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_IS6_ISt10in_place_tSD_EESt16is_constructibleIS1_JS9_EESt14is_convertibleIS9_S1_EEEbE4typeELb1EEEOS9_.exit ], [ 0, %bb.i ], [ 0, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit ], [ 0, %bb.y ], [ 0, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit69 ], [ 0, %bb.al ], [ 0, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit84 ], [ 0, %bb.ax ], [ 0, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit99 ], [ 0, %bb.bo ], [ 0, %_ZN11StreamProxylsIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit115 ], [ 0, %bb.ch ]
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %.sink335, ptr %i.oe, align 8, !tbaa !81
  %i.of = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.og = icmp eq ptr %i.of, %i.m
  br i1 %i.og, label %_ZN5sound17OggFileDecodeInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %.critedge
  %i.oh = load i64, ptr %i.m, align 8, !tbaa !18
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oi) #16
  br label %_ZN5sound17OggFileDecodeInfoD2Ev.exit

_ZN5sound17OggFileDecodeInfoD2Ev.exit:            ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.dj:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.t, %bb.bj, %bb.bk, %bb.ag, %bb.s
  %.pn43.pn = phi { ptr, i32 } [ %i.bt, %bb.s ], [ %i.bu, %bb.t ], [ %i.dh, %bb.ag ], [ %i.gy, %bb.bj ], [ %i.gz, %bb.bk ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.oj = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ok = icmp eq ptr %i.oj, %i.m
  br i1 %i.ok, label %_ZN5sound17OggFileDecodeInfoD2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178: ; preds = %bb.dj
  %i.ol = load i64, ptr %i.m, align 8, !tbaa !18
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oj, i64 noundef %i.om) #16
  br label %_ZN5sound17OggFileDecodeInfoD2Ev.exit180

_ZN5sound17OggFileDecodeInfoD2Ev.exit180:         ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn43.pn
}

declare i32 @__gxx_personality_v0(...)

declare i64 @ov_streams(ptr noundef) local_unnamed_addr #7

declare ptr @ov_info(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i64 @ov_seekable(ptr noundef) local_unnamed_addr #7

declare i64 @ov_pcm_total(ptr noundef, i32 noundef) local_unnamed_addr #7

declare double @ov_time_total(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: uwtable
define dso_local void @_ZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjj(ptr dead_on_unwind noalias writable sret(%"struct.sound::RAIIALSoundBuffer") align 4 %0, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.m = tail call i64 @ov_pcm_tell(ptr noundef nonnull %i.l) ; 2 uses
  %i.n = zext i32 %3 to i64                       ; 3 uses
  %.not = icmp eq i64 %i.m, %i.n
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @ov_pcm_seek(ptr noundef nonnull %i.l, i64 noundef %i.n)
  %.not65 = icmp eq i32 %i.o, 0
  br i1 %.not65, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.c, %bb.d
  %i.p = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25, !nonnull !38, !align !39 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !83
  %.v.i = select i1 %i.t, i64 976, i64 984
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.v.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.9, ptr %i.j, align 8, !tbaa !43
  %i.v = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !44   ; 5 uses
  %.not.i75 = icmp eq ptr %i.w, null
  br i1 %.not.i75, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.e

bb.e:                                             ; preds = %_ZTW13warningstream.exit
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr i8, ptr %i.x, i64 -24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !45
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.w)
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !44
  br label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit: ; preds = %bb.e, %bb.f
  %i.ae = phi ptr [ %.pre.i, %bb.f ], [ %i.w, %bb.e ]
  %i.af = load ptr, ptr %2, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !9
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef %i.af, i64 noundef %i.ah) ; 0 uses
  %.pr = load ptr, ptr %i.u, align 8, !tbaa !44   ; 5 uses
  %.not.i76 = icmp eq ptr %.pr, null
  br i1 %.not.i76, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.g

bb.g:                                             ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit
  %i.aj = load ptr, ptr %.pr, align 8, !tbaa !40
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.pr, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !45
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr)
  %.pre.i77 = load ptr, ptr %i.u, align 8, !tbaa !44 ; 2 uses
  %.pre = load ptr, ptr %.pre.i77, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre239 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aq = phi i64 [ %.pre239, %bb.h ], [ %i.al, %bb.g ]
  %i.ar = phi ptr [ %.pre.i77, %bb.h ], [ %.pr, %bb.g ] ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 240
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !52 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %bb.j, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt16__throw_bad_castv() #18
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !58
  %.not.i1.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 67
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.au)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = call noundef signext i8 %i.bb(ptr noundef nonnull align 8 dereferenceable(570) %i.au, i8 noundef signext 10), !inline_history !84
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.k, %bb.l
  %.0.i.i.i = phi i8 [ %i.ay, %bb.k ], [ %i.bc, %bb.l ]
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i8 noundef signext %.0.i.i.i)
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %_ZTW13warningstream.exit, %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  store i32 0, ptr %0, align 4, !tbaa !85
  br label %bb.cl

bb.m:                                             ; preds = %bb.b, %bb.a
  %.057 = phi i64 [ %i.m, %bb.a ], [ %i.n, %bb.b ]
  %i.bf = sub i32 %4, %3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !71 ; 2 uses
  %i.bj = mul i64 %i.bi, %i.bg                    ; 5 uses
  %i.bk = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #17
  %.not232 = icmp eq i64 %i.bj, 0
  br i1 %.not232, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.bl = mul i64 %i.bi, %.057
  %.not.i97 = icmp eq ptr @_ZTH10infostream, null
  %i.bm = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %.thread
  %.048231 = phi i64 [ 0, %.lr.ph ], [ %i.ht, %.thread ] ; 3 uses
  %.051230 = phi i64 [ %i.bl, %.lr.ph ], [ %.1, %.thread ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.048231
  %i.bp = sub nuw i64 %i.bj, %.048231
  %i.bq = trunc i64 %i.bp to i32
  %i.br = invoke i64 @ov_read(ptr noundef nonnull %i.l, ptr noundef nonnull %i.bo, i32 noundef %i.bq, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %i.k)
          to label %bb.o unwind label %bb.aj      ; 4 uses

bb.o:                                             ; preds = %bb.n
  %i.bs = icmp slt i64 %i.br, 1
  br i1 %i.bs, label %bb.p, label %bb.al

bb.p:                                             ; preds = %bb.o
  switch i64 %i.br, label %bb.t [
    i64 0, label %"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit"
    i64 -3, label %bb.q
    i64 -137, label %bb.r
    i64 -131, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  br label %"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit"

bb.r:                                             ; preds = %bb.p
  br label %"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit"

bb.s:                                             ; preds = %bb.p
  br label %"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit"

bb.t:                                             ; preds = %bb.p
  br label %"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit"

"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit": ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t
  %.0.i = phi ptr [ @.str.21, %bb.t ], [ @.str.20, %bb.s ], [ @.str.18, %bb.q ], [ @.str.19, %bb.r ], [ @.str.17, %bb.p ] ; 2 uses
  %i.bt = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #17
  %.not.i78 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i78, label %_ZTW13warningstream.exit79, label %bb.u

bb.u:                                             ; preds = %"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit"
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit79

_ZTW13warningstream.exit79:                       ; preds = %"_ZZN5sound11RAIIOggFile10loadBufferERKNS_17OggFileDecodeInfoEjjENK3$_0clEv.exit", %bb.u
  %i.bu = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !25, !nonnull !38, !align !39 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bv)
          to label %.noexc unwind label %bb.ak, !inline_history !87

.noexc:                                           ; preds = %_ZTW13warningstream.exit79
  %.v.i80 = select i1 %i.by, i64 976, i64 984
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.v.i80 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.10, ptr %i.i, align 8, !tbaa !43
  %i.ca = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.v unwind label %bb.ak      ; 0 uses

bb.v:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !44 ; 5 uses
  %.not.i82 = icmp eq ptr %i.cb, null
  br i1 %.not.i82, label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40
  %i.cd = getelementptr i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds i8, ptr %i.cb, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !45
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cb)
          to label %.noexc84 unwind label %bb.ak

.noexc84:                                         ; preds = %bb.x
  %.pre.i83 = load ptr, ptr %i.bz, align 8, !tbaa !44
  br label %bb.y

bb.y:                                             ; preds = %.noexc84, %bb.w
  %i.cj = phi ptr [ %.pre.i83, %.noexc84 ], [ %i.cb, %bb.w ]
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull %.0.i, i64 noundef %i.bt)
          to label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit unwind label %bb.ak ; 0 uses

_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit: ; preds = %bb.v, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.1, ptr %i.h, align 8, !tbaa !43
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.z unwind label %bb.ak      ; 4 uses

bb.z:                                             ; preds = %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !44 ; 5 uses
  %.not.i87 = icmp eq ptr %i.cm, null
  br i1 %.not.i87, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !40
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !45
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cm)
          to label %.noexc89 unwind label %bb.ak

.noexc89:                                         ; preds = %bb.ab
  %.pre.i88 = load ptr, ptr %i.cl, align 8, !tbaa !44
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc89, %bb.aa
  %i.cu = phi ptr [ %.pre.i88, %.noexc89 ], [ %i.cm, %bb.aa ]
  %i.cv = load ptr, ptr %2, align 8, !tbaa !17
  %i.cw = load i64, ptr %i.bn, align 8, !tbaa !9
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cv, i64 noundef %i.cw)
          to label %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit91 unwind label %bb.ak ; 0 uses

_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit91: ; preds = %bb.ac
  %.pr213 = load ptr, ptr %i.cl, align 8, !tbaa !44 ; 5 uses
  %.not.i92 = icmp eq ptr %.pr213, null
  br i1 %.not.i92, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.sink.split, label %bb.ad

bb.ad:                                            ; preds = %_ZN11StreamProxylsIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERS_OT_.exit91
  %i.cy = load ptr, ptr %.pr213, align 8, !tbaa !40
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8            ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.pr213, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !45
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %.pr213)
          to label %.noexc94 unwind label %bb.ak

.noexc94:                                         ; preds = %bb.ae
  %.pre.i93 = load ptr, ptr %i.cl, align 8, !tbaa !44 ; 2 uses
  %.pre246 = load ptr, ptr %.pre.i93, align 8, !tbaa !40
  %.phi.trans.insert247 = getelementptr i8, ptr %.pre246, i64 -24
  %.pre248 = load i64, ptr %.phi.trans.insert247, align 8
  br label %bb.af

bb.af:                                            ; preds = %.noexc94, %bb.ad
  %i.df = phi i64 [ %.pre248, %.noexc94 ], [ %i.da, %bb.ad ]
  %i.dg = phi ptr [ %.pre.i93, %.noexc94 ], [ %.pr213, %bb.ad ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 %i.df
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 240
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !52 ; 6 uses
  %.not.i.i.i159 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i159, label %bb.ag, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt16__throw_bad_castv() #18
          to label %.noexc163 unwind label %bb.ak

.noexc163:                                        ; preds = %bb.ag
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160: ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !58
  %.not.i1.i.i161 = icmp eq i8 %i.dl, 0
  br i1 %.not.i1.i.i161, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 67
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !18
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ai:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i160
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dj)
          to label %.noexc164 unwind label %bb.ak

.noexc164:                                        ; preds = %bb.ai
  %i.do = load ptr, ptr %i.dj, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = invoke noundef signext i8 %i.dq(ptr noundef nonnull align 8 dereferenceable(570) %i.dj, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ak, !inline_history !64

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc164, %bb.ah
  %.0.i.i.i162 = phi i8 [ %i.dn, %bb.ah ], [ %i.dr, %.noexc164 ]
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, i8 noundef signext %.0.i.i.i162)
          to label %.noexc166 unwind label %bb.ak

.noexc166:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
end_hunk_0
