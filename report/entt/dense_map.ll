Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/dense_map?download=true
inline.NumInlined: 11368
inline.NumDeleted: 3149
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN18DenseMap_Copy_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  br label %bb.ip

bb.il:                                            ; preds = %bb.ig
  %i.xv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit546

bb.im:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit540
  %i.xw = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.in:                                            ; preds = %bb.ij
  %i.xx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %55) #27
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.pn175 = phi { ptr, i32 } [ %i.xx, %bb.in ], [ %i.xw, %bb.im ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #27
  %i.xy = load ptr, ptr %54, align 8, !tbaa !91   ; 3 uses
  %.not.i.i544 = icmp eq ptr %i.xy, null
  br i1 %.not.i.i544, label %_ZN7testing7MessageD2Ev.exit546, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i545

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i545: ; preds = %bb.io
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !50
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 8
  %i.yb = load ptr, ptr %i.ya, align 8
  call void %i.yb(ptr noundef nonnull align 8 dereferenceable(128) %i.xy) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit546

_ZN7testing7MessageD2Ev.exit546:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i545, %bb.io, %bb.il
  %.pn175.pn = phi { ptr, i32 } [ %i.xv, %bb.il ], [ %.pn175, %bb.io ], [ %.pn175, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i545 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #27
  br label %bb.iv

bb.ip:                                            ; preds = %bb.id, %_ZN7testing7MessageD2Ev.exit543
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %53) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %bb.iq

bb.iq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit531, %_ZN7testing7MessageD2Ev.exit518, %_ZN7testing15AssertionResultD2Ev.exit497, %_ZN7testing15AssertionResultD2Ev.exit476, %_ZN7testing15AssertionResultD2Ev.exit456, %_ZN7testing15AssertionResultD2Ev.exit432, %_ZN7testing15AssertionResultD2Ev.exit408, %_ZN7testing15AssertionResultD2Ev.exit384, %_ZN7testing15AssertionResultD2Ev.exit354, %_ZN7testing15AssertionResultD2Ev.exit324, %_ZN7testing15AssertionResultD2Ev.exit294, %_ZN7testing15AssertionResultD2Ev.exit259, %_ZN7testing15AssertionResultD2Ev.exit238, %_ZN7testing15AssertionResultD2Ev.exit, %bb.ip
  %i.yc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.yd, null
  br i1 %.not.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.ye = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !143
  %i.yg = ptrtoint ptr %i.yf to i64
  %i.yh = ptrtoint ptr %i.yd to i64
  %i.yi = sub i64 %i.yg, %i.yh
  call void @_ZdlPvm(ptr noundef nonnull %i.yd, i64 noundef %i.yi) #28
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i: ; preds = %bb.ir, %bb.iq
  %i.yj = load ptr, ptr %2, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.yj, null
  br i1 %.not.i.i.i.i1.i, label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit, label %bb.is

bb.is:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i
  %i.yk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !82
  %i.ym = ptrtoint ptr %i.yl to i64
  %i.yn = ptrtoint ptr %i.yj to i64
  %i.yo = sub i64 %i.ym, %i.yn
  call void @_ZdlPvm(ptr noundef nonnull %i.yj, i64 noundef %i.yo) #28
  br label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit

_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.yp = load ptr, ptr %i.ay, align 8, !tbaa !142 ; 3 uses
  %.not.i.i.i.i.i547 = icmp eq ptr %i.yp, null
  br i1 %.not.i.i.i.i.i547, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i548, label %bb.it

bb.it:                                            ; preds = %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !143
  %i.ys = ptrtoint ptr %i.yr to i64
  %i.yt = ptrtoint ptr %i.yp to i64
  %i.yu = sub i64 %i.ys, %i.yt
  call void @_ZdlPvm(ptr noundef nonnull %i.yp, i64 noundef %i.yu) #28
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i548

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i548: ; preds = %bb.it, %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit
  %i.yv = load ptr, ptr %1, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i.i1.i549 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i.i.i1.i549, label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit550, label %bb.iu

bb.iu:                                            ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i548
  %i.yw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !82
  %i.yy = ptrtoint ptr %i.yx to i64
  %i.yz = ptrtoint ptr %i.yv to i64
  %i.za = sub i64 %i.yy, %i.yz
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef %i.za) #28
  br label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit550

