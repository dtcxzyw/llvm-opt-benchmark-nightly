Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lvmutils?download=true
inline.NumInlined: 71
inline.NumDeleted: 7
begin_hunk_0_@_Z11luaV_concatP9lua_Stateii:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !35
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !55  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp slt i64 %i.ap, 49
  br i1 %i.aq, label %bb.e, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.e:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.j, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.e
  %i.ar = phi ptr [ %i.am, %.thread.i ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.as = ptrtoint ptr %i.p to i64
  %i.at = ptrtoint ptr %i.af to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store ptr %i.av, ptr %i.j, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.ar, i32 noundef 1)
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !54
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !55
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -16 ; 2 uses
  store ptr %i.az, ptr %i.j, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !35
  br label %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit84

bb.f:                                             ; preds = %bb.d
  call void @_Z16luaG_concaterrorP9lua_StateP10lua_TValueS2_(ptr noundef nonnull %0, ptr noundef nonnull %i.p, ptr noundef nonnull %i.n) #9
  unreachable

bb.g:                                             ; preds = %bb.c, %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit
  %i.ba = load ptr, ptr %i.n, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !62 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.be = load i32, ptr %i.q, align 4, !tbaa !9
  %cond = icmp eq i32 %i.be, 3
  br i1 %cond, label %bb.i, label %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit84

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bf = load double, ptr %i.p, align 8, !tbaa !11
  %i.bg = call noundef ptr @_Z12luai_num2strPcd(ptr noundef nonnull %i.b, double noundef %i.bf)
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.h
  %i.bj = call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i64 noundef %i.bi)
  store ptr %i.bj, ptr %i.p, align 8, !tbaa !11
  store i32 6, ptr %i.q, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit84

bb.j:                                             ; preds = %bb.g
  %i.bk = zext i32 %i.bc to i64                   ; 2 uses
  %i.bl = icmp sgt i32 %.0, 1
  br i1 %i.bl, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.bm = zext nneg i32 %.0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %.074101 = phi i64 [ %i.bk, %.lr.ph.preheader ], [ %i.cd, %bb.l ] ; 3 uses
  %i.bn = sub nsw i64 0, %indvars.iv
  %i.bo = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.bn ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bo, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !9
  switch i32 %i.br, label %.critedge.loopexit.split.loop.exit [
    i32 6, label %.critedge2
    i32 3, label %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit86
  ]

_Z13luaV_tostringP9lua_StateP10lua_TValue.exit86: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bs = load double, ptr %i.bp, align 8, !tbaa !11
  %i.bt = call noundef ptr @_Z12luai_num2strPcd(ptr noundef nonnull %i.a, double noundef %i.bs)
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = sub i64 %i.bu, %i.g
  %i.bw = call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.bv)
  store ptr %i.bw, ptr %i.bp, align 8, !tbaa !11
  store i32 6, ptr %i.bq, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit86
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !62
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = sub i64 1073741824, %.074101
  %i.cc = icmp ult i64 %i.cb, %i.ca
  br i1 %i.cc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge2
  call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.2) #9
  unreachable

bb.l:                                             ; preds = %.critedge2
  %i.cd = add i64 %.074101, %i.ca                 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bm
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !71

.critedge.loopexit.split.loop.exit:               ; preds = %.lr.ph
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit.split.loop.exit, %bb.j
  %.075.lcssa = phi i32 [ 1, %bb.j ], [ %i.ce, %.critedge.loopexit.split.loop.exit ], [ %.0, %bb.l ] ; 2 uses
  %.074.lcssa = phi i64 [ %i.bk, %bb.j ], [ %.074101, %.critedge.loopexit.split.loop.exit ], [ %i.cd, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.cf = icmp ult i64 %.074.lcssa, 512
  br i1 %i.cf, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.cg = call noundef ptr @_Z13luaS_bufstartP9lua_Statem(ptr noundef %0, i64 noundef %.074.lcssa) ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m
  %.073 = phi ptr [ %i.ch, %bb.m ], [ %i.d, %.critedge ] ; 2 uses
  %.071 = phi ptr [ %i.cg, %bb.m ], [ null, %.critedge ]
  %i.ci = zext i32 %.075.lcssa to i64             ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.o
  %indvars.iv115 = phi i64 [ %i.ci, %bb.n ], [ %indvars.iv.next116, %bb.o ] ; 3 uses
  %.1106 = phi i64 [ 0, %bb.n ], [ %i.cr, %bb.o ] ; 2 uses
  %i.cj = sub nsw i64 0, %indvars.iv115
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !11 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !62
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.073, i64 %.1106
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cp, ptr nonnull align 8 %i.cq, i64 %i.co, i1 false)
  %i.cr = add i64 %.1106, %i.co                   ; 3 uses
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -1
  %i.cs = trunc nuw i64 %indvars.iv115 to i32
  %i.ct = icmp sgt i32 %i.cs, 1
  br i1 %i.ct, label %bb.o, label %bb.p, !llvm.loop !72

bb.p:                                             ; preds = %bb.o
  %i.cu = icmp ult i64 %i.cr, 512
  %i.cv = sub nsw i64 0, %i.ci
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cy = call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %.073, i64 noundef %i.cr)
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cz = call noundef ptr @_Z14luaS_buffinishP9lua_StateP7TString(ptr noundef %0, ptr noundef %.071)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink = phi ptr [ %i.cz, %bb.r ], [ %i.cy, %bb.q ]
  store ptr %.sink, ptr %i.cw, align 8, !tbaa !11
  store i32 6, ptr %i.cx, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.da = add nsw i32 %.075.lcssa, -1
  br label %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit84

