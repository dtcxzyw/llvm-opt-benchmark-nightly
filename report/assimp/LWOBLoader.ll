inline.NumInlined: 541
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp11LWOImporter15LoadLWOBSurfaceEj:bb.a
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.eg, ptr noundef nonnull @.str.20)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @__cxa_throw(ptr nonnull %i.eg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.eg) #18
  br label %bb.cb

bb.ak:                                            ; preds = %bb.ag
  %i.ei = load i16, ptr %i.ci, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store ptr %i.ej, ptr %i.a, align 8
  %.sroa.0.0.insert.insert.i81 = call noundef i16 @llvm.bswap.i16(i16 %i.ei)
  %i.ek = zext i16 %.sroa.0.0.insert.insert.i81 to i32 ; 3 uses
  %i.el = and i32 %i.ek, 4
  %.not71 = icmp eq i32 %i.el, 0
  br i1 %.not71, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store float 1.562070e+00, ptr %i.bm, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.em = and i32 %i.ek, 8
  %.not72 = icmp eq i32 %i.em, 0
  br i1 %.not72, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store float 1.000000e+00, ptr %i.bn, align 4
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.en = and i32 %i.ek, 256
  %.not73 = icmp eq i32 %i.en, 0
  br i1 %.not73, label %bb.ca, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.bo, align 4
  br label %bb.ca

bb.aq:                                            ; preds = %bb.g
  %i.eo = icmp samesign ult i32 %i.cj, 4
  br i1 %i.eo, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.ep = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull @.str.21)
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @__cxa_throw(ptr nonnull %i.ep, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ep) #18
  br label %bb.cb

bb.au:                                            ; preds = %bb.aq
  %i.er = load i32, ptr %i.ci, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  store ptr %i.es, ptr %i.a, align 8
  %.2.insert.insert.i = call i32 @llvm.bswap.i32(i32 %i.er)
  %i.et = bitcast i32 %.2.insert.insert.i to float
  %i.eu = call noundef float @llvm.fabs.f32(float %i.et)
  store float %i.eu, ptr %i.bm, align 8
  br label %bb.ca

bb.av:                                            ; preds = %bb.g
  %i.ev = icmp samesign ult i32 %i.cj, 2
  br i1 %i.ev, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.ew = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull @.str.22)
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ew) #18
  br label %bb.cb

bb.az:                                            ; preds = %bb.av
  %i.ey = load i16, ptr %i.ci, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store ptr %i.ez, ptr %i.a, align 8
  %.sroa.0.0.insert.insert.i82 = call noundef i16 @llvm.bswap.i16(i16 %i.ey)
  %i.fa = uitofp i16 %.sroa.0.0.insert.insert.i82 to float
  store float %i.fa, ptr %i.bl, align 4
  br label %bb.ca

bb.ba:                                            ; preds = %bb.g
  %i.fb = call noundef ptr @_ZN6Assimp11LWOImporter19SetupNewTextureLWOBERNSt7__cxx114listINS_3LWO7TextureESaIS4_EEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i32 noundef %i.cj)
  br label %bb.ca

bb.bb:                                            ; preds = %bb.g
  %i.fc = call noundef ptr @_ZN6Assimp11LWOImporter19SetupNewTextureLWOBERNSt7__cxx114listINS_3LWO7TextureESaIS4_EEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bj, i32 noundef %i.cj)
  br label %bb.ca

bb.bc:                                            ; preds = %bb.g
  %i.fd = call noundef ptr @_ZN6Assimp11LWOImporter19SetupNewTextureLWOBERNSt7__cxx114listINS_3LWO7TextureESaIS4_EEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i32 noundef %i.cj)
  br label %bb.ca

bb.bd:                                            ; preds = %bb.g
  %i.fe = call noundef ptr @_ZN6Assimp11LWOImporter19SetupNewTextureLWOBERNSt7__cxx114listINS_3LWO7TextureESaIS4_EEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i32 noundef %i.cj)
  br label %bb.ca

