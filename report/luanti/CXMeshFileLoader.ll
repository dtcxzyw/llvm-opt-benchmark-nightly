inline.NumInlined: 2642
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5scene16CXMeshFileLoader24parseDataObjectAnimationEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.fa = load ptr, ptr %4, align 8, !tbaa !42
  store ptr %i.fa, ptr %i.b, align 8, !tbaa !254
  %i.fb = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIPKcEENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS5_ESC_IS5_NSt5decayISF_E4typeEEEEESt16is_constructibleIS5_JSF_EESt13is_assignableIRS5_SF_EEERS6_E4typeEOSF_(ptr noundef nonnull align 8 dereferenceable(40) %i.ez, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.aq unwind label %bb.ar     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.az

bb.as:                                            ; preds = %bb.aq, %bb.aj
  %.0 = phi ptr [ %i.eq, %bb.aj ], [ %i.ez, %bb.aq ] ; 6 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.0, i64 136 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ff = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !337
  %i.fh = load ptr, ptr %i.fe, align 8, !tbaa !337
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !337
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !337 ; 2 uses
  %i.fl = ptrtoint ptr %i.fg to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = getelementptr inbounds i8, ptr %i.fk, i64 %i.fn
  invoke void @_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvNSC_IPS7_S9_EET_SI_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(96) %i.fd, ptr %i.fo, ptr %i.fh, ptr %i.fj)
          to label %.noexc67 unwind label %bb.an

.noexc67:                                         ; preds = %bb.as
  %i.fp = getelementptr inbounds nuw i8, ptr %.0, i64 168 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0, i64 176
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !338
  %i.fs = load ptr, ptr %i.x, align 8, !tbaa !338
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !338
  %i.fv = load ptr, ptr %i.fp, align 8, !tbaa !338 ; 2 uses
  %i.fw = ptrtoint ptr %i.fr to i64
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %i.fv, i64 %i.fy
  invoke void @_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core10quaternionEE5FrameESaIS6_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEEEvNSB_IPS6_S8_EET_SH_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(25) %i.fp, ptr %i.fz, ptr %i.fs, ptr %i.fu)
          to label %.noexc68 unwind label %bb.an

.noexc68:                                         ; preds = %.noexc67
  %i.ga = getelementptr inbounds nuw i8, ptr %.0, i64 200 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0, i64 208
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !337
  %i.gd = load ptr, ptr %i.z, align 8, !tbaa !337
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !337
  %i.gg = load ptr, ptr %i.ga, align 8, !tbaa !337 ; 2 uses
  %i.gh = ptrtoint ptr %i.gc to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = getelementptr inbounds i8, ptr %i.gg, i64 %i.gj
  invoke void @_ZNSt6vectorIN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEE5FrameESaIS7_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS7_S9_EEEEvNSC_IPS7_S9_EET_SI_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(25) %i.ga, ptr %i.gk, ptr %i.gd, ptr %i.gf)
          to label %_ZN5scene11SkinnedMesh4Keys6appendERKS1_.exit unwind label %bb.an

bb.at:                                            ; preds = %_ZN4core6stringIcED2Ev.exit57.jt5
  invoke void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.90, i32 noundef 2)
          to label %_ZN5scene11SkinnedMesh4Keys6appendERKS1_.exit unwind label %bb.ak

_ZN5scene11SkinnedMesh4Keys6appendERKS1_.exit:    ; preds = %_ZN4core6stringIcED2Ev.exit57.jt1, %.noexc68, %bb.at
  %.218 = phi i1 [ true, %.noexc68 ], [ true, %bb.at ], [ false, %_ZN4core6stringIcED2Ev.exit57.jt1 ]
  %i.gl = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.aj
  br i1 %i.gm, label %_ZN4core6stringIcED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70: ; preds = %_ZN5scene11SkinnedMesh4Keys6appendERKS1_.exit
  %i.gn = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.go = add i64 %i.gn, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.go) #29
  br label %_ZN4core6stringIcED2Ev.exit72

_ZN4core6stringIcED2Ev.exit72:                    ; preds = %_ZN5scene11SkinnedMesh4Keys6appendERKS1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.gq = load ptr, ptr %i.z, align 8, !tbaa !339 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEED2Ev.exit.i.i, label %bb.au

bb.au:                                            ; preds = %_ZN4core6stringIcED2Ev.exit72
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !340
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gv) #29
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEED2Ev.exit.i.i

_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEED2Ev.exit.i.i: ; preds = %bb.au, %_ZN4core6stringIcED2Ev.exit72
  %i.gw = load ptr, ptr %i.x, align 8, !tbaa !341 ; 3 uses
  %.not.i.i.i.i1.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i1.i.i, label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEED2Ev.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEED2Ev.exit.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !342
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gw to i64
  %i.hb = sub i64 %i.gz, %i.ha
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hb) #29
  br label %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEED2Ev.exit.i.i