_Z13luaV_tostringP9lua_StateP10lua_TValue.exit84: ; preds = %bb.h, %bb.i, %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %bb.s
  %.176 = phi i32 [ 1, %bb.i ], [ 1, %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit ], [ %i.da, %bb.s ], [ 1, %bb.h ] ; 2 uses
  %i.db = sub nsw i32 %.0, %.176                  ; 2 uses
  %i.dc = sub nsw i32 %.070, %.176
  %i.dd = icmp sgt i32 %i.db, 1
  br i1 %i.dd, label %bb.b, label %bb.t, !llvm.loop !73

bb.t:                                             ; preds = %_Z13luaV_tostringP9lua_StateP10lua_TValue.exit84
  ret void
}

; Function Attrs: noreturn
declare hidden void @_Z16luaG_concaterrorP9lua_StateP10lua_TValueS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare hidden noundef ptr @_Z13luaS_bufstartP9lua_Statem(ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden noundef ptr @_Z14luaS_buffinishP9lua_StateP7TString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS8EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %.sroa.077 = alloca ptr, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.077)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = load float, ptr %3, align 4, !tbaa !66
  %i.q = fadd float %i.o, %i.p
  store float %i.q, ptr %1, align 4, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !66
  %i.v = fadd float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.v, ptr %i.w, align 4, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !66
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ab, ptr %i.ac, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.ad, align 4, !tbaa !9
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp eq i32 %i.i, 3
  br i1 %i.ae, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.f, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.d) ; 0 uses
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

_Z13luaV_tonumberPK10lua_TValuePS_.exit:          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.ai = icmp ne i32 %i.f, 3
  %or.cond56.not = and i1 %i.ai, %i.n
  br i1 %or.cond56.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond74 = icmp eq i32 %i.f, 6
  br i1 %cond74, label %bb.i, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %2, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.c)
  %.not.i57 = icmp eq i32 %i.al, 0
  br i1 %.not.i57, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load double, ptr %i.c, align 8, !tbaa !12
  store double %i.am, ptr %.sroa.077, align 8, !tbaa !11
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59

_Z13luaV_tonumberPK10lua_TValuePS_.exit59:        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.k

bb.k:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit59, %_Z13luaV_tonumberPK10lua_TValuePS_.exit, %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.an = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.an, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit62 [
    i32 3, label %bb.n
    i32 6, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %2, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.b)
  %.not.i60 = icmp eq i32 %i.aq, 0
  br i1 %.not.i60, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.ar, ptr %.sroa.077, align 8, !tbaa !11
  br label %bb.n

_Z13luaV_tonumberPK10lua_TValuePS_.exit62:        ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i61.ph = phi ptr [ %2, %bb.k ], [ %.sroa.077, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.as = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.as, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit65 [
    i32 3, label %._crit_edge
    i32 6, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %3, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.au, ptr noundef nonnull %i.a)
  %.not.i63 = icmp eq i32 %i.av, 0
  br i1 %.not.i63, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit65, label %._crit_edge

_Z13luaV_tonumberPK10lua_TValuePS_.exit65:        ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.p

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %.in = phi ptr [ %3, %bb.n ], [ %i.a, %bb.o ]
  %i.aw = load double, ptr %.in, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ax = load double, ptr %.0.i61.ph, align 8, !tbaa !11
  %i.ay = fadd double %i.ax, %i.aw
  store double %i.ay, ptr %1, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.az, align 4, !tbaa !9
  br label %bb.t

bb.p:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit65, %_Z13luaV_tonumberPK10lua_TValuePS_.exit62
  %i.ba = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 8) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.be = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 8) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.bf = icmp eq i32 %.pre.i, 0
  br i1 %i.bf, label %bb.s, label %.thread.i

.thread.i:                                        ; preds = %bb.q, %bb.p
  %.016.i = phi ptr [ %i.be, %bb.q ], [ %i.ba, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !55 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp slt i64 %i.bt, 49
  br i1 %i.bu, label %bb.r, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.r:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.bi, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.r
  %i.bv = phi ptr [ %i.bq, %.thread.i ], [ %.pre.i.i, %bb.r ] ; 2 uses
  %i.bw = ptrtoint ptr %1 to i64
  %i.bx = ptrtoint ptr %i.bh to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %i.bz, ptr %i.bi, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.bv, i32 noundef 1)
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.by
  %i.cc = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -16 ; 2 uses
  store ptr %i.cd, ptr %i.bi, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !35
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 8) #9
  unreachable

bb.t:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.077)
  ret void
}

; Function Attrs: noreturn
declare hidden void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS9EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %.sroa.077 = alloca ptr, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.077)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = load float, ptr %3, align 4, !tbaa !66
  %i.q = fsub float %i.o, %i.p
  store float %i.q, ptr %1, align 4, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !66
  %i.v = fsub float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.v, ptr %i.w, align 4, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !66
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ab, ptr %i.ac, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.ad, align 4, !tbaa !9
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp eq i32 %i.i, 3
  br i1 %i.ae, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.f, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.d) ; 0 uses
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

_Z13luaV_tonumberPK10lua_TValuePS_.exit:          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.ai = icmp ne i32 %i.f, 3
  %or.cond56.not = and i1 %i.ai, %i.n
  br i1 %or.cond56.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond74 = icmp eq i32 %i.f, 6
  br i1 %cond74, label %bb.i, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59