_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev.exit550: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i548, %bb.iu
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.iv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit546, %bb.if
  %.pn175.pn.pn = phi { ptr, i32 } [ %.pn175.pn, %_ZN7testing7MessageD2Ev.exit546 ], [ %i.xm, %bb.if ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #27
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.ie, %bb.hr, %bb.hd, %bb.go, %bb.fy, %bb.fg, %bb.en, %_ZN7testing7MessageD2Ev.exit390, %_ZN7testing7MessageD2Ev.exit360, %_ZN7testing7MessageD2Ev.exit330, %_ZN7testing7MessageD2Ev.exit300, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %_ZN7testing7MessageD2Ev.exit244, %_ZN7testing7MessageD2Ev.exit214
  %.pn175.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn, %bb.iv ], [ %.pn171.pn.pn, %bb.ie ], [ %.pn167.pn.pn, %bb.hr ], [ %.pn163.pn.pn, %bb.hd ], [ %.pn159.pn.pn, %bb.go ], [ %.pn155.pn.pn, %bb.fy ], [ %.pn149.pn.pn, %bb.fg ], [ %.pn143.pn.pn, %bb.en ], [ %.pn136.pn.pn, %_ZN7testing7MessageD2Ev.exit390 ], [ %.pn131.pn.pn, %_ZN7testing7MessageD2Ev.exit360 ], [ %.pn126.pn.pn, %_ZN7testing7MessageD2Ev.exit330 ], [ %.pn121.pn.pn, %_ZN7testing7MessageD2Ev.exit300 ], [ %i.hn, %bb.bm ], [ %i.hm, %bb.bl ], [ %i.hl, %bb.bk ], [ %i.hk, %bb.bj ], [ %.pn117.pn.pn, %bb.bi ], [ %.pn112.pn.pn, %_ZN7testing7MessageD2Ev.exit244 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit214 ]
  call void @_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %2) #27
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.l
  %.pn175.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn, %bb.iw ], [ %i.bq, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.k, %bb.j
  %.pn175.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn175.pn.pn.pn.pn, %bb.ix ], [ %i.bp, %bb.k ], [ %i.bo, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(52) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !81     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !118

.noexc.i.i.i.i:                                   ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !107
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !82
  %i.m = load ptr, ptr %1, align 8, !tbaa !131    ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !131
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 8
  br i1 %i.r, label %bb.d, label %bb.e, !prof !132

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.m, i64 %i.q, i1 false)
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEC2ERKS5_.exit

bb.e:                                             ; preds = %bb.c
  %i.s = icmp eq i64 %i.q, 8
  br i1 %i.s, label %bb.f, label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEC2ERKS5_.exit

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.m, align 8, !tbaa !110
  store i64 %i.t, ptr %i.i, align 8, !tbaa !110
  br label %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEC2ERKS5_.exit

_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEC2ERKS5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.i, i64 %i.q
  store ptr %i.u, ptr %i.j, align 8, !tbaa !107
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !144  ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !142  ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i5 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i.i5, label %.noexc7, label %bb.g

bb.g:                                             ; preds = %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEC2ERKS5_.exit
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %.noexc.i.i.i.i6, label %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeImmEEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !118

.noexc.i.i.i.i6:                                  ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %.noexc.i.i.i.i6
  unreachable

_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeImmEEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #31
          to label %.noexc7 unwind label %bb.h

.noexc7:                                          ; preds = %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeImmEEE8allocateEmPKv.exit.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEC2ERKS5_.exit
  %i.af = phi ptr [ null, %_ZN4entt15compressed_pairISt6vectorImSaImEESt8identityEC2ERKS5_.exit ], [ %i.ae, %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeImmEEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.af, ptr %i.v, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !144
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !143
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !148 ; 2 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !148 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc7, %.lr.ph.i.i.i.i.i.i.i
  %.08.i.i.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i ], [ %i.af, %.noexc7 ] ; 2 uses
  %.sroa.04.07.i.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aj, %.noexc7 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.08.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.07.i.i.i.i.i.i.i, i64 24, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.ak
  br i1 %i.ao, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !446

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc7
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.af, %.noexc7 ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !144
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = load float, ptr %i.aq, align 8, !tbaa !141
  store float %i.ar, ptr %i.ap, align 8, !tbaa !141
  ret void

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIN4entt8internal14dense_map_nodeImmEEE8allocateEmPKv.exit.i.i.i.i.i.i, %.noexc.i.i.i.i6
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = sub i64 %i.av, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ax) #28
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit

_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.as
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEED2Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !143
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !81     ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i1, label %_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #28
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit

_ZN4entt8internal23compressed_pair_elementISt6vectorImSaImEELm0EED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN18DenseMap_Move_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.entt::dense_map.44", align 16 ; 26 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.entt::dense_map.44", align 16 ; 23 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %42 = alloca %"class.testing::AssertionResult", align 8 ; 11 uses
  %i.s = alloca i32, align 4                      ; 5 uses
  %43 = alloca %"class.testing::Message", align 8 ; 7 uses
  %44 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %45 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %1, i8 0, i64 48, i1 false)
  store float 8.750000e-01, ptr %i.u, align 16, !tbaa !141
  invoke void @_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(52) %1, i64 noundef 8)
          to label %_ZN4entt9dense_mapImmSt8identitySt8equal_toIvESaISt4pairIKmmEEEC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !142  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !143
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #28
  br label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i.i

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ad = load ptr, ptr %1, align 16, !tbaa !81   ; 3 uses
  %.not.i.i.i.i7.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i7.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeImmEESaIS4_EELm0EED2Ev.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !82
end_hunk_0
begin_hunk_1_@_ZN42DenseMap_KeyUsesAllocatorConstruction_Test8TestBodyEv:bb.a
bb.cg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit175
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ch unwind label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.gt = load ptr, ptr %23, align 8, !tbaa !91   ; 3 uses
  %.not.i.i176 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i176, label %_ZN7testing7MessageD2Ev.exit178, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i177

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i177: ; preds = %bb.ch
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !50
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(128) %i.gt) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit178