_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEED2Ev.exit.i.i: ; preds = %bb.av, %_ZN5scene11SkinnedMesh7ChannelIN4core8vector3dIfEEED2Ev.exit.i.i
  %i.hc = load ptr, ptr %i.gp, align 8, !tbaa !339 ; 3 uses
  %.not.i.i.i.i2.i.i = icmp eq ptr %i.hc, null
  br i1 %.not.i.i.i.i2.i.i, label %_ZN5scene11SkinnedMesh4KeysD2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEED2Ev.exit.i.i
  %i.hd = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !340
  %i.hf = ptrtoint ptr %i.he to i64
  %i.hg = ptrtoint ptr %i.hc to i64
  %i.hh = sub i64 %i.hf, %i.hg
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hh) #29
  br label %_ZN5scene11SkinnedMesh4KeysD2Ev.exit.i

_ZN5scene11SkinnedMesh4KeysD2Ev.exit.i:           ; preds = %bb.aw, %_ZN5scene11SkinnedMesh7ChannelIN4core10quaternionEED2Ev.exit.i.i
  %i.hi = load ptr, ptr %i.v, align 8, !tbaa !144 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN5scene11SkinnedMesh4KeysD2Ev.exit.i
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !142
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hi to i64
  %i.hn = sub i64 %i.hl, %i.hm
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef %i.hn) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.ax, %_ZN5scene11SkinnedMesh4KeysD2Ev.exit.i
  %i.ho = load i8, ptr %i.s, align 8, !tbaa !292, !range !83, !noundef !84
  %i.hp = trunc nuw i8 %i.ho to i1
  store i8 0, ptr %i.s, align 8, !tbaa !292
  br i1 %i.hp, label %bb.ay, label %_ZN5scene11SkinnedMesh6SJointD2Ev.exit

bb.ay:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.hq = load ptr, ptr %3, align 8, !tbaa !42    ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZN5scene11SkinnedMesh6SJointD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ay
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !17
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #29
  br label %_ZN5scene11SkinnedMesh6SJointD2Ev.exit

_ZN5scene11SkinnedMesh6SJointD2Ev.exit:           ; preds = %bb.ay, %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ba

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.ar, %bb.an, %bb.ak, %_ZN4core6stringIcED2Ev.exit60
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn21.pn, %_ZN4core6stringIcED2Ev.exit60 ], [ %i.er, %bb.ak ], [ %.pn24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66 ], [ %i.ey, %bb.an ], [ %i.fc, %bb.ar ]
  %i.hv = load ptr, ptr %4, align 8, !tbaa !42    ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.aj
  br i1 %i.hw, label %_ZN4core6stringIcED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73: ; preds = %bb.az
  %i.hx = load i64, ptr %i.aj, align 8, !tbaa !17
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #29
  br label %_ZN4core6stringIcED2Ev.exit75

_ZN4core6stringIcED2Ev.exit75:                    ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN5scene11SkinnedMesh6SJointD2Ev(ptr noundef nonnull align 8 dead_on_return(394) dereferenceable(394) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.bb

bb.ba:                                            ; preds = %_ZN5scene11SkinnedMesh6SJointD2Ev.exit, %_ZN4core6stringIcED2Ev.exit
  %.319 = phi i1 [ %.218, %_ZN5scene11SkinnedMesh6SJointD2Ev.exit ], [ false, %_ZN4core6stringIcED2Ev.exit ]
  ret i1 %.319

bb.bb:                                            ; preds = %_ZN4core6stringIcED2Ev.exit75, %_ZN4core6stringIcED2Ev.exit33
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %_ZN4core6stringIcED2Ev.exit75 ], [ %i.m, %_ZN4core6stringIcED2Ev.exit33 ]
  resume { ptr, i32 } %.pn26.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5scene16CXMeshFileLoader27parseDataObjectAnimationKeyEPNS_11SkinnedMesh6SJointE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef %1) local_unnamed_addr #15 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 5 uses
  %3 = alloca %"class.core::string", align 8      ; 5 uses
  %4 = alloca %"class.core::string", align 8      ; 5 uses
  %5 = alloca %"class.core::string", align 8      ; 5 uses
  %6 = alloca %"class.core::string", align 8      ; 9 uses
  %7 = alloca %"class.core::string", align 8      ; 9 uses
  %8 = alloca %"class.core::string", align 8      ; 9 uses
  %9 = alloca %"class.core::string", align 8      ; 8 uses
  %10 = alloca %"class.core::string", align 8     ; 9 uses
  %11 = alloca %"class.core::string", align 8     ; 13 uses
  %12 = alloca %"class.core::string", align 8     ; 9 uses
  %13 = alloca %"class.core::CMatrix4", align 4   ; 13 uses
  %14 = alloca %"class.core::string", align 8     ; 8 uses
  %15 = alloca %"class.core::string", align 8     ; 9 uses
  %i.a = tail call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader20readHeadOfDataObjectEPN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef null)
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.91, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = load i32, ptr %i.b, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.c)
  %i.d = load ptr, ptr %6, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.d, i32 noundef 2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %6, align 8, !tbaa !42     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !17
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.critedge.sink.split

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %6, align 8, !tbaa !42     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4core6stringIcED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !17
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #29
  br label %_ZN4core6stringIcED2Ev.exit65