bb.i:                                             ; preds = %bb.h
  %i.aj = load ptr, ptr %2, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.c)
  %.not.i57 = icmp eq i32 %i.al, 0
  br i1 %.not.i57, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = load double, ptr %i.c, align 8, !tbaa !12
  store double %i.am, ptr %.sroa.077, align 8, !tbaa !11
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59

_Z13luaV_tonumberPK10lua_TValuePS_.exit59:        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.k

bb.k:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit59, %_Z13luaV_tonumberPK10lua_TValuePS_.exit, %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.an = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.an, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit62 [
    i32 3, label %bb.n
    i32 6, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ao = load ptr, ptr %2, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.b)
  %.not.i60 = icmp eq i32 %i.aq, 0
  br i1 %.not.i60, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit62, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.ar, ptr %.sroa.077, align 8, !tbaa !11
  br label %bb.n

_Z13luaV_tonumberPK10lua_TValuePS_.exit62:        ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i61.ph = phi ptr [ %2, %bb.k ], [ %.sroa.077, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.as = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.as, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit65 [
    i32 3, label %._crit_edge
    i32 6, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %3, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.au, ptr noundef nonnull %i.a)
  %.not.i63 = icmp eq i32 %i.av, 0
  br i1 %.not.i63, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit65, label %._crit_edge

_Z13luaV_tonumberPK10lua_TValuePS_.exit65:        ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.p

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %.in = phi ptr [ %3, %bb.n ], [ %i.a, %bb.o ]
  %i.aw = load double, ptr %.in, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ax = load double, ptr %.0.i61.ph, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %1, align 8, !tbaa !11
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.az, align 4, !tbaa !9
  br label %bb.t

bb.p:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit65, %_Z13luaV_tonumberPK10lua_TValuePS_.exit62
  %i.ba = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 9) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !9
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.be = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 9) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.bf = icmp eq i32 %.pre.i, 0
  br i1 %i.bf, label %bb.s, label %.thread.i

.thread.i:                                        ; preds = %bb.q, %bb.p
  %.016.i = phi ptr [ %i.be, %bb.q ], [ %i.ba, %bb.p ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56
  %i.bq = load ptr, ptr %i.bi, align 8, !tbaa !55 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp slt i64 %i.bt, 49
  br i1 %i.bu, label %bb.r, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.r:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.bi, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.r
  %i.bv = phi ptr [ %i.bq, %.thread.i ], [ %.pre.i.i, %bb.r ] ; 2 uses
  %i.bw = ptrtoint ptr %1 to i64
  %i.bx = ptrtoint ptr %i.bh to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %i.bz, ptr %i.bi, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.bv, i32 noundef 1)
  %i.ca = load ptr, ptr %i.bg, align 8, !tbaa !54
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.by
  %i.cc = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -16 ; 2 uses
  store ptr %i.cd, ptr %i.bi, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !35
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 9) #9
  unreachable

bb.t:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.077)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS10EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %.sroa.0110 = alloca ptr, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0110)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = load float, ptr %3, align 4, !tbaa !66
  %i.q = fmul float %i.o, %i.p
  store float %i.q, ptr %1, align 4, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !66
  %i.v = fmul float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.v, ptr %i.w, align 4, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !66
  %i.ab = fmul float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ab, ptr %i.ac, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.ad, align 4, !tbaa !9
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp eq i32 %i.i, 3
  br i1 %i.ae, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.d
  %.pre114 = load double, ptr %3, align 8, !tbaa !11
  br label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %.thread91

.thread91:                                        ; preds = %bb.f
  %i.ai = load double, ptr %i.d, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.m

.thread:                                          ; preds = %..thread_crit_edge, %.thread91
  %i.aj = phi double [ %i.ai, %.thread91 ], [ %.pre114, %..thread_crit_edge ]
  %i.ak = fptrunc double %i.aj to float           ; 3 uses
  %i.al = load float, ptr %2, align 4, !tbaa !66
  %i.am = fmul float %i.al, %i.ak
  store float %i.am, ptr %1, align 4, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !66
  %i.ap = fmul float %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ap, ptr %i.aq, align 4, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !66
  %i.at = fmul float %i.as, %i.ak
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.at, ptr %i.au, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.av, align 4, !tbaa !9
  br label %bb.v

bb.h:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %i.f, 3
  br i1 %i.aw, label %..thread94_crit_edge, label %bb.j

..thread94_crit_edge:                             ; preds = %bb.i
  %.pre = load double, ptr %2, align 8, !tbaa !11
  br label %.thread94

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond108 = icmp eq i32 %i.f, 6
  br i1 %cond108, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %2, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.c)
  %.not.i81 = icmp eq i32 %i.az, 0
  br i1 %.not.i81, label %bb.l, label %.thread97

.thread97:                                        ; preds = %bb.k
  %i.ba = load double, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread94

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.m

.thread94:                                        ; preds = %..thread94_crit_edge, %.thread97
  %i.bb = phi double [ %i.ba, %.thread97 ], [ %.pre, %..thread94_crit_edge ]
  %i.bc = fptrunc double %i.bb to float           ; 3 uses
  %i.bd = load float, ptr %3, align 4, !tbaa !66
  %i.be = fmul float %i.bd, %i.bc
  store float %i.be, ptr %1, align 4, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !66
  %i.bh = fmul float %i.bg, %i.bc
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bh, ptr %i.bi, align 4, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !66
  %i.bl = fmul float %i.bk, %i.bc
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bl, ptr %i.bm, align 4, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.bn, align 4, !tbaa !9
  br label %bb.v

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bo = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.bo, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit86 [
    i32 3, label %bb.p
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %2, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.b)
  %.not.i84 = icmp eq i32 %i.br, 0
  br i1 %.not.i84, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit86, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.bs, ptr %.sroa.0110, align 8, !tbaa !11
  br label %bb.p

