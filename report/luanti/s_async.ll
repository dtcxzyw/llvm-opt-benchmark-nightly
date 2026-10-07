Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/s_async?download=true
inline.NumInlined: 930
inline.NumDeleted: 386
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN11AsyncEngine14stepJobResultsEP9lua_State:bb.a
bb.j:                                             ; preds = %_ZNSt5dequeI10LuaJobInfoSaIS0_EE9pop_frontEv.exit
  %i.ci = invoke i32 @lua_type(ptr noundef %1, i32 noundef -1)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  invoke void @_Z14fatal_error_fnPKcS0_jS0_(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 188, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN11AsyncEngine14stepJobResultsEP9lua_State) #27
          to label %bb.m unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  unreachable

.loopexit:                                        ; preds = %_ZNSt5dequeI10LuaJobInfoSaIS0_EE9pop_frontEv.exit, %bb.j, %bb.n, %bb.o, %bb.q, %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.n:                                             ; preds = %bb.k
  invoke void @luaL_checktype(ptr noundef %1, i32 noundef -1, i32 noundef 6)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.ck = load i32, ptr %i.w, align 8, !tbaa !155
  %i.cl = zext i32 %i.ck to i64
  invoke void @lua_pushinteger(ptr noundef %1, i64 noundef %i.cl)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %i.s, align 8, !tbaa !157 ; 2 uses
  %.not30 = icmp eq ptr %i.cm, null
  br i1 %.not30, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @_Z13script_unpackP9lua_StateP11PackedValue(ptr noundef %1, ptr noundef nonnull %i.cm)
          to label %bb.s unwind label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.p, align 8, !tbaa !120
  %i.co = load i64, ptr %i.r, align 8, !tbaa !119
  invoke void @lua_pushlstring(ptr noundef %1, ptr noundef %i.cn, i64 noundef %i.co)
          to label %bb.s unwind label %.loopexit

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cp = load i64, ptr %i.v, align 8, !tbaa !119
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = load ptr, ptr %i.t, align 8
  %spec.select = select i1 %i.cq, ptr null, ptr %i.cr ; 2 uses
  invoke void @_ZN13ScriptApiBase15setOriginDirectEPKc(ptr noundef nonnull align 8 dereferenceable(129) %i.b, ptr noundef %spec.select)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cs = invoke i32 @lua_pcall(ptr noundef %1, i32 noundef 2, i32 noundef 0, i32 noundef %i.a)
          to label %bb.u unwind label %bb.x       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not = icmp eq i32 %i.cs, 0
  br i1 %.not, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_Z12script_errorP9lua_StateiPKcS2_(ptr noundef %1, i32 noundef %i.cs, ptr noundef %spec.select, ptr noundef nonnull @.str.10)
          to label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit unwind label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.v, %bb.u
  call void @_ZN10LuaJobInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.cw = load ptr, ptr %i.f, align 8, !tbaa !70  ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge, label %bb.c, !llvm.loop !221