_ZN4core6stringIcED2Ev.exit65:                    ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.aq

bb.e:                                             ; preds = %bb.a
  %i.p = tail call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 3 uses
  %i.q = icmp ugt i32 %i.p, 4
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.92, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.s = load i32, ptr %i.r, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.s)
  %i.t = load ptr, ptr %7, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.t, i32 noundef 2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %7, align 8, !tbaa !42     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZN4core6stringIcED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !17
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #29
  br label %_ZN4core6stringIcED2Ev.exit68

_ZN4core6stringIcED2Ev.exit68:                    ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = load ptr, ptr %7, align 8, !tbaa !42    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZN4core6stringIcED2Ev.exit71, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %bb.h
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !17
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #29
  br label %_ZN4core6stringIcED2Ev.exit71

_ZN4core6stringIcED2Ev.exit71:                    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.aq

bb.i:                                             ; preds = %bb.e
  %i.af = tail call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 5 uses
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br i1 %i.ag, label %bb.j, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !238, !range !83, !noundef !84
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %.critedge62, label %sub_0.i

sub_0.i:                                          ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.ak = load ptr, ptr %5, align 8, !tbaa !42    ; 4 uses
  %i.al = load i8, ptr %i.ak, align 1
  %.not.i = icmp eq i8 %i.al, 59
  br i1 %.not.i, label %sub_1.i, label %.tail.i

sub_1.i:                                          ; preds = %sub_0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp eq i8 %i.an, 0
  br label %.tail.i

.tail.i:                                          ; preds = %sub_1.i, %sub_0.i
  %.not5.i.i = phi i1 [ false, %sub_0.i ], [ %i.ao, %sub_1.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ak, %i.ap
  br i1 %i.aq, label %_ZN4core6stringIcED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.tail.i
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !17
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.as) #29
  br label %_ZN4core6stringIcED2Ev.exit.i

_ZN4core6stringIcED2Ev.exit.i:                    ; preds = %.tail.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br i1 %.not5.i.i, label %.critedge62, label %bb.k

bb.k:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !241
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1
  store ptr %i.av, ptr %i.at, align 8, !tbaa !241
  br label %.critedge62

.lr.ph:                                           ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %16 = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 36
  %i.bg = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  switch i32 %i.p, label %default.unreachable [
    i32 0, label %.lr.ph.split.us
    i32 4, label %.lr.ph.split.us223.preheader
    i32 3, label %.lr.ph.split.us223.preheader
    i32 2, label %.lr.ph.split.us215.split.us
    i32 1, label %.lr.ph.split.us215.split
  ]

.lr.ph.split.us223.preheader:                     ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us223

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %.051212.us = phi i32 [ %i.ce, %bb.o ], [ %i.p, %.lr.ph ]
  %i.bk = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.bl = uitofp i32 %i.bk to float
  %i.bm = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.not54.us = icmp eq i32 %i.bm, 4
  br i1 %.not54.us, label %bb.l, label %.split.us

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.bn = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 3 uses
  %17 = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 3 uses
  %i.bo = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 3 uses
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %19 = insertelement <2 x float> %18, float %i.bo, i64 1
  %20 = fneg <2 x float> %19
  %i.bp = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0) ; 3 uses
  %21 = insertelement <2 x float> poison, float %i.bp, i64 0
  %22 = insertelement <2 x float> %21, float %i.bn, i64 1
  %23 = fneg <2 x float> %22
  %i.bq = call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForTwoFollowingSemicolonsEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  br i1 %i.bq, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.94, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.br = load i32, ptr %i.ay, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %9, i32 noundef %i.br)
  %i.bs = load ptr, ptr %9, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.bs, i32 noundef 2)
          to label %bb.n unwind label %.split214.us

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.bj
  br i1 %i.bu, label %_ZN4core6stringIcED2Ev.exit80.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.us: ; preds = %bb.n
  %i.bv = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #29
  br label %_ZN4core6stringIcED2Ev.exit80.us

_ZN4core6stringIcED2Ev.exit80.us:                 ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78.us
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.o