_Z13luaV_tonumberPK10lua_TValuePS_.exit86:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0.i85.ph = phi ptr [ %2, %bb.m ], [ %.sroa.0110, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bt = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.bt, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit89 [
    i32 3, label %._crit_edge
    i32 6, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %3, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.a)
  %.not.i87 = icmp eq i32 %i.bw, 0
  br i1 %.not.i87, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit89, label %._crit_edge

_Z13luaV_tonumberPK10lua_TValuePS_.exit89:        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %.in = phi ptr [ %3, %bb.p ], [ %i.a, %bb.q ]
  %i.bx = load double, ptr %.in, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.by = load double, ptr %.0.i85.ph, align 8, !tbaa !11
  %i.bz = fmul double %i.by, %i.bx
  store double %i.bz, ptr %1, align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.ca, align 4, !tbaa !9
  br label %bb.v

bb.r:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit89, %_Z13luaV_tonumberPK10lua_TValuePS_.exit86
  %i.cb = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 10) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cf = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 10) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.cg = icmp eq i32 %.pre.i, 0
  br i1 %i.cg, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %.016.i = phi ptr [ %i.cf, %bb.s ], [ %i.cb, %bb.r ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !56
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp slt i64 %i.cu, 49
  br i1 %i.cv, label %bb.t, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.t:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.cj, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.t
  %i.cw = phi ptr [ %i.cr, %.thread.i ], [ %.pre.i.i, %bb.t ] ; 2 uses
  %i.cx = ptrtoint ptr %1 to i64
  %i.cy = ptrtoint ptr %i.ci to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr %i.da, ptr %i.cj, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.cw, i32 noundef 1)
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.cz
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -16 ; 2 uses
  store ptr %i.de, ptr %i.cj, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !35
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 10) #9
  unreachable

bb.v:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %._crit_edge, %.thread94, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0110)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS11EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %.sroa.0110 = alloca ptr, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0110)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = load float, ptr %3, align 4, !tbaa !66
  %i.q = fdiv float %i.o, %i.p
  store float %i.q, ptr %1, align 4, !tbaa !66
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load float, ptr %i.t, align 4, !tbaa !66
  %i.v = fdiv float %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.v, ptr %i.w, align 4, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !66
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !66
  %i.ab = fdiv float %i.y, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.ab, ptr %i.ac, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.ad, align 4, !tbaa !9
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp eq i32 %i.i, 3
  br i1 %i.ae, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.d
  %.pre114 = load double, ptr %3, align 8, !tbaa !11
  br label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %.thread91

.thread91:                                        ; preds = %bb.f
  %i.ai = load double, ptr %i.d, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.m

.thread:                                          ; preds = %..thread_crit_edge, %.thread91
  %i.aj = phi double [ %i.ai, %.thread91 ], [ %.pre114, %..thread_crit_edge ]
  %i.ak = fptrunc double %i.aj to float           ; 3 uses
  %i.al = load float, ptr %2, align 4, !tbaa !66
  %i.am = fdiv float %i.al, %i.ak
  store float %i.am, ptr %1, align 4, !tbaa !66
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !66
  %i.ap = fdiv float %i.ao, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ap, ptr %i.aq, align 4, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.as = load float, ptr %i.ar, align 4, !tbaa !66
  %i.at = fdiv float %i.as, %i.ak
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.at, ptr %i.au, align 4, !tbaa !66
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.av, align 4, !tbaa !9
  br label %bb.v

bb.h:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp eq i32 %i.f, 3
  br i1 %i.aw, label %..thread94_crit_edge, label %bb.j

..thread94_crit_edge:                             ; preds = %bb.i
  %.pre = load double, ptr %2, align 8, !tbaa !11
  br label %.thread94

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond108 = icmp eq i32 %i.f, 6
  br i1 %cond108, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %2, align 8, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.c)
  %.not.i81 = icmp eq i32 %i.az, 0
  br i1 %.not.i81, label %bb.l, label %.thread97

.thread97:                                        ; preds = %bb.k
  %i.ba = load double, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread94

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.m

.thread94:                                        ; preds = %..thread94_crit_edge, %.thread97
  %i.bb = phi double [ %i.ba, %.thread97 ], [ %.pre, %..thread94_crit_edge ]
  %i.bc = fptrunc double %i.bb to float           ; 3 uses
  %i.bd = load float, ptr %3, align 4, !tbaa !66
  %i.be = fdiv float %i.bc, %i.bd
  store float %i.be, ptr %1, align 4, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !66
  %i.bh = fdiv float %i.bc, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bh, ptr %i.bi, align 4, !tbaa !66
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !66
  %i.bl = fdiv float %i.bc, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bl, ptr %i.bm, align 4, !tbaa !66
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.bn, align 4, !tbaa !9
  br label %bb.v

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bo = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.bo, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit86 [
    i32 3, label %bb.p
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %2, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.b)
  %.not.i84 = icmp eq i32 %i.br, 0
  br i1 %.not.i84, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit86, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.bs, ptr %.sroa.0110, align 8, !tbaa !11
  br label %bb.p

