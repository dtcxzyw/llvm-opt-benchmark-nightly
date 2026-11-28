Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/bluetooth_device_dialog?download=true
inline.NumInlined: 962
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN24Ui_BluetoothDeviceDialog7setupUiEP7QDialog:bb.a
  %.fca.1.gep.i181 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %.fca.1.gep.i181, align 8, !noalias !24
  %i.eh = call noalias noundef dereferenceable_or_null(32) ptr @_Znwm(i64 noundef 32) #22, !noalias !24 ; 5 uses
  store i32 1, ptr %i.eh, align 4, !noalias !24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store ptr @_ZN9QtPrivate11QSlotObjectIM7QDialogFvvENS_4ListIJEEEvE4implEiPNS_15QSlotObjectBaseEP7QObjectPPvPb, ptr %i.ei, align 8, !noalias !24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  store i64 449, ptr %i.ej, align 8, !noalias !24
  %.repack7.i.i182 = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  store i64 0, ptr %.repack7.i.i182, align 8, !noalias !24
  call void @_ZN7QObject11connectImplEPKS_PPvS1_S3_PN9QtPrivate15QSlotObjectBaseEN2Qt14ConnectionTypeEPKiPK11QMetaObject(ptr dead_on_unwind nonnull writable sret(%"class.QMetaObject::Connection") align 8 %6, ptr noundef %i.eg, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %i.eh, i32 noundef 0, ptr noundef null, ptr noundef @_ZN16QDialogButtonBox16staticMetaObjectE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_ZN11QMetaObject10ConnectionD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #23
  call void @_ZN11QMetaObject18connectSlotsByNameEP7QObject(ptr noundef %1)
  ret void

bb.at:                                            ; preds = %bb.t
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef 64) #24
  br label %bb.bv

bb.au:                                            ; preds = %bb.u
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef 64) #24
  br label %bb.bv

bb.av:                                            ; preds = %bb.v
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef 64) #24
  br label %bb.bv

bb.aw:                                            ; preds = %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef 64) #24
  br label %bb.bv

bb.ax:                                            ; preds = %bb.x
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef 64) #24
  br label %bb.bv

bb.ay:                                            ; preds = %bb.y
  %i.ep = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef 64) #24
  br label %bb.bv

bb.az:                                            ; preds = %bb.z
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef 64) #24
  br label %bb.bv

bb.ba:                                            ; preds = %bb.aa
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef 64) #24
  br label %bb.bv

bb.bb:                                            ; preds = %bb.ab
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef 64) #24
  br label %bb.bv

bb.bc:                                            ; preds = %bb.ac
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef 64) #24
  br label %bb.bv

bb.bd:                                            ; preds = %bb.ad
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef 64) #24
  br label %bb.bv

bb.be:                                            ; preds = %bb.ae
  %i.ev = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef 64) #24
  br label %bb.bv

bb.bf:                                            ; preds = %bb.af
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef 64) #24
  br label %bb.bv

bb.bg:                                            ; preds = %bb.ag
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef 64) #24
  br label %bb.bv

bb.bh:                                            ; preds = %bb.ah
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef 64) #24
  br label %bb.bv

bb.bi:                                            ; preds = %bb.ai
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef 64) #24
  br label %bb.bv

bb.bj:                                            ; preds = %bb.aj
  %i.fa = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef 64) #24
  br label %bb.bv

bb.bk:                                            ; preds = %bb.ak
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef 64) #24
  br label %bb.bv

bb.bl:                                            ; preds = %bb.al
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef 64) #24
  br label %bb.bv

bb.bm:                                            ; preds = %bb.am
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef 64) #24
  br label %bb.bv

bb.bn:                                            ; preds = %bb.an
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef 64) #24
  br label %bb.bv

bb.bo:                                            ; preds = %bb.ao
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cl, i64 noundef 64) #24
  br label %bb.bv