_ZN7testing7MessageD2Ev.exit178:                  ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i177
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.cm

bb.ci:                                            ; preds = %bb.cd
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit181

bb.cj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit175
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ck:                                            ; preds = %bb.cg
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn59 = phi { ptr, i32 } [ %i.gz, %bb.ck ], [ %i.gy, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  %i.ha = load ptr, ptr %23, align 8, !tbaa !91   ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i179, label %_ZN7testing7MessageD2Ev.exit181, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180: ; preds = %bb.cl
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !50
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8
  call void %i.hd(ptr noundef nonnull align 8 dereferenceable(128) %i.ha) #27, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit181

_ZN7testing7MessageD2Ev.exit181:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180, %bb.cl, %bb.ci
  %.pn59.pn = phi { ptr, i32 } [ %i.gx, %bb.ci ], [ %.pn59, %bb.cl ], [ %.pn59, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #27
  br label %bb.cq

bb.cm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit173, %_ZN7testing7MessageD2Ev.exit178
  %i.he = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !104 ; 4 uses
  %.not.i.i182 = icmp eq ptr %i.hf, null
  br i1 %.not.i.i182, label %_ZN7testing15AssertionResultD2Ev.exit186, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !88 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183: ; preds = %bb.cn
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !89
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #28
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i183
  call void @_ZdlPvm(ptr noundef nonnull %i.hf, i64 noundef 32) #28
  br label %_ZN7testing15AssertionResultD2Ev.exit186

_ZN7testing15AssertionResultD2Ev.exit186:         ; preds = %bb.cm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.co

bb.co:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN7testing15AssertionResultD2Ev.exit138, %_ZN7testing15AssertionResultD2Ev.exit186
  call void @_ZN4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit118, %_ZN7testing15AssertionResultD2Ev.exit98, %_ZN7testing15AssertionResultD2Ev.exit, %bb.co
  call void @_ZN4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %2) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret void

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit181, %bb.cc
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %_ZN7testing7MessageD2Ev.exit181 ], [ %i.go, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cb, %_ZN7testing7MessageD2Ev.exit144
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %bb.cq ], [ %.pn55.pn.pn, %bb.cb ], [ %.pn51.pn.pn, %_ZN7testing7MessageD2Ev.exit144 ]
  call void @_ZN4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %13) #27
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ax
  %.pn59.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn, %bb.cr ], [ %i.ea, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.aw, %bb.ah, %_ZN7testing7MessageD2Ev.exit83, %bb.d, %bb.c
  %.pn59.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn, %bb.cs ], [ %.pn47.pn.pn, %bb.aw ], [ %.pn43.pn.pn, %bb.ah ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit83 ], [ %i.ac, %bb.d ], [ %i.ab, %bb.c ]
  call void @_ZN4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %2) #27
  br label %.body

.body:                                            ; preds = %bb.b, %bb.ct
  %.pn59.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn.pn.pn.pn, %bb.ct ], [ %i.p, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  call void @_ZNSt3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  resume { ptr, i32 } %.pn59.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEEC2ERKSH_RKSG_(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(68) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !295    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !296  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !280  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = ptrtoint ptr %i.a to i64
  store i64 %i.i, ptr %0, align 8, !tbaa !253
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %i.h, 0
  br i1 %i.k, label %bb.c, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorImEEE8allocateERS2_m.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorImEEE8allocateERS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef nonnull align 8 ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.h, i64 noundef 8), !inline_history !1009
  br label %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i

_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i: ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorImEEE8allocateERS2_m.exit.i.i.i.i.i.i, %bb.a
  %i.p = phi ptr [ %i.o, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorImEEE8allocateERS2_m.exit.i.i.i.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !280
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !296
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !281
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !131  ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !131  ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN4entt15compressed_pairISt6vectorImNSt3pmr21polymorphic_allocatorImEEESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcENS3_IcEEEEEEC2IJRKS5_RKNS3_ISt4pairIKSC_iEEEEJRKSD_EEESt21piecewise_construct_tSt5tupleIJDpT_EESR_IJDpT0_EE.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i, %.lr.ph.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i ] ; 2 uses
  %.sroa.010.013.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i ], [ %i.t, %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i ] ; 2 uses
  %i.w = load i64, ptr %.sroa.010.013.i.i.i.i, align 8, !tbaa !110
  store i64 %i.w, ptr %.014.i.i.i.i, align 8, !tbaa !110
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 8 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.u
  br i1 %i.z, label %_ZN4entt15compressed_pairISt6vectorImNSt3pmr21polymorphic_allocatorImEEESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcENS3_IcEEEEEEC2IJRKS5_RKNS3_ISt4pairIKSC_iEEEEJRKSD_EEESt21piecewise_construct_tSt5tupleIJDpT_EESR_IJDpT0_EE.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1010