bb.be:                                            ; preds = %bb.g
  %i.ff = call noundef ptr @_ZN6Assimp11LWOImporter19SetupNewTextureLWOBERNSt7__cxx114listINS_3LWO7TextureESaIS4_EEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i32 noundef %i.cj)
  br label %bb.ca

bb.bf:                                            ; preds = %bb.g
  %.not70 = icmp eq ptr %.06185, null
  br i1 %.not70, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %.06185, i32 noundef %i.cj)
  br label %bb.ca

bb.bh:                                            ; preds = %bb.bf
  %i.fg = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fg, ptr noundef nonnull @.str.23)
  br label %bb.ca

bb.bi:                                            ; preds = %bb.g
  %i.fh = icmp eq i32 %i.cj, 0
  br i1 %i.fh, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  %i.fi = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fi, ptr noundef nonnull @.str.24)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  call void @__cxa_throw(ptr nonnull %i.fi, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.fj = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fi) #18
  br label %bb.cb

bb.bm:                                            ; preds = %bb.bi
  %.not69 = icmp eq ptr %.06185, null
  br i1 %.not69, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ci, i64 1
  store ptr %i.fk, ptr %i.a, align 8
  %i.fl = load i8, ptr %i.ci, align 1
  %i.fm = uitofp i8 %i.fl to float
  %i.fn = fdiv float %i.fm, 2.550000e+02
  %i.fo = getelementptr inbounds nuw i8, ptr %.06185, i64 36
  store float %i.fn, ptr %i.fo, align 4
  br label %bb.ca

bb.bo:                                            ; preds = %bb.bm
  %i.fp = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.fp, ptr noundef nonnull @.str.25)
  br label %bb.ca

bb.bp:                                            ; preds = %bb.g
  %i.fq = icmp samesign ult i32 %i.cj, 2
  br i1 %i.fq, label %bb.bq, label %bb.bt

bb.bq:                                            ; preds = %bb.bp
  %i.fr = call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull @.str.26)
          to label %bb.br unwind label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fr) #18
  br label %bb.cb

bb.bt:                                            ; preds = %bb.bp
  %.not64 = icmp eq ptr %.06185, null
  br i1 %.not64, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ft = load i16, ptr %i.ci, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store ptr %i.fu, ptr %i.a, align 8
  %.sroa.0.0.insert.insert.i83 = call noundef i16 @llvm.bswap.i16(i16 %i.ft)
  %i.fv = zext i16 %.sroa.0.0.insert.insert.i83 to i32 ; 4 uses
  %3 = and i32 %i.fv, 1
  %.not65 = icmp eq i32 %3, 0
  br i1 %.not65, label %bb.bv, label %.sink.split

bb.bv:                                            ; preds = %bb.bu
  %i.fw = and i32 %i.fv, 2
  %.not66 = icmp eq i32 %i.fw, 0
  br i1 %.not66, label %bb.bw, label %.sink.split

bb.bw:                                            ; preds = %bb.bv
  %i.fx = and i32 %i.fv, 4
  %.not67 = icmp eq i32 %i.fx, 0
  br i1 %.not67, label %bb.bx, label %.sink.split