bb.bp:                                            ; preds = %bb.ap
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef 64) #24
  br label %bb.bv

bb.bq:                                            ; preds = %bb.aq
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef 64) #24
  br label %bb.bv

bb.br:                                            ; preds = %bb.ar
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef 64) #24
  br label %bb.bv

bb.bs:                                            ; preds = %_ZN14QAnyStringViewC2IA12_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.bv

bb.bt:                                            ; preds = %bb.as
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef 40) #24
  br label %bb.bv

bb.bu:                                            ; preds = %_ZN14QAnyStringViewC2IA10_cTnNSt9enable_ifIXsr3stdE13disjunction_vIN9QtPrivate36IsContainerCompatibleWithQStringViewIT_vEENS3_40IsContainerCompatibleWithQUtf8StringViewIS5_vEEEEbE4typeELb1EEERKS5_.exit
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef 40) #24
  br label %bb.bv

bb.bv:                                            ; preds = %bb.r, %bb.at, %bb.av, %bb.ax, %bb.az, %bb.bb, %bb.bd, %bb.bf, %bb.bh, %bb.bj, %bb.bl, %bb.bn, %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.bu, %bb.bq, %bb.bo, %bb.bm, %bb.bk, %bb.bi, %bb.bg, %bb.be, %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.s, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.ak, %bb.m ], [ %i.aj, %bb.l ], [ %i.ai, %bb.k ], [ %i.ah, %bb.j ], [ %i.ag, %bb.i ], [ %i.af, %bb.h ], [ %i.ae, %bb.g ], [ %i.at, %bb.r ], [ %i.au, %bb.s ], [ %i.ek, %bb.at ], [ %i.el, %bb.au ], [ %i.em, %bb.av ], [ %i.en, %bb.aw ], [ %i.eo, %bb.ax ], [ %i.ep, %bb.ay ], [ %i.eq, %bb.az ], [ %i.er, %bb.ba ], [ %i.es, %bb.bb ], [ %i.et, %bb.bc ], [ %i.eu, %bb.bd ], [ %i.ev, %bb.be ], [ %i.ew, %bb.bf ], [ %i.ex, %bb.bg ], [ %i.ey, %bb.bh ], [ %i.ez, %bb.bi ], [ %i.fa, %bb.bj ], [ %i.fb, %bb.bk ], [ %i.fc, %bb.bl ], [ %i.fd, %bb.bm ], [ %i.fe, %bb.bn ], [ %i.ff, %bb.bo ], [ %i.fg, %bb.bp ], [ %i.fh, %bb.bq ], [ %i.fl, %bb.bu ], [ %i.fk, %bb.bt ], [ %i.fj, %bb.bs ], [ %i.fi, %bb.br ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN21BluetoothDeviceDialog8setTitleE7QStringS0_(ptr noundef align 8 dereferenceable_or_null(268) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 16            ; 7 uses
  %5 = alloca %class.QString, align 16            ; 14 uses
  %6 = alloca %class.QString, align 16            ; 14 uses
  %7 = alloca %class.QString, align 16            ; 8 uses
  %8 = alloca %class.QString, align 16            ; 11 uses
  %9 = alloca %class.QString, align 16            ; 13 uses
  %10 = alloca %class.QString, align 8            ; 9 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  %12 = alloca %class.QString, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) dereferenceable_or_null(24) %6, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %7, ptr noundef align 8 dereferenceable_or_null(56) @_ZN21BluetoothDeviceDialog16staticMetaObjectE, ptr noundef @.str.1, ptr noundef null, i32 noundef -1)
          to label %_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit unwind label %bb.e

