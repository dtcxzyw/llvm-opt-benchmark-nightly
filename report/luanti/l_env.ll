Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_env?download=true
inline.NumInlined: 1766
inline.NumDeleted: 881
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9ModApiEnv13l_emerge_areaEP9lua_State:bb.a
  %i.t = select i1 %i.s, i32 %i.r, i32 %i.q
  %i.u = sdiv i32 %i.t, 16                        ; 2 uses
  %i.v = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 4 uses
  %.sroa.0.0.extract.trunc.i.i48 = trunc i48 %i.v to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i49 = lshr i48 %i.v, 16
  %.sroa.2.0.extract.trunc.i.i50 = trunc i48 %.sroa.2.0.extract.shift.i.i49 to i16 ; 2 uses
  %i.w = sext i16 %.sroa.0.0.extract.trunc.i.i48 to i32 ; 2 uses
  %i.x = add nsw i32 %i.w, -15
  %i.y = icmp slt i16 %.sroa.0.0.extract.trunc.i.i48, 0
  %i.z = select i1 %i.y, i32 %i.x, i32 %i.w
  %i.aa = sdiv i32 %i.z, 16                       ; 2 uses
  %i.ab = sext i16 %.sroa.2.0.extract.trunc.i.i50 to i32 ; 2 uses
  %i.ac = add nsw i32 %i.ab, -15
  %i.ad = icmp slt i16 %.sroa.2.0.extract.trunc.i.i50, 0
  %i.ae = select i1 %i.ad, i32 %i.ac, i32 %i.ab
  %i.af = sdiv i32 %i.ae, 16                      ; 2 uses
  %i.ag = ashr i48 %i.v, 32
  %i.ah = trunc nsw i48 %i.ag to i32              ; 2 uses
  %i.ai = add nsw i32 %i.ah, -15
  %i.aj = icmp slt i48 %i.v, 0
  %i.ak = select i1 %i.aj, i32 %i.ai, i32 %i.ah
  %i.al = sdiv i32 %i.ak, 16                      ; 2 uses
  %spec.select73 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 %i.aa) ; 2 uses
  %spec.select = trunc nsw i32 %spec.select73 to i16
  %spec.select72.v = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.aa) ; 2 uses
  %spec.select72 = trunc nsw i32 %spec.select72.v to i16
  %.sroa.7.074 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %i.af) ; 2 uses
  %.sroa.7.0 = trunc nsw i32 %.sroa.7.074 to i16
  %.sroa.766.0.v = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.af) ; 2 uses
  %.sroa.766.0 = trunc nsw i32 %.sroa.766.0.v to i16
  %.sroa.11.075 = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.al) ; 2 uses
  %.sroa.11.0 = trunc nsw i32 %.sroa.11.075 to i16
  %.sroa.1168.0.v = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.al) ; 2 uses
  %.sroa.1168.0 = trunc nsw i32 %.sroa.1168.0.v to i16
  %i.am = add nsw i32 %spec.select73, 1
  %i.an = sub nsw i32 %i.am, %spec.select72.v
  %i.ao = add nsw i32 %.sroa.7.074, 1
  %i.ap = sub nsw i32 %i.ao, %.sroa.766.0.v
  %i.aq = add nsw i32 %.sroa.11.075, 1
  %i.ar = sub nsw i32 %i.aq, %.sroa.1168.0.v
  %i.as = mul nsw i32 %i.ar, %i.an
  %i.at = mul i32 %i.as, %i.ap                    ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit
  %i.av = tail call i32 @lua_type(ptr noundef %0, i32 noundef 3)
  %i.aw = icmp eq i32 %i.av, 6
  br i1 %i.aw, label %bb.d, label %.preheader83.preheader

bb.d:                                             ; preds = %bb.c
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 3)
  %i.ax = tail call i32 @luaL_ref(ptr noundef %0, i32 noundef -10000)
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 4)
  %i.ay = tail call i32 @luaL_ref(ptr noundef %0, i32 noundef -10000)
  %i.az = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #27 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 2 uses
  store ptr %i.bb, ptr %i.ba, align 8, !tbaa !111
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  store i64 0, ptr %i.bc, align 8, !tbaa !110
  store i8 0, ptr %i.bb, align 8, !tbaa !90
  %i.bd = tail call noundef ptr @_ZN10ModApiBase9getServerEP9lua_State(ptr noundef %0)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !465
  store ptr %i.bf, ptr %i.az, align 8, !tbaa !95
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 %i.ax, ptr %i.bg, align 8, !tbaa !466
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 %i.ay, ptr %i.bh, align 4, !tbaa !467
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i32 %i.at, ptr %i.bi, align 8, !tbaa !96
  %i.bj = tail call noundef ptr @_ZN10ModApiBase16getScriptApiBaseEP9lua_State(ptr noundef %0)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
  br label %.preheader83.preheader