_ZN4entt15compressed_pairISt6vectorImNSt3pmr21polymorphic_allocatorImEEESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcENS3_IcEEEEEEC2IJRKS5_RKNS3_ISt4pairIKSC_iEEEEJRKSD_EEESt21piecewise_construct_tSt5tupleIJDpT_EESR_IJDpT0_EE.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNSt12_Vector_baseImNSt3pmr21polymorphic_allocatorImEEEC2EmRKS2_.exit.i.i.i ], [ %i.y, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.q, align 8, !tbaa !296
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load ptr, ptr %2, align 8, !tbaa !295   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !297 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !298 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  %i.aj = ptrtoint ptr %i.ab to i64
  store i64 %i.aj, ptr %i.aa, align 8, !tbaa !253
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i.i.i9, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEC2EmRKSC_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4entt15compressed_pairISt6vectorImNSt3pmr21polymorphic_allocatorImEEESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcENS3_IcEEEEEEC2IJRKS5_RKNS3_ISt4pairIKSC_iEEEEJRKSD_EEESt21piecewise_construct_tSt5tupleIJDpT_EESR_IJDpT0_EE.exit
  %3 = icmp slt i64 %i.ai, 0
  br i1 %3, label %bb.e, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE8allocateERSC_m.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE8allocateERSC_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef nonnull align 8 ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, i64 noundef %i.ai, i64 noundef 8)
          to label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEC2EmRKSC_.exit.i.i.i unwind label %bb.h, !inline_history !1011

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEC2EmRKSC_.exit.i.i.i: ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE8allocateERSC_m.exit.i.i.i.i.i.i, %_ZN4entt15compressed_pairISt6vectorImNSt3pmr21polymorphic_allocatorImEEESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcENS3_IcEEEEEEC2IJRKS5_RKNS3_ISt4pairIKSC_iEEEEJRKSD_EEESt21piecewise_construct_tSt5tupleIJDpT_EESR_IJDpT0_EE.exit
  %i.ap = phi ptr [ null, %_ZN4entt15compressed_pairISt6vectorImNSt3pmr21polymorphic_allocatorImEEESt4hashINSt7__cxx1112basic_stringIcSt11char_traitsIcENS3_IcEEEEEEC2IJRKS5_RKNS3_ISt4pairIKSC_iEEEEJRKSD_EEESt21piecewise_construct_tSt5tupleIJDpT_EESR_IJDpT0_EE.exit ], [ %i.ao, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE8allocateERSC_m.exit.i.i.i.i.i.i ] ; 4 uses
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !298
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !297
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ai
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !299
  %i.at = load ptr, ptr %i.ac, align 8, !tbaa !300
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !300
  %i.av = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEESt6vectorISD_NSA_ISD_EEEEEPSD_SH_ET0_T_SM_SL_RT1_(ptr %i.at, ptr %i.au, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aa)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEC2EmRKSC_.exit.i.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.aa) #27
  br label %.body

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEC2EmRKSC_.exit.i.i.i
  store ptr %i.av, ptr %i.aq, align 8, !tbaa !297
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = load float, ptr %i.ay, align 8, !tbaa !293
  store float %i.az, ptr %i.ax, align 8, !tbaa !293
  ret void

bb.h:                                             ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE8allocateERSC_m.exit.i.i.i.i.i.i, %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %i.aw, %bb.f ]
  tail call void @_ZN4entt8internal23compressed_pair_elementISt6vectorImNSt3pmr21polymorphic_allocatorImEEELm0EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #27
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4entt9dense_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiSt4hashIS8_ESt8equal_toIvENS6_ISt4pairIKS8_iEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !297  ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not5.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.s, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !304  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 32 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.k = load i64, ptr %i.h, align 8, !tbaa !89
  %i.l = add i64 %i.k, 1
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !305  ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.g, i64 noundef %i.l, i64 noundef 1)
          to label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i unwind label %bb.b, !inline_history !21

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i, !llvm.loop !23

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exitthread-pre-split.i.i: ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEiEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8, !tbaa !298
  br label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exit.i.i

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exitthread-pre-split.i.i, %bb.a
  %i.t = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exitthread-pre-split.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS9_ISC_EEELm0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !299
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !306  ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull %i.t, i64 noundef %i.y, i64 noundef 8)
          to label %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS9_ISC_EEELm0EED2Ev.exit unwind label %bb.d, !inline_history !21

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  tail call void @__clang_call_terminate(ptr %i.ae) #29
  unreachable

_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS9_ISC_EEELm0EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS8_ISB_EEEvT_SE_RT0_.exit.i.i, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !280 ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i1, label %_ZN4entt8internal23compressed_pair_elementISt6vectorImNSt3pmr21polymorphic_allocatorImEEELm0EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS9_ISC_EEELm0EED2Ev.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !281
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = load ptr, ptr %0, align 8, !tbaa !282   ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %i.ag, i64 noundef %i.al, i64 noundef 8)
          to label %_ZN4entt8internal23compressed_pair_elementISt6vectorImNSt3pmr21polymorphic_allocatorImEEELm0EED2Ev.exit unwind label %bb.f, !inline_history !21

bb.f:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #29
  unreachable