bb.o:                                             ; preds = %_ZN4core6stringIcED2Ev.exit80.us, %bb.l
  %i.bx = fmul float %i.bo, %i.bo
  %i.by = call float @llvm.fmuladd.f32(float %17, float %17, float %i.bx)
  %i.bz = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.by)
  %i.ca = call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bz)
  %i.cb = fpext float %i.ca to double
  %sqrt.i.us = call double @llvm.sqrt.f64(double %i.cb)
  %i.cc = fdiv double 1.000000e+00, %sqrt.i.us
  %i.cd = fptrunc double %i.cc to float
  %.sroa.0193.4.vec.insert200.us = insertelement <2 x float> poison, float %i.cd, i64 0
  %24 = shufflevector <2 x float> %.sroa.0193.4.vec.insert200.us, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %25 = fmul <2 x float> %24, %20
  %26 = fmul <2 x float> %24, %23
  call void @_ZN5scene18SkinnedMeshBuilder14addRotationKeyEPNS_11SkinnedMesh6SJointEfN4core10quaternionE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %1, float noundef %i.bl, <2 x float> %25, <2 x float> %26)
  %i.ce = add nuw i32 %.051212.us, 1              ; 2 uses
  %exitcond237.not = icmp eq i32 %i.ce, %i.af
  br i1 %exitcond237.not, label %.critedge62, label %.lr.ph.split.us, !llvm.loop !343

.split214.us:                                     ; preds = %bb.m
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %9, align 8, !tbaa !42    ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bj
  br i1 %i.ch, label %_ZN4core6stringIcED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81

.lr.ph.split.us215.split.us:                      ; preds = %.lr.ph, %bb.s
  %.051212.us216.us = phi i32 [ %i.cv, %bb.s ], [ 0, %.lr.ph ]
  %i.ci = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.cj = uitofp i32 %i.ci to float
  %i.ck = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.not53.us.us = icmp eq i32 %i.ck, 3
  br i1 %.not53.us.us, label %bb.p, label %.split219.us

bb.p:                                             ; preds = %.lr.ph.split.us215.split.us
  %i.cl = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.sroa.0185.0.vec.insert189.us.us = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cm = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.sroa.0185.4.vec.insert191.us.us = insertelement <2 x float> %.sroa.0185.0.vec.insert189.us.us, float %i.cm, i64 1
  %i.cn = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.co = call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForTwoFollowingSemicolonsEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  br i1 %i.co, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.96, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.cp = load i32, ptr %i.ay, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.cp)
  %i.cq = load ptr, ptr %11, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.cq, i32 noundef 2)
          to label %bb.r unwind label %.split221.us.split.us

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %11, align 8, !tbaa !42   ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bi
  br i1 %i.cs, label %_ZN4core6stringIcED2Ev.exit92.us.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.us.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.us.us: ; preds = %bb.r
  %i.ct = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #29
  br label %_ZN4core6stringIcED2Ev.exit92.us.us

_ZN4core6stringIcED2Ev.exit92.us.us:              ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.s

bb.s:                                             ; preds = %_ZN4core6stringIcED2Ev.exit92.us.us, %bb.p
  call void @_ZN5scene18SkinnedMeshBuilder14addPositionKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %1, float noundef %i.cj, <2 x float> %.sroa.0185.4.vec.insert191.us.us, float %i.cn)
  %i.cv = add nuw i32 %.051212.us216.us, 1        ; 2 uses
  %exitcond235.not = icmp eq i32 %i.cv, %i.af
  br i1 %exitcond235.not, label %.critedge62, label %.lr.ph.split.us215.split.us, !llvm.loop !343

.split221.us.split.us:                            ; preds = %bb.q
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.split221.us

.lr.ph.split.us215.split:                         ; preds = %.lr.ph, %bb.w
  %.051212.us216 = phi i32 [ %i.dk, %bb.w ], [ 0, %.lr.ph ]
  %i.cx = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.cy = uitofp i32 %i.cx to float
  %i.cz = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.not53.us = icmp eq i32 %i.cz, 3
  br i1 %.not53.us, label %bb.t, label %.split219.us

bb.t:                                             ; preds = %.lr.ph.split.us215.split
  %i.da = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.sroa.0185.0.vec.insert189.us = insertelement <2 x float> poison, float %i.da, i64 0
  %i.db = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.sroa.0185.4.vec.insert191.us = insertelement <2 x float> %.sroa.0185.0.vec.insert189.us, float %i.db, i64 1
  %i.dc = call noundef float @_ZN5scene16CXMeshFileLoader9readFloatEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.dd = call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader30checkForTwoFollowingSemicolonsEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  br i1 %i.dd, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.96, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.de = load i32, ptr %i.ay, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.de)
  %i.df = load ptr, ptr %11, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.df, i32 noundef 2)
          to label %bb.v unwind label %.split221.us.split