bb.y:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.w, %bb.x
  %.pn26 = phi { ptr, i32 } [ %i.ct, %bb.w ], [ %i.cu, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN10LuaJobInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.ab

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  invoke void @lua_settop(ptr noundef %1, i32 noundef -3)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %i.cy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  ret void

bb.aa:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %bb.y ], [ %i.cz, %bb.aa ]
  %i.da = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.c) #26 ; 0 uses
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN11AsyncEngine13stepAutoscaleEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !114
  %i.n = zext i32 %i.m to i64
  %.not = icmp ult i64 %i.k, %i.n
  br i1 %.not, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.p = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.p) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !231
  %.not3 = icmp eq i64 %i.r, 0
  br i1 %.not3, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.s = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #26 ; 0 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !164
  %i.u = mul i64 %i.t, 1000
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !165
  %i.x = udiv i64 %i.w, 1000000
  %i.y = add i64 %i.x, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.z = load i64, ptr %i.q, align 8, !tbaa !231
  %.not4 = icmp ult i64 %i.y, %i.z
  br i1 %.not4, label %.loopexit40, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.q, align 8, !tbaa !231
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70, !noalias !232 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70, !noalias !233 ; 3 uses
  %.not11.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not11.i, label %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !73, !noalias !232 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !72, !noalias !232 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !166
  %.not.not.i.i.i.i = icmp eq i64 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = load ptr, ptr %i.ae, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %.not.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i
  %.015.us.i = phi i64 [ %i.ax, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ 0, %.lr.ph.i ]
  %.sroa.06.014.us.i = phi ptr [ %.sroa.06.1.us.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.sroa.10.013.us.i = phi ptr [ %.sroa.10.1.us.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %.sroa.13.012.us.i = phi ptr [ %.sroa.13.1.us.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.014.us.i, i64 144
  %i.aq = load i32, ptr %i.ap, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.split.us.i
  %.sroa.06.0.in.i.i.i.us.i = phi ptr [ %i.ao, %.lr.ph.split.us.i ], [ %.sroa.06.0.i.i.i.us.i, %bb.g ]
  %.sroa.06.0.i.i.i.us.i = load ptr, ptr %.sroa.06.0.in.i.i.i.us.i, align 8, !tbaa !91 ; 4 uses
  %.not.i.i.i.us.i = icmp eq ptr %.sroa.06.0.i.i.i.us.i, null
  br i1 %.not.i.i.i.us.i, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us.i, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !115
  %i.at = icmp eq i32 %i.aq, %i.as
  br i1 %i.at, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i, label %bb.f, !llvm.loop !4

bb.h:                                             ; preds = %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.13.012.us.i, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !74 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 456
  br label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i

_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i: ; preds = %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i, %bb.h
  %.sroa.13.1.us.i = phi ptr [ %i.au, %bb.h ], [ %.sroa.13.012.us.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i ]
  %.sroa.10.1.us.i = phi ptr [ %i.aw, %bb.h ], [ %.sroa.10.013.us.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i ]
  %.sroa.06.1.us.i = phi ptr [ %i.av, %bb.h ], [ %i.ay, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i ] ; 2 uses
  %.not.us.i = icmp eq ptr %.sroa.06.1.us.i, %i.ad
  br i1 %.not.us.i, label %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit, label %.lr.ph.split.us.i

_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i: ; preds = %bb.g, %bb.f
  %.not.i.i.us.i = icmp ne ptr %.sroa.06.0.i.i.i.us.i, null
  %..i.i.us.i = zext i1 %.not.i.i.us.i to i64
  %i.ax = add i64 %.015.us.i, %..i.i.us.i         ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.06.014.us.i, i64 152 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %.sroa.10.013.us.i
  br i1 %i.az, label %bb.h, label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i
  %.015.i = phi i64 [ %i.bq, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ 0, %.lr.ph.i ]
  %.sroa.06.014.i = phi ptr [ %.sroa.06.1.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %.sroa.10.013.i = phi ptr [ %.sroa.10.1.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ %i.ai, %.lr.ph.i ] ; 2 uses
  %.sroa.13.012.i = phi ptr [ %.sroa.13.1.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ %i.ag, %.lr.ph.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 144
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !115 ; 3 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = urem i64 %i.bc, %i.am                   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bd
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !91 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !115
  %i.bj = icmp eq i32 %i.bb, %i.bi
  br i1 %i.bj, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.k
  %i.bk = icmp eq i32 %i.bb, %i.bn
  br i1 %i.bk, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.i, %bb.j
  %.020.i.i.i.i.i.i = phi ptr [ %i.bl, %bb.j ], [ %i.bg, %bb.i ]
  %i.bl = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !91 ; 5 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !115 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = urem i64 %i.bo, %i.am
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bp, %i.bd
  br i1 %.not19.i.i.i.i.i.i, label %bb.j, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.k
  br label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, !llvm.loop !5

_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.j, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.i, %.lr.ph.split.i
  %.sroa.06.1.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ null, %.lr.ph.split.i ], [ %i.bg, %bb.i ], [ %i.bl, %bb.j ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %.not.i.i.i = icmp ne ptr %.sroa.06.1.i.i.i.i, null
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.bq = add i64 %.015.i, %..i.i.i               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 152 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %.sroa.10.013.i
  br i1 %i.bs, label %bb.l, label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i

bb.l:                                             ; preds = %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.13.012.i, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !74 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 456
  br label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i

_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i: ; preds = %bb.l, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i
  %.sroa.13.1.i = phi ptr [ %i.bt, %bb.l ], [ %.sroa.13.012.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i ]
  %.sroa.10.1.i = phi ptr [ %i.bv, %bb.l ], [ %.sroa.10.013.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i ]
  %.sroa.06.1.i = phi ptr [ %i.bu, %bb.l ], [ %i.br, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.1.i, %i.ad
  br i1 %.not.i, label %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit, label %.lr.ph.split.i

_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit: ; preds = %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i, %bb.e
  %.0.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.ax, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.bq, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ] ; 3 uses
  %.not.i7 = icmp eq ptr @_ZTH10infostream, null
  br i1 %.not.i7, label %_ZTW10infostream.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit
  call void @_ZTH10infostream()
  br label %_ZTW10infostream.exit

_ZTW10infostream.exit:                            ; preds = %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit, %bb.m
  %i.bw = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @infostream) ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35, !nonnull !36, !align !37 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !39
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef zeroext i1 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !6

.noexc:                                           ; preds = %_ZTW10infostream.exit
  %.v.i = select i1 %i.ca, i64 976, i64 984
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.11, ptr %i.c, align 8, !tbaa !40
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.n unwind label %.loopexit.split-lp ; 0 uses

bb.n:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !44 ; 5 uses
  %.not.i9 = icmp eq ptr %i.cd, null
  br i1 %.not.i9, label %_ZN11StreamProxylsIRmEERS_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !39
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !52
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cd)
          to label %.noexc10 unwind label %.loopexit.split-lp

.noexc10:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.cb, align 8, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %.noexc10, %bb.o
  %i.cl = phi ptr [ %.pre.i, %.noexc10 ], [ %i.cd, %bb.o ]
  %i.cm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i64 noundef %.0.lcssa.i)
          to label %_ZN11StreamProxylsIRmEERS_OT_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRmEERS_OT_.exit:               ; preds = %bb.n, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.12, ptr %i.b, align 8, !tbaa !40
  %i.cn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.r unwind label %.loopexit.split-lp ; 3 uses

bb.r:                                             ; preds = %_ZN11StreamProxylsIRmEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !44 ; 5 uses
  %.not.i13 = icmp eq ptr %i.co, null
  br i1 %.not.i13, label %_ZN11StreamProxylsIRKiEERS_OT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !39
  %i.cq = getelementptr i8, ptr %i.cp, i64 -24
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds i8, ptr %i.co, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !52
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.co)
          to label %.noexc15 unwind label %.loopexit.split-lp

.noexc15:                                         ; preds = %bb.t
  %.pre.i14 = load ptr, ptr %i.cn, align 8, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %.noexc15, %bb.s
  %i.cw = phi ptr [ %.pre.i14, %.noexc15 ], [ %i.co, %bb.s ]
  %i.cx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, i32 noundef 1000)
          to label %_ZN11StreamProxylsIRKiEERS_OT_.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsIRKiEERS_OT_.exit:              ; preds = %bb.r, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.13, ptr %i.a, align 8, !tbaa !40
  %i.cy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.v unwind label %.loopexit.split-lp ; 2 uses

