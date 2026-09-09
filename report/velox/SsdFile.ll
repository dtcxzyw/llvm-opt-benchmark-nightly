Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/SsdFile?download=true
inline.NumInlined: 4657
inline.NumDeleted: 2099
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN8facebook5velox5cache7SsdFile17growOrEvictLockedEv:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
bb.am:                                            ; preds = %bb.aj
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.an:                                            ; preds = %bb.ak
  invoke void @_ZN8facebook5velox5cache7SsdFile11logEvictionERSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZN8facebook5velox5cache7SsdFile24clearRegionEntriesLockedERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.eg = load ptr, ptr %i.eb, align 8, !tbaa !172
  %i.eh = load ptr, ptr %6, align 8, !tbaa !43
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = ashr exact i64 %i.ek, 2
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !192
  %i.eo = add i64 %i.el, %i.en
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !192
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.eq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ep, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.aq unwind label %bb.ar     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i8 0, ptr %i.er, align 4, !tbaa !102
  %.pre100 = load ptr, ptr %6, align 8, !tbaa !43
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap, %bb.ao, %bb.an
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eu = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !186
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

bb.at:                                            ; preds = %bb.aq, %bb.al
  %i.ez = phi ptr [ %.pre100, %bb.aq ], [ %i.ea, %bb.al ] ; 3 uses
  %.not.i.i.i89 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i89, label %_ZNSt6vectorIiSaIiEED2Ev.exit90, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !186
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.ez to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.ez, i64 noundef %i.fe) #35
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit90

_ZNSt6vectorIiSaIiEED2Ev.exit90:                  ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %.loopexit99

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.as, %bb.ar, %bb.am
  %.pn44 = phi { ptr, i32 } [ %i.ef, %bb.am ], [ %i.es, %bb.ar ], [ %i.es, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.av

.loopexit99:                                      ; preds = %bb.ac, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87, %.preheader98, %.critedge, %_ZNSt6vectorIiSaIiEED2Ev.exit90
  %.234 = phi i1 [ true, %.critedge ], [ %i.ed, %_ZNSt6vectorIiSaIiEED2Ev.exit90 ], [ false, %.preheader98 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 ], [ false, %bb.ac ]
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret i1 %.234

bb.av:                                            ; preds = %bb.ai, %bb.r, %bb.z, %bb.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.merged51 = phi { ptr, i32 } [ %.pn40, %bb.z ], [ %.pn44, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %.pn37.pn, %bb.r ], [ %i.dd, %bb.aa ], [ %.pn48, %bb.ai ]
  call void @_ZN8facebook5velox7process12TraceContextD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.av
  %.merged = phi { ptr, i32 } [ %.merged51, %bb.av ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.bx, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.merged

bb.aw:                                            ; preds = %bb.z
  %i.ff = landingpad { ptr, i32 }
          catch ptr null
  %i.fg = extractvalue { ptr, i32 } %i.ff, 0
  call void @__clang_call_terminate(ptr %i.fg) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile4findENS1_15RawFileCacheKeyE(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::cache::SsdPin") align 8 %0, ptr noundef nonnull align 8 dereferenceable(548) %1, i64 %2, i64 %3) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.facebook::velox::cache::FileCacheKey", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN8facebook5velox7fileIdsEv() ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %i.b, align 8, !tbaa !196
  tail call void @_ZN8facebook5velox11StringIdMap12addReferenceEm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.c, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.e = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33
  %i.f = icmp eq i32 %i.e, 35
  br i1 %i.f, label %bb.b, label %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #34
          to label %.noexc30 unwind label %bb.c

.noexc30:                                         ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit:  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.h = load i8, ptr %i.g, align 4, !tbaa !102, !range !103, !noundef !104
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %.sink.split, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.d:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  br label %bb.l

bb.e:                                             ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !115
  %i.q = lshr i64 %i.p, 8
  %i.r = trunc i64 %i.q to i32
  invoke void @_ZN8facebook5velox5cache14SsdFileTracker11fileTouchedEi(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i32 noundef %i.r)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.t = icmp ult i64 %i.s, 256
  br i1 %i.t, label %.sink.split, label %.noexc24

.noexc24:                                         ; preds = %bb.f
  %i.u = xor i64 %3, %2
  %i.v = mul i64 %i.u, -7070675565921424023       ; 2 uses
  %i.w = lshr i64 %i.v, 47
  %i.x = xor i64 %2, %i.w
  %i.y = xor i64 %i.x, %i.v
  %i.z = mul i64 %i.y, -7070675565921424023       ; 2 uses
  %i.aa = lshr i64 %i.z, 47
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, -7070675565921424023     ; 2 uses
  %i.ad = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ac) ; 2 uses
  %i.ae = lshr i64 %i.ad, 24
  %i.af = or i64 %i.ae, 128                       ; 2 uses
  %i.ag = add i64 %i.ac, %i.ad
  %i.ah = shl nuw nsw i64 %i.af, 1
  %i.ai = or disjoint i64 %i.ah, 1
  %i.aj = trunc nuw i64 %i.af to i8
  %i.ak = insertelement <16 x i8> poison, i8 %i.aj, i64 0
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.am = and i64 %i.s, 255                       ; 2 uses
  %i.an = shl nuw i64 1, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  br label %.noexc26

.noexc26:                                         ; preds = %.noexc24, %.noexc29
  %.022.i86 = phi i64 [ %i.an, %.noexc24 ], [ %i.br, %.noexc29 ]
  %.024.i85 = phi i64 [ %i.ag, %.noexc24 ], [ %i.bs, %.noexc29 ] ; 2 uses
  %i.aq = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i85, i64 range(i64 0, 256) %i.am)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 16     ; 2 uses
  %i.at = icmp eq <16 x i8> %i.as, %i.al
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = and i16 %i.au, 4095
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = icmp ne ptr %i.ar, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.az = extractelement <16 x i8> %i.as, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc28, %.noexc26
  %.sroa.043.0 = phi i32 [ %i.aw, %.noexc26 ], [ %i.bc, %.noexc28 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.043.0, 0
  br i1 %.not, label %bb.g, label %.noexc28

.noexc28:                                         ; preds = %.critedge.i
  %i.ba = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.043.0, i1 true)
  %i.bb = add nuw nsw i32 %.sroa.043.0, 4095
  %i.bc = and i32 %i.bb, %.sroa.043.0
  %i.bd = zext nneg i32 %i.ba to i64
  tail call void @llvm.assume(i1 %i.ax)
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bd
  %i.bf = load ptr, ptr %i.n, align 8, !tbaa !199
  %i.bg = load i32, ptr %i.be, align 4, !tbaa !40
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.bf, i64 %i.bh ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !198
  %i.bl = icmp eq i64 %3, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = icmp eq i64 %2, %i.bn
  %i.bp = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.h, label %.critedge.i, !prof !200, !llvm.loop !5

bb.g:                                             ; preds = %.critedge.i
  %i.bq = icmp eq i8 %i.az, 0
  br i1 %i.bq, label %.sink.split, label %.noexc29, !prof !200

.noexc29:                                         ; preds = %bb.g
  %i.br = add i64 %.022.i86, -1                   ; 2 uses
  %i.bs = add i64 %i.ai, %.024.i85
  %.not.i = icmp eq i64 %i.br, 0
  br i1 %.not.i, label %.sink.split, label %.noexc26, !llvm.loop !6

bb.h:                                             ; preds = %.noexc28
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !50 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !105
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.by = lshr i64 %i.bu, 49
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.by ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !40
  %i.cd = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  invoke void @_ZN8facebook5velox5cache6SsdPinC1ERNS1_7SsdFileENS1_6SsdRunE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(548) %1, i64 %i.bu, i32 %i.bw)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.sink.split:                                      ; preds = %.noexc29, %bb.g, %bb.f, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 20, i1 false)
  %i.cf = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.h
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %2)
          to label %_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  tail call void @__clang_call_terminate(ptr %i.ch) #36
  unreachable

_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit:  ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret void

bb.l:                                             ; preds = %bb.c, %bb.d, %bb.i
  %.pn14 = phi { ptr, i32 } [ %i.ce, %bb.i ], [ %i.k, %bb.d ], [ %i.j, %bb.c ]
  call void @_ZN8facebook5velox5cache12FileCacheKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  resume { ptr, i32 } %.pn14
}

declare noundef nonnull align 8 dereferenceable(104) ptr @_ZN8facebook5velox7fileIdsEv() local_unnamed_addr #5

declare void @_ZN8facebook5velox5cache14SsdFileTracker11fileTouchedEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox5cache12FileCacheKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !195    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN8facebook5velox13StringIdLeaseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !196
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %i.c)
          to label %_ZN8facebook5velox13StringIdLeaseD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #36
  unreachable

_ZN8facebook5velox13StringIdLeaseD2Ev.exit:       ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox5cache7SsdFile5eraseENS1_15RawFileCacheKeyE(ptr noundef nonnull align 8 dereferenceable(548) %0, i64 %1, i64 %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.facebook::velox::cache::FileCacheKey", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN8facebook5velox7fileIdsEv() ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !195
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !196
  tail call void @_ZN8facebook5velox11StringIdMap12addReferenceEm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %1)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.c, align 8, !tbaa !198
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.e = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33
  %i.f = icmp eq i32 %i.e, 35
  br i1 %i.f, label %bb.b, label %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef 35) #34
          to label %.noexc59 unwind label %bb.d

.noexc59:                                         ; preds = %bb.b
  unreachable

_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit:  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load i64, ptr %i.h, align 8, !tbaa !115  ; 2 uses
  %i.j = icmp ult i64 %i.i, 256
  br i1 %i.j, label %.loopexit, label %.noexc20

.noexc20:                                         ; preds = %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit
  %i.k = xor i64 %2, %1
  %i.l = mul i64 %i.k, -7070675565921424023       ; 2 uses
  %i.m = lshr i64 %i.l, 47
  %i.n = xor i64 %1, %i.m
  %i.o = xor i64 %i.n, %i.l
  %i.p = mul i64 %i.o, -7070675565921424023       ; 2 uses
  %i.q = lshr i64 %i.p, 47
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -7070675565921424023       ; 2 uses
  %i.t = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.s) ; 2 uses
  %i.u = lshr i64 %i.t, 24
  %i.v = or i64 %i.u, 128                         ; 2 uses
  %i.w = add i64 %i.s, %i.t                       ; 2 uses
  %i.x = shl nuw nsw i64 %i.v, 1
  %i.y = or disjoint i64 %i.x, 1                  ; 2 uses
  %i.z = trunc nuw i64 %i.v to i8
  %i.aa = insertelement <16 x i8> poison, i8 %i.z, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ac = and i64 %i.i, 255                       ; 3 uses
  %i.ad = shl nuw i64 1, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114 ; 2 uses
  br label %.noexc22

.noexc22:                                         ; preds = %.noexc20, %.noexc25
  %.022.i144 = phi i64 [ %i.ad, %.noexc20 ], [ %i.bh, %.noexc25 ]
  %.024.i143 = phi i64 [ %i.w, %.noexc20 ], [ %i.bi, %.noexc25 ] ; 2 uses
  %i.ag = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i143, i64 range(i64 0, 256) %i.ac)
  %i.ah = getelementptr inbounds nuw [64 x i8], ptr %i.af, i64 %i.ag ; 3 uses
  %i.ai = load <16 x i8>, ptr %i.ah, align 16     ; 2 uses
  %i.aj = icmp eq <16 x i8> %i.ai, %i.ab
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = and i16 %i.ak, 4095
  %i.am = zext nneg i16 %i.al to i32
  %i.an = icmp ne ptr %i.ah, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ap = extractelement <16 x i8> %i.ai, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc24, %.noexc22
  %.sroa.074.0 = phi i32 [ %i.am, %.noexc22 ], [ %i.as, %.noexc24 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.074.0, 0
  br i1 %.not, label %bb.c, label %.noexc24

.noexc24:                                         ; preds = %.critedge.i
  %i.aq = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.074.0, i1 true)
  %i.ar = add nuw nsw i32 %.sroa.074.0, 4095
  %i.as = and i32 %i.ar, %.sroa.074.0
  %i.at = zext nneg i32 %i.aq to i64
  tail call void @llvm.assume(i1 %i.an)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.at
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !199
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !40 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [40 x i8], ptr %i.av, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !198
  %i.bb = icmp eq i64 %2, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp eq i64 %1, %i.bd
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %i.bf, label %.noexc56, label %.critedge.i, !prof !200, !llvm.loop !5

bb.c:                                             ; preds = %.critedge.i
  %i.bg = icmp eq i8 %i.ap, 0
  br i1 %i.bg, label %.loopexit, label %.noexc25, !prof !200

.noexc25:                                         ; preds = %bb.c
  %i.bh = add i64 %.022.i144, -1                  ; 2 uses
  %i.bi = add i64 %i.y, %.024.i143
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %.loopexit, label %.noexc22, !llvm.loop !6

bb.d:                                             ; preds = %bb.b
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %.noexc29
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  br label %bb.h

.noexc56:                                         ; preds = %.noexc24, %.noexc58
  %.022.i41148 = phi i64 [ %i.ce, %.noexc58 ], [ %i.ad, %.noexc24 ]
  %.024.i40147 = phi i64 [ %i.cf, %.noexc58 ], [ %i.w, %.noexc24 ] ; 2 uses
  %i.bm = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i40147, i64 range(i64 0, 256) %i.ac)
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.af, i64 %i.bm ; 3 uses
  %i.bo = load <16 x i8>, ptr %i.bn, align 16     ; 2 uses
  %i.bp = icmp eq <16 x i8> %i.bo, %i.ab
  %i.bq = bitcast <16 x i1> %i.bp to i16
  %i.br = and i16 %i.bq, 4095
  %i.bs = zext nneg i16 %i.br to i32
  %i.bt = icmp ne ptr %i.bn, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bv = extractelement <16 x i8> %i.bo, i64 15
  br label %.critedge.i43

.critedge.i43:                                    ; preds = %.noexc57, %.noexc56
  %.sroa.086.0 = phi i32 [ %i.bs, %.noexc56 ], [ %i.by, %.noexc57 ] ; 4 uses
  %.not137 = icmp eq i32 %.sroa.086.0, 0
  br i1 %.not137, label %bb.f, label %.noexc57

.noexc57:                                         ; preds = %.critedge.i43
  %i.bw = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.086.0, i1 true)
  %i.bx = add nuw nsw i32 %.sroa.086.0, 4095
  %i.by = and i32 %i.bx, %.sroa.086.0
  %i.bz = zext nneg i32 %i.bw to i64              ; 3 uses
  tail call void @llvm.assume(i1 %i.bt)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !40
  %i.cc = icmp eq i32 %i.aw, %i.cb
  br i1 %i.cc, label %.noexc29.loopexit, label %.critedge.i43, !prof !200, !llvm.loop !7