bb.v:                                             ; preds = %bb.u
  %i.dg = load ptr, ptr %11, align 8, !tbaa !42   ; 2 uses
  %i.dh = icmp eq ptr %i.dg, %i.bi
  br i1 %i.dh, label %_ZN4core6stringIcED2Ev.exit92.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.us: ; preds = %bb.v
  %i.di = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.dj = add i64 %i.di, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dj) #29
  br label %_ZN4core6stringIcED2Ev.exit92.us

_ZN4core6stringIcED2Ev.exit92.us:                 ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90.us
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZN4core6stringIcED2Ev.exit92.us, %bb.t
  call void @_ZN5scene18SkinnedMeshBuilder11addScaleKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %1, float noundef %i.cy, <2 x float> %.sroa.0185.4.vec.insert191.us, float %i.dc)
  %i.dk = add nuw i32 %.051212.us216, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.dk, %i.af
  br i1 %exitcond.not, label %.critedge62, label %.lr.ph.split.us215.split, !llvm.loop !343

.split221.us.split:                               ; preds = %bb.u
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.split221.us

.lr.ph.split.us223:                               ; preds = %.lr.ph.split.us223.preheader, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us
  %.051212.us224 = phi i32 [ %i.hp, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us ], [ 0, %.lr.ph.split.us223.preheader ]
  %i.dm = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.dn = uitofp i32 %i.dm to float               ; 2 uses
  %i.do = call noundef i32 @_ZN5scene16CXMeshFileLoader7readIntEv(ptr noundef nonnull align 8 dereferenceable(162) %0)
  %.not.us = icmp eq i32 %i.do, 16
  br i1 %.not.us, label %bb.x, label %.split227.us

bb.x:                                             ; preds = %.lr.ph.split.us223
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.dp = call noundef zeroext i1 @_ZN5scene16CXMeshFileLoader10readMatrixERN4core8CMatrix4IfEE(ptr noundef nonnull align 8 dereferenceable(162) %0, ptr noundef nonnull align 4 dereferenceable(64) %13) ; 0 uses
  %i.dq = load i8, ptr %i.ah, align 8, !tbaa !238, !range !83, !noundef !84
  %i.dr = trunc nuw i8 %i.dq to i1
  br i1 %i.dr, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us, label %sub_0.i102.us

sub_0.i102.us:                                    ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.ds = load ptr, ptr %4, align 8, !tbaa !42    ; 4 uses
  %i.dt = load i8, ptr %i.ds, align 1
  %.not.i103.us = icmp eq i8 %i.dt, 59
  br i1 %.not.i103.us, label %sub_1.i110.us, label %.tail.i104.us

sub_1.i110.us:                                    ; preds = %sub_0.i102.us
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = icmp eq i8 %i.dv, 0
  br label %.tail.i104.us

.tail.i104.us:                                    ; preds = %sub_1.i110.us, %sub_0.i102.us
  %.not5.i.i105.us = phi i1 [ false, %sub_0.i102.us ], [ %i.dw, %sub_1.i110.us ]
  %i.dx = icmp eq ptr %i.ds, %i.aw
  br i1 %i.dx, label %_ZN4core6stringIcED2Ev.exit.i107.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106.us: ; preds = %.tail.i104.us
  %i.dy = load i64, ptr %i.aw, align 8, !tbaa !17
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dz) #29
  br label %_ZN4core6stringIcED2Ev.exit.i107.us

_ZN4core6stringIcED2Ev.exit.i107.us:              ; preds = %.tail.i104.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i106.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br i1 %.not5.i.i105.us, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us, label %bb.y

bb.y:                                             ; preds = %_ZN4core6stringIcED2Ev.exit.i107.us
  %i.ea = load ptr, ptr %i.ax, align 8, !tbaa !241
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -1
  store ptr %i.eb, ptr %i.ax, align 8, !tbaa !241
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.98, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ec = load i32, ptr %i.ay, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %i.ec)
  %i.ed = load ptr, ptr %14, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ed, i32 noundef 2)
          to label %bb.z unwind label %.split229.us

bb.z:                                             ; preds = %bb.y
  %i.ee = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.az
  br i1 %i.ef, label %_ZN4core6stringIcED2Ev.exit114.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112.us: ; preds = %bb.z
  %i.eg = load i64, ptr %i.az, align 8, !tbaa !17
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #29
  br label %_ZN4core6stringIcED2Ev.exit114.us

_ZN4core6stringIcED2Ev.exit114.us:                ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112.us
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us

