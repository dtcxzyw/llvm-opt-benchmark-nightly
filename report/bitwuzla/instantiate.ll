Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/instantiate?download=true
inline.NumInlined: 432
inline.NumDeleted: 217
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN7CaDiCaL8Internal14inst_propagateEv:bb.a
  %.not178220 = icmp eq ptr %.sroa.0140.1, %i.ap
  br i1 %.not178220, label %._crit_edge224, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader, %.lr.ph223
  %.sroa.0140.2222 = phi ptr [ %i.iv, %.lr.ph223 ], [ %.sroa.0140.1, %.preheader ] ; 2 uses
  %.sroa.0132.5221 = phi ptr [ %i.iw, %.lr.ph223 ], [ %.sroa.0132.4, %.preheader ] ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0140.2222, i64 16 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.sroa.0132.5221, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0132.5221, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0140.2222, i64 16, i1 false), !tbaa.struct !180
  %.not178 = icmp eq ptr %i.iv, %i.ap
  br i1 %.not178, label %._crit_edge224, label %.lr.ph223, !llvm.loop !212

._crit_edge224:                                   ; preds = %.lr.ph223, %.preheader
  %.sroa.0132.5.lcssa = phi ptr [ %.sroa.0132.4, %.preheader ], [ %i.iw, %.lr.ph223 ]
  %i.ix = load ptr, ptr %i.an, align 8, !tbaa !179
  %i.iy = ptrtoint ptr %.sroa.0132.5.lcssa to i64
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = sub i64 %i.iy, %i.iz
  %i.jb = ashr exact i64 %i.ja, 4
  tail call void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 noundef %i.jb)
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge224, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit.thread
  br i1 %.not175391, label %bb.f, label %..critedge_crit_edge, !llvm.loop !213

..critedge_crit_edge:                             ; preds = %bb.bg
  %.pre268 = load i64, ptr %i.m, align 8, !tbaa !174
  br label %.critedge, !llvm.loop !213

.critedge:                                        ; preds = %bb.f, %..critedge_crit_edge
  %i.jc = phi i64 [ %.pre268, %..critedge_crit_edge ], [ %i.y, %bb.f ]
  %i.jd = sub i64 %i.jc, %i.n
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 3952 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !218
  %i.jg = add nsw i64 %i.jd, %i.jf
  store i64 %i.jg, ptr %i.je, align 8, !tbaa !218
  %i.jh = load ptr, ptr %i.a, align 8, !tbaa !171 ; 7 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 6560
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !214
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 3608
  %i.jl = load i32, ptr %i.jk, align 8, !tbaa !172
  %.not73 = icmp sgt i32 %i.jj, %i.jl
  br i1 %.not73, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %.critedge
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 6528
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jh, i64 3620
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !173
  %.not.i113 = icmp eq i32 %i.jo, 0
  br i1 %.not.i113, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jp = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.jh)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit114

bb.bj:                                            ; preds = %bb.bh
  %i.jq = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.jh)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit114

_ZN7CaDiCaL8Internal4timeEv.exit114:              ; preds = %bb.bi, %bb.bj
  %i.jr = phi double [ %i.jp, %bb.bi ], [ %i.jq, %bb.bj ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.jh, ptr noundef nonnull align 8 dereferenceable(36) %i.jm, double noundef %i.jr)
  br label %bb.bk