_Z13luaV_tonumberPK10lua_TValuePS_.exit86:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0.i85.ph = phi ptr [ %2, %bb.m ], [ %.sroa.0110, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bt = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.bt, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit89 [
    i32 3, label %._crit_edge
    i32 6, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %3, align 8, !tbaa !11
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.a)
  %.not.i87 = icmp eq i32 %i.bw, 0
  br i1 %.not.i87, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit89, label %._crit_edge

_Z13luaV_tonumberPK10lua_TValuePS_.exit89:        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %.in = phi ptr [ %3, %bb.p ], [ %i.a, %bb.q ]
  %i.bx = load double, ptr %.in, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.by = load double, ptr %.0.i85.ph, align 8, !tbaa !11
  %i.bz = fdiv double %i.by, %i.bx
  store double %i.bz, ptr %1, align 8, !tbaa !11
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.ca, align 4, !tbaa !9
  br label %bb.v

bb.r:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit89, %_Z13luaV_tonumberPK10lua_TValuePS_.exit86
  %i.cb = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 11) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !9
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.cf = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 11) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.cg = icmp eq i32 %.pre.i, 0
  br i1 %i.cg, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %.016.i = phi ptr [ %i.cf, %bb.s ], [ %i.cb, %bb.r ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !56
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !55 ; 2 uses
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = icmp slt i64 %i.cu, 49
  br i1 %i.cv, label %bb.t, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.t:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.cj, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.t
  %i.cw = phi ptr [ %i.cr, %.thread.i ], [ %.pre.i.i, %bb.t ] ; 2 uses
  %i.cx = ptrtoint ptr %1 to i64
  %i.cy = ptrtoint ptr %i.ci to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  store ptr %i.da, ptr %i.cj, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.cw, i32 noundef 1)
  %i.db = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.cz
  %i.dd = load ptr, ptr %i.cj, align 8, !tbaa !55
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -16 ; 2 uses
  store ptr %i.de, ptr %i.cj, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !35
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 11) #9
  unreachable

bb.v:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %._crit_edge, %.thread94, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0110)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS12EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %.sroa.0116 = alloca ptr, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0116)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = fpext float %i.o to double
  %i.q = load float, ptr %3, align 4, !tbaa !66
  %i.r = fpext float %i.q to double
  %i.s = fdiv double %i.p, %i.r
  %i.t = tail call noundef double @llvm.floor.f64(double %i.s)
  %i.u = fptrunc double %i.t to float
  store float %i.u, ptr %1, align 4, !tbaa !66
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.w = load float, ptr %i.v, align 4, !tbaa !66
  %i.x = fpext float %i.w to double
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !66
  %i.aa = fpext float %i.z to double
  %i.ab = fdiv double %i.x, %i.aa
  %i.ac = tail call noundef double @llvm.floor.f64(double %i.ab)
  %i.ad = fptrunc double %i.ac to float
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !66
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !66
  %i.ah = fpext float %i.ag to double
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !66
  %i.ak = fpext float %i.aj to double
  %i.al = fdiv double %i.ah, %i.ak
  %i.am = tail call noundef double @llvm.floor.f64(double %i.al)
  %i.an = fptrunc double %i.am to float
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.an, ptr %i.ao, align 4, !tbaa !66
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.ap, align 4, !tbaa !9
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.aq = icmp eq i32 %i.i, 3
  br i1 %i.aq, label %..thread_crit_edge, label %bb.e

..thread_crit_edge:                               ; preds = %bb.d
  %.pre120 = load double, ptr %3, align 8, !tbaa !11
  br label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %3, align 8, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.as, ptr noundef nonnull %i.d)
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.g, label %.thread97

.thread97:                                        ; preds = %bb.f
  %i.au = load double, ptr %i.d, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.m

.thread:                                          ; preds = %..thread_crit_edge, %.thread97
  %i.av = phi double [ %i.au, %.thread97 ], [ %.pre120, %..thread_crit_edge ]
  %i.aw = fptrunc double %i.av to float
  %i.ax = load float, ptr %2, align 4, !tbaa !66
  %i.ay = fpext float %i.ax to double
  %i.az = fpext float %i.aw to double             ; 3 uses
  %i.ba = fdiv double %i.ay, %i.az
  %i.bb = call noundef double @llvm.floor.f64(double %i.ba)
  %i.bc = fptrunc double %i.bb to float
  store float %i.bc, ptr %1, align 4, !tbaa !66
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.be = load float, ptr %i.bd, align 4, !tbaa !66
  %i.bf = fpext float %i.be to double
  %i.bg = fdiv double %i.bf, %i.az
  %i.bh = call noundef double @llvm.floor.f64(double %i.bg)
  %i.bi = fptrunc double %i.bh to float
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.bi, ptr %i.bj, align 4, !tbaa !66
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !66
  %i.bm = fpext float %i.bl to double
  %i.bn = fdiv double %i.bm, %i.az
  %i.bo = call noundef double @llvm.floor.f64(double %i.bn)
  %i.bp = fptrunc double %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.bp, ptr %i.bq, align 4, !tbaa !66
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.br, align 4, !tbaa !9
  br label %bb.v

bb.h:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bs = icmp eq i32 %i.f, 3
  br i1 %i.bs, label %..thread100_crit_edge, label %bb.j

..thread100_crit_edge:                            ; preds = %bb.i
  %.pre = load double, ptr %2, align 8, !tbaa !11
  br label %.thread100

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond114 = icmp eq i32 %i.f, 6
  br i1 %cond114, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %2, align 8, !tbaa !11
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.c)
  %.not.i87 = icmp eq i32 %i.bv, 0
  br i1 %.not.i87, label %bb.l, label %.thread103

.thread103:                                       ; preds = %bb.k
  %i.bw = load double, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %.thread100