bb.f:                                             ; preds = %.critedge.i43
  %i.cd = icmp eq i8 %i.bv, 0
  br i1 %i.cd, label %.noexc29, label %.noexc58, !prof !200

.noexc58:                                         ; preds = %bb.f
  %i.ce = add i64 %.022.i41148, -1                ; 2 uses
  %i.cf = add i64 %i.y, %.024.i40147
  %.not.i42 = icmp eq i64 %i.ce, 0
  br i1 %.not.i42, label %.noexc29, label %.noexc56, !llvm.loop !8

.noexc29.loopexit:                                ; preds = %.noexc57
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.bz
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc58, %bb.f, %.noexc29.loopexit
  %.sroa.088.3 = phi ptr [ %i.cg, %.noexc29.loopexit ], [ null, %bb.f ], [ null, %.noexc58 ]
  %.sroa.589.3 = phi i64 [ %i.bz, %.noexc29.loopexit ], [ 0, %bb.f ], [ 0, %.noexc58 ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %.sroa.088.3, i64 %.sroa.589.3, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %.loopexit unwind label %bb.e

.loopexit:                                        ; preds = %.noexc25, %bb.c, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit, %.noexc29
  %.0 = phi i1 [ false, %_ZNSt10lock_guardISt12shared_mutexEC2ERS0_.exit ], [ true, %.noexc29 ], [ false, %bb.c ], [ false, %.noexc25 ]
  %i.ch = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #33 ; 0 uses
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 noundef %1)
          to label %_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #36
  unreachable

_ZN8facebook5velox5cache12FileCacheKeyD2Ev.exit:  ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i1 %.0

bb.h:                                             ; preds = %bb.e, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.bk, %bb.e ], [ %i.bj, %bb.d ]
  call void @_ZN8facebook5velox5cache12FileCacheKeyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EE(ptr dead_on_unwind noalias writable sret(%"struct.facebook::velox::CoalesceIoStats") align 8 %0, ptr noundef nonnull align 8 dereferenceable(548) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.473", align 16 ; 7 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.462", align 16 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::function", align 8    ; 9 uses
  %11 = alloca %"class.std::function.129", align 8 ; 9 uses
  %12 = alloca %"class.facebook::velox::cache::SsdRun", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !455
  %i.c = load ptr, ptr %2, align 8, !tbaa !203    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !206  ; 2 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !207    ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %.not = icmp eq i64 %i.g, %i.n
  br i1 %.not, label %bb.e, label %bb.b, !prof !200

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !456
  store i64 %i.g, ptr %5, align 16, !tbaa !45, !alias.scope !457, !noalias !456
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.n, ptr %i.o, align 16, !tbaa !45, !alias.scope !457, !noalias !456
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.6, i64 11, i64 68, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !456
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr nonnull @.str.6) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %6, align 8, !tbaa !49     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.r, align 8, !tbaa !45
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %_ZNSt14_Function_baseD2Ev.exit95

bb.e:                                             ; preds = %bb.a
  %i.v = icmp eq ptr %i.j, %i.i
  br i1 %i.v, label %bb.f, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 1)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.o
  %i.aa = udiv i64 %i.co, %i.g
  %i.ab = icmp ult i64 %i.aa, 10000
  %i.ac = select i1 %i.ab, i32 25000, i32 50000
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.ag, align 8
  store i64 %i.ad, ptr %10, align 8, !tbaa !209
  store ptr @"_ZNSt17_Function_handlerIFmiEZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E9_M_invokeERKSt9_Any_dataOi", ptr %i.af, align 8, !tbaa !459
  store ptr @"_ZNSt17_Function_handlerIFmiEZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation", ptr %i.ae, align 8, !tbaa !211
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.ak, align 8
  store i64 %i.ah, ptr %11, align 8, !tbaa !212
  store ptr @"_ZNSt17_Function_handlerIFvRKSt6vectorIN8facebook5velox5cache8CachePinESaIS4_EEiimRKS0_IN5folly5RangeIPcEESaISC_EEEZNS3_7SsdFile4loadERKS0_INS3_6SsdPinESaISJ_EES8_E3$_1E9_M_invokeERKSt9_Any_dataS8_OiST_OmSG_", ptr %i.aj, align 8, !tbaa !461
  store ptr @"_ZNSt17_Function_handlerIFvRKSt6vectorIN8facebook5velox5cache8CachePinESaIS4_EEiimRKS0_IN5folly5RangeIPcEESaISC_EEEZNS3_7SsdFile4loadERKS0_INS3_6SsdPinESaISJ_EES8_E3$_1E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation", ptr %i.ai, align 8, !tbaa !211
  invoke void @_ZN8facebook5velox5cache8readPinsERKSt6vectorINS1_8CachePinESaIS3_EEiiSt8functionIFmiEES8_IFvS7_iimRKS2_IN5folly5RangeIPcEESaISE_EEEE(ptr dead_on_unwind writable sret(%"struct.facebook::velox::CoalesceIoStats") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %i.ac, i32 noundef 900, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 %11)
          to label %bb.p unwind label %bb.u

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %.056124 = phi i64 [ 0, %.lr.ph ], [ %i.co, %bb.o ]
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.am, align 8, !tbaa !39 ; 2 uses
  %i.an = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.ao = and i32 %i.an, 8388607
  %i.ap = add nuw nsw i32 %i.ao, 1                ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !215 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.at = load i32, ptr %i.as, align 8, !tbaa !237 ; 2 uses
  %i.au = icmp ult i32 %i.ap, %i.at
  br i1 %i.au, label %bb.h, label %bb.o, !prof !44

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 112
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !462
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.az = zext nneg i32 %i.ap to i64
  call void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, i64 noundef %i.az, i32 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %i.ba = load i32, ptr %i.av, align 8, !tbaa !237
  %i.bb = sext i32 %i.ba to i64
  invoke void @_ZN8facebook5velox13succinctBytesB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, i64 noundef %i.bb, i32 noundef 2)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !463
  %i.bc = load ptr, ptr %8, align 8, !tbaa !49, !noalias !463
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !107, !noalias !463
  store ptr %i.bc, ptr %4, align 16, !tbaa !45, !noalias !463
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !45, !noalias !463
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = load ptr, ptr %9, align 8, !tbaa !49, !noalias !463
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107, !noalias !463
  store ptr %i.bh, ptr %i.bg, align 16, !tbaa !45, !noalias !463
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !45, !noalias !463
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.10, i64 61, i64 221, ptr nonnull %4)
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox5cache7SsdFile11logEvictionERSt6vectorIiSaIiEE:bb.a
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #33
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.l ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  invoke void @__cxa_end_catch()
          to label %bb.o unwind label %bb.q

bb.n:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.c
  %.merged17 = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.aq, %bb.n ], [ %.pn, %bb.m ]
  %i.ar = load ptr, ptr %2, align 8, !tbaa !244   ; 3 uses
  %.not.i.i.i20 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i20, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !245
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.av) #35
  br label %.body

.body:                                            ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %.merged17

bb.q:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #36
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile24clearRegionEntriesLockedERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %3 = alloca %"struct.std::hash.155", align 1    ; 3 uses
  %4 = alloca %"struct.std::equal_to.158", align 1 ; 3 uses
  %5 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = load ptr, ptr %1, align 8, !tbaa !173
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEEC2IN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS0_EEEEET_SL_mRKS6_RKS4_RKS0_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %i.a, ptr %i.c, i64 noundef 0, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !115
  %i.g = lshr i64 %i.f, 8                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.g
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -40
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %.sroa.047.091 = phi ptr [ %i.j, %.lr.ph ], [ %.sroa.047.1, %bb.j ] ; 5 uses
  %.sroa.10.090 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.10.1, %bb.j ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.047.091, i64 24
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50
  %i.q = lshr i64 %i.p, 49                        ; 2 uses
  %i.r = trunc nuw nsw i64 %i.q to i32            ; 3 uses
  %i.s = load i64, ptr %i.k, align 8, !tbaa !250
  %.not.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.not.i.i.i, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %bb.c
  %.sroa.06.0.in.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.c ], [ %i.m, %bb.b ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !191 ; 3 uses
  %i.t = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.t, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !40
  %i.w = icmp eq i32 %i.v, %i.r
  br i1 %i.w, label %.noexc20, label %.preheader, !llvm.loop !478

bb.d:                                             ; preds = %bb.b
  %i.x = load i64, ptr %i.l, align 8, !tbaa !251  ; 2 uses
  %i.y = urem i64 %i.q, %i.x                      ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !252
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !253 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !191 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = icmp eq i32 %i.ae, %i.r
  br i1 %i.af, label %.noexc20, label %.lr.ph.i.i.i.i.i

bb.f:                                             ; preds = %bb.g
  %i.ag = icmp eq i32 %i.aj, %i.r
  br i1 %i.ag, label %.noexc20, label %.lr.ph.i.i.i.i.i, !llvm.loop !479

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %bb.f
  %.020.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %i.ac, %bb.e ]
  %i.ah = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !191 ; 3 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !40 ; 2 uses
  %i.ak = sext i32 %i.aj to i64
  %i.al = urem i64 %i.ak, %i.x
  %.not19.i.i.i.i.i = icmp eq i64 %i.al, %i.y
  br i1 %.not19.i.i.i.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !479

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.g
  br label %.loopexit, !llvm.loop !479

.noexc20:                                         ; preds = %bb.f, %bb.c, %bb.e
  %i.am = ptrtoint ptr %.sroa.047.091 to i64
  %i.an = ptrtoint ptr %.sroa.10.090 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = sdiv exact i64 %i.ao, 40                ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 4294967296
  call void @llvm.assume(i1 %i.aq)
  %i.ar = trunc nuw i64 %i.ap to i32
  %i.as = load i64, ptr %i.e, align 8, !tbaa !115 ; 2 uses
  %i.at = icmp ult i64 %i.as, 256
  br i1 %i.at, label %.noexc21, label %.noexc25

.noexc25:                                         ; preds = %.noexc20
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !199
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !196 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !198
  %i.ba = xor i64 %i.az, %i.ax
  %i.bb = mul i64 %i.ba, -7070675565921424023     ; 2 uses
  %i.bc = lshr i64 %i.bb, 47
  %i.bd = xor i64 %i.ax, %i.bc
  %i.be = xor i64 %i.bd, %i.bb
  %i.bf = mul i64 %i.be, -7070675565921424023     ; 2 uses
  %i.bg = lshr i64 %i.bf, 47
  %i.bh = xor i64 %i.bg, %i.bf
  %i.bi = mul i64 %i.bh, -7070675565921424023     ; 2 uses
  %i.bj = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.bi) ; 2 uses
  %i.bk = lshr i64 %i.bj, 24
  %i.bl = or i64 %i.bk, 128                       ; 2 uses
  %i.bm = add i64 %i.bi, %i.bj
  %i.bn = shl nuw nsw i64 %i.bl, 1
  %i.bo = or disjoint i64 %i.bn, 1
  %i.bp = trunc nuw i64 %i.bl to i8
  %i.bq = insertelement <16 x i8> poison, i8 %i.bp, i64 0
  %i.br = shufflevector <16 x i8> %i.bq, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.bs = and i64 %i.as, 255                      ; 2 uses
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = load ptr, ptr %i.n, align 8, !tbaa !114
  br label %.noexc33

.noexc33:                                         ; preds = %.noexc25, %.noexc35
  %.022.i89 = phi i64 [ %i.bt, %.noexc25 ], [ %i.cn, %.noexc35 ]
  %.024.i88 = phi i64 [ %i.bm, %.noexc25 ], [ %i.co, %.noexc35 ] ; 2 uses
  %i.bv = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i88, i64 range(i64 0, 256) %i.bs)
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %i.bu, i64 %i.bv ; 3 uses
  %i.bx = load <16 x i8>, ptr %i.bw, align 16     ; 2 uses
  %i.by = icmp eq <16 x i8> %i.bx, %i.br
  %i.bz = bitcast <16 x i1> %i.by to i16
  %i.ca = and i16 %i.bz, 4095
  %i.cb = zext nneg i16 %i.ca to i32
  %i.cc = icmp ne ptr %i.bw, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.ce = extractelement <16 x i8> %i.bx, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc34, %.noexc33
  %.sroa.057.0 = phi i32 [ %i.cb, %.noexc33 ], [ %i.ch, %.noexc34 ] ; 4 uses
  %.not81 = icmp eq i32 %.sroa.057.0, 0
  br i1 %.not81, label %bb.h, label %.noexc34

.noexc34:                                         ; preds = %.critedge.i
  %i.cf = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.057.0, i1 true)
  %i.cg = add nuw nsw i32 %.sroa.057.0, 4095
  %i.ch = and i32 %i.cg, %.sroa.057.0
  %i.ci = zext nneg i32 %i.cf to i64              ; 3 uses
  call void @llvm.assume(i1 %i.cc)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !40
  %i.cl = icmp eq i32 %i.ck, %i.ar
  br i1 %i.cl, label %.noexc21.loopexit, label %.critedge.i, !prof !200, !llvm.loop !7

bb.h:                                             ; preds = %.critedge.i
  %i.cm = icmp eq i8 %i.ce, 0
  br i1 %i.cm, label %.noexc21, label %.noexc35, !prof !200

.noexc35:                                         ; preds = %bb.h
  %i.cn = add i64 %.022.i89, -1                   ; 2 uses
  %i.co = add i64 %i.bo, %.024.i88
  %.not.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i, label %.noexc21, label %.noexc33, !llvm.loop !8

.noexc21.loopexit:                                ; preds = %.noexc34
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.ci
  br label %.noexc21