.sink.split:                                      ; preds = %bb.bw, %bb.bv, %bb.bu
  %.sink = phi i32 [ 0, %bb.bu ], [ 1, %bb.bv ], [ 2, %bb.bw ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.06185, i64 100
  store i32 %.sink, ptr %i.fy, align 4
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %bb.bw
  %i.fz = and i32 %i.fv, 16
  %.not68 = icmp eq i32 %i.fz, 0
  br i1 %.not68, label %bb.ca, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ga = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ga, ptr noundef nonnull @.str.27)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bt
  %i.gb = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.gb, ptr noundef nonnull @.str.28)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bx, %bb.by, %bb.ao, %bb.ap, %bb.bz, %bb.bn, %bb.bo, %bb.bg, %bb.bh, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.au, %bb.af, %bb.aa, %bb.v, %bb.q, %bb.l, %bb.g
  %.162 = phi ptr [ %.06185, %bb.g ], [ %.06185, %bb.l ], [ %.06185, %bb.q ], [ %.06185, %bb.v ], [ %.06185, %bb.aa ], [ %.06185, %bb.af ], [ null, %bb.bz ], [ %.06185, %bb.au ], [ %.06185, %bb.az ], [ %i.fb, %bb.ba ], [ %i.fc, %bb.bb ], [ %i.fd, %bb.bc ], [ %i.fe, %bb.bd ], [ %i.ff, %bb.be ], [ %.06185, %bb.bg ], [ null, %bb.bh ], [ %.06185, %bb.bn ], [ null, %bb.bo ], [ %.06185, %bb.ao ], [ %.06185, %bb.ap ], [ %.06185, %bb.by ], [ %.06185, %bb.bx ]
  store ptr %i.cl, ptr %i.a, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cl, i64 6 ; 2 uses
  %.not = icmp ult ptr %i.gc, %i.d
  br i1 %.not, label %bb.e, label %._crit_edge, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.ca, %_ZNSt6vectorIN6Assimp3LWO7SurfaceESaIS2_EE9push_backEOS2_.exit
  ret void

bb.cb:                                            ; preds = %bb.k, %bb.p, %bb.u, %bb.z, %bb.ae, %bb.aj, %bb.at, %bb.ay, %bb.bl, %bb.bs, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.d ], [ %i.co, %bb.k ], [ %i.df, %bb.p ], [ %i.dm, %bb.u ], [ %i.dt, %bb.z ], [ %i.ea, %bb.ae ], [ %i.eh, %bb.aj ], [ %i.eq, %bb.at ], [ %i.ex, %bb.ay ], [ %i.fj, %bb.bl ], [ %i.fs, %bb.bs ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter22CountVertsAndFacesLWOBERjS1_RPtPKtj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(233) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8                ; 2 uses
  %i.b = icmp ult ptr %i.a, %4
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %4 to i64                   ; 2 uses
  %.not35 = icmp eq i32 %5, 0
  br i1 %.not35, label %.critedge, label %.lr.ph36

bb.b:                                             ; preds = %bb.l
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph36, !llvm.loop !8

.lr.ph36:                                         ; preds = %.lr.ph, %bb.b
  %.in = phi i32 [ %i.e, %bb.b ], [ %5, %.lr.ph ]
  %i.d = phi ptr [ %i.af, %bb.b ], [ %i.a, %.lr.ph ] ; 3 uses
  %i.e = add i32 %.in, -1                         ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.c, %i.f
  %i.h = icmp slt i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph36
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull @.str.4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.f:                                             ; preds = %.lr.ph36
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %.0.copyload2 = load i16, ptr %i.d, align 2     ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.c, %i.l
  %i.n = ashr exact i64 %i.m, 1
  %i.o = zext i16 %.0.copyload2 to i32            ; 2 uses
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = icmp slt i64 %i.n, %i.q
  br i1 %i.r, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.s = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.4)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %bb.f
  %i.u = load i32, ptr %1, align 4
  %i.v = add i32 %i.u, %i.o
  store i32 %i.v, ptr %1, align 4
  %i.w = load i32, ptr %2, align 4
  %i.x = add i32 %i.w, 1
  store i32 %i.x, ptr %2, align 4
  %i.y = load ptr, ptr %3, align 8
  %i.z = zext i16 %.0.copyload2 to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.z ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 3 uses
  store ptr %i.ab, ptr %3, align 8
  %.0.copyload = load i16, ptr %i.aa, align 2
  %i.ac = icmp slt i16 %.0.copyload, 0
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store ptr %i.ad, ptr %3, align 8
  %.0.copyload6 = load i16, ptr %i.ab, align 2
  %i.ae = zext i16 %.0.copyload6 to i32
  tail call void @_ZN6Assimp11LWOImporter22CountVertsAndFacesLWOBERjS1_RPtPKtj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %4, i32 noundef %i.ae)
  %.pre = load ptr, ptr %3, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.af = phi ptr [ %.pre, %bb.k ], [ %i.ab, %bb.j ] ; 2 uses
  %i.ag = icmp ult ptr %i.af, %4
  br i1 %i.ag, label %bb.b, label %..critedge.loopexit_crit_edge, !llvm.loop !8