bb.l:                                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.m

.thread100:                                       ; preds = %..thread100_crit_edge, %.thread103
  %i.bx = phi double [ %i.bw, %.thread103 ], [ %.pre, %..thread100_crit_edge ]
  %i.by = fptrunc double %i.bx to float
  %i.bz = fpext float %i.by to double             ; 3 uses
  %i.ca = load float, ptr %3, align 4, !tbaa !66
  %i.cb = fpext float %i.ca to double
  %i.cc = fdiv double %i.bz, %i.cb
  %i.cd = call noundef double @llvm.floor.f64(double %i.cc)
  %i.ce = fptrunc double %i.cd to float
  store float %i.ce, ptr %1, align 4, !tbaa !66
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !66
  %i.ch = fpext float %i.cg to double
  %i.ci = fdiv double %i.bz, %i.ch
  %i.cj = call noundef double @llvm.floor.f64(double %i.ci)
  %i.ck = fptrunc double %i.cj to float
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ck, ptr %i.cl, align 4, !tbaa !66
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !66
  %i.co = fpext float %i.cn to double
  %i.cp = fdiv double %i.bz, %i.co
  %i.cq = call noundef double @llvm.floor.f64(double %i.cp)
  %i.cr = fptrunc double %i.cq to float
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.cr, ptr %i.cs, align 4, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.ct, align 4, !tbaa !9
  br label %bb.v

bb.m:                                             ; preds = %bb.l, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.cu = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.cu, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit92 [
    i32 3, label %bb.p
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.cv = load ptr, ptr %2, align 8, !tbaa !11
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.b)
  %.not.i90 = icmp eq i32 %i.cx, 0
  br i1 %.not.i90, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit92, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.cy, ptr %.sroa.0116, align 8, !tbaa !11
  br label %bb.p

_Z13luaV_tonumberPK10lua_TValuePS_.exit92:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.m
  %.0.i91.ph = phi ptr [ %2, %bb.m ], [ %.sroa.0116, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.cz = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.cz, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit95 [
    i32 3, label %._crit_edge
    i32 6, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %3, align 8, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.db, ptr noundef nonnull %i.a)
  %.not.i93 = icmp eq i32 %i.dc, 0
  br i1 %.not.i93, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit95, label %._crit_edge

_Z13luaV_tonumberPK10lua_TValuePS_.exit95:        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q, %bb.p
  %.in = phi ptr [ %3, %bb.p ], [ %i.a, %bb.q ]
  %i.dd = load double, ptr %.in, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.de = load double, ptr %.0.i91.ph, align 8, !tbaa !11
  %i.df = fdiv double %i.de, %i.dd
  %i.dg = call noundef double @llvm.floor.f64(double %i.df)
  store double %i.dg, ptr %1, align 8, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.dh, align 4, !tbaa !9
  br label %bb.v

bb.r:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit95, %_Z13luaV_tonumberPK10lua_TValuePS_.exit92
  %i.di = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 12) ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !9
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.dm = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 12) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.dn = icmp eq i32 %.pre.i, 0
  br i1 %i.dn, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.s, %bb.r
  %.016.i = phi ptr [ %i.dm, %bb.s ], [ %i.di, %bb.r ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !54
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !55
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dv, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !56
  %i.dy = load ptr, ptr %i.dq, align 8, !tbaa !55 ; 2 uses
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = icmp slt i64 %i.eb, 49
  br i1 %i.ec, label %bb.t, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.t:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.dq, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.t
  %i.ed = phi ptr [ %i.dy, %.thread.i ], [ %.pre.i.i, %bb.t ] ; 2 uses
  %i.ee = ptrtoint ptr %1 to i64
  %i.ef = ptrtoint ptr %i.dp to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 48
  store ptr %i.eh, ptr %i.dq, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.ed, i32 noundef 1)
  %i.ei = load ptr, ptr %i.do, align 8, !tbaa !54
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.eg
  %i.ek = load ptr, ptr %i.dq, align 8, !tbaa !55
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -16 ; 2 uses
  store ptr %i.el, ptr %i.dq, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !tbaa.struct !35
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 12) #9
  unreachable

bb.v:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %._crit_edge, %.thread100, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0116)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS13EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %.sroa.063 = alloca ptr, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.063)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.i, 3
  br i1 %i.o, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.e, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %3, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.q, ptr noundef nonnull %i.d) ; 0 uses
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

_Z13luaV_tonumberPK10lua_TValuePS_.exit:          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.s = icmp ne i32 %i.f, 3
  %or.cond42.not = and i1 %i.s, %i.n
  br i1 %or.cond42.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond60 = icmp eq i32 %i.f, 6
  br i1 %cond60, label %bb.h, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit45

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.u, ptr noundef nonnull %i.c)
  %.not.i43 = icmp eq i32 %i.v, 0
  br i1 %.not.i43, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %i.c, align 8, !tbaa !12
  store double %i.w, ptr %.sroa.063, align 8, !tbaa !11
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit45

_Z13luaV_tonumberPK10lua_TValuePS_.exit45:        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.j

bb.j:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit45, %_Z13luaV_tonumberPK10lua_TValuePS_.exit, %bb.c, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.x = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.x, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit48 [
    i32 3, label %bb.m
    i32 6, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %2, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b)
  %.not.i46 = icmp eq i32 %i.aa, 0
  br i1 %.not.i46, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit48, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.ab, ptr %.sroa.063, align 8, !tbaa !11
  br label %bb.m