_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us: ; preds = %_ZN4core6stringIcED2Ev.exit114.us, %_ZN4core6stringIcED2Ev.exit.i107.us, %bb.x
  %27 = load float, ptr %13, align 4, !tbaa !95, !noalias !344 ; 6 uses
  %i.ei = load float, ptr %16, align 4, !tbaa !95, !noalias !344 ; 4 uses
  %i.ej = load float, ptr %i.be, align 4, !tbaa !95, !noalias !344 ; 6 uses
  %i.ek = load float, ptr %i.bf, align 4, !tbaa !95, !noalias !344 ; 4 uses
  %28 = load float, ptr %i.bb, align 4, !tbaa !95, !noalias !344 ; 4 uses
  %i.el = load <2 x float>, ptr %i.bd, align 4, !tbaa !95, !noalias !344 ; 7 uses
  %i.em = load float, ptr %i.bg, align 4, !tbaa !95, !noalias !344 ; 4 uses
  %i.en = load float, ptr %i.bh, align 4, !tbaa !95, !noalias !344 ; 6 uses
  %i.eo = fadd float %27, %i.ej
  %i.ep = fadd float %i.eo, %i.en
  %i.eq = fadd float %i.ep, 1.000000e+00          ; 2 uses
  %i.er = fcmp ogt float %i.eq, 0.000000e+00
  br i1 %i.er, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us
  %i.es = fcmp ogt float %27, %i.ej
  %i.et = fcmp ogt float %27, %i.en
  %or.cond.i.us = and i1 %i.es, %i.et
  br i1 %or.cond.i.us, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eu = fcmp ogt float %i.ej, %i.en
  br i1 %i.eu, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ev = fadd float %i.en, 1.000000e+00
  %i.ew = fsub float %i.ev, %27
  %i.ex = fsub float %i.ew, %i.ej
  %i.ey = call float @sqrtf(float noundef %i.ex) #28
  %i.ez = fmul float %i.ey, 2.000000e+00
  %29 = extractelement <2 x float> %i.el, i64 1
  %30 = fadd float %28, %29
  %31 = fadd float %i.ek, %i.em
  %i.fa = extractelement <2 x float> %i.el, i64 0
  %i.fb = fsub float %i.ei, %i.fa
  %i.fc = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.fb, i64 0
  %32 = insertelement <4 x float> %i.fc, float %30, i64 1
  %33 = insertelement <4 x float> %32, float %31, i64 2 ; 2 uses
  %i.fd = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ff = fdiv <4 x float> %33, %i.fe
  %i.fg = fmul <4 x float> %33, %i.fe
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

bb.ad:                                            ; preds = %bb.ab
  %i.fi = fadd float %i.ej, 1.000000e+00
  %i.fj = fsub float %i.fi, %27
  %i.fk = fsub float %i.fj, %i.en
  %i.fl = call float @sqrtf(float noundef %i.fk) #28
  %i.fm = fmul float %i.fl, 2.000000e+00
  %34 = insertelement <2 x float> poison, float %i.ei, i64 0
  %35 = insertelement <2 x float> %34, float %i.ek, i64 1
  %36 = insertelement <2 x float> %i.el, float %i.em, i64 1
  %37 = fadd <2 x float> %35, %36
  %38 = extractelement <2 x float> %i.el, i64 1
  %39 = fsub float %38, %28
  %i.fn = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %39, i64 0
  %40 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 poison>
  %41 = shufflevector <4 x float> %i.fn, <4 x float> %40, <4 x i32> <i32 0, i32 4, i32 2, i32 6> ; 2 uses
  %i.fo = insertelement <4 x float> poison, float %i.fm, i64 0
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fq = fdiv <4 x float> %41, %i.fp
  %i.fr = fmul <4 x float> %41, %i.fp
  %i.fs = shufflevector <4 x float> %i.fq, <4 x float> %i.fr, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

bb.ae:                                            ; preds = %bb.aa
  %i.ft = fadd float %27, 1.000000e+00
  %i.fu = fsub float %i.ft, %i.ej
  %i.fv = fsub float %i.fu, %i.en
  %i.fw = call float @sqrtf(float noundef %i.fv) #28
  %.scalar = fmul float %i.fw, 2.000000e+00
  %i.fx = insertelement <2 x float> <float poison, float 2.500000e-01>, float %.scalar, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %42 = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fz = insertelement <2 x float> %42, float %28, i64 1
  %43 = fadd <2 x float> %i.fz, %i.el
  %i.ga = fsub float %i.ek, %i.em
  %i.gb = insertelement <4 x float> poison, float %i.ga, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fy, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.gd = shufflevector <2 x float> %43, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ge = shufflevector <4 x float> %i.gc, <4 x float> %i.gd, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gf = fdiv <4 x float> %i.ge, %i.fy
  %i.gg = fmul <4 x float> %i.ge, %i.fy
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