.noexc21:                                         ; preds = %.noexc35, %bb.h, %.noexc21.loopexit, %.noexc20
  %.sroa.055.0 = phi ptr [ null, %.noexc20 ], [ %i.cp, %.noexc21.loopexit ], [ null, %bb.h ], [ null, %.noexc35 ]
  %.sroa.556.0 = phi i64 [ 0, %.noexc20 ], [ %i.ci, %.noexc21.loopexit ], [ 0, %bb.h ], [ 0, %.noexc35 ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr %.sroa.055.0, i64 %.sroa.556.0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %.noexc22 unwind label %bb.i

.noexc22:                                         ; preds = %.noexc21
  %i.cq = icmp eq ptr %.sroa.047.091, %.sroa.10.090
  br i1 %i.cq, label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit, label %.noexc24

.noexc24:                                         ; preds = %.noexc22
  %i.cr = add nuw nsw i64 %i.ap, 4294967295
  %i.cs = load ptr, ptr %i.d, align 8, !tbaa !199 ; 2 uses
  %i.ct = and i64 %i.cr, 4294967295
  %i.cu = getelementptr inbounds nuw [40 x i8], ptr %i.cs, i64 %i.ct
  %.fca.0.insert.i40 = insertvalue { ptr, ptr } poison, ptr %i.cu, 0
  %.fca.1.insert.i41 = insertvalue { ptr, ptr } %.fca.0.insert.i40, ptr %i.cs, 1
  br label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit

_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit: ; preds = %.noexc24, %.noexc22
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i41, %.noexc24 ], [ zeroinitializer, %.noexc22 ] ; 2 uses
  %i.cv = extractvalue { ptr, ptr } %.pn.i, 0
  %i.cw = extractvalue { ptr, ptr } %.pn.i, 1
  br label %bb.j

bb.i:                                             ; preds = %.noexc21
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  resume { ptr, i32 } %i.cx

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i.i, %bb.d
  %i.cy = icmp eq ptr %.sroa.047.091, %.sroa.10.090
  %i.cz = getelementptr inbounds i8, ptr %.sroa.047.091, i64 -40
  br i1 %i.cy, label %._crit_edge, label %bb.j, !prof !44

bb.j:                                             ; preds = %.loopexit, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit
  %.sroa.10.1 = phi ptr [ %.sroa.10.090, %.loopexit ], [ %i.cw, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ]
  %.sroa.047.1 = phi ptr [ %i.cz, %.loopexit ], [ %i.cv, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ] ; 2 uses
  %.not = icmp eq ptr %.sroa.047.1, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !480

._crit_edge:                                      ; preds = %.loopexit, %bb.j, %bb.a
  %i.da = load ptr, ptr %1, align 8, !tbaa !173   ; 2 uses
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !173 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %._crit_edge95, label %.lr.ph94

.lr.ph94:                                         ; preds = %._crit_edge
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !181
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !185
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !185
  br label %bb.l

._crit_edge95:                                    ; preds = %bb.l, %._crit_edge
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !254 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge95, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.dl, %.lr.ph.i.i.i.i ], [ %i.dk, %._crit_edge95 ] ; 2 uses
  %i.dl = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !191 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #35
  %.not.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %._crit_edge95
  %i.dm = load ptr, ptr %2, align 8, !tbaa !252
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !251
  %i.dp = shl i64 %i.do, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dm, i8 0, i64 %i.dp, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, i8 0, i64 16, i1 false)
  %i.dq = load ptr, ptr %2, align 8, !tbaa !252   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.dt = load i64, ptr %i.dn, align 8, !tbaa !251
  %i.du = shl i64 %i.dt, 3
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #35
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void

bb.l:                                             ; preds = %.lr.ph94, %bb.l
  %.sroa.042.092 = phi ptr [ %i.da, %.lr.ph94 ], [ %i.ea, %bb.l ] ; 2 uses
  %i.dv = load i32, ptr %.sroa.042.092, align 4, !tbaa !40
  %i.dw = sext i32 %i.dv to i64                   ; 3 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dw
  store double 0.000000e+00, ptr %i.dx, align 8, !tbaa !179
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dw
  store i32 0, ptr %i.dy, align 4, !tbaa !40
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dw
  store i32 0, ptr %i.dz, align 4, !tbaa !40
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.042.092, i64 4 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.db
  br i1 %i.eb, label %._crit_edge95, label %bb.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.i = load ptr, ptr %0, align 8, !tbaa !43     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #37 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !200

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !40
  store i32 %i.r, ptr %i.o, align 4, !tbaa !40
  br label %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit

_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !43     ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #35
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !43
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.x, ptr %i.g, align 8, !tbaa !186
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !172  ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox5cache7SsdFile5clearEv:bb.a

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i32 %.06.i, ptr %.sroa.02.05.i, align 4, !tbaa !40
  %i.bk = add nuw nsw i32 %.06.i, 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 4 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.an
  br i1 %i.bm, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !605

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !606 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !606 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not5.i.i.i.i.i, label %_ZN8facebook5velox5cache14SsdFileTracker5clearEv.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.br = ptrtoaddr ptr %i.bq to i64
  %i.bs = ptrtoaddr ptr %i.bo to i64
  %reass.sub = sub i64 %i.br, %i.bs
  %i.bt = and i64 %reass.sub, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bo, i8 0, i64 %i.bt, i1 false), !tbaa !179
  br label %_ZN8facebook5velox5cache14SsdFileTracker5clearEv.exit

_ZN8facebook5velox5cache14SsdFileTracker5clearEv.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_T0_.exit
  %i.bu = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #33 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  %i.bw = tail call noundef i32 @pthread_rwlock_unlock(ptr noundef nonnull align 8 dereferenceable(56) %i.a) #33 ; 0 uses
  resume { ptr, i32 } %i.bv
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_(ptr noundef nonnull align 8 dereferenceable(548) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.501", align 8    ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.464", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.464", align 16 ; 5 uses
  %6 = alloca %"struct.std::pair.501", align 8    ; 3 uses
  %7 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::vector.3", align 8     ; 14 uses
  %9 = alloca %"class.folly::F14FastSet", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.google::LogMessage", align 8 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  call void @_ZN6google10LogMessageC1EPKci(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull @.str.3, i32 noundef 589)
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %bb.c unwind label %bb.e       ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.15, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.c
  %i.h = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.43, i64 noundef 21)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !107
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.i, i64 noundef %i.k)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133
  %i.m = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull @.str.44, i64 noundef 27)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 50)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull @.str.45, i64 noundef 18)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138 unwind label %bb.e ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit138: ; preds = %bb.d
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.bz

bb.e:                                             ; preds = %bb.d, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit133, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.c, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit136, %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %7) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %bb.ca

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.r = tail call noundef i32 @pthread_rwlock_wrlock(ptr noundef nonnull align 8 dereferenceable(56) %i.q) #33
  %i.s = icmp eq i32 %i.r, 35
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_system_errori(i32 noundef 35) #34
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !115
  %i.w = lshr i64 %i.v, 8                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.x = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.w
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -40
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %.032378 = phi i64 [ 0, %.lr.ph ], [ %.234, %bb.q ] ; 7 uses
  %.sroa.0242.0376 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.0242.1, %bb.q ] ; 10 uses
  %.sroa.15.0374 = phi ptr [ %i.x, %.lr.ph ], [ %.sroa.15.1, %bb.q ] ; 8 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0242.0376, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0242.0376, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !196 ; 8 uses
  %.not353 = icmp eq i64 %i.ag, -1
  br i1 %.not353, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp eq ptr %.sroa.0242.0376, %.sroa.15.0374
  %i.ai = getelementptr inbounds i8, ptr %.sroa.0242.0376, i64 -40
  br i1 %i.ah, label %._crit_edge, label %bb.q, !prof !44, !llvm.loop !607

bb.k:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.ak = lshr i64 %i.aj, 8
  switch i64 %i.ak, label %.noexc102 [
    i64 0, label %.thread298
    i64 1, label %.noexc86
  ]

.noexc86:                                         ; preds = %bb.k
  %i.al = load i64, ptr %i.aa, align 8, !tbaa !276
  %i.am = and i64 %i.al, -8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !39
  %i.ap = icmp eq i64 %i.ag, %i.ao
  br i1 %i.ap, label %.thread303, label %.thread298

.noexc102:                                        ; preds = %bb.k
  %i.aq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ag) ; 2 uses
  %i.ar = lshr i64 %i.aq, 24
  %i.as = or i64 %i.ar, 128                       ; 2 uses
  %i.at = add i64 %i.aq, %i.ag
  %i.au = shl nuw nsw i64 %i.as, 1
  %i.av = or disjoint i64 %i.au, 1
  %i.aw = trunc nuw i64 %i.as to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.az = and i64 %i.aj, 255                      ; 2 uses
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = load ptr, ptr %1, align 8, !tbaa !280
  br label %.noexc104

.noexc104:                                        ; preds = %.noexc102, %.noexc107
  %.023.i369 = phi i64 [ %i.ba, %.noexc102 ], [ %i.bv, %.noexc107 ]
  %.025.i368 = phi i64 [ %i.at, %.noexc102 ], [ %i.bw, %.noexc107 ] ; 2 uses
  %i.bc = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i368, i64 range(i64 0, 256) %i.az)
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.bb, i64 %i.bc ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.bf, i32 0, i32 3, i32 1)
  %i.bg = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bh = icmp eq <16 x i8> %i.bg, %i.ay
  %i.bi = bitcast <16 x i1> %i.bh to i16
  %i.bj = and i16 %i.bi, 16383
  %i.bk = zext nneg i16 %i.bj to i32
  %i.bl = icmp ne ptr %i.bd, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.bm = extractelement <16 x i8> %i.bg, i64 15
  br label %.critedge.i91

.critedge.i91:                                    ; preds = %.noexc106, %.noexc104
  %.sroa.0275.0 = phi i32 [ %i.bk, %.noexc104 ], [ %i.bp, %.noexc106 ] ; 4 uses
  %.not354 = icmp eq i32 %.sroa.0275.0, 0
  br i1 %.not354, label %bb.l, label %.noexc106

.noexc106:                                        ; preds = %.critedge.i91
  %i.bn = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0275.0, i1 true)
  %i.bo = add nuw nsw i32 %.sroa.0275.0, 16383
  %i.bp = and i32 %i.bo, %.sroa.0275.0
  %i.bq = zext nneg i32 %i.bn to i64
  call void @llvm.assume(i1 %i.bl)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !39
  %i.bt = icmp eq i64 %i.ag, %i.bs
  br i1 %i.bt, label %.thread303, label %.critedge.i91, !prof !200, !llvm.loop !14

bb.l:                                             ; preds = %.critedge.i91
  %i.bu = icmp eq i8 %i.bm, 0
  br i1 %i.bu, label %.thread298, label %.noexc107, !prof !200

.noexc107:                                        ; preds = %bb.l
  %i.bv = add i64 %.023.i369, -1                  ; 2 uses
  %i.bw = add i64 %i.av, %.025.i368
  %.not.i90 = icmp eq i64 %i.bv, 0
  br i1 %.not.i90, label %.thread298, label %.noexc104, !llvm.loop !15

.thread298:                                       ; preds = %.noexc107, %bb.l, %.noexc86, %bb.k
  %i.bx = icmp eq ptr %.sroa.0242.0376, %.sroa.15.0374
  %i.by = getelementptr inbounds i8, ptr %.sroa.0242.0376, i64 -40
  br i1 %i.bx, label %._crit_edge, label %bb.q, !prof !44, !llvm.loop !607

.thread303:                                       ; preds = %.noexc106, %.noexc86
  %i.bz = load i64, ptr %i.ae, align 8, !tbaa !50 ; 2 uses
  %i.ca = lshr i64 %i.bz, 49                      ; 2 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ca
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.m, label %.noexc54

bb.m:                                             ; preds = %.thread303
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store i64 %i.ag, ptr %i.b, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33, !noalias !626
  %i.cf = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ag) ; 2 uses
  %i.cg = lshr i64 %i.cf, 24
  %i.ch = or i64 %i.cg, 128
  %i.ci = add i64 %i.cf, %i.ag
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE19tryEmplaceValueImplImJmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkImEEEEbES7_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.501") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 %i.ci, i64 %i.ch, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33, !noalias !626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  %i.cj = icmp eq ptr %.sroa.0242.0376, %.sroa.15.0374
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0242.0376, i64 -40
  br i1 %i.cj, label %._crit_edge, label %bb.q, !prof !44, !llvm.loop !607

bb.o:                                             ; preds = %bb.m
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  br label %bb.by

.noexc54:                                         ; preds = %.thread303
  %i.cm = trunc i64 %i.bz to i32
  %i.cn = and i32 %i.cm, 8388607
  %i.co = add nuw nsw i32 %i.cn, 1
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !185
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ca ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !40
  %i.cs = add i32 %i.co, %i.cr
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !40
  %i.ct = ptrtoint ptr %.sroa.0242.0376 to i64
  %i.cu = ptrtoint ptr %.sroa.15.0374 to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 2 uses
  %i.cw = sdiv exact i64 %i.cv, 40                ; 3 uses
  %i.cx = icmp ult i64 %i.cw, 4294967296
  call void @llvm.assume(i1 %i.cx)
  %i.cy = trunc nuw i64 %i.cw to i32
  %i.cz = load i64, ptr %i.u, align 8, !tbaa !115 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 256
  br i1 %i.da, label %.noexc55, label %.noexc59

.noexc59:                                         ; preds = %.noexc54
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !199
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cv ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !196 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !198
  %i.dh = xor i64 %i.dg, %i.de
  %i.di = mul i64 %i.dh, -7070675565921424023     ; 2 uses
  %i.dj = lshr i64 %i.di, 47
  %i.dk = xor i64 %i.de, %i.dj
  %i.dl = xor i64 %i.dk, %i.di
  %i.dm = mul i64 %i.dl, -7070675565921424023     ; 2 uses
  %i.dn = lshr i64 %i.dm, 47
  %i.do = xor i64 %i.dn, %i.dm
  %i.dp = mul i64 %i.do, -7070675565921424023     ; 2 uses
  %i.dq = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.dp) ; 2 uses
  %i.dr = lshr i64 %i.dq, 24
  %i.ds = or i64 %i.dr, 128                       ; 2 uses
  %i.dt = add i64 %i.dp, %i.dq
  %i.du = shl nuw nsw i64 %i.ds, 1
  %i.dv = or disjoint i64 %i.du, 1
  %i.dw = trunc nuw i64 %i.ds to i8
  %i.dx = insertelement <16 x i8> poison, i8 %i.dw, i64 0
  %i.dy = shufflevector <16 x i8> %i.dx, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dz = and i64 %i.cz, 255                      ; 2 uses
  %i.ea = shl nuw i64 1, %i.dz
  %i.eb = load ptr, ptr %i.ad, align 8, !tbaa !114
  br label %.noexc67