.preheader83.preheader:                           ; preds = %bb.d, %bb.c
  %.044 = phi ptr [ %i.az, %bb.d ], [ null, %bb.c ]
  %.043 = phi ptr [ @_Z21LuaEmergeAreaCallbackN4core8vector3dIsEE12EmergeActionPv, %bb.d ], [ null, %bb.c ]
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.preheader, %._crit_edge88
  %.04290 = phi i16 [ %i.bl, %._crit_edge88 ], [ %.sroa.1168.0, %.preheader83.preheader ] ; 3 uses
  %.sroa.3.0.insert.ext = zext i16 %.04290 to i48
  %.sroa.3.0.insert.shift = shl nuw i48 %.sroa.3.0.insert.ext, 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader83, %._crit_edge
  %.04187 = phi i16 [ %.sroa.766.0, %.preheader83 ], [ %i.bm, %._crit_edge ] ; 3 uses
  %.sroa.2.0.insert.ext = zext i16 %.04187 to i48
  %.sroa.2.0.insert.shift = shl nuw nsw i48 %.sroa.2.0.insert.ext, 16
  %.sroa.2.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.shift, %.sroa.3.0.insert.shift
  br label %bb.e

._crit_edge88:                                    ; preds = %._crit_edge
  %i.bl = add nsw i16 %.04290, 1
  %exitcond93 = icmp eq i16 %.04290, %.sroa.11.0
  br i1 %exitcond93, label %.loopexit, label %.preheader83, !llvm.loop !461

._crit_edge:                                      ; preds = %bb.e
  %i.bm = add nsw i16 %.04187, 1
  %exitcond92 = icmp eq i16 %.04187, %.sroa.7.0
  br i1 %exitcond92, label %._crit_edge88, label %.preheader, !llvm.loop !462

bb.e:                                             ; preds = %.preheader, %bb.e
  %.04085 = phi i16 [ %spec.select72, %.preheader ], [ %i.bo, %bb.e ] ; 3 uses
  %.sroa.0.0.insert.ext = zext i16 %.04085 to i48
  %.sroa.0.0.insert.insert = or disjoint i48 %.sroa.2.0.insert.insert, %.sroa.0.0.insert.ext
  %i.bn = tail call noundef zeroext i1 @_ZN13EmergeManager20enqueueBlockEmergeExEN4core8vector3dIsEEttPFvS2_12EmergeActionPvES4_(ptr noundef nonnull align 8 dereferenceable(480) %i.d, i48 %.sroa.0.0.insert.insert, i16 noundef zeroext 0, i16 noundef zeroext 3, ptr noundef %.043, ptr noundef %.044) ; 0 uses
  %i.bo = add nsw i16 %.04085, 1
  %exitcond = icmp eq i16 %.04085, %spec.select
  br i1 %exitcond, label %._crit_edge, label %bb.e, !llvm.loop !463

.loopexit:                                        ; preds = %._crit_edge88, %_Z16sortBoxVerticiesIsEvRN4core8vector3dIT_EES4_.exit, %bb.b
  ret i32 0
}