_ZN4entt8internal23compressed_pair_elementISt6vectorImNSt3pmr21polymorphic_allocatorImEEELm0EED2Ev.exit: ; preds = %_ZN4entt8internal23compressed_pair_elementISt6vectorINS0_14dense_map_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEiEENS9_ISC_EEELm0EED2Ev.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN44DenseMap_ValueUsesAllocatorConstruction_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::pmr::polymorphic_allocator.226", align 8 ; 4 uses
  %2 = alloca %"class.test::tracked_memory_resource", align 8 ; 14 uses
  %3 = alloca %"class.entt::dense_map.221", align 8 ; 18 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.entt::dense_map.221", align 8 ; 17 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4test23tracked_memory_resourceE, i64 16), ptr %2, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.k = tail call noundef nonnull ptr @_ZNSt3pmr20get_default_resourceEv() #27
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  store i64 %i.l, ptr %3, align 8, !tbaa !253
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
end_hunk_1
begin_hunk_2_@_ZN7testing8internal15TestFactoryImplI26DenseMap_Constructors_TestE10CreateTestEv:bb.a
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI18DenseMap_Copy_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI18DenseMap_Copy_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV18DenseMap_Copy_Test, i64 16), ptr %i.a, align 8, !tbaa !50
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107
  %i.c = load ptr, ptr %1, align 8, !tbaa !81     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = load ptr, ptr %0, align 8, !tbaa !81     ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, !prof !118

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 8
  br i1 %i.p, label %bb.e, label %bb.f, !prof !132

bb.e:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 8
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i64, ptr %i.c, align 8, !tbaa !110
  store i64 %i.r, ptr %i.o, align 8, !tbaa !110
  br label %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit

_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %_ZNSt6vectorImSaImEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKmS1_EEEEPmmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.s, ptr %i.g, align 8, !tbaa !82
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107  ; 3 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.w, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = icmp sgt i64 %i.f, 8
  br i1 %i.x, label %bb.k, label %bb.l, !prof !132

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.y = icmp eq i64 %i.f, 8
  br i1 %i.y, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.z = load i64, ptr %i.c, align 8, !tbaa !110
  store i64 %i.z, ptr %i.i, align 8, !tbaa !110
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.aa = icmp sgt i64 %i.w, 8
  br i1 %i.aa, label %bb.o, label %bb.p, !prof !132

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.w, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !81
  %.pre25 = load ptr, ptr %i.t, align 8, !tbaa !107 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !81
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !107
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ab = icmp eq i64 %i.w, 8
  br i1 %i.ab, label %bb.q, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !110
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !110
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.w, %bb.p ], [ 8, %bb.q ]
  %i.ad = phi ptr [ %.pre25, %bb.o ], [ %i.u, %bb.p ], [ %i.u, %bb.q ] ; 2 uses
  %i.ae = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.pre-phi32 ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %.pre-phi34, %i.ag              ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.r, label %bb.s, !prof !132

bb.r:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ad, ptr align 8 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.ak = load i64, ptr %i.af, align 8, !tbaa !110
  store i64 %i.ak, ptr %i.ad, align 8, !tbaa !110
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit
  %i.al = load ptr, ptr %0, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.f
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !107
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEENS1_IPmS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN4entt8internal14dense_map_nodeImmEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144  ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !142    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143
  %i.i = load ptr, ptr %0, align 8, !tbaa !142    ; 8 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE11_M_allocateEm.exit.i, !prof !118

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #30
  unreachable

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #31 ; 4 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeImmEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE11_M_allocateEm.exit.i
  %i.q = add i64 %i.d, -24
  %i.r = sub i64 %i.q, %i.e
  %.fr.i = freeze i64 %i.r                        ; 2 uses
  %i.s = urem i64 %.fr.i, 24
  %i.t = add i64 %.fr.i, 24
  %i.u = sub i64 %i.t, %i.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeImmEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorIN4entt8internal14dense_map_nodeImmEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeImmEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #28
  br label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorIN4entt8internal14dense_map_nodeImmEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.v, ptr %i.g, align 8, !tbaa !143
  br label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

bb.f:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !144  ; 2 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.z, %i.f
  br i1 %.not24, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i64 %i.f, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.g
  %i.ab = udiv exact i64 %i.f, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.ac = load <2 x i64>, ptr %.0910.i.i.i.i.i, align 8, !tbaa !110
  store <2 x i64> %i.ac, ptr %.0811.i.i.i.i.i, align 8, !tbaa !110
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !170
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.ai = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, !llvm.loop !1017

bb.h:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z ; 2 uses
  %i.al = icmp sgt i64 %i.z, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i26, label %_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit

.lr.ph.preheader.i.i.i.i.i26:                     ; preds = %bb.h
  %i.am = udiv exact i64 %i.z, 24
  br label %.lr.ph.i.i.i.i.i27