bb.v:                                             ; preds = %_ZN11StreamProxylsIRKiEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !44 ; 5 uses
  %.not.i19 = icmp eq ptr %i.cz, null
  br i1 %.not.i19, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !39
  %i.db = getelementptr i8, ptr %i.da, i64 -24
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.cz, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load i32, ptr %i.de, align 8, !tbaa !52
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cz)
          to label %.noexc21 unwind label %.loopexit.split-lp

.noexc21:                                         ; preds = %bb.x
  %.pre.i20 = load ptr, ptr %i.cy, align 8, !tbaa !44 ; 2 uses
  %.pre = load ptr, ptr %.pre.i20, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre47 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.y

bb.y:                                             ; preds = %.noexc21, %bb.w
  %i.dh = phi i64 [ %.pre47, %.noexc21 ], [ %i.dc, %bb.w ]
  %i.di = phi ptr [ %.pre.i20, %.noexc21 ], [ %i.cz, %bb.w ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.dh
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 240
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i30 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i30, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc31 unwind label %.loopexit.split-lp

.noexc31:                                         ; preds = %bb.z
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.y
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 67
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !66
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dl)
          to label %.noexc32 unwind label %.loopexit.split-lp

.noexc32:                                         ; preds = %bb.ab
  %i.dq = load ptr, ptr %i.dl, align 8, !tbaa !39
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = invoke noundef signext i8 %i.ds(ptr noundef nonnull align 8 dereferenceable(570) %i.dl, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit.split-lp, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc32, %bb.aa
  %.0.i.i.i = phi i8 [ %i.dp, %bb.aa ], [ %i.dt, %.noexc32 ]
  %i.du = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i8 noundef signext %.0.i.i.i)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.dv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.du)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %.noexc34, %bb.v
  %i.dw = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.dx = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 3
  %i.ec = load i32, ptr %i.l, align 4, !tbaa !114
  %i.ed = zext i32 %i.ec to i64
  %i.ee = icmp ult i64 %i.eb, %i.ed
  %i.ef = icmp ne i64 %.0.lcssa.i, 0