declare i32 @luaL_ref(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN13EmergeManager20enqueueBlockEmergeExEN4core8vector3dIsEEttPFvS2_12EmergeActionPvES4_(ptr noundef nonnull align 8 dereferenceable(480), i48, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv13l_delete_areaEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.MapEditEvent, align 8       ; 17 uses
  %i.a = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader92.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.11, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.o

.preheader92.preheader:                           ; preds = %bb.a
  %i.b = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1) ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i48 %i.b to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i = lshr i48 %i.b, 16
  %.sroa.2.0.extract.trunc.i.i = trunc i48 %.sroa.2.0.extract.shift.i.i to i16 ; 2 uses
  %i.c = sext i16 %.sroa.0.0.extract.trunc.i.i to i32 ; 2 uses
  %i.d = add nsw i32 %i.c, -15
  %i.e = icmp slt i16 %.sroa.0.0.extract.trunc.i.i, 0
  %i.f = select i1 %i.e, i32 %i.d, i32 %i.c
  %i.g = sdiv i32 %i.f, 16                        ; 2 uses
  %i.h = sext i16 %.sroa.2.0.extract.trunc.i.i to i32 ; 2 uses
  %i.i = add nsw i32 %i.h, -15
  %i.j = icmp slt i16 %.sroa.2.0.extract.trunc.i.i, 0
  %i.k = select i1 %i.j, i32 %i.i, i32 %i.h
  %i.l = sdiv i32 %i.k, 16                        ; 2 uses
  %i.m = ashr i48 %i.b, 32
  %i.n = trunc nsw i48 %i.m to i32                ; 2 uses
  %i.o = add nsw i32 %i.n, -15
  %i.p = icmp slt i48 %i.b, 0
  %i.q = select i1 %i.p, i32 %i.o, i32 %i.n
  %i.r = sdiv i32 %i.q, 16                        ; 2 uses
  %i.s = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 4 uses
  %.sroa.0.0.extract.trunc.i.i45 = trunc i48 %i.s to i16 ; 2 uses
  %.sroa.2.0.extract.shift.i.i46 = lshr i48 %i.s, 16
  %.sroa.2.0.extract.trunc.i.i47 = trunc i48 %.sroa.2.0.extract.shift.i.i46 to i16 ; 2 uses
  %i.t = sext i16 %.sroa.0.0.extract.trunc.i.i45 to i32 ; 2 uses
  %i.u = add nsw i32 %i.t, -15
  %i.v = icmp slt i16 %.sroa.0.0.extract.trunc.i.i45, 0
  %i.w = select i1 %i.v, i32 %i.u, i32 %i.t
  %i.x = sdiv i32 %i.w, 16                        ; 2 uses
  %i.y = sext i16 %.sroa.2.0.extract.trunc.i.i47 to i32 ; 2 uses
  %i.z = add nsw i32 %i.y, -15
  %i.aa = icmp slt i16 %.sroa.2.0.extract.trunc.i.i47, 0
  %i.ab = select i1 %i.aa, i32 %i.z, i32 %i.y
  %i.ac = sdiv i32 %i.ab, 16                      ; 2 uses
  %i.ad = ashr i48 %i.s, 32
  %i.ae = trunc nsw i48 %i.ad to i32              ; 2 uses
  %i.af = add nsw i32 %i.ae, -15
  %i.ag = icmp slt i48 %i.s, 0
  %i.ah = select i1 %i.ag, i32 %i.af, i32 %i.ae
  %i.ai = sdiv i32 %i.ah, 16                      ; 2 uses
  %spec.select89 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %i.x)
  %spec.select = trunc nsw i32 %spec.select89 to i16
  %spec.select88.v = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.x)
  %spec.select88 = trunc nsw i32 %spec.select88.v to i16
  %.sroa.7.090 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %i.ac)
  %.sroa.7.0 = trunc nsw i32 %.sroa.7.090 to i16
  %.sroa.782.0.v = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.ac)
  %.sroa.782.0 = trunc nsw i32 %.sroa.782.0.v to i16
  %.sroa.10.091 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %i.ai)
  %.sroa.10.0 = trunc nsw i32 %.sroa.10.091 to i16
  %.sroa.1084.0.v = tail call i32 @llvm.smin.i32(i32 %i.r, i32 %i.ai)
  %.sroa.1084.0 = trunc nsw i32 %.sroa.1084.0.v to i16
  %i.aj = tail call noundef nonnull align 8 dereferenceable(608) ptr @_ZN17ServerEnvironment12getServerMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.a) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i16 0, ptr %i.ak, align 4, !tbaa !245
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i16 0, ptr %i.al, align 2, !tbaa !246
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 0, ptr %i.am, align 8, !tbaa !247
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i16 126, ptr %i.an, align 4, !tbaa !266
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %i.ao, i8 0, i64 28, i1 false)
  store i32 4, ptr %1, align 8, !tbaa !272
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader92