_Z13luaV_tonumberPK10lua_TValuePS_.exit48:        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0.i47.ph = phi ptr [ %2, %bb.j ], [ %.sroa.063, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.ac, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit51 [
    i32 3, label %._crit_edge
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %3, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a)
  %.not.i49 = icmp eq i32 %i.af, 0
  br i1 %.not.i49, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit51, label %._crit_edge

_Z13luaV_tonumberPK10lua_TValuePS_.exit51:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.o

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.in = phi ptr [ %3, %bb.m ], [ %i.a, %bb.n ]
  %i.ag = load double, ptr %.in, align 8, !tbaa !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ah = load double, ptr %.0.i47.ph, align 8, !tbaa !11 ; 2 uses
  %i.ai = fdiv double %i.ah, %i.ag
  %i.aj = call double @llvm.floor.f64(double %i.ai)
  %i.ak = fneg double %i.aj
  %i.al = call noundef double @llvm.fmuladd.f64(double %i.ak, double %i.ag, double %i.ah)
  store double %i.al, ptr %1, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.am, align 4, !tbaa !9
  br label %bb.s

bb.o:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit51, %_Z13luaV_tonumberPK10lua_TValuePS_.exit48
  %i.an = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 13) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !9
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ar = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 13) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.as = icmp eq i32 %.pre.i, 0
  br i1 %i.as, label %bb.r, label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o
  %.016.i = phi ptr [ %i.ar, %bb.p ], [ %i.an, %bb.o ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !56
  %i.bd = load ptr, ptr %i.av, align 8, !tbaa !55 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp slt i64 %i.bg, 49
  br i1 %i.bh, label %bb.q, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.q:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.av, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.q
  %i.bi = phi ptr [ %i.bd, %.thread.i ], [ %.pre.i.i, %bb.q ] ; 2 uses
  %i.bj = ptrtoint ptr %1 to i64
  %i.bk = ptrtoint ptr %i.au to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store ptr %i.bm, ptr %i.av, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.bi, i32 noundef 1)
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !54
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bl
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !55
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -16 ; 2 uses
  store ptr %i.bq, ptr %i.av, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !35
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 13) #9
  unreachable

bb.s:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.063)
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS14EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %.sroa.063 = alloca ptr, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.063)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.o = icmp eq i32 %i.i, 3
  br i1 %i.o, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.e, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %3, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.q, ptr noundef nonnull %i.d) ; 0 uses
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

_Z13luaV_tonumberPK10lua_TValuePS_.exit:          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.j

bb.f:                                             ; preds = %bb.b
  %i.s = icmp ne i32 %i.f, 3
  %or.cond42.not = and i1 %i.s, %i.n
  br i1 %or.cond42.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond60 = icmp eq i32 %i.f, 6
  br i1 %cond60, label %bb.h, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit45

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %2, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.u, ptr noundef nonnull %i.c)
  %.not.i43 = icmp eq i32 %i.v, 0
  br i1 %.not.i43, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit45, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %i.c, align 8, !tbaa !12
  store double %i.w, ptr %.sroa.063, align 8, !tbaa !11
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit45

_Z13luaV_tonumberPK10lua_TValuePS_.exit45:        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.j

bb.j:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit45, %_Z13luaV_tonumberPK10lua_TValuePS_.exit, %bb.c, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.x = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.x, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit48 [
    i32 3, label %bb.m
    i32 6, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %2, align 8, !tbaa !11
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.z, ptr noundef nonnull %i.b)
  %.not.i46 = icmp eq i32 %i.aa, 0
  br i1 %.not.i46, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit48, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.ab, ptr %.sroa.063, align 8, !tbaa !11
  br label %bb.m

_Z13luaV_tonumberPK10lua_TValuePS_.exit48:        ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.j
  %.0.i47.ph = phi ptr [ %2, %bb.j ], [ %.sroa.063, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.ac = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.ac, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit51 [
    i32 3, label %._crit_edge
    i32 6, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %3, align 8, !tbaa !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a)
  %.not.i49 = icmp eq i32 %i.af, 0
  br i1 %.not.i49, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit51, label %._crit_edge

_Z13luaV_tonumberPK10lua_TValuePS_.exit51:        ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.o

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.in = phi ptr [ %3, %bb.m ], [ %i.a, %bb.n ]
  %i.ag = load double, ptr %.in, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ah = load double, ptr %.0.i47.ph, align 8, !tbaa !11
  %i.ai = call double @llvm.pow.f64(double %i.ah, double %i.ag)
  store double %i.ai, ptr %1, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.aj, align 4, !tbaa !9
  br label %bb.s

bb.o:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit51, %_Z13luaV_tonumberPK10lua_TValuePS_.exit48
  %i.ak = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 14) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.ao = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 14) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.ap = icmp eq i32 %.pre.i, 0
  br i1 %i.ap, label %bb.r, label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.o
  %.016.i = phi ptr [ %i.ao, %bb.p ], [ %i.ak, %bb.o ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !56
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = icmp slt i64 %i.bd, 49
  br i1 %i.be, label %bb.q, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.q:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.as, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.q
  %i.bf = phi ptr [ %i.ba, %.thread.i ], [ %.pre.i.i, %bb.q ] ; 2 uses
  %i.bg = ptrtoint ptr %1 to i64
  %i.bh = ptrtoint ptr %i.ar to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  store ptr %i.bj, ptr %i.as, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.bf, i32 noundef 1)
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bi
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !55
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16 ; 2 uses
  store ptr %i.bn, ptr %i.as, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %i.bn, i64 16, i1 false), !tbaa.struct !35
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 14) #9
  unreachable