.noexc67:                                         ; preds = %.noexc59, %.noexc69
  %.022.i373 = phi i64 [ %i.ea, %.noexc59 ], [ %i.eu, %.noexc69 ]
  %.024.i372 = phi i64 [ %i.dt, %.noexc59 ], [ %i.ev, %.noexc69 ] ; 2 uses
  %i.ec = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i372, i64 range(i64 0, 256) %i.dz)
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.eb, i64 %i.ec ; 3 uses
  %i.ee = load <16 x i8>, ptr %i.ed, align 16     ; 2 uses
  %i.ef = icmp eq <16 x i8> %i.ee, %i.dy
  %i.eg = bitcast <16 x i1> %i.ef to i16
  %i.eh = and i16 %i.eg, 4095
  %i.ei = zext nneg i16 %i.eh to i32
  %i.ej = icmp ne ptr %i.ed, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %i.el = extractelement <16 x i8> %i.ee, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc68, %.noexc67
  %.sroa.0260.0 = phi i32 [ %i.ei, %.noexc67 ], [ %i.eo, %.noexc68 ] ; 4 uses
  %.not355 = icmp eq i32 %.sroa.0260.0, 0
  br i1 %.not355, label %bb.p, label %.noexc68

.noexc68:                                         ; preds = %.critedge.i
  %i.em = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0260.0, i1 true)
  %i.en = add nuw nsw i32 %.sroa.0260.0, 4095
  %i.eo = and i32 %i.en, %.sroa.0260.0
  %i.ep = zext nneg i32 %i.em to i64              ; 3 uses
  call void @llvm.assume(i1 %i.ej)
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !40
  %i.es = icmp eq i32 %i.er, %i.cy
  br i1 %i.es, label %.noexc55.loopexit, label %.critedge.i, !prof !200, !llvm.loop !7

bb.p:                                             ; preds = %.critedge.i
  %i.et = icmp eq i8 %i.el, 0
  br i1 %i.et, label %.noexc55, label %.noexc69, !prof !200

.noexc69:                                         ; preds = %bb.p
  %i.eu = add i64 %.022.i373, -1                  ; 2 uses
  %i.ev = add i64 %i.dv, %.024.i372
  %.not.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i, label %.noexc55, label %.noexc67, !llvm.loop !8

.noexc55.loopexit:                                ; preds = %.noexc68
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ep
  br label %.noexc55

.noexc55:                                         ; preds = %.noexc69, %bb.p, %.noexc55.loopexit, %.noexc54
  %.sroa.0258.0 = phi ptr [ null, %.noexc54 ], [ %i.ew, %.noexc55.loopexit ], [ null, %bb.p ], [ null, %.noexc69 ]
  %.sroa.5259.0 = phi i64 [ 0, %.noexc54 ], [ %i.ep, %.noexc55.loopexit ], [ 0, %bb.p ], [ 0, %.noexc69 ]
  invoke void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr %.sroa.0258.0, i64 %.sroa.5259.0, ptr noundef nonnull align 1 dereferenceable(1) @_ZN5folly13variadic_noopE)
          to label %.noexc56 unwind label %bb.r

.noexc56:                                         ; preds = %.noexc55
  %i.ex = icmp eq ptr %.sroa.0242.0376, %.sroa.15.0374
  br i1 %i.ex, label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit, label %.noexc58

.noexc58:                                         ; preds = %.noexc56
  %i.ey = add nuw nsw i64 %i.cw, 4294967295
  %i.ez = load ptr, ptr %i.t, align 8, !tbaa !199 ; 2 uses
  %i.fa = and i64 %i.ey, 4294967295
  %i.fb = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %i.fa
  %.fca.0.insert.i148 = insertvalue { ptr, ptr } poison, ptr %i.fb, 0
  %.fca.1.insert.i149 = insertvalue { ptr, ptr } %.fca.0.insert.i148, ptr %i.ez, 1
  br label %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit

_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit: ; preds = %.noexc58, %.noexc56
  %.pn.i = phi { ptr, ptr } [ %.fca.1.insert.i149, %.noexc58 ], [ zeroinitializer, %.noexc56 ] ; 2 uses
  %i.fc = add nsw i64 %.032378, 1
  %i.fd = extractvalue { ptr, ptr } %.pn.i, 0
  %i.fe = extractvalue { ptr, ptr } %.pn.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.n, %.thread298, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit
  %.sroa.15.1 = phi ptr [ %.sroa.15.0374, %.thread298 ], [ %.sroa.15.0374, %bb.n ], [ %i.fe, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ], [ %.sroa.15.0374, %bb.j ]
  %.sroa.0242.1 = phi ptr [ %i.by, %.thread298 ], [ %i.ck, %bb.n ], [ %i.fd, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ], [ %i.ai, %bb.j ] ; 2 uses
  %.234 = phi i64 [ %.032378, %.thread298 ], [ %.032378, %bb.n ], [ %i.fc, %_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE5eraseENS1_23VectorContainerIteratorIPSE_EE.exit ], [ %.032378, %bb.j ] ; 2 uses
  %.not351 = icmp eq ptr %.sroa.0242.1, null
  br i1 %.not351, label %._crit_edge, label %bb.i

bb.r:                                             ; preds = %.noexc55
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

._crit_edge:                                      ; preds = %bb.j, %bb.n, %.thread298, %bb.q, %bb.h
  %.032.lcssa = phi i64 [ 0, %bb.h ], [ %.032378, %bb.j ], [ %.032378, %bb.n ], [ %.032378, %.thread298 ], [ %.234, %bb.q ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !170 ; 3 uses
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = icmp slt i32 %i.fh, 0
  br i1 %i.fj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.121) #34
          to label %.noexc150 unwind label %bb.u

.noexc150:                                        ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %._crit_edge
  %i.fk = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %.not456 = icmp eq i32 %i.fh, 0
  br i1 %.not456, label %._crit_edge389.thread, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.t
  %i.fl = shl nuw nsw i64 %i.fi, 2
  %i.fm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #37
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %bb.u ; 6 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.fn = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.fm, ptr %8, align 8, !tbaa !43
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !172
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %i.fi ; 3 uses
  store ptr %i.fo, ptr %i.fk, align 8, !tbaa !186
  %.pre = load i32, ptr %i.fg, align 8, !tbaa !170
  %i.fp = icmp sgt i32 %.pre, 0
  br i1 %i.fp, label %.lr.ph388, label %._crit_edge389.thread

.lr.ph388:                                        ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ft = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.v

._crit_edge389.thread:                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %bb.t
  %.ph = phi ptr [ %i.fm, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ null, %bb.t ] ; 3 uses
  %.ph466 = phi ptr [ %i.fo, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ null, %bb.t ] ; 2 uses
  store ptr %.ph466, ptr %i.fk, align 8
  store ptr %.ph, ptr %8, align 8
  %i.fu = ptrtoint ptr %.ph to i64
  br label %bb.bo

._crit_edge389:                                   ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store ptr %i.hm, ptr %i.fk, align 8
  store ptr %i.hl, ptr %8, align 8
  %i.fv = ptrtoint ptr %i.hk to i64
  %i.fw = ptrtoint ptr %i.hl to i64               ; 3 uses
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = ashr exact i64 %i.fx, 2                 ; 2 uses
  %.not = icmp eq ptr %i.hk, %i.hl
  br i1 %.not, label %bb.bo, label %bb.ad

bb.u:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, %bb.s, %bb.ai, %bb.ah
  %i.fz = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.s ], [ %i.hm, %bb.ai ], [ %i.hm, %bb.ah ]
  %i.ga = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i ], [ null, %bb.s ], [ %i.hl, %bb.ai ], [ %i.hl, %bb.ah ]
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.v:                                             ; preds = %.lr.ph388, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.gc = phi ptr [ %i.fm, %.lr.ph388 ], [ %i.hk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 8 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph388 ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.gd = phi ptr [ %i.fo, %.lr.ph388 ], [ %i.hm, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.ge = phi ptr [ %i.fm, %.lr.ph388 ], [ %i.hl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 11 uses
  %i.gf = load ptr, ptr %i.fq, align 8, !tbaa !43
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !40
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %bb.w, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.w:                                             ; preds = %bb.v
  %i.gj = load ptr, ptr %i.fr, align 8, !tbaa !185
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !40
  %i.gm = load ptr, ptr %i.fs, align 8, !tbaa !185
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gm, i64 %indvars.iv
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !40
  %i.gp = mul i32 %i.go, 50
  %i.gq = udiv i32 %i.gp, 100
  %i.gr = icmp ugt i32 %i.gl, %i.gq
  br i1 %i.gr, label %bb.x, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.x:                                             ; preds = %bb.w
  %.not.i152 = icmp eq ptr %i.gc, %i.gd
  br i1 %.not.i152, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gs = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.gs, ptr %i.gc, align 4, !tbaa !40
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  store ptr %i.gt, ptr %i.ft, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.z:                                             ; preds = %bb.x
  %i.gu = ptrtoint ptr %i.gc to i64
  %i.gv = ptrtoint ptr %i.ge to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 6 uses
  %i.gx = icmp eq i64 %i.gw, 9223372036854775804
  br i1 %i.gx, label %bb.aa, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  store ptr %i.gd, ptr %i.fk, align 8
  store ptr %i.ge, ptr %8, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #34
          to label %.noexc153 unwind label %.loopexit.split-lp357

.noexc153:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.gy = ashr exact i64 %i.gw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gy, i64 1)
  %i.gz = add nsw i64 %.sroa.speculated.i.i.i, %i.gy ; 2 uses
  %i.ha = icmp ult i64 %i.gz, %i.gy
  %i.hb = call i64 @llvm.umin.i64(i64 %i.gz, i64 2305843009213693951)
  %i.hc = select i1 %i.ha, i64 2305843009213693951, i64 %i.hb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hc, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.hd = shl nuw nsw i64 %i.hc, 2
  %i.he = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hd) #37
          to label %.noexc154 unwind label %.loopexit356 ; 4 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.gw ; 2 uses
  %i.hg = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.hg, ptr %i.hf, align 4, !tbaa !40
  %i.hh = icmp sgt i64 %i.gw, 0
  br i1 %i.hh, label %bb.ab, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %.noexc154
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_:bb.a
.noexc160:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155
  %i.io = load ptr, ptr %i.hu, align 8, !tbaa !43 ; 4 uses
  %i.ip = load ptr, ptr %i.hv, align 8, !tbaa !172
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.io to i64               ; 2 uses
  %i.is = sub i64 %i.iq, %i.ir                    ; 2 uses
  %i.it = icmp sgt i64 %i.is, 0
  br i1 %i.it, label %bb.am, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156

bb.am:                                            ; preds = %.noexc160
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.in, ptr align 4 %i.io, i64 %i.is, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156: ; preds = %bb.am, %.noexc160
  %.not.i8.i157 = icmp eq ptr %i.io, null
  br i1 %.not.i8.i157, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156
  %i.iu = load ptr, ptr %i.ig, align 8, !tbaa !186
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = sub i64 %i.iv, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.iw) #35
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158: ; preds = %bb.an, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i156
  store ptr %i.in, ptr %i.hu, align 8, !tbaa !43
  %i.ix = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ia ; 2 uses
  store ptr %i.ix, ptr %i.hv, align 8, !tbaa !172
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %.sroa.speculated
  store ptr %i.iy, ptr %i.ig, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE7reserveEm.exit161

_ZNSt6vectorIiSaIiEE7reserveEm.exit161:           ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158, %bb.al
  %i.iz = phi ptr [ %i.ix, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158 ], [ %i.hw, %bb.al ] ; 3 uses
  %i.ja = phi ptr [ %i.in, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i158 ], [ %i.hx, %bb.al ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %9, align 8, !tbaa !280
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i8 0, i64 16, i1 false)
  %i.jc = icmp eq ptr %i.iz, %i.ja
  br i1 %i.jc, label %.lr.ph399, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit161
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = ptrtoint ptr %i.ja to i64
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = ashr exact i64 %i.jf, 2
  %i.jh = add nsw i64 %i.jg, -1
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %9, i64 noundef %i.jh, i64 noundef 1, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.i.i unwind label %.loopexit.split-lp.i

.lr.ph.i.i:                                       ; preds = %bb.ao, %.noexc10.i
  %.sroa.06.012.i.i = phi ptr [ %i.jo, %.noexc10.i ], [ %i.ja, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ji = load i32, ptr %.sroa.06.012.i.i, align 4, !tbaa !40
  %i.jj = sext i32 %i.ji to i64                   ; 3 uses
  store i64 %i.jj, ptr %i.a, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !627
  %i.jk = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.jj) ; 2 uses
  %i.jl = lshr i64 %i.jk, 24
  %i.jm = or i64 %i.jl, 128
  %i.jn = add nsw i64 %i.jk, %i.jj
  invoke void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE19tryEmplaceValueImplImJmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkImEEEEbES7_ImmERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.501") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %i.jn, i64 %i.jm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc10.i unwind label %.loopexit.i

.noexc10.i:                                       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.06.012.i.i, i64 4 ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.iz
  br i1 %i.jp, label %.lr.ph399, label %.lr.ph.i.i, !llvm.loop !617

.loopexit.i:                                      ; preds = %.lr.ph.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp.i:                             ; preds = %bb.ao
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #33
  br label %.body

.lr.ph399:                                        ; preds = %.noexc10.i, %_ZNSt6vectorIiSaIiEE7reserveEm.exit161
  %i.jq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.av

bb.aq:                                            ; preds = %bb.bh
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0221.0398, i64 4 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.hk
  br i1 %i.ju, label %._crit_edge400, label %bb.av

._crit_edge400:                                   ; preds = %bb.aq
  %i.jv = load ptr, ptr %9, align 8, !tbaa !280   ; 3 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 15
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !283
  %i.jy = icmp eq i8 %i.jx, -1
  br i1 %i.jy, label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge400
  %i.jz = load i64, ptr %i.jb, align 8, !tbaa !115 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jv, i64 14
  %i.kb = icmp ult i64 %i.jz, 256
  br i1 %i.kb, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kc = and i64 %i.jz, 255                      ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 0, ptr %i.kd, align 8, !tbaa !39
  store i64 %i.kc, ptr %i.jb, align 8, !tbaa !115
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ke = phi i64 [ %i.jz, %bb.ar ], [ %i.kc, %bb.as ] ; 2 uses
  %i.kf = load i8, ptr %i.ka, align 1, !tbaa !45
  %i.kg = icmp eq i64 %i.ke, 0
  %i.kh = shl i8 %i.kf, 3
  %i.ki = and i8 %i.kh, 120
  %narrow.i.i.i.i = add nuw i8 %i.ki, 16
  %i.kj = zext i8 %narrow.i.i.i.i to i64
  %i.kk = shl i64 128, %i.ke
  %.0.i.i.i.i.i = select i1 %i.kg, i64 %i.kj, i64 %i.kk
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %9, align 8, !tbaa !280
  store i64 0, ptr %i.jb, align 8, !tbaa !115
  call void @_ZdlPvm(ptr noundef nonnull %i.jv, i64 noundef %.0.i.i.i.i.i) #33
  br label %_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit

_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev.exit: ; preds = %._crit_edge400, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  br label %bb.bo