bb.bk:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit114, %.critedge
  ret i1 %.not72
}

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !189    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !188
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !187
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #10
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #11 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !180, !alias.scope !222
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #12
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !189
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !187
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !188
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.g
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ad
  br i1 %.not.i4, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !187
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, %bb.c, %bb.g
  ret void
}

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal21instantiate_candidateEiPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4720 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !226
  %i.c = add nsw i64 %i.b, 1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !226
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = and i32 %i.e, 16
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %.thread.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 2
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %.not126205 = icmp eq i32 %i.i, 0
  br i1 %.not126205, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.0103208 = phi i1 [ false, %.lr.ph ], [ %spec.select, %bb.f ]
  %.0112207 = phi i32 [ 0, %.lr.ph ], [ %spec.select134, %bb.f ]
  %.0117206 = phi ptr [ %i.g, %.lr.ph ], [ %i.ac, %bb.f ] ; 2 uses
  %i.p = load i32, ptr %.0117206, align 4, !tbaa !13 ; 3 uses
  %i.q = icmp eq i32 %i.p, %1
  %spec.select = select i1 %i.q, i1 true, i1 %.0103208 ; 2 uses
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !163   ; 2 uses
  %i.u = icmp sgt i8 %i.t, 0
  br i1 %i.u, label %.thread.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not127 = icmp eq i8 %i.t, 0                   ; 2 uses
  br i1 %.not127, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = tail call noundef i32 @llvm.abs.i32(i32 %i.p, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.w
  %i.y = load i32, ptr %i.x, align 1
  %i.z = and i32 %i.y, 117440512
  %i.aa = icmp eq i32 %i.z, 16777216
  br i1 %i.aa, label %bb.f, label %.thread.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = zext i1 %.not127 to i32
  %spec.select134 = add nuw nsw i32 %.0112207, %i.ab ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0117206, i64 4 ; 2 uses
  %.not126 = icmp eq ptr %i.ac, %i.k
  br i1 %.not126, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.f
  %3 = icmp samesign ugt i32 %spec.select134, 2
  %i.ad = select i1 %spec.select, i1 %3, i1 false
  br i1 %i.ad, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 10 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !175
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !176
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 3 uses
  %i.al = ashr exact i64 %i.ak, 2                 ; 2 uses
  %i.am = or i32 %i.e, 128
  store i32 %i.am, ptr %i.d, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 4 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !227
  %i.ap = add nsw i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !227
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2152 ; 6 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !183
  %i.as = add i64 %i.ar, 1
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !183
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 6 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !162
  %i.av = sext i32 %1 to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store i8 1, ptr %i.aw, align 1, !tbaa !163
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !162
  %i.ay = sub nsw i32 0, %1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ax, i64 %i.az
  store i8 -1, ptr %i.ba, align 1, !tbaa !163
  %i.bb = load ptr, ptr %i.af, align 8, !tbaa !175 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !184
  %.not.i.i = icmp eq ptr %i.bb, %i.bd
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %1, ptr %i.bb, align 4, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.be, ptr %i.af, align 8, !tbaa !175
  br label %_ZN7CaDiCaL8Internal11inst_assignEi.exit

bb.i:                                             ; preds = %bb.g
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !176 ; 4 uses
  %i.bg = ptrtoint ptr %i.bb to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 9223372036854775804
  br i1 %i.bj, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #10
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bk = ashr exact i64 %i.bi, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bl = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bk ; 2 uses
  %i.bm = icmp ult i64 %i.bl, %i.bk
  %i.bn = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 2305843009213693951)
  %i.bo = select i1 %i.bm, i64 2305843009213693951, i64 %i.bn ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bo, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bp = shl nuw nsw i64 %i.bo, 2
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #11 ; 4 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 %i.bi ; 2 uses
  store i32 %1, ptr %i.br, align 4, !tbaa !13
  %i.bs = icmp sgt i64 %i.bi, 0
  br i1 %i.bs, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bq, ptr align 4 %i.bf, i64 %i.bi, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bf) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.bq, ptr %i.ae, align 8, !tbaa !176
  store ptr %i.bt, ptr %i.af, align 8, !tbaa !175
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bo
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !184
  br label %_ZN7CaDiCaL8Internal11inst_assignEi.exit

_ZN7CaDiCaL8Internal11inst_assignEi.exit:         ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  %i.bv = load i32, ptr %i.h, align 8, !tbaa !13  ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %.idx231.a = shl nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds i8, ptr %i.g, i64 %.idx231.a
  %.not128210 = icmp eq i32 %i.bv, 0
  br i1 %.not128210, label %._crit_edge, label %.lr.ph212

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal11inst_assignEi.exit145, %_ZN7CaDiCaL8Internal11inst_assignEi.exit
  %i.by = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal14inst_propagateEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 4 uses
  br i1 %i.by, label %bb.t, label %bb.u