bb.s:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.063)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.pow.f64(double, double) #6

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_Z16luaV_doarithimplIL3TMS15EEvP9lua_StateP10lua_TValuePKS3_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 3 uses
  %.sroa.0 = alloca ptr, align 8                  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9    ; 3 uses
  %i.g = icmp eq i32 %i.f, 5
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !9    ; 3 uses
  %i.j = icmp eq i32 %i.i, 5
  %i.k = icmp ne ptr %2, null
  %i.l = and i1 %i.k, %i.g                        ; 2 uses
  %i.m = icmp ne ptr %3, null
  %i.n = and i1 %i.m, %i.j                        ; 2 uses
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load float, ptr %2, align 4, !tbaa !66
  %i.p = fneg float %i.o
  store float %i.p, ptr %1, align 4, !tbaa !66
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !66
  %i.s = fneg float %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.s, ptr %i.t, align 4, !tbaa !66
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !66
  %i.w = fneg float %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.w, ptr %i.x, align 4, !tbaa !66
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 5, ptr %i.y, align 4, !tbaa !9
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i32 %i.i, 3
  br i1 %i.z, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %cond = icmp eq i32 %i.i, 6
  br i1 %cond, label %bb.f, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %3, align 8, !tbaa !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.d) ; 0 uses
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit

_Z13luaV_tonumberPK10lua_TValuePS_.exit:          ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.k

bb.g:                                             ; preds = %bb.c
  %i.ad = icmp ne i32 %i.f, 3
  %or.cond50.not = and i1 %i.ad, %i.n
  br i1 %or.cond50.not, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %cond67 = icmp eq i32 %i.f, 6
  br i1 %cond67, label %bb.i, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit53

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %2, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.af, ptr noundef nonnull %i.c)
  %.not.i51 = icmp eq i32 %i.ag, 0
  br i1 %.not.i51, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit53, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load double, ptr %i.c, align 8, !tbaa !12
  store double %i.ah, ptr %.sroa.0, align 8, !tbaa !11
  br label %_Z13luaV_tonumberPK10lua_TValuePS_.exit53

_Z13luaV_tonumberPK10lua_TValuePS_.exit53:        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.k

bb.k:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit53, %_Z13luaV_tonumberPK10lua_TValuePS_.exit, %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.ai = load i32, ptr %i.e, align 4, !tbaa !9
  switch i32 %i.ai, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit56 [
    i32 3, label %bb.n
    i32 6, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %2, align 8, !tbaa !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.b)
  %.not.i54 = icmp eq i32 %i.al, 0
  br i1 %.not.i54, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit56, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load double, ptr %i.b, align 8, !tbaa !12
  store double %i.am, ptr %.sroa.0, align 8, !tbaa !11
  br label %bb.n

_Z13luaV_tonumberPK10lua_TValuePS_.exit56:        ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.k
  %.0.i55.ph = phi ptr [ %2, %bb.k ], [ %.sroa.0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.an = load i32, ptr %i.h, align 4, !tbaa !9
  switch i32 %i.an, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59 [
    i32 3, label %bb.p
    i32 6, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %3, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = call noundef i32 @_Z10luaO_str2dPKcPd(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.a)
  %.not.i57 = icmp eq i32 %i.aq, 0
  br i1 %.not.i57, label %_Z13luaV_tonumberPK10lua_TValuePS_.exit59, label %bb.p

_Z13luaV_tonumberPK10lua_TValuePS_.exit59:        ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ar = load double, ptr %.0.i55.ph, align 8, !tbaa !11
  %i.as = fneg double %i.ar
  store double %i.as, ptr %1, align 8, !tbaa !11
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 3, ptr %i.at, align 4, !tbaa !9
  br label %bb.u

bb.q:                                             ; preds = %_Z13luaV_tonumberPK10lua_TValuePS_.exit59, %_Z13luaV_tonumberPK10lua_TValuePS_.exit56
  %i.au = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 15) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !9
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.ay = call noundef ptr @_Z15luaT_gettmbyobjP9lua_StatePK10lua_TValue3TMS(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 15) ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !9
  %i.az = icmp eq i32 %.pre.i, 0
  br i1 %i.az, label %bb.t, label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.016.i = phi ptr [ %i.ay, %bb.r ], [ %i.au, %bb.q ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(16) %.016.i, i64 16, i1 false), !tbaa.struct !35
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !35
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !56
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !55 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp slt i64 %i.bn, 49
  br i1 %i.bo, label %bb.s, label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

bb.s:                                             ; preds = %.thread.i
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 3)
  %.pre.i.i = load ptr, ptr %i.bc, align 8, !tbaa !55
  br label %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit

_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit: ; preds = %.thread.i, %bb.s
  %i.bp = phi ptr [ %i.bk, %.thread.i ], [ %.pre.i.i, %bb.s ] ; 2 uses
  %i.bq = ptrtoint ptr %1 to i64
  %i.br = ptrtoint ptr %i.bb to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store ptr %i.bt, ptr %i.bc, align 8, !tbaa !55
  call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef %i.bp, i32 noundef 1)
  %i.bu = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bs
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !55
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -16 ; 2 uses
  store ptr %i.bx, ptr %i.bc, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !35
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @_Z15luaG_aritherrorP9lua_StatePK10lua_TValueS3_3TMS(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 15) #9
  unreachable

bb.u:                                             ; preds = %_ZL10call_binTMP9lua_StatePK10lua_TValueS3_PS1_3TMS.exit, %bb.p, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

end_hunk_0