bb.au:                                            ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i155, %bb.ak
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.av:                                            ; preds = %.lr.ph399, %bb.aq
  %.sroa.0221.0398 = phi ptr [ %i.hl, %.lr.ph399 ], [ %i.jt, %bb.aq ] ; 2 uses
  %i.km = load i32, ptr %.sroa.0221.0398, align 4, !tbaa !40 ; 3 uses
  %i.kn = sext i32 %i.km to i64                   ; 6 uses
  %i.ko = load i64, ptr %i.jb, align 8, !tbaa !115 ; 2 uses
  %i.kp = lshr i64 %i.ko, 8
  switch i64 %i.kp, label %.noexc124 [
    i64 0, label %.thread341
    i64 1, label %.noexc78
  ]

.noexc78:                                         ; preds = %bb.av
  %i.kq = load i64, ptr %i.jq, align 8, !tbaa !276
  %i.kr = and i64 %i.kq, -8
  %i.ks = inttoptr i64 %i.kr to ptr
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !39
  %i.ku = icmp eq i64 %i.kt, %i.kn
  br i1 %i.ku, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176, label %.thread341

.noexc124:                                        ; preds = %bb.av
  %i.kv = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.kn) ; 2 uses
  %i.kw = lshr i64 %i.kv, 24
  %i.kx = or i64 %i.kw, 128                       ; 2 uses
  %i.ky = add nsw i64 %i.kv, %i.kn
  %i.kz = shl nuw nsw i64 %i.kx, 1
  %i.la = or disjoint i64 %i.kz, 1
  %i.lb = trunc nuw i64 %i.kx to i8
  %i.lc = insertelement <16 x i8> poison, i8 %i.lb, i64 0
  %i.ld = shufflevector <16 x i8> %i.lc, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.le = and i64 %i.ko, 255                      ; 2 uses
  %i.lf = shl nuw i64 1, %i.le
  %i.lg = load ptr, ptr %9, align 8, !tbaa !280
  br label %.noexc126

.noexc126:                                        ; preds = %.noexc124, %.noexc129
  %.023.i109393 = phi i64 [ %i.lf, %.noexc124 ], [ %i.ma, %.noexc129 ]
  %.025.i108392 = phi i64 [ %i.ky, %.noexc124 ], [ %i.mb, %.noexc129 ] ; 2 uses
  %i.lh = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i108392, i64 range(i64 0, 256) %i.le)
  %i.li = getelementptr inbounds nuw [128 x i8], ptr %i.lg, i64 %i.lh ; 4 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 80
  call void @llvm.prefetch.p0(ptr nonnull %i.lk, i32 0, i32 3, i32 1)
  %i.ll = load <16 x i8>, ptr %i.li, align 16     ; 2 uses
  %i.lm = icmp eq <16 x i8> %i.ll, %i.ld
  %i.ln = bitcast <16 x i1> %i.lm to i16
  %i.lo = and i16 %i.ln, 16383
  %i.lp = zext nneg i16 %i.lo to i32
  %i.lq = icmp ne ptr %i.li, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.lr = extractelement <16 x i8> %i.ll, i64 15
  br label %.critedge.i111

.critedge.i111:                                   ; preds = %.noexc128, %.noexc126
  %.sroa.0279.0 = phi i32 [ %i.lp, %.noexc126 ], [ %i.lu, %.noexc128 ] ; 4 uses
  %.not352 = icmp eq i32 %.sroa.0279.0, 0
  br i1 %.not352, label %bb.aw, label %.noexc128

.noexc128:                                        ; preds = %.critedge.i111
  %i.ls = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.0279.0, i1 true)
  %i.lt = add nuw nsw i32 %.sroa.0279.0, 16383
  %i.lu = and i32 %i.lt, %.sroa.0279.0
  %i.lv = zext nneg i32 %i.ls to i64
  call void @llvm.assume(i1 %i.lq)
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.lv
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !39
  %i.ly = icmp eq i64 %i.lx, %i.kn
  br i1 %i.ly, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176, label %.critedge.i111, !prof !200, !llvm.loop !14

bb.aw:                                            ; preds = %.critedge.i111
  %i.lz = icmp eq i8 %i.lr, 0
  br i1 %i.lz, label %.thread341, label %.noexc129, !prof !200

.noexc129:                                        ; preds = %bb.aw
  %i.ma = add i64 %.023.i109393, -1               ; 2 uses
  %i.mb = add i64 %i.la, %.025.i108392
  %.not.i110 = icmp eq i64 %i.ma, 0
  br i1 %.not.i110, label %.thread341, label %.noexc126, !llvm.loop !15

.thread341:                                       ; preds = %.noexc129, %bb.aw, %.noexc78, %bb.av
  %i.mc = load ptr, ptr %i.hv, align 8, !tbaa !172 ; 4 uses
  %i.md = load ptr, ptr %i.ig, align 8, !tbaa !186
  %.not.i167 = icmp eq ptr %i.mc, %i.md
  br i1 %.not.i167, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.thread341
  store i32 %i.km, ptr %i.mc, align 4, !tbaa !40
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store ptr %i.me, ptr %i.hv, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

bb.ay:                                            ; preds = %.thread341
  %i.mf = load ptr, ptr %i.hu, align 8, !tbaa !43 ; 4 uses
  %i.mg = ptrtoint ptr %i.mc to i64
  %i.mh = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mi = sub i64 %i.mg, %i.mh                    ; 5 uses
  %i.mj = icmp eq i64 %i.mi, 9223372036854775804
  br i1 %i.mj, label %bb.az, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.119) #34
          to label %.noexc174 unwind label %.loopexit.split-lp

.noexc174:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168: ; preds = %bb.ay
  %i.mk = ashr exact i64 %i.mi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i169 = call i64 @llvm.umax.i64(i64 %i.mk, i64 1)
  %i.ml = add nsw i64 %.sroa.speculated.i.i.i169, %i.mk ; 2 uses
  %i.mm = icmp ult i64 %i.ml, %i.mk
  %i.mn = call i64 @llvm.umin.i64(i64 %i.ml, i64 2305843009213693951)
  %i.mo = select i1 %i.mm, i64 2305843009213693951, i64 %i.mn ; 3 uses
  %.not.i.i.i170 = icmp ne i64 %i.mo, 0
  call void @llvm.assume(i1 %.not.i.i.i170)
  %i.mp = shl nuw nsw i64 %i.mo, 2
  %i.mq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mp) #37
          to label %.noexc175 unwind label %.loopexit ; 4 uses

.noexc175:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.mi ; 2 uses
  store i32 %i.km, ptr %i.mr, align 4, !tbaa !40
  %i.ms = icmp sgt i64 %i.mi, 0
  br i1 %i.ms, label %bb.ba, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

bb.ba:                                            ; preds = %.noexc175
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mq, ptr align 4 %i.mf, i64 %i.mi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171: ; preds = %bb.ba, %.noexc175
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  %.not.i17.i.i172 = icmp eq ptr %i.mf, null
  br i1 %.not.i17.i.i172, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  %i.mu = load ptr, ptr %i.ig, align 8, !tbaa !186
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = sub i64 %i.mv, %i.mh
  call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.mw) #35
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173: ; preds = %bb.bb, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i171
  store ptr %i.mq, ptr %i.hu, align 8, !tbaa !43
  store ptr %i.mt, ptr %i.hv, align 8, !tbaa !172
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.mo
  store ptr %i.mx, ptr %i.ig, align 8, !tbaa !186
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176

.loopexit:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i168
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.loopexit.split-lp:                               ; preds = %bb.az
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_ZNSt6vectorIiSaIiEE9push_backERKi.exit176:       ; preds = %.noexc128, %.noexc78, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i173, %bb.ax
  %i.my = load ptr, ptr %i.jr, align 8, !tbaa !185
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.my, i64 %i.kn
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !40 ; 2 uses
  %.not36 = icmp eq i32 %i.na, 0
  br i1 %.not36, label %bb.bh, label %bb.bc, !prof !200

bb.bc:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33, !noalias !628
  store i32 %i.na, ptr %5, align 16, !tbaa !45, !noalias !628
  %i.nb = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.nb, align 16, !tbaa !45, !alias.scope !629, !noalias !628
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr nonnull @.str.6, i64 11, i64 18, ptr nonnull %5)
          to label %bb.bd unwind label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33, !noalias !628
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_E18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr nonnull @.str.6) #34
          to label %bb.be unwind label %bb.bg

bb.be:                                            ; preds = %bb.bd
  unreachable

bb.bf:                                            ; preds = %bb.bc
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.bg:                                            ; preds = %bb.bd
  %i.nd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ne = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ng = icmp eq ptr %i.ne, %i.nf
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bg
  %i.nh = load i64, ptr %i.nf, align 8, !tbaa !45
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.ne, i64 noundef %i.ni) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bf
  %.pn40 = phi { ptr, i32 } [ %i.nd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.nc, %bb.bf ], [ %i.nd, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %bb.bn

bb.bh:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit176
  %i.nj = load ptr, ptr %i.js, align 8, !tbaa !185
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.kn
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !40 ; 2 uses
  %.not37 = icmp eq i32 %i.nl, 0
  br i1 %.not37, label %bb.aq, label %bb.bi, !prof !200

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !630
  store i32 %i.nl, ptr %4, align 16, !tbaa !45, !noalias !630
  %i.nm = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.nm, align 16, !tbaa !45, !alias.scope !631, !noalias !630
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.6, i64 11, i64 18, ptr nonnull %4)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !630
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile17removeFileEntriesERKN5folly10F14FastSetImNS3_23HeterogeneousAccessHashImvEENS3_26HeterogeneousAccessEqualToImvEESaImEEERSA_E18veloxCheckFailArgs_1, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr nonnull @.str.6) #34
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  unreachable

bb.bl:                                            ; preds = %bb.bi
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

bb.bm:                                            ; preds = %bb.bj
  %i.no = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.np = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.nr = icmp eq ptr %i.np, %i.nq
  br i1 %i.nr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180: ; preds = %bb.bm
  %i.ns = load i64, ptr %i.nq, align 8, !tbaa !45
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.np, i64 noundef %i.nt) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180, %bb.bl
  %.pn38 = phi { ptr, i32 } [ %i.no, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i180 ], [ %i.nn, %bb.bl ], [ %i.no, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40.pn = phi { ptr, i32 } [ %.pn40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit182 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyImvvvvEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #33
  br label %.body

.body:                                            ; preds = %bb.ap, %bb.bn
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.bn ], [ %lpad.phi.i, %bb.ap ]
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox5cache7SsdFile24appendToCheckpointBufferERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile24appendToCheckpointBufferEPKviE18veloxCheckFailArgs) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !268  ; 4 uses
  %.not.i.i = icmp ne i32 %i.h, 0
  %i.i = add i32 %i.h, %i.d
  %i.j = icmp ugt i32 %i.i, 1048575
  %or.cond.i = and i1 %.not.i.i, %i.j
  br i1 %or.cond.i, label %bb.d, label %_ZN8facebook5velox5cache7SsdFile24appendToCheckpointBufferEPKvi.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !168  ; 2 uses
  %i.m = zext i32 %i.h to i64
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 %i.m, ptr nonnull %i.f), !inline_history !639
  store i32 0, ptr %i.g, align 8, !tbaa !268
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !124
  br label %_ZN8facebook5velox5cache7SsdFile24appendToCheckpointBufferEPKvi.exit

_ZN8facebook5velox5cache7SsdFile24appendToCheckpointBufferEPKvi.exit: ; preds = %bb.c, %bb.d
  %i.q = phi i32 [ %i.h, %bb.c ], [ 0, %bb.d ]
  %i.r = phi ptr [ %i.f, %bb.c ], [ %.pre.i, %bb.d ]
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s
  %sext = shl i64 %i.c, 32
  %i.u = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr readonly align 1 %i.a, i64 %i.u, i1 false)
  %i.v = load i32, ptr %i.g, align 8, !tbaa !268
  %i.w = add i32 %i.v, %i.d
  store i32 %i.w, ptr %i.g, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox5cache7SsdFile19flushCheckpointFileEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(548) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 4 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile19flushCheckpointFileEvE18veloxCheckFailArgs) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !268  ; 2 uses
  %.not.i1 = icmp eq i32 %i.d, 0
  br i1 %.not.i1, label %_ZN8facebook5velox5cache7SsdFile26maybeFlushCheckpointBufferEjb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124  ; 2 uses
  %.not2.i = icmp eq ptr %i.f, null
  br i1 %.not2.i, label %bb.e, label %bb.f, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox5cache7SsdFile26maybeFlushCheckpointBufferEjbE18veloxCheckFailArgs) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.g = zext i32 %i.d to i64
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 %i.g, ptr nonnull %i.f), !inline_history !284
  store i32 0, ptr %i.c, align 8, !tbaa !268
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !168
  br label %_ZN8facebook5velox5cache7SsdFile26maybeFlushCheckpointBufferEjb.exit

_ZN8facebook5velox5cache7SsdFile26maybeFlushCheckpointBufferEjb.exit: ; preds = %bb.c, %bb.f
  %i.k = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.f ] ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !121
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @"_ZZN8facebook5velox5cache7SsdFile10checkpointEbEN3$_0D2Ev"(ptr %.8.val) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i.i = icmp eq ptr %.8.val, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 8 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4294967297
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 8, !tbaa !118
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !119
  %i.f = load ptr, ptr %.8.val, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33, !inline_history !13
  %i.i = load ptr, ptr %.8.val, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33, !inline_history !13
  br label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !44

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #33
  br label %_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox11AsyncSourceIiEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11StringIdMap6stringB5cxx11Em(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %1) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #34
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i64, ptr %i.c, align 8, !tbaa !115  ; 2 uses
  %i.e = icmp ult i64 %i.d, 256
  br i1 %i.e, label %.noexc.thread, label %.noexc24

.noexc24:                                         ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %2) ; 2 uses
  %i.g = lshr i64 %i.f, 24
  %i.h = or i64 %i.g, 128                         ; 2 uses
  %i.i = add i64 %i.f, %2
  %i.j = shl nuw nsw i64 %i.h, 1
  %i.k = or disjoint i64 %i.j, 1
  %i.l = trunc nuw i64 %i.h to i8
  %i.m = insertelement <16 x i8> poison, i8 %i.l, i64 0
  %i.n = shufflevector <16 x i8> %i.m, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.o = and i64 %i.d, 255                        ; 2 uses
  %i.p = shl nuw i64 1, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !645
  br label %.noexc26