_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit:       ; preds = %bb.b
  %i.d = load <2 x ptr>, ptr %7, align 16
  %i.e = load <2 x ptr>, ptr %5, align 16
  %i.f = load ptr, ptr %5, align 16               ; 2 uses
  store <2 x ptr> %i.d, ptr %5, align 16
  store <2 x ptr> %i.e, ptr %7, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.g, align 16
  %i.j = load i64, ptr %i.h, align 16
  store i64 %i.j, ptr %i.g, align 16
  store i64 %i.i, ptr %i.h, align 16
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit
  %i.k = atomicrmw add ptr %i.f, i32 -1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.k, 1
  br i1 %.not.i.i, label %bb.c, label %_ZN7QStringD2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.l = load ptr, ptr %7, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.l, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.g

bb.d:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.e:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.an

bb.f:                                             ; preds = %bb.a
  %i.o = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, ptr noundef align 8 dereferenceable(24) %1) #23 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN7QStringD2Ev.exit
  %i.p = getelementptr i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 0, ptr @.str.2)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.h
  %i.s = load <2 x ptr>, ptr %4, align 16
  %i.t = load <2 x ptr>, ptr %6, align 16
  %i.u = load ptr, ptr %6, align 16               ; 2 uses
  store <2 x ptr> %i.s, ptr %6, align 16
  store <2 x ptr> %i.t, ptr %4, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.x = load i64, ptr %i.v, align 16
  %i.y = load i64, ptr %i.w, align 16
  store i64 %i.y, ptr %i.v, align 16
  store i64 %i.x, ptr %i.w, align 16
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringaSEPKc.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %.noexc
  %i.z = atomicrmw add ptr %i.u, i32 -1 acq_rel, align 4
  %.not.i.i.i13 = icmp eq i32 %i.z, 1
  br i1 %.not.i.i.i13, label %bb.i, label %_ZN7QStringaSEPKc.exit

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.aa = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aa, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringaSEPKc.exit

_ZN7QStringaSEPKc.exit:                           ; preds = %.noexc, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.x

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %9, i64 2, ptr @.str.3)
          to label %.noexc14 unwind label %bb.v

.noexc14:                                         ; preds = %bb.j
  %i.ab = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, ptr noundef align 8 dereferenceable(24) %2)
          to label %_ZplPKcRK7QString.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %.noexc14
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ad = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i74 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i74, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75:    ; preds = %bb.k
  %i.ae = atomicrmw add ptr %i.ad, i32 -1 acq_rel, align 4
  %.not.i.i76 = icmp eq i32 %i.ae, 1
  br i1 %.not.i.i76, label %bb.w, label %.body

_ZplPKcRK7QString.exit:                           ; preds = %.noexc14
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.af = load <2 x ptr>, ptr %9, align 16, !noalias !27
  %i.ag = load ptr, ptr %9, align 16, !noalias !27 ; 2 uses
  store <2 x ptr> %i.af, ptr %8, align 16, !alias.scope !27
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !noalias !27
  store i64 %i.aj, ptr %i.ah, align 16, !alias.scope !27
  %.not.i.i.i.i15 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i15, label %_ZN7QStringC2ERKS_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZplPKcRK7QString.exit
  %i.ak = atomicrmw add ptr %i.ag, i32 1 acq_rel, align 4, !noalias !27 ; 0 uses
  br label %_ZN7QStringC2ERKS_.exit.i

_ZN7QStringC2ERKS_.exit.i:                        ; preds = %bb.l, %_ZplPKcRK7QString.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !27
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 1, ptr @.str.4)
          to label %bb.m unwind label %bb.o, !noalias !27

bb.m:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i
  %i.al = invoke noundef align 8 dereferenceable(24) ptr @_ZN7QString6appendERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZN7QStringpLERKS_.exit.i unwind label %bb.p ; 0 uses

_ZN7QStringpLERKS_.exit.i:                        ; preds = %bb.m
  %i.am = load ptr, ptr %3, align 8, !noalias !27 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i5.i, label %bb.s, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16:  ; preds = %_ZN7QStringpLERKS_.exit.i
  %i.an = atomicrmw add ptr %i.am, i32 -1 acq_rel, align 4
  %.not.i.i.i17 = icmp eq i32 %i.an, 1
  br i1 %.not.i.i.i17, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16
  %i.ao = load ptr, ptr %3, align 8, !noalias !27
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ao, i64 noundef 2, i64 noundef 8) #23
  br label %bb.s