.lr.ph212:                                        ; preds = %_ZN7CaDiCaL8Internal11inst_assignEi.exit, %_ZN7CaDiCaL8Internal11inst_assignEi.exit145
  %.0119211 = phi ptr [ %i.df, %_ZN7CaDiCaL8Internal11inst_assignEi.exit145 ], [ %i.g, %_ZN7CaDiCaL8Internal11inst_assignEi.exit ] ; 2 uses
  %i.bz = load i32, ptr %.0119211, align 4, !tbaa !13 ; 3 uses
  %i.ca = icmp eq i32 %i.bz, %1
  br i1 %i.ca, label %_ZN7CaDiCaL8Internal11inst_assignEi.exit145, label %bb.m

bb.m:                                             ; preds = %.lr.ph212
  %i.cb = load ptr, ptr %i.at, align 8, !tbaa !162 ; 2 uses
  %i.cc = sext i32 %i.bz to i64                   ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cb, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !163
  %.not133 = icmp eq i8 %i.ce, 0
  br i1 %.not133, label %bb.n, label %_ZN7CaDiCaL8Internal11inst_assignEi.exit145

bb.n:                                             ; preds = %bb.m
  %i.cf = sub nsw i32 0, %i.bz                    ; 3 uses
  %i.cg = load i64, ptr %i.aq, align 8, !tbaa !183
  %i.ch = add i64 %i.cg, 1
  store i64 %i.ch, ptr %i.aq, align 8, !tbaa !183
  %i.ci = sext i32 %i.cf to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cb, i64 %i.ci
  store i8 1, ptr %i.cj, align 1, !tbaa !163
  %i.ck = load ptr, ptr %i.at, align 8, !tbaa !162
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.cc
  store i8 -1, ptr %i.cl, align 1, !tbaa !163
  %i.cm = load ptr, ptr %i.af, align 8, !tbaa !175 ; 4 uses
  %i.cn = load ptr, ptr %i.bc, align 8, !tbaa !184
  %.not.i.i138 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i138, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %i.cf, ptr %i.cm, align 4, !tbaa !13
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store ptr %i.co, ptr %i.af, align 8, !tbaa !175
  br label %_ZN7CaDiCaL8Internal11inst_assignEi.exit145

bb.p:                                             ; preds = %bb.n
  %i.cp = load ptr, ptr %i.ae, align 8, !tbaa !176 ; 4 uses
  %i.cq = ptrtoint ptr %i.cm to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 5 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775804
  br i1 %i.ct, label %bb.q, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i139

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #10
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i139: ; preds = %bb.p
  %i.cu = ashr exact i64 %i.cs, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i140 = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i.i140, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 2305843009213693951)
  %i.cy = select i1 %i.cw, i64 2305843009213693951, i64 %i.cx ; 3 uses
  %.not.i.i.i.i141 = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i141)
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #11 ; 4 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  store i32 %i.cf, ptr %i.db, align 4, !tbaa !13
  %i.dc = icmp sgt i64 %i.cs, 0
  br i1 %i.dc, label %bb.r, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i142

bb.r:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i139
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.da, ptr align 4 %i.cp, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i142

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i142: ; preds = %bb.r, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i139
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %.not.i17.i.i.i143 = icmp eq ptr %i.cp, null
  br i1 %.not.i17.i.i.i143, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i144, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i142
  tail call void @_ZdlPv(ptr noundef nonnull %i.cp) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i144

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i144: ; preds = %bb.s, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i142
  store ptr %i.da, ptr %i.ae, align 8, !tbaa !176
  store ptr %i.dd, ptr %i.af, align 8, !tbaa !175
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.de, ptr %i.bc, align 8, !tbaa !184
  br label %_ZN7CaDiCaL8Internal11inst_assignEi.exit145

_ZN7CaDiCaL8Internal11inst_assignEi.exit145:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i144, %bb.o, %bb.m, %.lr.ph212
  %i.df = getelementptr inbounds nuw i8, ptr %.0119211, i64 4 ; 2 uses
  %.not128 = icmp eq ptr %i.df, %i.bx
  br i1 %.not128, label %._crit_edge, label %.lr.ph212

bb.t:                                             ; preds = %._crit_edge
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !165 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !164
  %.not.i.i146 = icmp eq ptr %i.dj, %i.dh
  br i1 %.not.i.i146, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.t
end_hunk_0