.noexc26:                                         ; preds = %.noexc24, %.noexc29
  %.022.i94 = phi i64 [ %i.p, %.noexc24 ], [ %i.ao, %.noexc29 ]
  %.024.i93 = phi i64 [ %i.i, %.noexc24 ], [ %i.ap, %.noexc29 ] ; 2 uses
  %i.s = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i93, i64 range(i64 0, 256) %i.o)
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = load <16 x i8>, ptr %i.t, align 16       ; 2 uses
  %i.v = icmp eq <16 x i8> %i.u, %i.n
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = and i16 %i.w, 4095
  %i.y = zext nneg i16 %i.x to i32
  %i.z = icmp ne ptr %i.t, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = extractelement <16 x i8> %i.u, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %.noexc28, %.noexc26
  %.sroa.051.0 = phi i32 [ %i.y, %.noexc26 ], [ %i.ae, %.noexc28 ] ; 4 uses
  %.not = icmp eq i32 %.sroa.051.0, 0
  br i1 %.not, label %bb.c, label %.noexc28

.noexc28:                                         ; preds = %.critedge.i
  %i.ac = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.051.0, i1 true)
  %i.ad = add nuw nsw i32 %.sroa.051.0, 4095
  %i.ae = and i32 %i.ad, %.sroa.051.0
  %i.af = zext nneg i32 %i.ac to i64
  tail call void @llvm.assume(i1 %i.z)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !646
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !40
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %i.aj ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !39
  %i.am = icmp eq i64 %2, %i.al
  br i1 %i.am, label %bb.d, label %.critedge.i, !prof !200, !llvm.loop !640

bb.c:                                             ; preds = %.critedge.i
  %i.an = icmp eq i8 %i.ab, 0
  br i1 %i.an, label %.noexc.thread, label %.noexc29, !prof !200

.noexc29:                                         ; preds = %bb.c
  %i.ao = add i64 %.022.i94, -1                   ; 2 uses
  %i.ap = add i64 %i.k, %.024.i93
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.noexc.thread, label %.noexc26, !llvm.loop !641

.noexc.thread:                                    ; preds = %bb.c, %.noexc29, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.aq, ptr %0, align 8, !tbaa !106
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !107
  store i8 0, ptr %i.aq, align 8, !tbaa !45
  br label %.critedge

bb.d:                                             ; preds = %.noexc28
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !106
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !49 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !107 ; 8 uses
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %bb.e, label %._crit_edge.i.i36

bb.e:                                             ; preds = %bb.d
  %i.ay = icmp slt i64 %i.aw, 0
  br i1 %i.ay, label %.noexc.i38, label %bb.f

.noexc.i38:                                       ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #34
          to label %.noexc39 unwind label %.critedge15

.noexc39:                                         ; preds = %.noexc.i38
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.az = add nuw i64 %i.aw, 1                    ; 2 uses
  %i.ba = icmp slt i64 %i.az, 0
  br i1 %i.ba, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37, !prof !44

.noexc6.i:                                        ; preds = %bb.f
  invoke void @_ZSt17__throw_bad_allocv() #34
          to label %.noexc40 unwind label %.critedge15

.noexc40:                                         ; preds = %.noexc6.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37: ; preds = %bb.f
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #37
          to label %.noexc41 unwind label %.critedge15 ; 2 uses

.noexc41:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37
  store ptr %i.bb, ptr %0, align 8, !tbaa !49
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !45
  br label %._crit_edge.i.i36

._crit_edge.i.i36:                                ; preds = %.noexc41, %bb.d
  %i.bc = phi ptr [ %i.bb, %.noexc41 ], [ %i.at, %bb.d ] ; 3 uses
  switch i64 %i.aw, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i36
  %i.bd = load i8, ptr %i.au, align 1, !tbaa !45
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i36
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bc, ptr align 1 %i.au, i64 %i.aw, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i36
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aw, ptr %i.be, align 8, !tbaa !107
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.aw
  store i8 0, ptr %i.bf, align 1, !tbaa !45
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.noexc.thread
  %i.bg = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #33 ; 0 uses
  ret void

.critedge15:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i37, %.noexc6.i, %.noexc.i38
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.bh = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %1) #33 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11AsyncSourceIiE4moveEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.265") align 8 %0, ptr noundef nonnull align 8 dereferenceable(248) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::function.291", align 16 ; 15 uses
  %3 = alloca %"class.folly::SemiFuture.517", align 8 ; 11 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  %5 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #37
          to label %bb.b unwind label %bb.d       ; 11 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 16, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr @_ZN5folly6detail8function14FunctionTraitsIFvRNS_7futures6detail8CoreBaseEONS_17ExecutorKeepAliveINS_8ExecutorEEEPNS_17exception_wrapperEEE10uninitCallES6_SA_SC_RNS1_4DataE, ptr %i.d, align 16, !tbaa !286
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr null, ptr %i.e, align 8, !tbaa !287
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i8 2, ptr %i.f, align 16, !tbaa !290
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 81
  store i8 1, ptr %i.g, align 1, !tbaa !292
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  store i8 0, ptr %i.h, align 2, !tbaa !292
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 0, ptr %i.i, align 8, !tbaa !295
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5folly7futures6detail4CoreINS_4UnitEEE, i64 16), ptr %i.a, align 16, !tbaa !121
  store i32 0, ptr %i.b, align 8, !tbaa !298
  store ptr %i.a, ptr %3, align 8, !tbaa !301
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 7 uses
  %i.l = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #33 ; 2 uses
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.l) #34
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.n = load atomic i8, ptr %i.m acquire, align 8
  switch i8 %i.n, label %bb.ax [
    i8 4, label %bb.f
    i8 5, label %bb.f
    i8 3, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
    i8 2, label %bb.m
    i8 1, label %bb.t
    i8 0, label %bb.an
  ]

bb.d:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.f:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr null, ptr %0, align 8, !tbaa !650
  br label %.critedge

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !274  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit, !prof !44

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11AsyncSourceIiE4moveEvE18veloxCheckFailArgs) #34
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit24

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.r, ptr %4, align 8, !tbaa !274
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %4) #34
end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45
  store i8 %i.ad, ptr %i.aa, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %i.ac, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.ae = icmp eq ptr %.pre, %i.h
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !45
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !49
  store i64 %.0, ptr %i.h, align 8, !tbaa !45
  ret void
}

declare noundef i32 @_ZN5folly5crc32EPKhmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i
  %.06.i.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.c = load ptr, ptr %.06.i.i, align 8, !tbaa !191 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 56 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !45
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !45
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #35
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i, i64 noundef 80) #35
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i, %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !132
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !133
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.t = load ptr, ptr %0, align 8, !tbaa !132    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  %i.w = load i64, ptr %i.q, align 8, !tbaa !133
  %i.x = shl i64 %i.w, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit
  ret void
}

declare noundef i64 @_ZN8facebook5velox11StringIdMap9recoverIdEmSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(104), i64 noundef, i64, ptr) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIbEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail16F14VectorMapImplIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunENS_23HeterogeneousAccessHashIS6_vEENS_26HeterogeneousAccessEqualToIS6_vEESaISt4pairIKS6_S7_EESt17integral_constantIbLb1EEE15eraseUnderlyingIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.470, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !199    ; 3 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !40     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %3, ptr %4, align 8, !tbaa !865
  call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS7_S8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.c ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195  ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !196
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 noundef %i.g)
          to label %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  call void @__clang_call_terminate(ptr %i.i) #36
  unreachable

_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit: ; preds = %bb.a, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  %i.l = lshr i64 %i.k, 8                         ; 5 uses
  %.not = icmp eq i64 %i.l, %i.c
  br i1 %.not, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_S7_EEPSD_SG_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit
  %i.m = trunc i64 %i.l to i32
  %i.n = icmp ne i64 %i.l, 0
  call void @llvm.assume(i1 %i.n)
  %i.o = load ptr, ptr %0, align 8, !tbaa !199
  %i.p = and i64 %i.l, 4294967295
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !196  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !198
  %i.v = xor i64 %i.u, %i.s
  %i.w = mul i64 %i.v, -7070675565921424023       ; 2 uses
  %i.x = lshr i64 %i.w, 47
  %i.y = xor i64 %i.s, %i.x
  %i.z = xor i64 %i.y, %i.w
  %i.aa = mul i64 %i.z, -7070675565921424023      ; 2 uses
  %i.ab = lshr i64 %i.aa, 47
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -7070675565921424023     ; 2 uses
  %i.ae = call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.ad) ; 2 uses
  %i.af = lshr i64 %i.ae, 24
  %i.ag = or i64 %i.af, 128                       ; 2 uses
  %i.ah = add i64 %i.ad, %i.ae
  %i.ai = shl nuw nsw i64 %i.ag, 1
  %i.aj = or disjoint i64 %i.ai, 1
  %i.ak = trunc nuw i64 %i.ag to i8
  %i.al = insertelement <16 x i8> poison, i8 %i.ak, i64 0
  %i.am = shufflevector <16 x i8> %i.al, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.an = and i64 %i.k, 255
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.024.i = phi i64 [ %i.ah, %bb.d ], [ %i.bg, %bb.g ] ; 2 uses
  %i.aq = call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i, i64 range(i64 0, 256) %i.an)
  %i.ar = getelementptr inbounds nuw [64 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = load <16 x i8>, ptr %i.ar, align 16
  %i.at = icmp eq <16 x i8> %i.as, %i.am
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = and i16 %i.au, 4095
  %i.aw = zext nneg i16 %i.av to i32
  %i.ax = icmp ne ptr %i.ar, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %.sroa.024.0 = phi i32 [ %i.aw, %bb.e ], [ %i.bb, %bb.f ] ; 4 uses
  %.not44 = icmp eq i32 %.sroa.024.0, 0
  br i1 %.not44, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge.i
  %i.az = call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.024.0, i1 true)
  %i.ba = add nuw nsw i32 %.sroa.024.0, 4095
  %i.bb = and i32 %i.ba, %.sroa.024.0
  %i.bc = zext nneg i32 %i.az to i64              ; 2 uses
  call void @llvm.assume(i1 %i.ax)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !40
  %i.bf = icmp eq i32 %i.be, %i.m
  br i1 %i.bf, label %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i, label %.critedge.i, !prof !200, !llvm.loop !7

bb.g:                                             ; preds = %.critedge.i
  %i.bg = add i64 %i.aj, %.024.i
  br label %bb.e, !llvm.loop !8

_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i: ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  store i32 %i.b, ptr %i.bh, align 4, !tbaa !40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.a, i64 %i.l ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr null, ptr %i.d, align 8, !tbaa !195
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 -1, ptr %i.bk, align 8, !tbaa !196
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !195
  store ptr %i.bl, ptr %i.d, align 8, !tbaa !195
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr null, ptr %i.bi, align 8, !tbaa !195
  %i.bn = load <2 x i64>, ptr %i.bm, align 8, !tbaa !39
  store <2 x i64> %i.bn, ptr %i.bk, align 8, !tbaa !39
  store i64 -1, ptr %i.bm, align 8, !tbaa !196
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i64 16, i1 false), !tbaa.struct !357
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_S7_EEPSD_SG_m.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE8transferERSaISt4pairIKS6_S7_EEPSD_SG_m.exit: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i, %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE13eraseIterIntoIZNS1_11F14BasicMapISB_E18tableEraseIterIntoIRKNS_16variadic_noop_fnEEEvNS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEOT_EUlOSt4pairIKS7_S8_EE_EEvSO_SQ_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -16
  %.neg.i.i = mul i64 %2, -4
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 %.neg.i.i ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 14 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !360
  %.not = icmp ult i8 %i.d, 16
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !199
  %i.f = load i32, ptr %1, align 4, !tbaa !40
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !196  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !198
  %i.m = xor i64 %i.l, %i.j
  %i.n = mul i64 %i.m, -7070675565921424023       ; 2 uses
  %i.o = lshr i64 %i.n, 47
  %i.p = xor i64 %i.j, %i.o
  %i.q = xor i64 %i.p, %i.n
  %i.r = mul i64 %i.q, -7070675565921424023       ; 2 uses
  %i.s = lshr i64 %i.r, 47
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -7070675565921424023       ; 2 uses
  %i.v = tail call noundef i64 @llvm.x86.sse42.crc32.64.64(i64 0, i64 %i.u) ; 2 uses
  %i.w = add i64 %i.u, %i.v
  %i.x = lshr i64 %i.v, 23
  %i.y = or i64 %i.x, 257
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.0 = phi i64 [ 1, %bb.a ], [ %i.y, %bb.b ]
  %.sroa.04.0 = phi i64 [ 0, %bb.a ], [ %i.w, %bb.b ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !115
  %i.ab = add i64 %i.aa, -256
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 %2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !45
  %.not.i.i.i = icmp sgt i8 %i.ad, -1
  br i1 %.not.i.i.i, label %bb.d, label %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE8clearTagEmE30__folly_detail_safe_assert_arg, ptr noundef nonnull @.str.9) #40
  unreachable

_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i: ; preds = %bb.c
  store i8 0, ptr %i.ac, align 1, !tbaa !45
  %i.ae = load i8, ptr %i.c, align 2, !tbaa !360
  %.not.i.i = icmp ult i8 %i.ae, 16
  br i1 %.not.i.i, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !114 ; 4 uses
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !115
  %i.ai = and i64 %i.ah, 255                      ; 2 uses
  %i.aj = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.sroa.04.0, i64 range(i64 0, 256) %i.ai) ; 3 uses
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.aj
  %i.al = icmp eq ptr %i.ak, %i.b
  br i1 %i.al, label %.thread.i.i, label %.lr.ph.i.i