.lr.ph.i.i.i.i.i27:                               ; preds = %.lr.ph.i.i.i.i.i27, %.lr.ph.preheader.i.i.i.i.i26
  %.012.i.i.i.i.i28 = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i27 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i26 ] ; 2 uses
  %.0811.i.i.i.i.i29 = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i27 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %.0910.i.i.i.i.i30 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i27 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i26 ] ; 3 uses
  %i.an = load <2 x i64>, ptr %.0910.i.i.i.i.i30, align 8, !tbaa !110
  store <2 x i64> %i.an, ptr %.0811.i.i.i.i.i29, align 8, !tbaa !110
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !170
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !170
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i30, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i29, i64 24
  %i.at = add nsw i64 %.012.i.i.i.i.i28, -1
  %i.au = icmp samesign ugt i64 %.012.i.i.i.i.i28, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i27, label %_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit, !llvm.loop !1018

_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i27, %bb.h
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.x, %_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i ], [ %i.ak, %_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0810.i.i.i.i, i64 24, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1019

_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !142
  br label %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit, %bb.g, %_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.ax = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeImmEESaIS3_EE13_M_deallocateEPS3_m.exit ], [ %.pre, %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit.loopexit ], [ %i.i, %bb.g ], [ %i.i, %_ZSt4copyIPN4entt8internal14dense_map_nodeImmEES4_ET0_T_S6_S5_.exit ], [ %i.i, %.lr.ph.i.i.i.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !144
  br label %bb.i

bb.i:                                             ; preds = %_ZSt22__uninitialized_copy_aIPN4entt8internal14dense_map_nodeImmEES4_S3_ET0_T_S6_S5_RSaIT1_E.exit, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI18DenseMap_Move_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI18DenseMap_Move_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV18DenseMap_Move_Test, i64 16), ptr %i.a, align 8, !tbaa !50
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI22DenseMap_Iterator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI22DenseMap_Iterator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV22DenseMap_Iterator_Test, i64 16), ptr %i.a, align 8, !tbaa !50
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI27DenseMap_ConstIterator_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal15TestFactoryImplI27DenseMap_ConstIterator_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV27DenseMap_ConstIterator_Test, i64 16), ptr %i.a, align 8, !tbaa !50
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #28
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7testing8internal15TestFactoryImplI32DenseMap_IteratorConversion_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #28
  ret void
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE17_M_realloc_insertIJRmRKSt21piecewise_construct_tSt5tupleIJOiEESJ_IJRKPKcEEEEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_:bb.a
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull %i.e, i64 noundef %i.ch, i64 noundef 8)
          to label %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE13_M_deallocateEPSB_m.exit unwind label %bb.q, !inline_history !21

bb.q:                                             ; preds = %bb.p
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #29
  unreachable

_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE13_M_deallocateEPSB_m.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEEvT_SE_RT0_.exit, %bb.p
  store ptr %i.w, ptr %i.b, align 8, !tbaa !318
  store ptr %.0.lcssa.i.i34, ptr %i.c, align 8, !tbaa !319
  %i.co = getelementptr inbounds nuw [56 x i8], ptr %i.w, i64 %i.n
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !320
  ret void

.body:                                            ; preds = %_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE11_M_allocateEm.exit
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  %i.cr = call ptr @__cxa_begin_catch(ptr %i.cq) #27 ; 0 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.body.thread, %.body
  call void @_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE7destroyISB_EEvRSC_PT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.x) #27
  br label %bb.t

bb.s:                                             ; preds = %.body.thread47, %.body
  %.0.lpad-body51 = phi ptr [ %i.aw, %.body.thread47 ], [ %i.w, %.body ]
  call void @_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEEvT_SE_RT0_(ptr noundef %i.w, ptr noundef nonnull %.0.lpad-body51, ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  invoke void @_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE13_M_deallocateEPSB_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.w, i64 noundef %i.n)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  invoke void @__cxa_rethrow() #30
          to label %bb.y unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  resume { ptr, i32 } %i.cs

bb.x:                                             ; preds = %bb.v
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  call void @__clang_call_terminate(ptr %i.cu) #29
  unreachable