bb.o:                                             ; preds = %_ZN7QStringC2ERKS_.exit.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit9.i

bb.p:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ar = load ptr, ptr %3, align 8, !noalias !27 ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i6.i, label %_ZN7QStringD2Ev.exit9.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i:   ; preds = %bb.p
  %i.as = atomicrmw add ptr %i.ar, i32 -1 acq_rel, align 4
  %.not.i.i8.i = icmp eq i32 %i.as, 1
  br i1 %.not.i.i8.i, label %bb.q, label %_ZN7QStringD2Ev.exit9.i

bb.q:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i
  %i.at = load ptr, ptr %3, align 8, !noalias !27
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.at, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit9.i

_ZN7QStringD2Ev.exit9.i:                          ; preds = %bb.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i, %bb.p, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.ap, %bb.o ], [ %i.aq, %bb.p ], [ %i.aq, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i7.i ], [ %i.aq, %bb.q ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !27
  %i.au = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i78, label %.body18, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79:    ; preds = %_ZN7QStringD2Ev.exit9.i
  %i.av = atomicrmw add ptr %i.au, i32 -1 acq_rel, align 4
  %.not.i.i80 = icmp eq i32 %i.av, 1
  br i1 %.not.i.i80, label %bb.r, label %.body18

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79
  %i.aw = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aw, i64 noundef 2, i64 noundef 8) #23
  br label %.body18

bb.s:                                             ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i16, %_ZN7QStringpLERKS_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !27
  %i.ax = call noundef align 8 dereferenceable(24) ptr @_ZN7QStringaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %8) #23 ; 0 uses
  %i.ay = load ptr, ptr %8, align 16              ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i20, label %_ZN7QStringD2Ev.exit23, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21:    ; preds = %bb.s
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4
  %.not.i.i22 = icmp eq i32 %i.az, 1
  br i1 %.not.i.i22, label %bb.t, label %_ZN7QStringD2Ev.exit23

bb.t:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21
  %i.ba = load ptr, ptr %8, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ba, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit23

_ZN7QStringD2Ev.exit23:                           ; preds = %bb.s, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i21, %bb.t
  %i.bb = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i24, label %_ZN7QStringD2Ev.exit27, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25:    ; preds = %_ZN7QStringD2Ev.exit23
  %i.bc = atomicrmw add ptr %i.bb, i32 -1 acq_rel, align 4
  %.not.i.i26 = icmp eq i32 %i.bc, 1
  br i1 %.not.i.i26, label %bb.u, label %_ZN7QStringD2Ev.exit27

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25
  %i.bd = load ptr, ptr %9, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bd, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit27

_ZN7QStringD2Ev.exit27:                           ; preds = %_ZN7QStringD2Ev.exit23, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i25, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.x

bb.v:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body18:                                          ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i79, %_ZN7QStringD2Ev.exit9.i
  %i.bf = load ptr, ptr %9, align 16              ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i28, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29:    ; preds = %.body18
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 acq_rel, align 4
  %.not.i.i30 = icmp eq i32 %i.bg, 1
  br i1 %.not.i.i30, label %bb.w, label %.body

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75
  %.pn.ph = phi { ptr, i32 } [ %i.ac, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75 ], [ %.pn.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29 ]
  %i.bh = load ptr, ptr %9, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bh, i64 noundef 2, i64 noundef 8) #23
  br label %.body

.body:                                            ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29, %.body18, %bb.v, %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75
  %.pn = phi { ptr, i32 } [ %.pn.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i29 ], [ %i.be, %bb.v ], [ %i.ac, %bb.k ], [ %i.ac, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i75 ], [ %.pn.i, %.body18 ], [ %.pn.ph, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.an

bb.x:                                             ; preds = %_ZN7QStringaSEPKc.exit, %_ZN7QStringD2Ev.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %12, ptr noundef align 8 dereferenceable_or_null(56) @_ZN21BluetoothDeviceDialog16staticMetaObjectE, ptr noundef @.str.5, ptr noundef null, i32 noundef -1)
          to label %_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit33 unwind label %bb.ag