.thread.i.i:                                      ; preds = %bb.g, %bb.e
  %.010.lcssa.i.i = phi i8 [ 0, %bb.e ], [ -16, %bb.g ]
  %i.am = phi i64 [ %i.aj, %bb.e ], [ %i.ax, %bb.g ]
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 14 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !360
  %i.aq = add i8 %i.ap, %.010.lcssa.i.i
  store i8 %i.aq, ptr %i.ao, align 2, !tbaa !360
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %i.ar = phi i64 [ %i.ax, %bb.g ], [ %i.aj, %bb.e ]
  %.01126.i.i = phi i64 [ %i.aw, %bb.g ], [ %.sroa.04.0, %bb.e ]
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 15 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !361 ; 2 uses
  %.not.i17.i.i = icmp eq i8 %i.au, -2
  br i1 %.not.i17.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.av = add i8 %i.au, -1
  store i8 %i.av, ptr %i.at, align 1, !tbaa !361
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.aw = add i64 %.01126.i.i, %.sroa.5.0         ; 2 uses
  %i.ax = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.aw, i64 range(i64 0, 256) %i.ai) ; 3 uses
  %i.ay = getelementptr inbounds nuw [64 x i8], ptr %i.ag, i64 %i.ax
  %i.az = icmp eq ptr %i.ay, %i.b
  br i1 %i.az, label %.thread.i.i, label %.lr.ph.i.i

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE9eraseImplENS1_11F14ItemIterIPNS1_8F14ChunkIjEEEESt4pairImmE.exit: ; preds = %_ZN5folly3f146detail8F14ChunkIjE8clearTagEm.exit.i.i, %.thread.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i64 0, 2199023255552) i64 @"_ZNSt17_Function_handlerIFmiEZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E9_M_invokeERKSt9_Any_dataOi"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #27 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !867
  %.val2 = load i32, ptr %1, align 4, !tbaa !40
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !203
  %i.a = sext i32 %.val2 to i64
  %i.b = getelementptr inbounds nuw [24 x i8], ptr %.val.val, i64 %i.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !tbaa !39
  %i.d = lshr i64 %.sroa.0.0.copyload.i.i.i.i, 23
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFmiEZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EEE3$_0", ptr %0, align 8, !tbaa !363
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !246
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !209
  store i64 %.val.i, ptr %0, align 8, !tbaa !209
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_0E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKSt6vectorIN8facebook5velox5cache8CachePinESaIS4_EEiimRKS0_IN5folly5RangeIPcEESaISC_EEEZNS3_7SsdFile4loadERKS0_INS3_6SsdPinESaISJ_EES8_E3$_1E9_M_invokeERKSt9_Any_dataS8_OiST_OmSG_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readonly align 4 captures(none) %2, ptr nofree nonnull readonly align 4 captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) #0 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !869
  %.val8 = load i64, ptr %4, align 8, !tbaa !39
  tail call void @_ZN8facebook5velox5cache7SsdFile4readEmRKSt6vectorIN5folly5RangeIPcEESaIS7_EE(ptr noundef nonnull readonly align 8 dereferenceable(548) %.val, i64 noundef %.val8, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKSt6vectorIN8facebook5velox5cache8CachePinESaIS4_EEiimRKS0_IN5folly5RangeIPcEESaISC_EEEZNS3_7SsdFile4loadERKS0_INS3_6SsdPinESaISJ_EES8_E3$_1E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #28 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_1E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS1_6SsdPinESaIS4_EERKS3_INS1_8CachePinESaIS9_EEE3$_1", ptr %0, align 8, !tbaa !363
  br label %"_ZNSt14_Function_base13_Base_managerIZN8facebook5velox5cache7SsdFile4loadERKSt6vectorINS3_6SsdPinESaIS6_EERKS5_INS3_8CachePinESaISB_EEE3$_1E10_M_managerERSt9_Any_dataRKSI_St18_Manager_operation.exit"

end_hunk_5
begin_hunk_6_@_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm:bb.a
bb.h:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !252    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !253  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !191
  store ptr %i.w, ptr %3, align 8, !tbaa !191
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !253
  store ptr %3, ptr %i.x, align 8, !tbaa !191
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !254
  store ptr %i.z, ptr %3, align 8, !tbaa !191
  store ptr %3, ptr %i.y, align 8, !tbaa !254
  %i.aa = load ptr, ptr %3, align 8, !tbaa !191   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !251
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !253
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !253
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !250
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !250
  ret ptr %3
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !364
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !44

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #37 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !254  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !254
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !191 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !253  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !254
  store ptr %i.p, ptr %.02530, align 8, !tbaa !191
  store ptr %.02530, ptr %i.g, align 8, !tbaa !254
  store ptr %i.g, ptr %i.n, align 8, !tbaa !253
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !191
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !253
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !191
  store ptr %i.s, ptr %.02530, align 8, !tbaa !191
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !253
  store ptr %.02530, ptr %i.t, align 8, !tbaa !191
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.031, %bb.i ], [ %i.m, %bb.h ], [ %i.m, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !875

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !252    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !251
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #35
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !251
  store ptr %.0.i, ptr %0, align 8, !tbaa !252
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE19tryEmplaceValueImplIS7_JRKSt21piecewise_construct_tSt5tupleIJOS7_EESH_IJEEEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkIjEEEEbESL_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.484") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 4 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %..thread66_crit_edge, label %bb.b

..thread66_crit_edge:                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !114
  %.pre85 = shl nuw i64 1, %i.b
  br label %.thread66

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !114  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.022.i77 = phi i64 [ %i.j, %bb.b ], [ %i.ao, %bb.f ]
  %.024.i76 = phi i64 [ %2, %bb.b ], [ %i.ap, %bb.f ] ; 2 uses
  %i.n = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.024.i76, i64 range(i64 0, 256) %i.i)
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.n ; 3 uses
  %i.p = load <16 x i8>, ptr %i.o, align 16       ; 2 uses
  %i.q = icmp eq <16 x i8> %i.p, %i.h
  %i.r = bitcast <16 x i1> %i.q to i16
  %i.s = and i16 %i.r, 4095
  %i.t = zext nneg i16 %i.s to i32
  %i.u = icmp ne ptr %i.o, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.w = extractelement <16 x i8> %i.p, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.042.0 = phi i32 [ %i.t, %bb.c ], [ %i.z, %bb.d ] ; 4 uses
  %.not68 = icmp eq i32 %.sroa.042.0, 0
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.x = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.042.0, i1 true)
  %i.y = add nuw nsw i32 %.sroa.042.0, 4095
  %i.z = and i32 %i.y, %.sroa.042.0
  %i.aa = zext nneg i32 %i.x to i64               ; 3 uses
  tail call void @llvm.assume(i1 %i.u)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  %i.ac = load ptr, ptr %1, align 8, !tbaa !199
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load <2 x i64>, ptr %i.m, align 8
  %i.ai = load <2 x i64>, ptr %i.ag, align 8
  %i.aj = icmp eq <2 x i64> %i.ah, %i.ai          ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %i.al = extractelement <2 x i1> %i.aj, i64 1
  %i.am = select i1 %i.al, i1 %i.ak, i1 false
  br i1 %i.am, label %bb.g, label %.critedge.i, !prof !200, !llvm.loop !5

bb.e:                                             ; preds = %.critedge.i
  %i.an = icmp eq i8 %i.w, 0
  br i1 %i.an, label %.thread66, label %bb.f, !prof !200

bb.f:                                             ; preds = %bb.e
  %i.ao = add i64 %.022.i77, -1                   ; 2 uses
  %i.ap = add i64 %i.e, %.024.i76
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %.thread66, label %bb.c, !llvm.loop !6

bb.g:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.aa
  br label %bb.o

.thread66:                                        ; preds = %bb.f, %bb.e, %..thread66_crit_edge
  %.pre-phi86 = phi i64 [ %.pre85, %..thread66_crit_edge ], [ %i.j, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.pre-phi = phi i64 [ %i.b, %..thread66_crit_edge ], [ %i.i, %bb.e ], [ %i.i, %bb.f ]
  %i.ar = phi ptr [ %.pre, %..thread66_crit_edge ], [ %i.l, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.0.copyload.i.i = load i16, ptr %i.as, align 1
  %i.at = zext i16 %.0.copyload.i.i to i64        ; 2 uses
  %i.au = add i64 %.pre-phi86, -1
  %i.av = lshr i64 %i.au, 12
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = mul i64 %i.aw, %i.at                    ; 2 uses
  %.not.i32 = icmp ult i64 %i.c, %i.ax
  br i1 %.not.i32, label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread66
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %.pre-phi86, i64 noundef %i.at, i64 noundef %i.ax)
  %.pre82 = load ptr, ptr %i.ay, align 8, !tbaa !114
  %.pre83 = load i64, ptr %i.a, align 8, !tbaa !115
  %.pre87 = and i64 %.pre83, 255
  br label %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit: ; preds = %.thread66, %bb.h
  %.pre-phi88 = phi i64 [ %.pre-phi, %.thread66 ], [ %.pre87, %bb.h ] ; 2 uses
  %i.az = phi ptr [ %i.ar, %.thread66 ], [ %.pre82, %bb.h ] ; 3 uses
  %i.ba = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.bb = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %i.ba ; 2 uses
  %i.bc = load <16 x i8>, ptr %i.bb, align 16, !tbaa !45
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = and i16 %i.be, 4095                     ; 2 uses
  %.not69 = icmp eq i16 %i.bf, 4095
  br i1 %.not69, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %i.bg = shl i64 %3, 1
  %i.bh = or disjoint i64 %i.bg, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.bi = phi i64 [ %i.ba, %bb.i ], [ %i.bo, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %.030 = phi i64 [ %2, %bb.i ], [ %i.bn, %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit ]
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 15 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !361 ; 2 uses
  %.not.i33 = icmp eq i8 %i.bl, -2
  br i1 %.not.i33, label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = add i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !361
  br label %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bn = add i64 %i.bh, %.030                    ; 2 uses
  %i.bo = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bn, i64 range(i64 0, 256) %.pre-phi88) ; 2 uses
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %i.bo ; 3 uses
  %i.bq = load <16 x i8>, ptr %i.bp, align 16     ; 2 uses
  %i.br = icmp slt <16 x i8> %i.bq, zeroinitializer
  %i.bs = bitcast <16 x i1> %i.br to i16
  %i.bt = and i16 %i.bs, 4095                     ; 2 uses
  %.not70 = icmp eq i16 %i.bt, 4095
  br i1 %.not70, label %bb.j, label %bb.l, !llvm.loop !876

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkIjE25incrOutboundOverflowCountEv.exit
  %i.bu = extractelement <16 x i8> %i.bq, i64 14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 14
  %i.bw = add i8 %i.bu, 16
  store i8 %i.bw, ptr %i.bv, align 2, !tbaa !360
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit
  %.sroa.036.0.in.in = phi i16 [ %i.bf, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bt, %bb.l ]
  %.1 = phi ptr [ %i.bb, %_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE16reserveForInsertEm.exit ], [ %i.bp, %bb.l ] ; 3 uses
  %.sroa.036.0.in = xor i16 %.sroa.036.0.in.in, 4095
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.036.0.in, i1 true)
  %i.by = zext nneg i16 %i.bx to i64              ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.1, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !45
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkIjE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.9) #40
  unreachable

_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit:  ; preds = %bb.m
  %i.cc = trunc i64 %3 to i8
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !45
  %i.cd = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.by ; 2 uses
  %i.cf = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = load i64, ptr %i.a, align 8, !tbaa !115
  %i.ch = lshr i64 %i.cg, 8                       ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  store i32 %i.ci, ptr %i.ce, align 4, !tbaa !40
  %i.cj = load ptr, ptr %1, align 8, !tbaa !199, !nonnull !104, !noundef !104
  %i.ck = and i64 %i.ch, 4294967295
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %i.ck ; 4 uses
  %i.cm = load i64, ptr %6, align 8, !tbaa !259
  %i.cn = inttoptr i64 %i.cm to ptr               ; 3 uses
  store ptr null, ptr %i.cl, align 8, !tbaa !195
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8 ; 2 uses
  store i64 -1, ptr %i.co, align 8, !tbaa !196
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !195
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !195
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 2 uses
  store ptr null, ptr %i.cn, align 8, !tbaa !195
  %i.cr = load <2 x i64>, ptr %i.cq, align 8, !tbaa !39
  store <2 x i64> %i.cr, ptr %i.co, align 8, !tbaa !39
  store i64 -1, ptr %i.cq, align 8, !tbaa !196
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i8 0, i64 16, i1 false)
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.cu = and i64 %i.ct, -256
  %i.cv = add i64 %i.cu, 256
  %i.cw = and i64 %i.ct, 255
  %i.cx = or disjoint i64 %i.cv, %i.cw
  store i64 %i.cx, ptr %i.a, align 8, !tbaa !115
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit
  %.sink101 = phi ptr [ %i.aq, %bb.g ], [ %i.ce, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.lcssa99.sink = phi i64 [ %i.aa, %bb.g ], [ %i.by, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14ChunkIjE6setTagEmm.exit ]
  store ptr %.sink101, ptr %0, align 8, !tbaa !173
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa99.sink, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !39
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cy, align 8, !tbaa !878
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #22 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 1
  %i.b = lshr i64 %4, 2
  %i.c = add i64 %i.b, %4
  %i.d = lshr i64 %4, 3
  %i.e = add i64 %i.c, %i.d
  %i.f = lshr i64 %4, 5
  %i.g = add i64 %i.e, %i.f
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.a, i64 %i.g) ; 4 uses
  %i.h = icmp ult i64 %.sroa.speculated, 13
  br i1 %i.h, label %bb.b, label %_ZN5folly11findLastSetImEEjT_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = icmp samesign ult i64 %.sroa.speculated, 3
  br i1 %i.i, label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.inv.i = icmp samesign ugt i64 %.sroa.speculated, 6
  %spec.select.i = select i1 %.inv.i, i64 12, i64 6
  br label %_ZNK5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE25computeChunkCountAndScaleEmbb.exit

_ZN5folly11findLastSetImEEjT_.exit.i:             ; preds = %bb.a
  %i.j = add i64 %.sroa.speculated, -1            ; 2 uses
  %i.k = udiv i64 %i.j, 10
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 true)
  %i.m = trunc nuw nsw i64 %i.l to i32
  %i.n = sub nuw nsw i32 64, %i.m                 ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = shl nuw nsw i64 1, %i.o                  ; 2 uses
  %i.q = icmp ugt i64 %i.j, 20479
  %i.r = shl i32 10, %i.n
  %i.s = zext i32 %i.r to i64
  %i.t = select i1 %i.q, i64 40960, i64 %i.s      ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS6_6SsdRunEvvvSt17integral_constantIbLb1EEEEE9clearImplILb0EEEvv:bb.a
  %i.h = and i64 %i.g, 255                        ; 3 uses
  %i.i = icmp samesign ugt i64 %i.h, 3            ; 3 uses
  %i.j = lshr i64 %i.g, 8                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.0.copyload.i.i = load i16, ptr %i.k, align 1  ; 2 uses
  %i.l = zext i16 %.0.copyload.i.i to i64         ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.h
  %i.m = xor i64 %notmask.i, -1
  %i.n = lshr i64 %i.m, 12
  %i.o = add nuw nsw i64 %i.n, 1
  %.not.i.i = icmp eq i64 %i.j, 0                 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i.i
  %.05.i.i = phi i64 [ %i.w, %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i.i ], [ 0, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !199
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %.05.i.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !195  ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !196
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i64 noundef %i.t)
          to label %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #36
  unreachable