bb.af:                                            ; preds = %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit111.thread.us
  %i.gi = call float @sqrtf(float noundef %i.eq) #28
  %i.gj = extractelement <2 x float> %i.el, i64 0
  %i.gk = fsub float %i.ei, %i.gj
  %i.gl = extractelement <2 x float> %i.el, i64 1
  %44 = fsub float %i.gl, %28
  %i.gm = fsub float %i.ek, %i.em
  %i.gn = fmul float %i.gi, 2.000000e+00
  %i.go = insertelement <4 x float> poison, float %i.gn, i64 0 ; 2 uses
  %i.gp = insertelement <4 x float> %i.go, float %i.gm, i64 1
  %i.gq = insertelement <4 x float> %i.gp, float %44, i64 2
  %i.gr = insertelement <4 x float> %i.gq, float %i.gk, i64 3 ; 2 uses
  %i.gs = shufflevector <4 x float> %i.go, <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %i.gt = fmul <4 x float> %i.gr, %i.gs
  %i.gu = fdiv <4 x float> %i.gr, %i.gs
  %i.gv = shufflevector <4 x float> %i.gt, <4 x float> %i.gu, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us

_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.gw = phi <4 x float> [ %i.gv, %bb.af ], [ %i.gh, %bb.ae ], [ %i.fs, %bb.ad ], [ %i.fh, %bb.ac ] ; 7 uses
  %foldExtExtBinop307 = fmul <4 x float> %i.gw, %i.gw
  %i.gx = extractelement <4 x float> %foldExtExtBinop307, i64 2
  %i.gy = extractelement <4 x float> %i.gw, i64 1 ; 2 uses
  %i.gz = call float @llvm.fmuladd.f32(float %i.gy, float %i.gy, float %i.gx)
  %i.ha = extractelement <4 x float> %i.gw, i64 3 ; 2 uses
  %i.hb = call float @llvm.fmuladd.f32(float %i.ha, float %i.ha, float %i.gz)
  %i.hc = extractelement <4 x float> %i.gw, i64 0 ; 2 uses
  %i.hd = call float @llvm.fmuladd.f32(float %i.hc, float %i.hc, float %i.hb)
  %i.he = fpext float %i.hd to double
  %sqrt.i.i.us = call double @llvm.sqrt.f64(double %i.he)
  %i.hf = fdiv double 1.000000e+00, %sqrt.i.i.us
  %i.hg = fptrunc double %i.hf to float
  %i.hh = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.hi = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hk = fmul <2 x float> %i.hh, %i.hj
  %i.hl = shufflevector <4 x float> %i.gw, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.hm = fmul <2 x float> %i.hl, %i.hj
  call void @_ZN5scene18SkinnedMeshBuilder14addRotationKeyEPNS_11SkinnedMesh6SJointEfN4core10quaternionE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %1, float noundef %i.dn, <2 x float> %i.hk, <2 x float> %i.hm)
  %i.hn = load <4 x float>, ptr %i.bc, align 4    ; 2 uses
  %i.ho = extractelement <4 x float> %i.hn, i64 2
  %.sroa.0.4.vec.insert.i.us = shufflevector <4 x float> %i.hn, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  call void @_ZN5scene18SkinnedMeshBuilder14addPositionKeyEPNS_11SkinnedMesh6SJointEfN4core8vector3dIfEE(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef %1, float noundef %i.dn, <2 x float> %.sroa.0.4.vec.insert.i.us, float %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.hp = add nuw i32 %.051212.us224, 1           ; 2 uses
  %exitcond236.not = icmp eq i32 %i.hp, %i.af
  br i1 %exitcond236.not, label %.critedge62, label %.lr.ph.split.us223, !llvm.loop !343

.split229.us:                                     ; preds = %bb.y
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %i.hr = load ptr, ptr %14, align 8, !tbaa !42   ; 2 uses
  %i.hs = icmp eq ptr %i.hr, %i.az
  br i1 %i.hs, label %_ZN4core6stringIcED2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

default.unreachable:                              ; preds = %.lr.ph
  unreachable

.split.us:                                        ; preds = %.lr.ph.split.us
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.93, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.ht = load i32, ptr %i.ay, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef %i.ht)
  %i.hu = load ptr, ptr %8, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.hu, i32 noundef 2)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %.split.us
  %i.hv = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZN4core6stringIcED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %bb.ag
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !17
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #29
  br label %_ZN4core6stringIcED2Ev.exit74

_ZN4core6stringIcED2Ev.exit74:                    ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %.critedge.sink.split

bb.ah:                                            ; preds = %.split.us
  %i.ia = landingpad { ptr, i32 }
          cleanup
  %i.ib = load ptr, ptr %8, align 8, !tbaa !42    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZN4core6stringIcED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75: ; preds = %bb.ah
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !17
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #29
  br label %_ZN4core6stringIcED2Ev.exit77

_ZN4core6stringIcED2Ev.exit77:                    ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81: ; preds = %.split214.us
  %i.ig = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ih) #29
  br label %_ZN4core6stringIcED2Ev.exit83

_ZN4core6stringIcED2Ev.exit83:                    ; preds = %.split214.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aq