_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit33:     ; preds = %bb.x
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %11, ptr noundef nonnull align 8 dereferenceable_or_null(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0, i16 32)
          to label %bb.y unwind label %bb.ah

bb.y:                                             ; preds = %_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit33
  invoke void @_ZNK7QString3argERKS_i5QChar(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %10, ptr noundef nonnull align 8 dereferenceable_or_null(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 0, i16 32)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN7QWidget14setWindowTitleERK7QString(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %bb.aa unwind label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.bi = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i34, label %_ZN7QStringD2Ev.exit37, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35:    ; preds = %bb.aa
  %i.bj = atomicrmw add ptr %i.bi, i32 -1 acq_rel, align 4
  %.not.i.i36 = icmp eq i32 %i.bj, 1
  br i1 %.not.i.i36, label %bb.ab, label %_ZN7QStringD2Ev.exit37

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35
  %i.bk = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bk, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit37

_ZN7QStringD2Ev.exit37:                           ; preds = %bb.aa, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i35, %bb.ab
  %i.bl = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i38, label %_ZN7QStringD2Ev.exit41, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39:    ; preds = %_ZN7QStringD2Ev.exit37
  %i.bm = atomicrmw add ptr %i.bl, i32 -1 acq_rel, align 4
  %.not.i.i40 = icmp eq i32 %i.bm, 1
  br i1 %.not.i.i40, label %bb.ac, label %_ZN7QStringD2Ev.exit41

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39
  %i.bn = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bn, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit41

_ZN7QStringD2Ev.exit41:                           ; preds = %_ZN7QStringD2Ev.exit37, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39, %bb.ac
  %i.bo = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i42 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i42, label %_ZN7QStringD2Ev.exit45, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43:    ; preds = %_ZN7QStringD2Ev.exit41
  %i.bp = atomicrmw add ptr %i.bo, i32 -1 acq_rel, align 4
  %.not.i.i44 = icmp eq i32 %i.bp, 1
  br i1 %.not.i.i44, label %bb.ad, label %_ZN7QStringD2Ev.exit45

bb.ad:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43
  %i.bq = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bq, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit45

_ZN7QStringD2Ev.exit45:                           ; preds = %_ZN7QStringD2Ev.exit41, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i43, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.br = load ptr, ptr %6, align 16              ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i46, label %_ZN7QStringD2Ev.exit49, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47:    ; preds = %_ZN7QStringD2Ev.exit45
  %i.bs = atomicrmw add ptr %i.br, i32 -1 acq_rel, align 4
  %.not.i.i48 = icmp eq i32 %i.bs, 1
  br i1 %.not.i.i48, label %bb.ae, label %_ZN7QStringD2Ev.exit49

bb.ae:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47
  %i.bt = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bt, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit49

_ZN7QStringD2Ev.exit49:                           ; preds = %_ZN7QStringD2Ev.exit45, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bu = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i50 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i50, label %_ZN7QStringD2Ev.exit53, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51:    ; preds = %_ZN7QStringD2Ev.exit49
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %.not.i.i52 = icmp eq i32 %i.bv, 1
  br i1 %.not.i.i52, label %bb.af, label %_ZN7QStringD2Ev.exit53

bb.af:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51
  %i.bw = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bw, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit53

_ZN7QStringD2Ev.exit53:                           ; preds = %_ZN7QStringD2Ev.exit49, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i51, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.ag:                                            ; preds = %bb.x
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit65

bb.ah:                                            ; preds = %_ZN21BluetoothDeviceDialog2trEPKcS1_i.exit33
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit61

bb.ai:                                            ; preds = %bb.y
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7QStringD2Ev.exit57

bb.aj:                                            ; preds = %bb.z
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.cb = load ptr, ptr %10, align 8              ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i54, label %_ZN7QStringD2Ev.exit57, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55:    ; preds = %bb.aj
  %i.cc = atomicrmw add ptr %i.cb, i32 -1 acq_rel, align 4
  %.not.i.i56 = icmp eq i32 %i.cc, 1
  br i1 %.not.i.i56, label %bb.ak, label %_ZN7QStringD2Ev.exit57

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55
  %i.cd = load ptr, ptr %10, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cd, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit57

_ZN7QStringD2Ev.exit57:                           ; preds = %bb.ak, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55, %bb.aj, %bb.ai
  %.pn8 = phi { ptr, i32 } [ %i.bz, %bb.ai ], [ %i.ca, %bb.aj ], [ %i.ca, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55 ], [ %i.ca, %bb.ak ] ; 3 uses
  %i.ce = load ptr, ptr %11, align 8              ; 2 uses
  %.not.i.i.i58 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i58, label %_ZN7QStringD2Ev.exit61, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59:    ; preds = %_ZN7QStringD2Ev.exit57
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %.not.i.i60 = icmp eq i32 %i.cf, 1
  br i1 %.not.i.i60, label %bb.al, label %_ZN7QStringD2Ev.exit61

bb.al:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59
  %i.cg = load ptr, ptr %11, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cg, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit61

_ZN7QStringD2Ev.exit61:                           ; preds = %bb.al, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59, %_ZN7QStringD2Ev.exit57, %bb.ah
  %.pn8.pn = phi { ptr, i32 } [ %i.by, %bb.ah ], [ %.pn8, %_ZN7QStringD2Ev.exit57 ], [ %.pn8, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i59 ], [ %.pn8, %bb.al ] ; 3 uses
  %i.ch = load ptr, ptr %12, align 8              ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i62, label %_ZN7QStringD2Ev.exit65, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63:    ; preds = %_ZN7QStringD2Ev.exit61
  %i.ci = atomicrmw add ptr %i.ch, i32 -1 acq_rel, align 4
  %.not.i.i64 = icmp eq i32 %i.ci, 1
  br i1 %.not.i.i64, label %bb.am, label %_ZN7QStringD2Ev.exit65

bb.am:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63
  %i.cj = load ptr, ptr %12, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cj, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit65

_ZN7QStringD2Ev.exit65:                           ; preds = %bb.am, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63, %_ZN7QStringD2Ev.exit61, %bb.ag
  %.pn8.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.ag ], [ %.pn8.pn, %_ZN7QStringD2Ev.exit61 ], [ %.pn8.pn, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63 ], [ %.pn8.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.an

bb.an:                                            ; preds = %_ZN7QStringD2Ev.exit65, %.body, %bb.e, %bb.d
  %.pn8.pn.pn.pn = phi { ptr, i32 } [ %.pn8.pn.pn, %_ZN7QStringD2Ev.exit65 ], [ %i.m, %bb.d ], [ %.pn, %.body ], [ %i.n, %bb.e ]
  %i.ck = load ptr, ptr %6, align 16              ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i66, label %_ZN7QStringD2Ev.exit69, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67:    ; preds = %bb.an
  %i.cl = atomicrmw add ptr %i.ck, i32 -1 acq_rel, align 4
  %.not.i.i68 = icmp eq i32 %i.cl, 1
  br i1 %.not.i.i68, label %bb.ao, label %_ZN7QStringD2Ev.exit69

bb.ao:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67
  %i.cm = load ptr, ptr %6, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cm, i64 noundef 2, i64 noundef 8) #23
  br label %_ZN7QStringD2Ev.exit69

_ZN7QStringD2Ev.exit69:                           ; preds = %bb.an, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i67, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cn = load ptr, ptr %5, align 16              ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i70, label %_ZN7QStringD2Ev.exit73, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i71:    ; preds = %_ZN7QStringD2Ev.exit69
end_hunk_0