.preheader92:                                     ; preds = %.preheader92.preheader, %._crit_edge105.split
  %i.as = phi ptr [ %i.by, %._crit_edge105.split ], [ null, %.preheader92.preheader ]
  %i.at = phi ptr [ %i.bz, %._crit_edge105.split ], [ null, %.preheader92.preheader ]
  %i.au = phi ptr [ %i.ca, %._crit_edge105.split ], [ null, %.preheader92.preheader ]
  %.034110 = phi i8 [ %.3, %._crit_edge105.split ], [ 1, %.preheader92.preheader ]
  %.039108 = phi i16 [ %i.ay, %._crit_edge105.split ], [ %.sroa.1084.0, %.preheader92.preheader ] ; 5 uses
  %.sroa.9.0.insert.ext70 = zext i16 %.039108 to i48
  %.sroa.9.0.insert.shift71 = shl nuw i48 %.sroa.9.0.insert.ext70, 32
  br label %.preheader

._crit_edge111:                                   ; preds = %._crit_edge105.split
  invoke void @_ZN3Map13dispatchEventERK12MapEditEvent(ptr noundef nonnull align 8 dereferenceable(144) %i.aj, ptr noundef nonnull align 8 dereferenceable(42) %1)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %.preheader92, %._crit_edge
  %i.av = phi ptr [ %i.as, %.preheader92 ], [ %i.by, %._crit_edge ]
  %i.aw = phi ptr [ %i.at, %.preheader92 ], [ %i.bz, %._crit_edge ]
  %i.ax = phi ptr [ %i.au, %.preheader92 ], [ %i.ca, %._crit_edge ]
  %.1104 = phi i8 [ %.034110, %.preheader92 ], [ %.3, %._crit_edge ]
  %.038103 = phi i16 [ %.sroa.782.0, %.preheader92 ], [ %i.az, %._crit_edge ] ; 5 uses
  %.sroa.8.0.insert.ext64 = zext i16 %.038103 to i48
  %.sroa.8.0.insert.shift65 = shl nuw nsw i48 %.sroa.8.0.insert.ext64, 16
  %.sroa.8.0.insert.insert67 = or disjoint i48 %.sroa.8.0.insert.shift65, %.sroa.9.0.insert.shift71
  br label %bb.c

._crit_edge105.split:                             ; preds = %._crit_edge
  %i.ay = add nsw i16 %.039108, 1
  %exitcond124 = icmp eq i16 %.039108, %.sroa.10.0
  br i1 %exitcond124, label %._crit_edge111, label %.preheader92, !llvm.loop !468

._crit_edge:                                      ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.az = add nsw i16 %.038103, 1
  %exitcond123 = icmp eq i16 %.038103, %.sroa.7.0
  br i1 %exitcond123, label %._crit_edge105.split, label %.preheader, !llvm.loop !469