end_hunk_0
begin_hunk_1_@_ZN11AsyncEngine13stepAutoscaleEv:bb.a
  %.044 = phi i64 [ %i.eh, %bb.ac ], [ %.0.lcssa.i, %_ZN11StreamProxylsEPFRSoS0_E.exit ]
  invoke void @_ZN11AsyncEngine15addWorkerThreadEv(ptr noundef nonnull align 8 dereferenceable(472) %0)
          to label %bb.ac unwind label %.loopexit41

bb.ac:                                            ; preds = %.lr.ph
  %i.eh = add i64 %.044, -1                       ; 2 uses
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !43
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = sub i64 %i.ek, %i.el
  %i.en = ashr exact i64 %i.em, 3
  %i.eo = load i32, ptr %i.l, align 4, !tbaa !114
  %i.ep = zext i32 %i.eo to i64
  %i.eq = icmp ult i64 %i.en, %i.ep
  %i.er = icmp ne i64 %i.eh, 0
  %i.es = select i1 %i.eq, i1 %i.er, i1 false
  br i1 %i.es, label %.lr.ph, label %.loopexit40, !llvm.loop !226

bb.ad:                                            ; preds = %.lr.ph.i24
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit41:                                      ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %_ZTW10infostream.exit, %.noexc, %bb.p, %bb.q, %_ZN11StreamProxylsIRmEERS_OT_.exit, %bb.t, %bb.u, %_ZN11StreamProxylsIRKiEERS_OT_.exit, %bb.x, %bb.z, %bb.ab, %.noexc32, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc34
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ae:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !70
  %i.ex = load ptr, ptr %i.ev, align 8, !tbaa !70
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %.loopexit40, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !90 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i ], [ %i.fb, %bb.af ] ; 2 uses
  %i.fc = load ptr, ptr %.06.i.i.i, align 8, !tbaa !91 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #28
  %.not.i.i.i23 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i23, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.af
  %i.fd = load ptr, ptr %i.ez, align 8, !tbaa !92
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !93
  %i.fg = shl i64 %i.ff, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fd, i8 0, i64 %i.fg, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i8 0, i64 16, i1 false)
  %i.fh = load ptr, ptr %i.ev, align 8, !tbaa !70, !noalias !234 ; 2 uses
  %i.fi = load ptr, ptr %i.eu, align 8, !tbaa !70, !noalias !235 ; 2 uses
  %.not8.i = icmp eq ptr %i.fh, %i.fi
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5clearEv.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !73, !noalias !234
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !72, !noalias !234
  br label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25, %.lr.ph.preheader.i
  %.sroa.05.011.i = phi ptr [ %.sroa.05.1.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25 ], [ %i.fh, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.10.010.i = phi ptr [ %.sroa.10.1.i27, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25 ], [ %i.fm, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.13.09.i = phi ptr [ %.sroa.13.1.i26, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25 ], [ %i.fk, %.lr.ph.preheader.i ] ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 144
  %i.fo = invoke { ptr, i8 } @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE10_M_emplaceIJRKjEEESt4pairINS1_14_Node_iteratorIjLb1ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ez, ptr noundef nonnull align 4 dereferenceable(4) %i.fn)
          to label %.noexc29 unwind label %bb.ad  ; 0 uses

.noexc29:                                         ; preds = %.lr.ph.i24
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.05.011.i, i64 152 ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %.sroa.10.010.i
  br i1 %i.fq, label %bb.ag, label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25

bb.ag:                                            ; preds = %.noexc29
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.13.09.i, i64 8 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !74 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 456
  br label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25

_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25: ; preds = %bb.ag, %.noexc29
  %.sroa.13.1.i26 = phi ptr [ %i.fr, %bb.ag ], [ %.sroa.13.09.i, %.noexc29 ]
  %.sroa.10.1.i27 = phi ptr [ %i.ft, %bb.ag ], [ %.sroa.10.010.i, %.noexc29 ]
  %.sroa.05.1.i = phi ptr [ %i.fs, %bb.ag ], [ %i.fp, %.noexc29 ] ; 2 uses
  %.not.i28 = icmp eq ptr %.sroa.05.1.i, %i.fi
  br i1 %.not.i28, label %.loopexit, label %.lr.ph.i24

.loopexit:                                        ; preds = %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i25, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5clearEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.fu = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %1) #26 ; 0 uses
  %i.fv = load i64, ptr %1, align 8, !tbaa !164
  %i.fw = mul i64 %i.fv, 1000
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !165
  %i.fz = udiv i64 %i.fy, 1000000
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ga = add i64 %i.fw, 1000
  %i.gb = add i64 %i.ga, %i.fz
  store i64 %i.gb, ptr %i.q, align 8, !tbaa !231
  br label %.loopexit40