bb.y:                                             ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZSt12__apply_implB5cxx11IZSt39uninitialized_construct_using_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS9_ISC_EEJRmRKSt21piecewise_construct_tSt5tupleIJOiEESI_IJRKPKcEEEEPT_SR_RKT0_DpOT1_EUlDpOT_E_SI_IJSt15allocator_arg_tRKSD_SE_SH_OSK_OSP_EEJLm0ELm1ELm2ELm3ELm4ELm5EEEDcOSQ_OSS_St16integer_sequenceImJXspT1_EEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1587, !nonnull !109, !align !330
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !378, !nonnull !109, !align !330
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1589, !nonnull !109, !align !330
  %i.g = load ptr, ptr %1, align 8, !tbaa !1591, !nonnull !109, !align !330
  %i.h = load ptr, ptr %0, align 8, !tbaa !1593, !nonnull !109, !align !330
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !385  ; 7 uses
  %i.j = load i64, ptr %i.d, align 8, !tbaa !110
  store i64 %i.j, ptr %i.i, align 8, !tbaa !383
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1594)
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !356, !noalias !1595, !nonnull !109, !align !357
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !380, !noalias !1596, !nonnull !109, !align !330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1598)
  %i.n = load i32, ptr %i.l, align 4, !tbaa !111, !noalias !1599
  store i32 %i.n, ptr %i.k, align 8, !tbaa !384, !alias.scope !1599
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !193, !noalias !1599 ; 4 uses
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !317, !noalias !1599 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  store i64 %i.s, ptr %i.o, align 8, !tbaa !253, !alias.scope !1599
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !363, !alias.scope !1599
  %i.u = icmp eq ptr %i.p, null
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.357) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #27 ; 8 uses
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.x = icmp slt i64 %i.v, 0
  br i1 %i.x, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.358) #30
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.y = add nuw i64 %i.v, 1
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef %i.y, i64 noundef 1), !inline_history !1585 ; 2 uses
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !304, !alias.scope !1599
  store i64 %i.v, ptr %i.r, align 8, !tbaa !89, !alias.scope !1599
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.ad = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %bb.c ] ; 2 uses
  switch i64 %i.v, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZSt8__invokeB5cxx11IZSt39uninitialized_construct_using_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS9_ISC_EEJRmRKSt21piecewise_construct_tSt5tupleIJOiEESI_IJRKPKcEEEEPT_SR_RKT0_DpOT1_EUlDpOT_E_JSt15allocator_arg_tRKSD_SE_SH_SK_SP_EENSt15__invoke_resultISQ_JDpT0_EE4typeEOSQ_DpOS16_.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = load i8, ptr %i.p, align 1, !tbaa !89
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !89
  br label %_ZSt8__invokeB5cxx11IZSt39uninitialized_construct_using_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS9_ISC_EEJRmRKSt21piecewise_construct_tSt5tupleIJOiEESI_IJRKPKcEEEEPT_SR_RKT0_DpOT1_EUlDpOT_E_JSt15allocator_arg_tRKSD_SE_SH_SK_SP_EENSt15__invoke_resultISQ_JDpT0_EE4typeEOSQ_DpOS16_.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.p, i64 %i.v, i1 false)
  br label %_ZSt8__invokeB5cxx11IZSt39uninitialized_construct_using_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS9_ISC_EEJRmRKSt21piecewise_construct_tSt5tupleIJOiEESI_IJRKPKcEEEEPT_SR_RKT0_DpOT1_EUlDpOT_E_JSt15allocator_arg_tRKSD_SE_SH_SK_SP_EENSt15__invoke_resultISQ_JDpT0_EE4typeEOSQ_DpOS16_.exit

_ZSt8__invokeB5cxx11IZSt39uninitialized_construct_using_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS9_ISC_EEJRmRKSt21piecewise_construct_tSt5tupleIJOiEESI_IJRKPKcEEEEPT_SR_RKT0_DpOT1_EUlDpOT_E_JSt15allocator_arg_tRKSD_SE_SH_SK_SP_EENSt15__invoke_resultISQ_JDpT0_EE4typeEOSQ_DpOS16_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store i64 %i.v, ptr %i.af, align 8, !tbaa !358, !alias.scope !1599
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !304, !alias.scope !1599
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.v
  store i8 0, ptr %i.ah, align 1, !tbaa !89
  ret ptr %i.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEEC2EOSD_RKSC_St17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::pmr::polymorphic_allocator.282", align 8 ; 4 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !253
  store i64 %i.a, ptr %0, align 8, !tbaa !253
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !tbaa !253 ; 3 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !317    ; 2 uses
  %i.d = icmp eq ptr %.sroa.0.0.copyload.i, %i.c
  br i1 %i.d, label %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread, label %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit

_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #27, !inline_history !1600
  br i1 %i.h, label %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit._ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread_crit_edge, label %bb.b

_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit._ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread_crit_edge: ; preds = %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit
  %i.i = load <2 x ptr>, ptr %i.b, align 8, !tbaa !385
  %.phi.trans.insert18 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre19 = load ptr, ptr %.phi.trans.insert18, align 8, !tbaa !320
  br label %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread

_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread: ; preds = %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit._ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread_crit_edge, %bb.a
  %i.j = phi ptr [ %.pre19, %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit._ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread_crit_edge ], [ null, %bb.a ]
  %i.k = phi <2 x ptr> [ %i.i, %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit._ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread_crit_edge ], [ splat (ptr null), %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !385
  store <2 x ptr> %i.n, ptr %i.b, align 8, !tbaa !385
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !320
  store ptr %i.p, ptr %i.m, align 8, !tbaa !320
  store <2 x ptr> %i.k, ptr %i.l, align 8, !tbaa !385
  store ptr %i.j, ptr %i.o, align 8, !tbaa !320
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE5clearEv.exit

bb.b:                                             ; preds = %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !385  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !385  ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w                       ; 3 uses
  %4 = icmp slt i64 %i.x, 0
  br i1 %4, label %bb.d, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE8allocateERSC_m.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE8allocateERSC_m.exit.i.i: ; preds = %bb.c
  %i.y = load ptr, ptr %0, align 8, !tbaa !317    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef nonnull align 8 ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y, i64 noundef %i.x, i64 noundef 8)
          to label %bb.e unwind label %bb.l, !inline_history !1601 ; 6 uses