bb.c:                                             ; preds = %.preheader, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit
  %i.ba = phi ptr [ %i.av, %.preheader ], [ %i.by, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 8 uses
  %i.bb = phi ptr [ %i.aw, %.preheader ], [ %i.bz, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %i.bc = phi ptr [ %i.ax, %.preheader ], [ %i.ca, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 6 uses
  %.2101 = phi i8 [ %.1104, %.preheader ], [ %.3, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %.037100 = phi i16 [ %spec.select88, %.preheader ], [ %i.cb, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %.sroa.059.0.insert.ext60 = zext i16 %.037100 to i48
  %.sroa.059.0.insert.insert62 = or disjoint i48 %.sroa.8.0.insert.insert67, %.sroa.059.0.insert.ext60 ; 2 uses
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(608) %i.aj, i48 %.sroa.059.0.insert.insert62)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit

bb.d:                                             ; preds = %bb.c
  br i1 %i.bg, label %bb.e, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN17ServerEnvironment32setStaticForActiveObjectsInBlockEN4core8vector3dIsEEbS2_(ptr noundef nonnull align 8 dereferenceable(3560) %i.a, i48 %.sroa.059.0.insert.insert62, i1 noundef zeroext false, i48 0)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i16 %.037100, ptr %i.bc, align 2, !tbaa !42
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %.038103, ptr %.sroa.8.0..sroa_idx, align 2, !tbaa !42
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i16 %.039108, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 6 ; 2 uses
  store ptr %i.bh, ptr %i.aq, align 8, !tbaa !186
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = ptrtoint ptr %i.ba to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775806
  br i1 %i.bl, label %bb.i, label %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #30
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.bm = sdiv exact i64 %i.bk, 6                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 1537228672809129301)
  %i.bq = select i1 %i.bo, i64 1537228672809129301, i64 %i.bp ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.br = mul nuw nsw i64 %i.bq, 6
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #27
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit ; 6 uses

.noexc56:                                         ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk ; 3 uses
  store i16 %.037100, ptr %i.bt, align 2, !tbaa !42
  %.sroa.8.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 %.038103, ptr %.sroa.8.0..sroa_idx68, align 2, !tbaa !42
  %.sroa.9.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i16 %.039108, ptr %.sroa.9.0..sroa_idx74, align 2, !tbaa !42
  %.not10.i.i.i.i.i = icmp eq ptr %i.ba, %i.bb
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc56, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %i.bs, %.noexc56 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.ba, %.noexc56 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.012.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.0911.i.i.i.i.i, i64 6, i1 false), !tbaa.struct !273, !alias.scope !474
  %i.bu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 6 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bu, %i.bb
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc56
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bs, %.noexc56 ], [ %i.bv, %.lr.ph.i.i.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 6 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bk) #28
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.bs, ptr %i.ap, align 8, !tbaa !187
  store ptr %i.bw, ptr %i.aq, align 8, !tbaa !186
  %i.bx = getelementptr inbounds nuw [6 x i8], ptr %i.bs, i64 %i.bq ; 2 uses
  store ptr %i.bx, ptr %i.ar, align 8, !tbaa !188
  br label %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.g, %bb.d
  %i.by = phi ptr [ %i.ba, %bb.d ], [ %i.ba, %bb.g ], [ %i.bs, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %i.bz = phi ptr [ %i.bb, %bb.d ], [ %i.bb, %bb.g ], [ %i.bx, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %i.ca = phi ptr [ %i.bc, %bb.d ], [ %i.bh, %bb.g ], [ %i.bw, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 3 uses
  %.3 = phi i8 [ 0, %bb.d ], [ %.2101, %bb.g ], [ %.2101, %_ZNSt6vectorIN4core8vector3dIsEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ] ; 4 uses
  %i.cb = add nsw i16 %.037100, 1
  %exitcond = icmp eq i16 %.037100, %spec.select
  br i1 %exitcond, label %._crit_edge, label %bb.c, !llvm.loop !473

bb.k:                                             ; preds = %._crit_edge111
  %i.cc = zext nneg i8 %.3 to i32
  invoke void @lua_pushboolean(ptr noundef %0, i32 noundef %i.cc)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !187 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i, label %_ZN12MapEditEventD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !188
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.ce to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.cj) #28
  br label %_ZN12MapEditEventD2Ev.exit

_ZN12MapEditEventD2Ev.exit:                       ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.o

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN4core8vector3dIsEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.e, %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.i, %bb.k, %._crit_edge111
  %lpad.loopexit.split-lp121 = landingpad { ptr, i32 }
          cleanup
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !187
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.ck = phi ptr [ %i.ba, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp121, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i.i57 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i57, label %_ZN12MapEditEventD2Ev.exit58, label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !188
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #28
  br label %_ZN12MapEditEventD2Ev.exit58

_ZN12MapEditEventD2Ev.exit58:                     ; preds = %.loopexit.split-lp, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %lpad.phi

bb.o:                                             ; preds = %_ZN12MapEditEventD2Ev.exit, %bb.b
  %.0 = phi i32 [ 1, %_ZN12MapEditEventD2Ev.exit ], [ 0, %bb.b ]
  ret i32 %.0
}

declare void @_ZN17ServerEnvironment32setStaticForActiveObjectsInBlockEN4core8vector3dIsEEbS2_(ptr noundef nonnull align 8 dereferenceable(3560), i48, i1 noundef zeroext, i48) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 2) i32 @_ZN9ModApiEnv11l_find_pathEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.std::vector.561", align 8   ; 11 uses
  %i.b = tail call noundef ptr @_ZN10ModApiBase6getEnvEP9lua_State(ptr noundef %0) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14log_deprecatedP9lua_StateSt17basic_string_viewIcSt11char_traitsIcEEib(ptr noundef %0, i64 55, ptr nonnull @.str.11, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.d = tail call i48 @_Z10read_v3s16P9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.e = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 3)
  %i.f = trunc i64 %i.e to i32
  %i.g = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 4)
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i64 @luaL_checkinteger(ptr noundef %0, i32 noundef 5)
  %i.j = trunc i64 %i.i to i32
  %i.k = tail call i32 @lua_type(ptr noundef %0, i32 noundef 6)
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.m = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 6, ptr noundef null) ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !111
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.86) #30
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.p = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.p, ptr %i.a, align 8, !tbaa !112
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.e
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %1, align 8, !tbaa !89
  %i.s = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.s, ptr %i.n, align 8, !tbaa !90
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.e
  %i.t = phi ptr [ %i.r, %.noexc.i ], [ %i.n, %bb.e ] ; 2 uses
  switch i64 %i.p, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.m, align 1, !tbaa !90
  store i8 %i.u, ptr %i.t, align 1, !tbaa !90
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.p, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i.i
  %i.v = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.v, ptr %i.w, align 8, !tbaa !110
  %i.x = load ptr, ptr %1, align 8, !tbaa !89
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.z = load i64, ptr %i.w, align 8, !tbaa !110  ; 2 uses
  %.pre.pre = load ptr, ptr %1, align 8, !tbaa !89 ; 4 uses
  switch i64 %i.z, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56.thread72 [
    i64 2, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68.thread
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68.thread: ; preds = %bb.h
  %i.aa = load i16, ptr %.pre.pre, align 1
  %i.ab = icmp ne i16 %i.aa, 10817
  %i.ac = zext i1 %i.ab to i32
  %bcmp.i.fr = freeze i32 %i.ac
  %i.ad = icmp eq i32 %bcmp.i.fr, 0
  %spec.select = select i1 %i.ad, i32 1, i32 2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56.thread72

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56: ; preds = %bb.h
  %i.ae = load i64, ptr %.pre.pre, align 1
  %i.af = icmp ne i64 %i.ae, 7021802808096221508
  %i.ag = zext i1 %i.af to i32
  %bcmp.i55.fr = freeze i32 %i.ag
  %i.ah = icmp eq i32 %bcmp.i55.fr, 0
  %spec.select75 = select i1 %i.ah, i32 0, i32 2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56.thread72

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56.thread72: ; preds = %bb.h, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56
  %i.ai = phi i32 [ 2, %bb.h ], [ %spec.select75, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56 ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread68.thread ]
  %i.aj = icmp eq ptr %.pre.pre, %i.n
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56.thread72
  %i.ak = icmp ult i64 %i.z, 16
  call void @llvm.assume(i1 %i.ak)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit56.thread72
  %i.al = load i64, ptr %i.n, align 8, !tbaa !90
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.am) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i58, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.c
  %.246 = phi i32 [ 2, %bb.c ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.an = call noundef nonnull align 8 dereferenceable(608) ptr @_ZN17ServerEnvironment12getServerMapEv(ptr noundef nonnull align 8 dereferenceable(3560) %i.b)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !183
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef ptr %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq), !inline_history !1
  call void @_Z8get_pathP3MapPK14NodeDefManagerN4core8vector3dIsEES6_jjj13PathAlgorithm(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.561") align 8 %2, ptr noundef nonnull %i.an, ptr noundef %i.au, i48 %i.c, i48 %i.d, i32 noundef %i.f, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %.246)
  %i.av = load ptr, ptr %2, align 8, !tbaa !244   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %thread-pre-split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.av to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 6
  %i.bd = trunc i64 %i.bc to i32
  invoke void @lua_createtable(ptr noundef %0, i32 noundef %i.bd, i32 noundef 0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.be = invoke i32 @lua_gettop(ptr noundef %0)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %2, align 8, !tbaa !244   ; 3 uses
  %i.bg = load ptr, ptr %i.aw, align 8, !tbaa !244 ; 2 uses
  %.not7476 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not7476, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.o
  %.03778 = phi i32 [ %i.bi, %bb.o ], [ 1, %bb.l ] ; 2 uses
  %.sroa.062.077 = phi ptr [ %i.bj, %bb.o ], [ %i.bf, %bb.l ] ; 2 uses
  %i.bh = uitofp nsz i32 %.03778 to double
  invoke void @lua_pushnumber(ptr noundef %0, double noundef %i.bh)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load i48, ptr %.sroa.062.077, align 2, !tbaa !42
end_hunk_0