.loopexit40:                                      ; preds = %bb.ac, %_ZN11StreamProxylsEPFRSoS0_E.exit, %bb.d, %bb.ae, %.loopexit
  %i.gc = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #26 ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.a, %.loopexit40
  ret void

bb.ai:                                            ; preds = %.loopexit41, %.loopexit.split-lp, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.et, %bb.ad ], [ %lpad.loopexit, %.loopexit41 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.gd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #26 ; 0 uses
  resume { ptr, i32 } %.pn
}

; Function Attrs: uwtable
define dso_local void @_ZN11AsyncEngine16stepStuckWarningEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #27
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !244
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %_ZN11StreamProxylsEPFRSoS0_E.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.h = call i32 @clock_gettime(i32 noundef 4, ptr noundef nonnull %2) #26 ; 0 uses
  %i.i = load i64, ptr %2, align 8, !tbaa !164
  %i.j = mul i64 %i.i, 1000
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !165
  %i.m = udiv i64 %i.l, 1000000
  %i.n = add i64 %i.m, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.o = load i64, ptr %i.f, align 8, !tbaa !244
  %.not4 = icmp ult i64 %i.n, %i.o
  br i1 %.not4, label %_ZN11StreamProxylsEPFRSoS0_E.exit.thread44, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.f, align 8, !tbaa !244
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !70, !noalias !245 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70, !noalias !246 ; 3 uses
  %.not11.i = icmp eq ptr %i.q, %i.s
  br i1 %.not11.i, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73, !noalias !245 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72, !noalias !245 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load i64, ptr %i.y, align 8, !tbaa !166
  %.not.not.i.i.i.i = icmp eq i64 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  br i1 %.not.not.i.i.i.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i
  %.015.us.i = phi i64 [ %i.am, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ 0, %.lr.ph.i ]
  %.sroa.06.014.us.i = phi ptr [ %.sroa.06.1.us.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %.sroa.10.013.us.i = phi ptr [ %.sroa.10.1.us.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.sroa.13.012.us.i = phi ptr [ %.sroa.13.1.us.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.06.014.us.i, i64 144
  %i.af = load i32, ptr %i.ae, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.split.us.i
  %.sroa.06.0.in.i.i.i.us.i = phi ptr [ %i.ad, %.lr.ph.split.us.i ], [ %.sroa.06.0.i.i.i.us.i, %bb.f ]
  %.sroa.06.0.i.i.i.us.i = load ptr, ptr %.sroa.06.0.in.i.i.i.us.i, align 8, !tbaa !91 ; 4 uses
  %.not.i.i.i.us.i = icmp eq ptr %.sroa.06.0.i.i.i.us.i, null
  br i1 %.not.i.i.i.us.i, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.us.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !115
  %i.ai = icmp eq i32 %i.af, %i.ah
  br i1 %i.ai, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i, label %bb.e, !llvm.loop !4

bb.g:                                             ; preds = %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.13.012.us.i, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !74 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 456
  br label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i

_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i: ; preds = %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i, %bb.g
  %.sroa.13.1.us.i = phi ptr [ %i.aj, %bb.g ], [ %.sroa.13.012.us.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i ]
  %.sroa.10.1.us.i = phi ptr [ %i.al, %bb.g ], [ %.sroa.10.013.us.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i ]
  %.sroa.06.1.us.i = phi ptr [ %i.ak, %bb.g ], [ %i.an, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i ] ; 2 uses
  %.not.us.i = icmp eq ptr %.sroa.06.1.us.i, %i.s
  br i1 %.not.us.i, label %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit, label %.lr.ph.split.us.i

_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.loopexit.us.i: ; preds = %bb.f, %bb.e
  %.not.i.i.us.i = icmp ne ptr %.sroa.06.0.i.i.i.us.i, null
  %..i.i.us.i = zext i1 %.not.i.i.us.i to i64
  %i.am = add i64 %.015.us.i, %..i.i.us.i         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.06.014.us.i, i64 152 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %.sroa.10.013.us.i
  br i1 %i.ao, label %bb.g, label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i
  %.015.i = phi i64 [ %i.bf, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ 0, %.lr.ph.i ]
  %.sroa.06.014.i = phi ptr [ %.sroa.06.1.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ %i.q, %.lr.ph.i ] ; 2 uses
  %.sroa.10.013.i = phi ptr [ %.sroa.10.1.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %.sroa.13.012.i = phi ptr [ %.sroa.13.1.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ], [ %i.v, %.lr.ph.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 144
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !115 ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = urem i64 %i.ar, %i.ab                   ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !167 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !91 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !115
  %i.ay = icmp eq i32 %i.aq, %i.ax
  br i1 %i.ay, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.j
  %i.az = icmp eq i32 %i.aq, %i.bc
  br i1 %i.az, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !5

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %.020.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.i ], [ %i.av, %bb.h ]
  %i.ba = load ptr, ptr %.020.i.i.i.i.i.i, align 8, !tbaa !91 ; 5 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not18.i.i.i.i.i.i, label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !115 ; 2 uses
  %i.bd = zext i32 %i.bc to i64
  %i.be = urem i64 %i.bd, %i.ab
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.be, %i.as
  br i1 %.not19.i.i.i.i.i.i, label %bb.i, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !5

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.j
  br label %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i, !llvm.loop !5

_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.i, %..loopexit_crit_edge21.i.i.i.i.i.i, %bb.h, %.lr.ph.split.i
  %.sroa.06.1.i.i.i.i = phi ptr [ null, %..loopexit_crit_edge21.i.i.i.i.i.i ], [ null, %.lr.ph.split.i ], [ %i.av, %bb.h ], [ %i.ba, %bb.i ], [ %i.ba, %.lr.ph.i.i.i.i.i.i ]
  %.not.i.i.i = icmp ne ptr %.sroa.06.1.i.i.i.i, null
  %..i.i.i = zext i1 %.not.i.i.i to i64
  %i.bf = add i64 %.015.i, %..i.i.i               ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.014.i, i64 152 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %.sroa.10.013.i
  br i1 %i.bh, label %bb.k, label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i

bb.k:                                             ; preds = %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.13.012.i, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !74 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 456
  br label %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i

_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i: ; preds = %bb.k, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i
  %.sroa.13.1.i = phi ptr [ %i.bi, %bb.k ], [ %.sroa.13.012.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i ]
  %.sroa.10.1.i = phi ptr [ %i.bk, %bb.k ], [ %.sroa.10.013.i, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i ]
  %.sroa.06.1.i = phi ptr [ %i.bj, %bb.k ], [ %i.bg, %_ZNKSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEE5countERKj.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.06.1.i, %i.s
  br i1 %.not.i, label %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit, label %.lr.ph.split.i

_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit: ; preds = %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i
  %.0.lcssa.i = phi i64 [ %i.am, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.us.i ], [ %i.bf, %_ZNSt15_Deque_iteratorI10LuaJobInfoRS0_PS0_EppEv.exit.i ] ; 2 uses
  %.not5 = icmp eq i64 %.0.lcssa.i, 0
  br i1 %.not5, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.l

bb.l:                                             ; preds = %_ZN11AsyncEngine11compareJobsISt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEEEEmRKT_.exit
  %.not.i10 = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i10, label %_ZTW13warningstream.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.l, %bb.m
  %i.bl = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !35, !nonnull !36, !align !37 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = invoke noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
          to label %.noexc unwind label %bb.ad, !inline_history !6

.noexc:                                           ; preds = %_ZTW13warningstream.exit
  %.v.i = select i1 %i.bp, i64 976, i64 984
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @.str.11, ptr %i.c, align 8, !tbaa !40
  %i.br = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.n unwind label %bb.ad      ; 0 uses

bb.n:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !44 ; 5 uses
  %.not.i12 = icmp eq ptr %i.bs, null
  br i1 %.not.i12, label %_ZN11StreamProxylsIRmEERS_OT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !39
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !52
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %.noexc13 unwind label %bb.ad

.noexc13:                                         ; preds = %bb.p
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !44
  br label %bb.q

bb.q:                                             ; preds = %.noexc13, %bb.o
  %i.ca = phi ptr [ %.pre.i, %.noexc13 ], [ %i.bs, %bb.o ]
  %i.cb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, i64 noundef %.0.lcssa.i)
          to label %_ZN11StreamProxylsIRmEERS_OT_.exit unwind label %bb.ad ; 0 uses

_ZN11StreamProxylsIRmEERS_OT_.exit:               ; preds = %bb.n, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.14, ptr %i.b, align 8, !tbaa !40
  %i.cc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.r unwind label %bb.ad      ; 3 uses

bb.r:                                             ; preds = %_ZN11StreamProxylsIRmEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !42
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = ashr exact i64 %i.cj, 3
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !44 ; 5 uses
  %.not.i16 = icmp eq ptr %i.cl, null
  br i1 %.not.i16, label %_ZN11StreamProxylsImEERS_OT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !39
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !52
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cl)
          to label %.noexc18 unwind label %bb.ae

.noexc18:                                         ; preds = %bb.t
  %.pre.i17 = load ptr, ptr %i.cc, align 8, !tbaa !44
  br label %bb.u

bb.u:                                             ; preds = %.noexc18, %bb.s
  %i.ct = phi ptr [ %.pre.i17, %.noexc18 ], [ %i.cl, %bb.s ]
  %i.cu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, i64 noundef %i.ck)
          to label %_ZN11StreamProxylsImEERS_OT_.exit unwind label %bb.ae ; 0 uses

_ZN11StreamProxylsImEERS_OT_.exit:                ; preds = %bb.r, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.15, ptr %i.a, align 8, !tbaa !40
  %i.cv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.v unwind label %bb.ae      ; 2 uses

bb.v:                                             ; preds = %_ZN11StreamProxylsImEERS_OT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !44 ; 5 uses
  %.not.i22 = icmp eq ptr %i.cw, null
  br i1 %.not.i22, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !39
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !52
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
          to label %.noexc24 unwind label %bb.ae

.noexc24:                                         ; preds = %bb.x
  %.pre.i23 = load ptr, ptr %i.cv, align 8, !tbaa !44 ; 2 uses
  %.pre = load ptr, ptr %.pre.i23, align 8, !tbaa !39
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre50 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.y

bb.y:                                             ; preds = %.noexc24, %bb.w
  %i.de = phi i64 [ %.pre50, %.noexc24 ], [ %i.cz, %bb.w ]
  %i.df = phi ptr [ %.pre.i23, %.noexc24 ], [ %i.cw, %bb.w ] ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 240
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !59 ; 6 uses
  %.not.i.i.i33 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i33, label %bb.z, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.noexc34 unwind label %bb.ae

.noexc34:                                         ; preds = %bb.z
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 56
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !65
  %.not.i1.i.i = icmp eq i8 %i.dk, 0
  br i1 %.not.i1.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 67
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !66
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.ab:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.di)
          to label %.noexc35 unwind label %bb.ae

.noexc35:                                         ; preds = %bb.ab
  %i.dn = load ptr, ptr %i.di, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = invoke noundef signext i8 %i.dp(ptr noundef nonnull align 8 dereferenceable(570) %i.di, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %bb.ae, !inline_history !0

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc35, %bb.aa
  %.0.i.i.i = phi i8 [ %i.dm, %bb.aa ], [ %i.dq, %.noexc35 ]
  %i.dr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.df, i8 noundef signext %.0.i.i.i)
          to label %.noexc37 unwind label %bb.ae

.noexc37:                                         ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.ds = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dr)
          to label %_ZN11StreamProxylsEPFRSoS0_E.exit unwind label %bb.ae ; 0 uses
end_hunk_1