.split219.us:                                     ; preds = %.lr.ph.split.us215.split, %.lr.ph.split.us215.split.us
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.95, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.ii = load i32, ptr %i.ay, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %10, i32 noundef %i.ii)
  %i.ij = load ptr, ptr %10, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ij, i32 noundef 2)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.split219.us
  %i.ik = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %_ZN4core6stringIcED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.ai
  %i.in = load i64, ptr %i.il, align 8, !tbaa !17
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #29
  br label %_ZN4core6stringIcED2Ev.exit86

_ZN4core6stringIcED2Ev.exit86:                    ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.critedge.sink.split

bb.aj:                                            ; preds = %.split219.us
  %i.ip = landingpad { ptr, i32 }
          cleanup
  %i.iq = load ptr, ptr %10, align 8, !tbaa !42   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.is = icmp eq ptr %i.iq, %i.ir
  br i1 %i.is, label %_ZN4core6stringIcED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87: ; preds = %bb.aj
  %i.it = load i64, ptr %i.ir, align 8, !tbaa !17
  %i.iu = add i64 %i.it, 1
  call void @_ZdlPvm(ptr noundef %i.iq, i64 noundef %i.iu) #29
  br label %_ZN4core6stringIcED2Ev.exit89

_ZN4core6stringIcED2Ev.exit89:                    ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aq

.split221.us:                                     ; preds = %.split221.us.split, %.split221.us.split.us
  %.us-phi = phi { ptr, i32 } [ %i.dl, %.split221.us.split ], [ %i.cw, %.split221.us.split.us ]
  %i.iv = load ptr, ptr %11, align 8, !tbaa !42   ; 2 uses
  %i.iw = icmp eq ptr %i.iv, %i.bi
  br i1 %i.iw, label %_ZN4core6stringIcED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93: ; preds = %.split221.us
  %i.ix = load i64, ptr %i.bi, align 8, !tbaa !17
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #29
  br label %_ZN4core6stringIcED2Ev.exit95

_ZN4core6stringIcED2Ev.exit95:                    ; preds = %.split221.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.aq

.split227.us:                                     ; preds = %.lr.ph.split.us223
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.97, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.iz = load i32, ptr %i.ay, align 4, !tbaa !234
  call void @_ZN4core6stringIcEC2Ej(ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef %i.iz)
  %i.ja = load ptr, ptr %12, align 8, !tbaa !42
  invoke void @_ZN2os7Printer3logEPKcS2_10ELOG_LEVEL(ptr noundef nonnull @.str.25, ptr noundef %i.ja, i32 noundef 2)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %.split227.us
  %i.jb = load ptr, ptr %12, align 8, !tbaa !42   ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZN4core6stringIcED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96: ; preds = %bb.ak
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !17
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #29
  br label %_ZN4core6stringIcED2Ev.exit98

_ZN4core6stringIcED2Ev.exit98:                    ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i96
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.critedge.sink.split

bb.al:                                            ; preds = %.split227.us
  %i.jg = landingpad { ptr, i32 }
          cleanup
  %i.jh = load ptr, ptr %12, align 8, !tbaa !42   ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.jj = icmp eq ptr %i.jh, %i.ji
  br i1 %i.jj, label %_ZN4core6stringIcED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.al
  %i.jk = load i64, ptr %i.ji, align 8, !tbaa !17
  %i.jl = add i64 %i.jk, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jl) #29
  br label %_ZN4core6stringIcED2Ev.exit101

_ZN4core6stringIcED2Ev.exit101:                   ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.aq

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %.split229.us
  %i.jm = load i64, ptr %i.az, align 8, !tbaa !17
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.jn) #29
  br label %_ZN4core6stringIcED2Ev.exit117

_ZN4core6stringIcED2Ev.exit117:                   ; preds = %.split229.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aq

.critedge62:                                      ; preds = %bb.w, %bb.s, %_ZN4core10quaternionaSERKNS_8CMatrix4IfEE.exit.us, %bb.o, %bb.j, %_ZN4core6stringIcED2Ev.exit.i, %bb.k
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !238, !range !83, !noundef !84
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %_ZN5scene16CXMeshFileLoader30checkForOneFollowingSemicolonsEv.exit127.thread, label %sub_0.i118

sub_0.i118:                                       ; preds = %.critedge62
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN5scene16CXMeshFileLoader12getNextTokenEv(ptr dead_on_unwind nonnull writable sret(%"class.core::string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(162) %0)
  %i.jr = load ptr, ptr %3, align 8, !tbaa !42    ; 4 uses
  %i.js = load i8, ptr %i.jr, align 1
  %.not.i119 = icmp eq i8 %i.js, 59
  br i1 %.not.i119, label %sub_1.i126, label %.tail.i120

sub_1.i126:                                       ; preds = %sub_0.i118
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 1
end_hunk_0