bb.m:                                             ; preds = %bb.i, %bb.e
  %.sink = phi ptr [ %i.s, %bb.i ], [ %i.i, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.j, %bb.e ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #18
  resume { ptr, i32 } %.pn

..critedge.loopexit_crit_edge:                    ; preds = %bb.l
  br label %.critedge, !llvm.loop !8

.critedge:                                        ; preds = %bb.b, %.lr.ph, %..critedge.loopexit_crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp11LWOImporter19CopyFaceIndicesLWOBERN9__gnu_cxx17__normal_iteratorIPNS_3LWO4FaceESt6vectorIS4_SaIS4_EEEERPtPKtj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(233) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readnone captures(address) %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8
  %i.b = icmp ult ptr %i.a, %3
  br i1 %i.b, label %.lr.ph51, label %.critedge

.lr.ph51:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %.not56 = icmp eq i32 %4, 0
  br i1 %.not56, label %.critedge, label %.lr.ph57

.lr.ph57:                                         ; preds = %.lr.ph51, %bb.i
  %.in = phi i32 [ %i.d, %bb.i ], [ %4, %.lr.ph51 ]
  %i.d = add i32 %.in, -1                         ; 2 uses
  %i.e = load ptr, ptr %1, align 8                ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.f, ptr %1, align 8
  %i.g = load ptr, ptr %2, align 8                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store ptr %i.h, ptr %2, align 8
  %.0.copyload13 = load i16, ptr %i.g, align 2    ; 3 uses
  %i.i = zext i16 %.0.copyload13 to i32
  store i32 %i.i, ptr %i.e, align 8
  %.not46 = icmp eq i16 %.0.copyload13, 0
  br i1 %.not46, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph57
  %i.j = load ptr, ptr %2, align 8
  %i.k = zext i16 %.0.copyload13 to i64           ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %.not47 = icmp ult ptr %i.l, %3
  br i1 %.not47, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.m = shl nuw nsw i64 %i.k, 2
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load i32, ptr %i.e, align 8
  %.not54 = icmp eq i32 %i.p, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter19SetupNewTextureLWOBERNSt7__cxx114listINS_3LWO7TextureESaIS4_EEEj:bb.a

._crit_edge:                                      ; preds = %bb.o
  %.pre = load ptr, ptr %3, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge, %bb.d, %bb.i, %bb.l, %bb.m, %bb.k, %bb.g
  %i.at = phi ptr [ %.pre, %._crit_edge ], [ %i.ae, %bb.d ], [ %i.ae, %bb.i ], [ %i.ae, %bb.l ], [ %i.ae, %bb.m ], [ %i.ae, %bb.k ], [ %i.ae, %bb.g ] ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ac
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.av = load i64, ptr %i.ac, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret ptr %i.ax

bb.r:                                             ; preds = %bb.p, %bb.e
  %.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.ai, %bb.e ]
  %i.ay = load ptr, ptr %3, align 8               ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.ac
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.r
  %i.ba = load i64, ptr %i.ac, align 8
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp11LWOImporter5GetS0ERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(233) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 6 uses
  %i.d = load i8, ptr %i.c, align 1
  %.not12 = icmp eq i8 %i.d, 0
  br i1 %.not12, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ]
  %i.e = phi ptr [ %i.i, %bb.c ], [ %i.c, %bb.a ]
  %i.f = add i32 %.013, 1                         ; 2 uses
  %i.g = icmp ugt i32 %i.f, %2
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull @.str.31)
  %.pre = load ptr, ptr %i.b, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  store ptr %i.i, ptr %i.b, align 8
  %i.j = load i8, ptr %i.i, align 1
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ], [ %i.i, %bb.c ]
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = sub i64 %i.l, %i.m                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  store ptr %i.o, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.n, ptr %i.a, align 8
  %i.p = icmp ugt i64 %i.n, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %.loopexit
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %3, align 8
  %i.r = load i64, ptr %i.a, align 8
  store i64 %i.r, ptr %i.o, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %.loopexit
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.o, %.loopexit ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.c, align 1
  store i8 %i.t, ptr %i.s, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.c, i64 %i.n, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.u = load i64, ptr %i.a, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.u, ptr %i.v, align 8
  %i.w = load ptr, ptr %3, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.y = load ptr, ptr %1, align 8                ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  %i.ab = load ptr, ptr %3, align 8               ; 5 uses
  %i.ac = icmp eq ptr %i.ab, %i.o                 ; 2 uses
  br i1 %i.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.f
  br i1 %i.ac, label %bb.g, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.f
  br i1 %i.ac, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ad = load i64, ptr %i.v, align 8             ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 16
  call void @llvm.assume(i1 %i.ae)
  switch i64 %i.ad, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.ab, align 1
  store i8 %i.af, ptr %i.y, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %i.ag = load i64, ptr %i.v, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ag, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %1, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 0, ptr %i.aj, align 1
  %.pre.i = load ptr, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ab, ptr %1, align 8
  %i.al = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.al, ptr %i.ak, align 8
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.am = load i64, ptr %i.z, align 8
  store ptr %i.ab, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load <2 x i64>, ptr %i.v, align 8
  store <2 x i64> %i.ao, ptr %i.an, align 8
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.y, ptr %3, align 8
  store i64 %i.am, ptr %i.o, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.o, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.j, %bb.k
  %i.ap = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.y, %bb.j ], [ %i.o, %bb.k ]
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.ap, align 1
  %i.aq = load ptr, ptr %3, align 8               ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.o
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.as = load i64, ptr %i.o, align 8
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %4 = and i64 %i.n, 1
  %i.au = load ptr, ptr %i.b, align 8
  %i.av = sub nuw nsw i64 2, %4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  store ptr %i.aw, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA35_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(35) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4)
  %i.a = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #18
  %i.b = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.a)
          to label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(376) %4) #18
  br label %common.resume

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit: ; preds = %bb.a
  invoke void @_ZN6Assimp6Logger13formatMessageIJERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES7_NS_9Formatter15basic_formatterIcS5_S6_EEOT0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.d = load ptr, ptr %3, align 8
  invoke void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #18
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA35_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3LWO7SurfaceD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.a
  br i1 %.not8.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i
  %.09.i.i = phi ptr [ %i.c, %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.c = load ptr, ptr %.09.i.i, align 8          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 136
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 152 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 80 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
  %i.q = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i

_ZN6Assimp3LWO7TextureD2Ev.exit.i.i:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 168) #20
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit, label %.lr.ph.i.i, !llvm.loop !11

_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit: ; preds = %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not8.i.i1 = icmp eq ptr %i.w, %i.v
  br i1 %.not8.i.i1, label %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit14, label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit, %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i9
  %.09.i.i3 = phi ptr [ %i.x, %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i9 ], [ %i.w, %_ZNSt7__cxx1110_List_baseIN6Assimp3LWO7TextureESaIS3_EED2Ev.exit ] ; 8 uses
  %i.x = load ptr, ptr %.09.i.i3, align 8         ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09.i.i3, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i3, i64 136
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.09.i.i3, i64 152 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i4: ; preds = %.lr.ph.i.i2
  %i.ad = load i64, ptr %i.ab, align 8
  %i.ae = add i64 %i.ad, 1
  tail call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i5: ; preds = %.lr.ph.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i4
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i3, i64 64
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i.i3, i64 80 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i5
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i6
  %i.al = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i3, i64 32 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZN6Assimp3LWO7TextureD2Ev.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i8
end_hunk_1