_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.05.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.j
  br i1 %exitcond.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit, label %.lr.ph.i.i, !llvm.loop !18

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i
  %.05.i = phi i64 [ %i.ae, %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i ], [ 0, %bb.f ] ; 2 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !199
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %.05.i ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !195  ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !196
  invoke void @_ZN8facebook5velox11StringIdMap7releaseEm(ptr noundef nonnull align 8 dereferenceable(104) %i.z, i64 noundef %i.ab)
          to label %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #36
  unreachable

_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i: ; preds = %bb.g, %.lr.ph.i
  %i.ae = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit: ; preds = %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i, %_ZSt10destroy_atISt4pairIKN8facebook5velox5cache12FileCacheKeyENS3_6SsdRunEEEvPT_.exit.i.i
  %i.af = load i64, ptr %i.f, align 8, !tbaa !115 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 256
  br i1 %i.ag, label %bb.l, label %bb.i

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19: ; preds = %bb.c
  %i.ah = icmp ult i64 %i.g, 256
  br i1 %i.ah, label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, label %.thread20

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread: ; preds = %bb.f
  %i.ai = icmp ult i64 %i.g, 256
  br i1 %i.ai, label %.thread22, label %.thread

bb.i:                                             ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit
  br i1 %i.i, label %.thread20, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !114
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.0.copyload.i.pre = load i16, ptr %.phi.trans.insert, align 1
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread
  %.0.copyload.i = phi i16 [ %.0.copyload.i.pre, %..thread_crit_edge ], [ %.0.copyload.i.i, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread ]
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i16 %.0.copyload.i, ptr %i.ak, align 1
  %.pre29 = load i64, ptr %i.f, align 8, !tbaa !115
  br label %.thread20

bb.k:                                             ; preds = %.thread, %bb.k
  %.026 = phi i64 [ 0, %.thread ], [ %i.an, %bb.k ] ; 2 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %.026
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.am, i8 0, i64 16, i1 false)
  %i.an = add nuw i64 %.026, 1                    ; 2 uses
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !115
  %i.ap = and i64 %i.ao, 255
  %.0.highbits = lshr i64 %i.an, %i.ap
  %i.aq = icmp eq i64 %.0.highbits, 0
  br i1 %i.aq, label %bb.k, label %bb.j, !llvm.loop !903

.thread20:                                        ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19, %bb.j, %bb.i
  %i.ar = phi i64 [ %i.g, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19 ], [ %.pre29, %bb.j ], [ %i.af, %bb.i ]
  %i.as = and i64 %i.ar, 255                      ; 2 uses
  store i64 %i.as, ptr %i.f, align 8, !tbaa !115
  br label %bb.l

bb.l:                                             ; preds = %.thread20, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit
  %i.at = phi i64 [ %i.as, %.thread20 ], [ %i.af, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit ]
  br i1 %i.i, label %._ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit_crit_edge, label %.thread22

._ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit_crit_edge: ; preds = %bb.l
  %.pre30 = load ptr, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds nuw i8, ptr %.pre30, i64 12
  %.0.copyload.i17.pre = load i16, ptr %.phi.trans.insert31, align 1
  %.pre34 = zext i16 %.0.copyload.i17.pre to i64
  br label %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit

_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit: ; preds = %._ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit_crit_edge, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19
  %.pre-phi35 = phi i64 [ %.pre34, %._ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit_crit_edge ], [ %i.l, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19 ]
  %.pre-phi = phi i64 [ %i.at, %._ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit_crit_edge ], [ %i.h, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19 ] ; 2 uses
  %i.au = phi ptr [ %.pre30, %._ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit_crit_edge ], [ %i.b, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread19 ]
  %i.av = icmp eq i64 %.pre-phi, 0
  %i.aw = shl nuw nsw i64 %.pre-phi35, 2
  %.neg23 = sub nuw nsw i64 -16, %i.aw
  %.neg24 = shl i64 -64, %.pre-phi
  %.0.i.neg = select i1 %i.av, i64 %.neg23, i64 %.neg24
  store ptr @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance, ptr %i.a, align 8, !tbaa !114
  store i64 0, ptr %i.f, align 8, !tbaa !115
  %i.ax = and i64 %.0.i.neg, -8
  %i.ay = mul nuw nsw i64 %i.l, 40
  %i.az = mul i64 %i.ay, %i.o
  %i.ba = sub i64 %i.az, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.ba) #33
  store ptr null, ptr %0, align 8, !tbaa !199
  br label %.thread22

.thread22:                                        ; preds = %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE11beforeResetEmm.exit.thread, %bb.l, %_ZN5folly3f146detail21VectorContainerPolicyIN8facebook5velox5cache12FileCacheKeyENS5_6SsdRunEvvvSt17integral_constantIbLb1EEE10afterResetEmmPhm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE19tryEmplaceValueImplImJmEEESt4pairINS1_11F14ItemIterIPNS1_8F14ChunkImEEEEbES7_ImmERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.501") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %i.c = lshr i64 %i.b, 8                         ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !280   ; 3 uses
  br i1 %.not, label %.thread64, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %3, 1
  %i.e = or disjoint i64 %i.d, 1
  %i.f = trunc i64 %3 to i8
  %i.g = insertelement <16 x i8> poison, i8 %i.f, i64 0
  %i.h = shufflevector <16 x i8> %i.g, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.i = and i64 %i.b, 255                        ; 4 uses
  %i.j = shl nuw i64 1, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.f
  %.023.i75 = phi i64 [ %i.j, %bb.b ], [ %i.ae, %bb.f ]
  %.025.i74 = phi i64 [ %2, %bb.b ], [ %i.af, %bb.f ] ; 2 uses
  %i.k = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %.025.i74, i64 range(i64 0, 256) %i.i)
  %i.l = getelementptr inbounds nuw [128 x i8], ptr %.pre, i64 %i.k ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  tail call void @llvm.prefetch.p0(ptr nonnull %i.n, i32 0, i32 3, i32 1)
  %i.o = load <16 x i8>, ptr %i.l, align 16       ; 2 uses
  %i.p = icmp eq <16 x i8> %i.o, %i.h
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = and i16 %i.q, 16383
  %i.s = zext nneg i16 %i.r to i32
  %i.t = icmp ne ptr %i.l, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  %i.u = extractelement <16 x i8> %i.o, i64 15
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %bb.c
  %.sroa.040.0 = phi i32 [ %i.s, %bb.c ], [ %i.x, %bb.d ] ; 4 uses
  %.not66 = icmp eq i32 %.sroa.040.0, 0
  br i1 %.not66, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.v = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 %.sroa.040.0, i1 true)
  %i.w = add nuw nsw i32 %.sroa.040.0, 16383
  %i.x = and i32 %i.w, %.sroa.040.0
  %i.y = zext nneg i32 %i.v to i64                ; 3 uses
  tail call void @llvm.assume(i1 %i.t)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i64, ptr %4, align 8, !tbaa !39
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !39
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.g, label %.critedge.i, !prof !200, !llvm.loop !14

bb.e:                                             ; preds = %.critedge.i
  %i.ad = icmp eq i8 %i.u, 0
  br i1 %i.ad, label %.thread64, label %bb.f, !prof !200

bb.f:                                             ; preds = %bb.e
  %i.ae = add i64 %.023.i75, -1                   ; 2 uses
  %i.af = add i64 %i.e, %.025.i74
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %.thread64, label %bb.c, !llvm.loop !15

bb.g:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.y
  br label %bb.p

.thread64:                                        ; preds = %bb.f, %bb.e, %bb.a
  %.pre-phi84 = phi i64 [ %i.b, %bb.a ], [ %i.i, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !45
  %i.aj = and i8 %i.ai, 15
  %i.ak = zext nneg i8 %i.aj to i64               ; 2 uses
  %i.al = shl i64 %i.ak, %.pre-phi84              ; 2 uses
  %.not.i30 = icmp ult i64 %i.c, %i.al
  br i1 %.not.i30, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE16reserveForInsertEm.exit, label %bb.h

bb.h:                                             ; preds = %.thread64
  %i.am = shl nuw i64 1, %.pre-phi84
  tail call void @_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE20reserveForInsertImplEmmmm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.am, i64 noundef %i.ak, i64 noundef %i.al)
  %.pre80 = load ptr, ptr %1, align 8, !tbaa !280
  %.pre81 = load i64, ptr %i.a, align 8, !tbaa !115
  %.pre82 = and i64 %.pre81, 255
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE16reserveForInsertEm.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE16reserveForInsertEm.exit: ; preds = %.thread64, %bb.h
  %.pre-phi = phi i64 [ %.pre-phi84, %.thread64 ], [ %.pre82, %bb.h ] ; 2 uses
  %i.an = phi ptr [ %.pre, %.thread64 ], [ %.pre80, %bb.h ] ; 3 uses
  %i.ao = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %2, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.ap = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.ap, align 16, !tbaa !45
  %i.ar = icmp slt <16 x i8> %i.aq, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = and i16 %i.as, 16383                    ; 2 uses
  %.not67 = icmp eq i16 %i.at, 16383
  br i1 %.not67, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE16reserveForInsertEm.exit
  %i.au = shl i64 %3, 1
  %i.av = or disjoint i64 %i.au, 1
  br label %bb.j

bb.j:                                             ; preds = %_ZN5folly3f146detail8F14ChunkImE25incrOutboundOverflowCountEv.exit, %bb.i
  %i.aw = phi i64 [ %i.ao, %bb.i ], [ %i.bc, %_ZN5folly3f146detail8F14ChunkImE25incrOutboundOverflowCountEv.exit ]
  %.028 = phi i64 [ %2, %bb.i ], [ %i.bb, %_ZN5folly3f146detail8F14ChunkImE25incrOutboundOverflowCountEv.exit ]
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 15 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !342 ; 2 uses
  %.not.i31 = icmp eq i8 %i.az, -2
  br i1 %.not.i31, label %_ZN5folly3f146detail8F14ChunkImE25incrOutboundOverflowCountEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 1, !tbaa !342
  br label %_ZN5folly3f146detail8F14ChunkImE25incrOutboundOverflowCountEv.exit

_ZN5folly3f146detail8F14ChunkImE25incrOutboundOverflowCountEv.exit: ; preds = %bb.j, %bb.k
  %i.bb = add i64 %i.av, %.028                    ; 2 uses
  %i.bc = tail call noundef i64 @llvm.x86.bmi.bzhi.64(i64 %i.bb, i64 range(i64 0, 256) %.pre-phi) ; 2 uses
  %i.bd = getelementptr inbounds nuw [128 x i8], ptr %i.an, i64 %i.bc ; 3 uses
  %i.be = load <16 x i8>, ptr %i.bd, align 16     ; 2 uses
  %i.bf = icmp slt <16 x i8> %i.be, zeroinitializer
  %i.bg = bitcast <16 x i1> %i.bf to i16
  %i.bh = and i16 %i.bg, 16383                    ; 2 uses
  %.not68 = icmp eq i16 %i.bh, 16383
  br i1 %.not68, label %bb.j, label %bb.l, !llvm.loop !904

bb.l:                                             ; preds = %_ZN5folly3f146detail8F14ChunkImE25incrOutboundOverflowCountEv.exit
  %i.bi = extractelement <16 x i8> %i.be, i64 14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bk = add i8 %i.bi, 16
  store i8 %i.bk, ptr %i.bj, align 2, !tbaa !330
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE16reserveForInsertEm.exit
  %.sroa.034.0.in.in = phi i16 [ %i.at, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE16reserveForInsertEm.exit ], [ %i.bh, %bb.l ]
  %.1 = phi ptr [ %i.ap, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE16reserveForInsertEm.exit ], [ %i.bd, %bb.l ] ; 3 uses
  %.sroa.034.0.in = xor i16 %.sroa.034.0.in.in, 16383
  %i.bl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.0.in, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64              ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.1, i64 %i.bm ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !45
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %_ZN5folly3f146detail8F14ChunkImE6setTagEmm.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb0EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly3f146detail8F14ChunkImE6setTagEmmE30__folly_detail_safe_assert_arg_0, ptr noundef nonnull @.str.9) #40
  unreachable

_ZN5folly3f146detail8F14ChunkImE6setTagEmm.exit:  ; preds = %bb.m
  %i.bq = trunc i64 %3 to i8
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !45
  %i.br = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bm ; 3 uses
  %i.bt = icmp ne ptr %.1, @_ZZN5folly3f146detail20getF14EmptyTagVectorEvE8instance
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = load i64, ptr %5, align 8, !tbaa !39
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !39
  %i.bv = lshr i64 %i.bm, 1
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = or i64 %i.bv, %i.bw                     ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !276
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.o, label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE13insertAtBlankIJmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkImEEEESt4pairImmEDpOT_.exit

bb.o:                                             ; preds = %_ZN5folly3f146detail8F14ChunkImE6setTagEmm.exit
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !39
  br label %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE13insertAtBlankIJmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkImEEEESt4pairImmEDpOT_.exit

_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE13insertAtBlankIJmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkImEEEESt4pairImmEDpOT_.exit: ; preds = %_ZN5folly3f146detail8F14ChunkImE6setTagEmm.exit, %bb.o
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.cc = and i64 %i.cb, -256
  %i.cd = add i64 %i.cc, 256
  %i.ce = and i64 %i.cb, 255
  %i.cf = or disjoint i64 %i.cd, %i.ce
  store i64 %i.cf, ptr %i.a, align 8, !tbaa !115
  br label %bb.p

bb.p:                                             ; preds = %bb.g, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE13insertAtBlankIJmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkImEEEESt4pairImmEDpOT_.exit
  %.sink98 = phi ptr [ %i.ag, %bb.g ], [ %i.bs, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE13insertAtBlankIJmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkImEEEESt4pairImmEDpOT_.exit ]
  %.lcssa96.sink = phi i64 [ %i.y, %bb.g ], [ %i.bm, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE13insertAtBlankIJmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkImEEEESt4pairImmEDpOT_.exit ]
  %.sink = phi i8 [ 0, %bb.g ], [ 1, %_ZN5folly3f146detail8F14TableINS1_20ValueContainerPolicyImvvvvEEE13insertAtBlankIJmEEEvNS1_11F14ItemIterIPNS1_8F14ChunkImEEEESt4pairImmEDpOT_.exit ]
  store ptr %.sink98, ptr %0, align 8, !tbaa !336
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lcssa96.sink, ptr %.sroa.539.0..sroa_idx, align 8, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.cg, align 8, !tbaa !907
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIiEESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8facebook5velox11AsyncSourceIiEEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8facebook5velox11AsyncSourceIiED2Ev(ptr noundef nonnull align 8 dead_on_return(248) dereferenceable(248) %i.a) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(264) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIiEESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 264) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8facebook5velox11AsyncSourceIiEESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(264) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !909  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !45
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #33
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
end_hunk_7