bb.e:                                             ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE8allocateERSC_m.exit.i.i
  store ptr %i.ac, ptr %i.b, align 8, !tbaa !318
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !319
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.x
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !320
  %i.ag = load ptr, ptr %i.q, align 8, !tbaa !385 ; 3 uses
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !385 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.015.i.i = phi ptr [ %i.ar, %bb.f ], [ %i.ac, %bb.e ] ; 5 uses
  %.sroa.010.014.i.i = phi ptr [ %i.aq, %bb.f ], [ %i.ag, %bb.e ] ; 4 uses
  %i.aj = load i64, ptr %.sroa.010.014.i.i, align 8, !tbaa !383
  store i64 %i.aj, ptr %.015.i.i, align 8, !tbaa !383
  %i.ak = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1609)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  %i.an = load i32, ptr %i.al, align 8, !tbaa !111, !noalias !1612
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !384, !alias.scope !1612
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27, !noalias !1612
  %i.ap = load ptr, ptr %0, align 8, !tbaa !317, !noalias !1612
  store ptr %i.ap, ptr %3, align 8, !tbaa !305, !noalias !1612
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEC2EOS6_RKS5_(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27, !noalias !1612
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 56 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ah
  br i1 %i.as, label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !1608

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  %i.av = call ptr @__cxa_begin_catch(ptr %i.au) #27 ; 0 uses
  call void @_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEEvT_SE_RT0_(ptr noundef nonnull %i.ac, ptr noundef nonnull %.015.i.i, ptr noundef nonnull align 8 dereferenceable(8) %0)
  invoke void @__cxa_rethrow() #30
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #29
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit.loopexit: ; preds = %bb.f
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !318
  br label %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit

_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit.loopexit, %bb.e
  %i.az = phi ptr [ %i.ag, %bb.e ], [ %.pre, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit.loopexit ] ; 3 uses
  %.0.lcssa.i.i = phi ptr [ %i.ac, %bb.e ], [ %i.ar, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit.loopexit ]
  store ptr %.0.lcssa.i.i, ptr %i.ad, align 8, !tbaa !319
  %i.ba = load ptr, ptr %i.s, align 8, !tbaa !319 ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i.i13, label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.bo, %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i ], [ %i.az, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit ] ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !304 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40 ; 2 uses
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 16
  %i.bg = load i64, ptr %i.bd, align 8, !tbaa !89
  %i.bh = add i64 %i.bg, 1
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !305 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %i.bc, i64 noundef %i.bh, i64 noundef 1)
          to label %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i unwind label %bb.k, !inline_history !21

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #29
  unreachable

_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bo, %i.ba
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEEvT_SE_RT0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEEvT_SE_RT0_.exit.i.i: ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE7destroyISB_EEvRSC_PT_.exit.i.i.i
  store ptr %i.az, ptr %i.s, align 8, !tbaa !319
  br label %_ZNSt6vectorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE5clearEv.exit

bb.l:                                             ; preds = %_ZNSt16allocator_traitsINSt3pmr21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS1_IcEEEEEEEEE8allocateERSC_m.exit.i.i, %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.bp, %bb.l ], [ %i.aw, %bb.h ]
  call void @_ZNSt12_Vector_baseIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #27
  resume { ptr, i32 } %eh.lpad-body

_ZNSt6vectorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEE5clearEv.exit: ; preds = %_ZSt8_DestroyIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEENS8_ISB_EEEvT_SE_RT0_.exit.i.i, %_ZSt22__uninitialized_move_aIN9__gnu_cxx17__normal_iteratorIPN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENSt3pmr21polymorphic_allocatorIcEEEEEESt6vectorISD_NSA_ISD_EEEEESE_SG_ET0_T_SK_SJ_RT1_.exit, %bb.b, %_ZNSt3pmreqERKNS_21polymorphic_allocatorIN4entt8internal14dense_map_nodeIiNSt7__cxx1112basic_stringIcSt11char_traitsIcENS0_IcEEEEEEEESD_.exit.thread
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_dense_map.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
.noexc11.i:
  %0 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %1 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %2 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %3 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %4 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %5 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %6 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %7 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %8 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %9 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %10 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %11 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %12 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %13 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %14 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %15 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %16 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %17 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %18 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %19 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %20 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %21 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %22 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %23 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %24 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %25 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %26 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %27 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %28 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %29 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %30 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %31 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %32 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  %33 = alloca %"struct.testing::internal::CodeLocation", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  %i.a = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 5 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(60) ptr @_Znwm(i64 noundef 60) #31 ; 3 uses
  store ptr %i.b, ptr %33, align 8, !tbaa !88
  store i64 59, ptr %i.a, align 8, !tbaa !89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(59) %i.b, ptr noundef nonnull align 1 dereferenceable(59) @.str.2, i64 59, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 59, ptr %i.c, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  store i8 0, ptr %i.d, align 1, !tbaa !89
  %i.e = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i32 23, ptr %i.e, align 8, !tbaa !1614
  %i.f = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %.noexc11.i
  %i.g = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 23)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.2, i32 noundef 23)
          to label %bb.c unwind label %bb.f
end_hunk_3
