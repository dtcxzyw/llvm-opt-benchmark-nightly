Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lvmload?download=true
inline.NumInlined: 104
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z9luau_loadP9lua_StatePKcS2_mi:bb.a
  %.not.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i1.i, label %_ZZ9luau_loadP9lua_StatePKcS2_miEN11LoadContextD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN10TempBufferIP5ProtoED2Ev.exit.i
  %i.ae = load ptr, ptr %5, align 8, !tbaa !52
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !53
  %i.ah = shl i64 %i.ag, 3
  invoke void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %i.ae, ptr noundef nonnull %i.ad, i64 noundef %i.ah, i8 noundef zeroext 0)
          to label %_ZZ9luau_loadP9lua_StatePKcS2_miEN11LoadContextD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  call void @__clang_call_terminate(ptr %i.aj) #13
  unreachable

_ZZ9luau_loadP9lua_StatePKcS2_miEN11LoadContextD2Ev.exit: ; preds = %_ZN10TempBufferIP5ProtoED2Ev.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  store i64 %i.h, ptr %i.j, align 16, !tbaa !69
  ret i32 %.0
}

declare hidden noundef i64 @_Z9luaC_stepP9lua_Stateb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare hidden noundef i32 @_Z20luaD_rawrunprotectedP9lua_StatePFvS0_PvES1_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal void @_ZZ9luau_loadP9lua_StatePKcS2_miEN11LoadContext3runES0_Pv(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.ResolveImport, align 8      ; 5 uses
  %i.a = alloca [256 x i8], align 16              ; 3 uses
  %i.b = alloca [256 x i8], align 16              ; 3 uses
  %i.c = alloca [256 x i8], align 16              ; 3 uses
  %i.d = alloca [32 x i8], align 16               ; 12 uses
  %3 = alloca %struct.TempBuffer.5, align 8       ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 64 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46   ; 2 uses
  %.0.copyload.i.i = load i8, ptr %i.i, align 1   ; 7 uses
  %i.l = zext i8 %.0.copyload.i.i to i32
  %i.m = icmp eq i8 %.0.copyload.i.i, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i64, ptr %i.n, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #14
  %i.q = call noundef ptr @_Z12luaO_chunkidPcmPKcm(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef nonnull %i.g, i64 noundef %i.p)
  %i.r = trunc i64 %i.o to i32
  %i.s = add i32 %i.r, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.u = call noundef ptr (ptr, ptr, ...) @_Z16lua_pushfstringLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %i.q, i32 noundef %i.s, ptr noundef nonnull %i.t) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZL8loadsafeP9lua_StateR10TempBufferIP7TStringERS1_IP5ProtoEPKcSB_mi.exit

bb.c:                                             ; preds = %bb.a
  %i.v = add i8 %.0.copyload.i.i, -14
  %or.cond.i = icmp ult i8 %i.v, -11
  %i.w = icmp ne i8 %.0.copyload.i.i, 100
  %or.cond5.i = and i1 %i.w, %or.cond.i
  br i1 %or.cond5.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #14
  %i.y = call noundef ptr @_Z12luaO_chunkidPcmPKcm(ptr noundef nonnull %i.b, i64 noundef 256, ptr noundef nonnull %i.g, i64 noundef %i.x)
  %i.z = call noundef ptr (ptr, ptr, ...) @_Z16lua_pushfstringLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %i.y, i32 noundef 3, i32 noundef 13, i32 noundef %i.l) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZL8loadsafeP9lua_StateR10TempBufferIP7TStringERS1_IP5ProtoEPKcSB_mi.exit

bb.e:                                             ; preds = %bb.c
  %i.aa = icmp samesign ugt i8 %.0.copyload.i.i, 3 ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.0.copyload.i689.i = load i8, ptr %i.ab, align 1 ; 3 uses
  %i.ac = add i8 %.0.copyload.i689.i, -4
  %or.cond8.i = icmp ult i8 %i.ac, -3
  br i1 %or.cond8.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = zext i8 %.0.copyload.i689.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #14
  %i.af = call noundef ptr @_Z12luaO_chunkidPcmPKcm(ptr noundef nonnull %i.c, i64 noundef 256, ptr noundef nonnull %i.g, i64 noundef %i.ae)
  %i.ag = call noundef ptr (ptr, ptr, ...) @_Z16lua_pushfstringLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %i.af, i32 noundef 1, i32 noundef 3, i32 noundef %i.ad) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %_ZL8loadsafeP9lua_StateR10TempBufferIP7TStringERS1_IP5ProtoEPKcSB_mi.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i64 [ 2, %bb.f ], [ 1, %bb.e ]
  %.0625.i = phi i8 [ %.0.copyload.i689.i, %bb.f ], [ 0, %bb.e ] ; 3 uses
  %i.ah = icmp eq i32 %i.k, 0
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.aj = tail call noundef ptr @_Z13luaA_toobjectP9lua_Statei(ptr noundef %0, i32 noundef %i.k)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.in.i = phi ptr [ %i.ai, %bb.i ], [ %i.aj, %bb.j ]
  %i.ak = load ptr, ptr %.in.i, align 8, !tbaa !21 ; 2 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #14
  %i.am = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.g, i64 noundef %i.al)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %i.an = phi i64 [ %.0.i, %bb.k ], [ %i.ap, %bb.l ] ; 2 uses
  %.08.i.i = phi i32 [ 0, %bb.k ], [ %i.at, %bb.l ]
  %.0.i.i = phi i32 [ 0, %bb.k ], [ %i.au, %bb.l ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  %.0.copyload.i.i.i = load i8, ptr %i.ao, align 1 ; 2 uses
  %i.ap = add i64 %i.an, 1                        ; 3 uses
  %i.aq = and i8 %.0.copyload.i.i.i, 127
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = shl i32 %i.ar, %.0.i.i
  %i.at = or i32 %i.as, %.08.i.i                  ; 3 uses
  %i.au = add i32 %.0.i.i, 7
  %.not.i.i = icmp sgt i8 %.0.copyload.i.i.i, -1
  br i1 %.not.i.i, label %_ZL10readVarIntPKcmRm.exit.i, label %bb.l, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit.i:                     ; preds = %bb.l
  %i.av = zext i32 %i.at to i64                   ; 3 uses
  store ptr %0, ptr %1, align 8, !tbaa !52
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.aw, i8 noundef zeroext 0)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !51
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.av, ptr %i.az, align 8, !tbaa !53
  %.not1198.i = icmp eq i32 %i.at, 0
  br i1 %.not1198.i, label %._crit_edge.i, label %.preheader1024.i

.preheader1024.i:                                 ; preds = %_ZL10readVarIntPKcmRm.exit.i, %_ZL10readVarIntPKcmRm.exit695.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %_ZL10readVarIntPKcmRm.exit695.i ], [ 0, %_ZL10readVarIntPKcmRm.exit.i ] ; 2 uses
  %.19951120.i = phi i64 [ %i.bo, %_ZL10readVarIntPKcmRm.exit695.i ], [ %i.ap, %_ZL10readVarIntPKcmRm.exit.i ]
  br label %bb.m

._crit_edge.i:                                    ; preds = %_ZL10readVarIntPKcmRm.exit695.i, %_ZL10readVarIntPKcmRm.exit.i
  %.1995.lcssa.i = phi i64 [ %i.ap, %_ZL10readVarIntPKcmRm.exit.i ], [ %i.bo, %_ZL10readVarIntPKcmRm.exit695.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ba = icmp eq i8 %.0625.i, 3                  ; 2 uses
  br i1 %i.ba, label %bb.n, label %.loopexit1023.i.preheader

bb.m:                                             ; preds = %bb.m, %.preheader1024.i
  %i.bb = phi i64 [ %i.bd, %bb.m ], [ %.19951120.i, %.preheader1024.i ] ; 2 uses
  %.08.i691.i = phi i32 [ %i.bh, %bb.m ], [ 0, %.preheader1024.i ]
  %.0.i692.i = phi i32 [ %i.bi, %bb.m ], [ 0, %.preheader1024.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bb
  %.0.copyload.i.i693.i = load i8, ptr %i.bc, align 1 ; 2 uses
  %i.bd = add i64 %i.bb, 1                        ; 3 uses
  %i.be = and i8 %.0.copyload.i.i693.i, 127
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl i32 %i.bf, %.0.i692.i
  %i.bh = or i32 %i.bg, %.08.i691.i               ; 2 uses
  %i.bi = add i32 %.0.i692.i, 7
  %.not.i694.i = icmp sgt i8 %.0.copyload.i.i693.i, -1
  br i1 %.not.i694.i, label %_ZL10readVarIntPKcmRm.exit695.i, label %bb.m, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit695.i:                  ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd
  %i.bk = zext i32 %i.bh to i64                   ; 2 uses
  %i.bl = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.bj, i64 noundef %i.bk)
  %i.bm = load ptr, ptr %i.ay, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !96
  %i.bo = add i64 %i.bd, %i.bk                    ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.av
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.preheader1024.i, !llvm.loop !71

bb.n:                                             ; preds = %._crit_edge.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.d, i8 7, i64 32, i1 false)
  %.0630.in1122.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %.1995.lcssa.i
  %.06301123.i = load i8, ptr %.0630.in1122.i, align 1 ; 2 uses
  %.29961124.i = add i64 %.1995.lcssa.i, 1        ; 2 uses
  %.not1125.i = icmp eq i8 %.06301123.i, 0
  br i1 %.not1125.i, label %.loopexit1023.i.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.o

bb.o:                                             ; preds = %bb.t, %.lr.ph.i
  %.29961127.i = phi i64 [ %.29961124.i, %.lr.ph.i ], [ %.2996.i, %bb.t ]
  %.06301126.i = phi i8 [ %.06301123.i, %.lr.ph.i ], [ %.0630.i, %bb.t ] ; 2 uses
  %.val688.i = load ptr, ptr %i.ay, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %i.bq = phi i64 [ %.29961127.i, %bb.o ], [ %i.bs, %bb.p ] ; 3 uses
  %.08.i.i.i = phi i32 [ 0, %bb.o ], [ %i.bw, %bb.p ]
  %.0.i.i.i = phi i32 [ 0, %bb.o ], [ %i.bx, %bb.p ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bq
  %.0.copyload.i.i.i.i = load i8, ptr %i.br, align 1 ; 2 uses
  %i.bs = add i64 %i.bq, 1                        ; 2 uses
  %i.bt = and i8 %.0.copyload.i.i.i.i, 127
  %i.bu = zext nneg i8 %i.bt to i32
  %i.bv = shl i32 %i.bu, %.0.i.i.i
  %i.bw = or i32 %i.bv, %.08.i.i.i                ; 3 uses
  %i.bx = add i32 %.0.i.i.i, 7
  %.not.i.i.i = icmp sgt i8 %.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i, label %_ZL10readVarIntPKcmRm.exit.i.i, label %bb.p, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit.i.i:                   ; preds = %bb.p
  %i.by = zext nneg i8 %.06301126.i to i64
  %i.bz = icmp eq i32 %i.bw, 0
  br i1 %i.bz, label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZL10readVarIntPKcmRm.exit.i.i
  %i.ca = add i32 %i.bw, -1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.val688.i, i64 %i.cb
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !96
  br label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit.i

_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit.i: ; preds = %bb.q, %_ZL10readVarIntPKcmRm.exit.i.i
  %i.ce = phi ptr [ %i.cd, %bb.q ], [ null, %_ZL10readVarIntPKcmRm.exit.i.i ] ; 2 uses
  %i.cf = icmp ult i8 %.06301126.i, 33
  br i1 %i.cf, label %bb.r, label %bb.t

bb.r:                                             ; preds = %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit.i
  %i.cg = load ptr, ptr %i.bp, align 8, !tbaa !24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1416
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !97 ; 2 uses
  %.not682.i = icmp eq ptr %i.ci, null
  br i1 %.not682.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !99
  %i.cm = zext i32 %i.cl to i64
  %i.cn = tail call noundef zeroext i8 %i.ci(ptr noundef nonnull %0, ptr noundef nonnull %i.cj, i64 noundef %i.cm), !inline_history !72
  %i.co = getelementptr i8, ptr %i.d, i64 %i.by
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  store i8 %i.cn, ptr %i.cp, align 1, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit.i
  %.0630.in.i = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bs
  %.0630.i = load i8, ptr %.0630.in.i, align 1    ; 2 uses
  %.2996.i = add i64 %i.bq, 2                     ; 2 uses
  %.not.i = icmp eq i8 %.0630.i, 0
  br i1 %.not.i, label %.loopexit1023.i.preheader, label %bb.o, !llvm.loop !73

.loopexit1023.i.preheader:                        ; preds = %bb.t, %bb.n, %._crit_edge.i
  %.ph458 = phi i64 [ %.1995.lcssa.i, %._crit_edge.i ], [ %.29961124.i, %bb.n ], [ %.2996.i, %bb.t ]
  br label %.loopexit1023.i

.loopexit1023.i:                                  ; preds = %.loopexit1023.i.preheader, %.loopexit1023.i
  %i.cq = phi i64 [ %i.cs, %.loopexit1023.i ], [ %.ph458, %.loopexit1023.i.preheader ] ; 2 uses
  %.08.i699.i = phi i32 [ %i.cw, %.loopexit1023.i ], [ 0, %.loopexit1023.i.preheader ]
  %.0.i700.i = phi i32 [ %i.cx, %.loopexit1023.i ], [ 0, %.loopexit1023.i.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cq
  %.0.copyload.i.i701.i = load i8, ptr %i.cr, align 1 ; 2 uses
  %i.cs = add i64 %i.cq, 1                        ; 3 uses
  %i.ct = and i8 %.0.copyload.i.i701.i, 127
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = shl i32 %i.cu, %.0.i700.i
  %i.cw = or i32 %i.cv, %.08.i699.i               ; 3 uses
  %i.cx = add i32 %.0.i700.i, 7
  %.not.i702.i = icmp sgt i8 %.0.copyload.i.i701.i, -1
  br i1 %.not.i702.i, label %_ZL10readVarIntPKcmRm.exit703.i, label %.loopexit1023.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit703.i:                  ; preds = %.loopexit1023.i
  %i.cy = zext i32 %i.cw to i64                   ; 3 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !49
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.cz, i8 noundef zeroext 0) ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  store ptr %i.da, ptr %i.db, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.cy, ptr %i.dc, align 8, !tbaa !50
  %.not1199.i = icmp eq i32 %i.cw, 0
  br i1 %.not1199.i, label %.preheader.i, label %.lr.ph1196.i

.lr.ph1196.i:                                     ; preds = %_ZL10readVarIntPKcmRm.exit703.i
  %i.dd = icmp ugt i8 %.0.copyload.i.i, 11        ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.df = icmp eq i8 %.0625.i, 1
  %i.dg = and i8 %.0625.i, -2
  %or.cond11.i = icmp eq i8 %i.dg, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.do = icmp ugt i8 %.0.copyload.i.i, 10
  br label %bb.v

.preheader.i:                                     ; preds = %.critedge684.i, %_ZL10readVarIntPKcmRm.exit703.i
  %i.dp = phi ptr [ %i.da, %_ZL10readVarIntPKcmRm.exit703.i ], [ %i.ahz, %.critedge684.i ]
  %.4.lcssa.i = phi i64 [ %i.cs, %_ZL10readVarIntPKcmRm.exit703.i ], [ %.23.i, %.critedge684.i ]
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.i
  %i.dq = phi i64 [ %i.ds, %bb.u ], [ %.4.lcssa.i, %.preheader.i ] ; 2 uses
  %.08.i705.i = phi i32 [ %i.dw, %bb.u ], [ 0, %.preheader.i ]
  %.0.i706.i = phi i32 [ %i.dx, %bb.u ], [ 0, %.preheader.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dq
  %.0.copyload.i.i707.i = load i8, ptr %i.dr, align 1 ; 2 uses
  %i.ds = add i64 %i.dq, 1
  %i.dt = and i8 %.0.copyload.i.i707.i, 127
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = shl i32 %i.du, %.0.i706.i
  %i.dw = or i32 %i.dv, %.08.i705.i               ; 2 uses
  %i.dx = add i32 %.0.i706.i, 7
  %.not.i708.i = icmp sgt i8 %.0.copyload.i.i707.i, -1
  br i1 %.not.i708.i, label %_ZL10readVarIntPKcmRm.exit709.i, label %bb.u, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit709.i:                  ; preds = %bb.u
  %i.dy = zext i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dy
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !101
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !21
  %i.ed = and i8 %i.ec, 4
  %.not666.i = icmp eq i8 %i.ed, 0
  br i1 %.not666.i, label %bb.ds, label %bb.dr

bb.v:                                             ; preds = %.critedge684.i, %.lr.ph1196.i
  %indvars.iv1345.i = phi i64 [ 0, %.lr.ph1196.i ], [ %indvars.iv.next1346.i, %.critedge684.i ] ; 3 uses
  %.41194.i = phi i64 [ %i.cs, %.lr.ph1196.i ], [ %.23.i, %.critedge684.i ] ; 2 uses
  br i1 %i.dd, label %.preheader1022.i, label %bb.w

.preheader1022.i:                                 ; preds = %bb.v, %.preheader1022.i
  %i.ee = phi i64 [ %i.eg, %.preheader1022.i ], [ %.41194.i, %bb.v ] ; 2 uses
  %.08.i711.i = phi i32 [ %i.ek, %.preheader1022.i ], [ 0, %bb.v ]
  %.0.i712.i = phi i32 [ %i.el, %.preheader1022.i ], [ 0, %bb.v ] ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ee
  %.0.copyload.i.i713.i = load i8, ptr %i.ef, align 1 ; 2 uses
  %i.eg = add i64 %i.ee, 1                        ; 2 uses
  %i.eh = and i8 %.0.copyload.i.i713.i, 127
  %i.ei = zext nneg i8 %i.eh to i32
  %i.ej = shl i32 %i.ei, %.0.i712.i
  %i.ek = or i32 %i.ej, %.08.i711.i               ; 2 uses
  %i.el = add i32 %.0.i712.i, 7
  %.not.i714.i = icmp sgt i8 %.0.copyload.i.i713.i, -1
  br i1 %.not.i714.i, label %_ZL10readVarIntPKcmRm.exit715.i, label %.preheader1022.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit715.i:                  ; preds = %.preheader1022.i
  %i.em = zext i32 %i.ek to i64
  br label %bb.w

bb.w:                                             ; preds = %_ZL10readVarIntPKcmRm.exit715.i, %bb.v
  %.5.i = phi i64 [ %i.eg, %_ZL10readVarIntPKcmRm.exit715.i ], [ %.41194.i, %bb.v ] ; 4 uses
  %.0633.i = phi i64 [ %i.em, %_ZL10readVarIntPKcmRm.exit715.i ], [ 0, %bb.v ]
  %i.en = call noundef ptr @_Z13luaF_newprotoP9lua_State(ptr noundef %0) ; 37 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 88
  store ptr %i.am, ptr %i.eo, align 8, !tbaa !105
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 168
  %i.eq = trunc nuw i64 %indvars.iv1345.i to i32
  store i32 %i.eq, ptr %i.ep, align 8, !tbaa !106
  %i.er = load ptr, ptr %i.de, align 8, !tbaa !24
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 18712 ; 2 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !107 ; 3 uses
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ev = add i32 %i.et, 1
  store i32 %i.ev, ptr %i.es, align 8, !tbaa !107
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 188
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !108
  %i.ex = getelementptr i8, ptr %i.i, i64 %.5.i   ; 4 uses
  %.0.copyload.i716.i = load i8, ptr %i.ex, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %i.en, i64 6
  store i8 %.0.copyload.i716.i, ptr %i.ey, align 2, !tbaa !109
  %i.ez = getelementptr i8, ptr %i.ex, i64 1
  %.0.copyload.i717.i = load i8, ptr %i.ez, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i8 %.0.copyload.i717.i, ptr %i.fa, align 4, !tbaa !110
  %i.fb = getelementptr i8, ptr %i.ex, i64 2
  %.0.copyload.i718.i = load i8, ptr %i.fb, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  store i8 %.0.copyload.i718.i, ptr %i.fc, align 1, !tbaa !111
  %i.fd = getelementptr i8, ptr %i.ex, i64 3
  %.0.copyload.i719.i = load i8, ptr %i.fd, align 1
  %i.fe = add i64 %.5.i, 4                        ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.en, i64 5
  store i8 %.0.copyload.i719.i, ptr %i.ff, align 1, !tbaa !112
  br i1 %i.aa, label %bb.z, label %_ZL18remapUserdataTypesPcmPhj.exit.i.preheader

bb.z:                                             ; preds = %bb.y
  %i.fg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fe
  %.0.copyload.i720.i = load i8, ptr %i.fg, align 1
  %i.fh = add i64 %.5.i, 5                        ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  store i8 %.0.copyload.i720.i, ptr %i.fi, align 1, !tbaa !113
  br i1 %i.df, label %.preheader1020.i, label %bb.ae

.preheader1020.i:                                 ; preds = %bb.z, %.preheader1020.i
  %i.fj = phi i64 [ %i.fl, %.preheader1020.i ], [ %i.fh, %bb.z ] ; 2 uses
  %.08.i722.i = phi i32 [ %i.fp, %.preheader1020.i ], [ 0, %bb.z ]
  %.0.i723.i = phi i32 [ %i.fq, %.preheader1020.i ], [ 0, %bb.z ] ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fj
  %.0.copyload.i.i724.i = load i8, ptr %i.fk, align 1 ; 2 uses
  %i.fl = add i64 %i.fj, 1                        ; 3 uses
  %i.fm = and i8 %.0.copyload.i.i724.i, 127
  %i.fn = zext nneg i8 %i.fm to i32
  %i.fo = shl i32 %i.fn, %.0.i723.i
  %i.fp = or i32 %i.fo, %.08.i722.i               ; 7 uses
  %i.fq = add i32 %.0.i723.i, 7
  %.not.i725.i = icmp sgt i8 %.0.copyload.i.i724.i, -1
end_hunk_0
begin_hunk_1_@_ZZ9luau_loadP9lua_StatePKcS2_miEN11LoadContext3runES0_Pv:bb.a

bb.ay:                                            ; preds = %bb.ay, %bb.ax
  %i.kv = phi i64 [ %i.ku, %bb.ax ], [ %i.kx, %bb.ay ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.kv
  %.0.copyload.i.i72.i.i = load i8, ptr %i.kw, align 1
  %i.kx = add i64 %i.kv, 1                        ; 2 uses
  %.not.i73.i.i = icmp sgt i8 %.0.copyload.i.i72.i.i, -1
  br i1 %.not.i73.i.i, label %_ZL10readVarIntPKcmRm.exit74.i.i, label %bb.ay, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit74.i.i:                 ; preds = %bb.ay, %_ZL10readVarIntPKcmRm.exit74.i.i
  %i.ky = phi i64 [ %i.la, %_ZL10readVarIntPKcmRm.exit74.i.i ], [ %i.kx, %bb.ay ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ky
  %.0.copyload.i.i78.i.i = load i8, ptr %i.kz, align 1
  %i.la = add i64 %i.ky, 1                        ; 2 uses
  %.not.i79.i.i = icmp sgt i8 %.0.copyload.i.i78.i.i, -1
  br i1 %.not.i79.i.i, label %_ZL10readVarIntPKcmRm.exit80.i.i, label %_ZL10readVarIntPKcmRm.exit74.i.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit80.i.i:                 ; preds = %_ZL10readVarIntPKcmRm.exit74.i.i
  %i.lb = add nuw i32 %.0102.i.i, 1               ; 2 uses
  %exitcond119.not.i.i = icmp eq i32 %i.lb, %i.id
  br i1 %exitcond119.not.i.i, label %_ZL18remapUserdataTypesPcmPhj.exit.i.preheader, label %.preheader.i.i, !llvm.loop !76

_ZL18remapUserdataTypesPcmPhj.exit.i.preheader:   ; preds = %_ZL10readVarIntPKcmRm.exit80.i.i, %bb.av, %bb.af, %_ZL10readVarIntPKcmRm.exit732.i, %bb.ae, %_ZL10readVarIntPKcmRm.exit726._crit_edge.i, %bb.y
  %.ph382 = phi i64 [ %i.gp, %_ZL10readVarIntPKcmRm.exit726._crit_edge.i ], [ %i.hf, %bb.av ], [ %i.fh, %bb.ae ], [ %i.hf, %bb.af ], [ %i.fe, %bb.y ], [ %i.gs, %_ZL10readVarIntPKcmRm.exit732.i ], [ %i.hf, %_ZL10readVarIntPKcmRm.exit80.i.i ]
  br label %_ZL18remapUserdataTypesPcmPhj.exit.i

_ZL18remapUserdataTypesPcmPhj.exit.i:             ; preds = %_ZL18remapUserdataTypesPcmPhj.exit.i.preheader, %_ZL18remapUserdataTypesPcmPhj.exit.i
  %i.lc = phi i64 [ %i.le, %_ZL18remapUserdataTypesPcmPhj.exit.i ], [ %.ph382, %_ZL18remapUserdataTypesPcmPhj.exit.i.preheader ] ; 2 uses
  %.08.i740.i = phi i32 [ %i.li, %_ZL18remapUserdataTypesPcmPhj.exit.i ], [ 0, %_ZL18remapUserdataTypesPcmPhj.exit.i.preheader ]
  %.0.i741.i = phi i32 [ %i.lj, %_ZL18remapUserdataTypesPcmPhj.exit.i ], [ 0, %_ZL18remapUserdataTypesPcmPhj.exit.i.preheader ] ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lc
  %.0.copyload.i.i742.i = load i8, ptr %i.ld, align 1 ; 2 uses
  %i.le = add i64 %i.lc, 1                        ; 3 uses
  %i.lf = and i8 %.0.copyload.i.i742.i, 127
  %i.lg = zext nneg i8 %i.lf to i32
  %i.lh = shl i32 %i.lg, %.0.i741.i
  %i.li = or i32 %i.lh, %.08.i740.i               ; 5 uses
  %i.lj = add i32 %.0.i741.i, 7
  %.not.i743.i = icmp sgt i8 %.0.copyload.i.i742.i, -1
  br i1 %.not.i743.i, label %_ZL10readVarIntPKcmRm.exit744.i, label %_ZL18remapUserdataTypesPcmPhj.exit.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit744.i:                  ; preds = %_ZL18remapUserdataTypesPcmPhj.exit.i
  %i.lk = icmp sgt i32 %i.li, -1
  br i1 %i.lk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZL10readVarIntPKcmRm.exit744.i
  %i.ll = zext nneg i32 %i.li to i64
  %i.lm = shl nuw nsw i64 %i.ll, 2
  %i.ln = getelementptr inbounds nuw i8, ptr %i.en, i64 2 ; 7 uses
  %i.lo = load i8, ptr %i.ln, align 2, !tbaa !114
  %i.lp = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.lm, i8 noundef zeroext %i.lo) ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.en, i64 16 ; 3 uses
  store ptr %i.lp, ptr %i.lq, align 8, !tbaa !117
  %i.lr = getelementptr inbounds nuw i8, ptr %i.en, i64 136 ; 7 uses
  store i32 %i.li, ptr %i.lr, align 8, !tbaa !118
  %.not1200.i = icmp eq i32 %i.li, 0
  br i1 %.not1200.i, label %._crit_edge1134.i, label %.lr.ph1133.i

bb.ba:                                            ; preds = %_ZL10readVarIntPKcmRm.exit744.i
  call void @_Z11luaM_toobigP9lua_State(ptr noundef %0) #15
  unreachable

._crit_edge1134.i:                                ; preds = %.lr.ph1133.i, %bb.az
  %.7.lcssa.i = phi i64 [ %i.le, %bb.az ], [ %i.md, %.lr.ph1133.i ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store ptr %i.lp, ptr %i.ls, align 8, !tbaa !119
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %._crit_edge1134.i
  %i.lt = phi i64 [ %.7.lcssa.i, %._crit_edge1134.i ], [ %i.lv, %bb.bb ] ; 2 uses
  %.08.i746.i = phi i32 [ 0, %._crit_edge1134.i ], [ %i.lz, %bb.bb ]
  %.0.i747.i = phi i32 [ 0, %._crit_edge1134.i ], [ %i.ma, %bb.bb ] ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lt
  %.0.copyload.i.i748.i = load i8, ptr %i.lu, align 1 ; 2 uses
  %i.lv = add i64 %i.lt, 1                        ; 3 uses
  %i.lw = and i8 %.0.copyload.i.i748.i, 127
  %i.lx = zext nneg i8 %i.lw to i32
  %i.ly = shl i32 %i.lx, %.0.i747.i
  %i.lz = or i32 %i.ly, %.08.i746.i               ; 6 uses
  %i.ma = add i32 %.0.i747.i, 7
  %.not.i749.i = icmp sgt i8 %.0.copyload.i.i748.i, -1
  br i1 %.not.i749.i, label %_ZL10readVarIntPKcmRm.exit750.i, label %bb.bb, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit750.i:                  ; preds = %bb.bb
  %i.mb = icmp sgt i32 %i.lz, -1
  br i1 %i.mb, label %bb.bc, label %bb.bd

.lr.ph1133.i:                                     ; preds = %bb.az, %.lr.ph1133.i
  %indvars.iv1295.i = phi i64 [ %indvars.iv.next1296.i, %.lr.ph1133.i ], [ 0, %bb.az ] ; 2 uses
  %.71130.i = phi i64 [ %i.md, %.lr.ph1133.i ], [ %i.le, %bb.az ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.i, i64 %.71130.i
  %.0.copyload.i751.i = load i32, ptr %i.mc, align 1
  %i.md = add i64 %.71130.i, 4                    ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv1295.i
  store i32 %.0.copyload.i751.i, ptr %i.me, align 4, !tbaa !120
  %indvars.iv.next1296.i = add nuw nsw i64 %indvars.iv1295.i, 1 ; 2 uses
  %i.mf = load i32, ptr %i.lr, align 8, !tbaa !118
  %i.mg = sext i32 %i.mf to i64
  %i.mh = icmp slt i64 %indvars.iv.next1296.i, %i.mg
  br i1 %i.mh, label %.lr.ph1133.i, label %._crit_edge1134.i, !llvm.loop !77

bb.bc:                                            ; preds = %_ZL10readVarIntPKcmRm.exit750.i
  %i.mi = zext nneg i32 %i.lz to i64              ; 3 uses
  %i.mj = shl nuw nsw i64 %i.mi, 4
  %i.mk = load i8, ptr %i.ln, align 2, !tbaa !114
  %i.ml = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.mj, i8 noundef zeroext %i.mk) ; 10 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 21 uses
  store ptr %i.ml, ptr %i.mm, align 8, !tbaa !121
  %i.mn = getelementptr inbounds nuw i8, ptr %i.en, i64 152 ; 2 uses
  store i32 %i.lz, ptr %i.mn, align 8, !tbaa !122
  %.not1201.i = icmp eq i32 %i.lz, 0
  br i1 %.not1201.i, label %._crit_edge1158.i, label %.lr.ph1138.i.preheader

.lr.ph1138.i.preheader:                           ; preds = %bb.bc
  %xtraiter475 = and i64 %i.mi, 7                 ; 3 uses
  %i.mo = icmp ult i32 %i.lz, 8
  br i1 %i.mo, label %.lr.ph1138.i.epil.preheader, label %.lr.ph1138.i.preheader.new

.lr.ph1138.i.preheader.new:                       ; preds = %.lr.ph1138.i.preheader
  %unroll_iter478 = and i64 %i.mi, 2147483640
  br label %.lr.ph1138.i

bb.bd:                                            ; preds = %_ZL10readVarIntPKcmRm.exit750.i
  call void @_Z11luaM_toobigP9lua_State(ptr noundef %0) #15
  unreachable

.lr.ph1138.i:                                     ; preds = %.lr.ph1138.i, %.lr.ph1138.i.preheader.new
  %indvars.iv1298.i = phi i64 [ 0, %.lr.ph1138.i.preheader.new ], [ %indvars.iv.next1299.i.7, %.lr.ph1138.i ] ; 9 uses
  %niter479 = phi i64 [ 0, %.lr.ph1138.i.preheader.new ], [ %niter479.next.7, %.lr.ph1138.i ]
  %i.mp = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  store i32 0, ptr %i.mq, align 4, !tbaa !23
  %i.mr = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 28
  store i32 0, ptr %i.ms, align 4, !tbaa !23
  %i.mt = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 44
  store i32 0, ptr %i.mu, align 4, !tbaa !23
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 60
  store i32 0, ptr %i.mw, align 4, !tbaa !23
  %i.mx = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 76
  store i32 0, ptr %i.my, align 4, !tbaa !23
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 92
  store i32 0, ptr %i.na, align 4, !tbaa !23
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 108
  store i32 0, ptr %i.nc, align 4, !tbaa !23
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 124
  store i32 0, ptr %i.ne, align 4, !tbaa !23
  %indvars.iv.next1299.i.7 = add nuw nsw i64 %indvars.iv1298.i, 8 ; 2 uses
  %niter479.next.7 = add i64 %niter479, 8         ; 2 uses
  %niter479.ncmp.7 = icmp eq i64 %niter479.next.7, %unroll_iter478
  br i1 %niter479.ncmp.7, label %.lr.ph1157.i.preheader.unr-lcssa, label %.lr.ph1138.i, !llvm.loop !78

.lr.ph1157.i.preheader.unr-lcssa:                 ; preds = %.lr.ph1138.i
  %lcmp.mod476.not = icmp eq i64 %xtraiter475, 0
  br i1 %lcmp.mod476.not, label %.lr.ph1157.i.preheader, label %.lr.ph1138.i.epil.preheader

.lr.ph1138.i.epil.preheader:                      ; preds = %.lr.ph1157.i.preheader.unr-lcssa, %.lr.ph1138.i.preheader
  %indvars.iv1298.i.epil.init = phi i64 [ 0, %.lr.ph1138.i.preheader ], [ %indvars.iv.next1299.i.7, %.lr.ph1157.i.preheader.unr-lcssa ]
  %lcmp.mod477 = icmp ne i64 %xtraiter475, 0
  call void @llvm.assume(i1 %lcmp.mod477)
  br label %.lr.ph1138.i.epil

.lr.ph1138.i.epil:                                ; preds = %.lr.ph1138.i.epil, %.lr.ph1138.i.epil.preheader
  %indvars.iv1298.i.epil = phi i64 [ %indvars.iv.next1299.i.epil, %.lr.ph1138.i.epil ], [ %indvars.iv1298.i.epil.init, %.lr.ph1138.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph1138.i.epil ], [ 0, %.lr.ph1138.i.epil.preheader ]
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %indvars.iv1298.i.epil
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 12
  store i32 0, ptr %i.ng, align 4, !tbaa !23
  %indvars.iv.next1299.i.epil = add nuw nsw i64 %indvars.iv1298.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter475
  br i1 %epil.iter.cmp.not, label %.lr.ph1157.i.preheader, label %.lr.ph1138.i.epil, !llvm.loop !79

.lr.ph1157.i.preheader:                           ; preds = %.lr.ph1138.i.epil, %.lr.ph1157.i.preheader.unr-lcssa
  br label %.lr.ph1157.i

._crit_edge1158.i:                                ; preds = %bb.ck, %bb.bc
  %.8.lcssa.i = phi i64 [ %i.lv, %bb.bc ], [ %.12.i, %bb.ck ]
  %i.nh = load i8, ptr @_ZN5FFlag22LuauUdataDirectAccess6E, align 8, !tbaa !57, !range !124, !noundef !125
  %i.ni = trunc nuw i8 %i.nh to i1
  br i1 %i.ni, label %bb.cl, label %.loopexit1018.i.preheader

.lr.ph1157.i:                                     ; preds = %.lr.ph1157.i.preheader, %bb.ck
  %indvars.iv1314.i = phi i64 [ %indvars.iv.next1315.i, %bb.ck ], [ 0, %.lr.ph1157.i.preheader ] ; 13 uses
  %.81155.i = phi i64 [ %.12.i, %bb.ck ], [ %i.lv, %.lr.ph1157.i.preheader ] ; 8 uses
  %i.nj = getelementptr i8, ptr %i.i, i64 %.81155.i ; 3 uses
  %.0.copyload.i752.i = load i8, ptr %i.nj, align 1
  %i.nk = add i64 %.81155.i, 1                    ; 12 uses
  switch i8 %.0.copyload.i752.i, label %bb.ck [
    i8 9, label %bb.ci
    i8 1, label %bb.be
    i8 2, label %bb.bf
    i8 7, label %bb.bg
    i8 11, label %bb.bh
    i8 3, label %4
    i8 4, label %bb.bk
    i8 5, label %.preheader1006.i
    i8 8, label %.preheader1008.i
    i8 6, label %.preheader1009.i
    i8 10, label %.preheader1010.i
  ]

bb.be:                                            ; preds = %.lr.ph1157.i
  %i.nl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nk
  %.0.copyload.i753.i = load i8, ptr %i.nl, align 1
  %i.nm = add i64 %.81155.i, 2
  %i.nn = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.no = getelementptr inbounds nuw [16 x i8], ptr %i.nn, i64 %indvars.iv1314.i ; 2 uses
  %i.np = zext i8 %.0.copyload.i753.i to i32
  store i32 %i.np, ptr %i.no, align 8, !tbaa !21
  %i.nq = getelementptr inbounds nuw i8, ptr %i.no, i64 12
  store i32 1, ptr %i.nq, align 4, !tbaa !23
  br label %bb.ck

bb.bf:                                            ; preds = %.lr.ph1157.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nk
  %.0.copyload.i754.i = load double, ptr %i.nr, align 1
  %i.ns = add i64 %.81155.i, 9
  %i.nt = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.nu = getelementptr inbounds nuw [16 x i8], ptr %i.nt, i64 %indvars.iv1314.i ; 2 uses
  store double %.0.copyload.i754.i, ptr %i.nu, align 8, !tbaa !21
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 12
  store i32 3, ptr %i.nv, align 4, !tbaa !23
  br label %bb.ck

bb.bg:                                            ; preds = %.lr.ph1157.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nk
  %i.nx = getelementptr i8, ptr %i.nj, i64 9
  %.0.copyload.i757.i = load float, ptr %i.nx, align 1
  %i.ny = add i64 %.81155.i, 17
  %i.nz = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.oa = getelementptr inbounds nuw [16 x i8], ptr %i.nz, i64 %indvars.iv1314.i ; 3 uses
  %i.ob = load <2 x float>, ptr %i.nw, align 1
  store <2 x float> %i.ob, ptr %i.oa, align 4, !tbaa !127
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  store float %.0.copyload.i757.i, ptr %i.oc, align 4, !tbaa !127
  %i.od = getelementptr inbounds nuw i8, ptr %i.oa, i64 12
  store i32 5, ptr %i.od, align 4, !tbaa !23
  br label %bb.ck

bb.bh:                                            ; preds = %.lr.ph1157.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nk
  %i.of = getelementptr i8, ptr %i.nj, i64 17
  %.0.copyload.i761.i = load double, ptr %i.of, align 1
  %i.og = add i64 %.81155.i, 33
  %i.oh = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.oi = getelementptr inbounds nuw [16 x i8], ptr %i.oh, i64 %indvars.iv1314.i ; 3 uses
  %i.oj = load <2 x double>, ptr %i.oe, align 1
  %i.ok = fptrunc <2 x double> %i.oj to <2 x float>
  store <2 x float> %i.ok, ptr %i.oi, align 4, !tbaa !127
  %i.ol = fptrunc double %.0.copyload.i761.i to float
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store float %i.ol, ptr %i.om, align 4, !tbaa !127
  %i.on = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 5, ptr %i.on, align 4, !tbaa !23
  br label %bb.ck

4:                                                ; preds = %.lr.ph1157.i
  %.val687.i = load ptr, ptr %i.ay, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %4
  %i.oo = phi i64 [ %i.nk, %4 ], [ %i.oq, %bb.bi ] ; 2 uses
  %.08.i.i764.i = phi i32 [ 0, %4 ], [ %i.ou, %bb.bi ]
  %.0.i.i765.i = phi i32 [ 0, %4 ], [ %i.ov, %bb.bi ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.oo
  %.0.copyload.i.i.i766.i = load i8, ptr %i.op, align 1 ; 2 uses
  %i.oq = add i64 %i.oo, 1                        ; 2 uses
  %i.or = and i8 %.0.copyload.i.i.i766.i, 127
  %i.os = zext nneg i8 %i.or to i32
  %i.ot = shl i32 %i.os, %.0.i.i765.i
  %i.ou = or i32 %i.ot, %.08.i.i764.i             ; 3 uses
  %i.ov = add i32 %.0.i.i765.i, 7
  %.not.i.i767.i = icmp sgt i8 %.0.copyload.i.i.i766.i, -1
  br i1 %.not.i.i767.i, label %_ZL10readVarIntPKcmRm.exit.i768.i, label %bb.bi, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit.i768.i:                ; preds = %bb.bi
  %i.ow = icmp eq i32 %i.ou, 0
  br i1 %i.ow, label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit769.i, label %bb.bj

bb.bj:                                            ; preds = %_ZL10readVarIntPKcmRm.exit.i768.i
  %i.ox = add i32 %i.ou, -1
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %.val687.i, i64 %i.oy
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !96
  br label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit769.i

_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit769.i: ; preds = %bb.bj, %_ZL10readVarIntPKcmRm.exit.i768.i
  %i.pb = phi ptr [ %i.pa, %bb.bj ], [ null, %_ZL10readVarIntPKcmRm.exit.i768.i ]
  %i.pc = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %indvars.iv1314.i ; 2 uses
  store ptr %i.pb, ptr %i.pd, align 8, !tbaa !21
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 6, ptr %i.pe, align 4, !tbaa !23
  br label %bb.ck

bb.bk:                                            ; preds = %.lr.ph1157.i
  %i.pf = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nk
  %.0.copyload.i770.i = load i32, ptr %i.pf, align 1
  %i.pg = add i64 %.81155.i, 5
  %i.ph = load ptr, ptr %i.mm, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store ptr %i.ph, ptr %2, align 8, !tbaa !59
  store i32 %.0.copyload.i770.i, ptr %i.dk, align 8, !tbaa !60
  %i.pi = load ptr, ptr %i.dl, align 8, !tbaa !61
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 5
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !130
  %.not.i771.i = icmp eq i8 %i.pk, 0
  br i1 %.not.i771.i, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.pl = call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef nonnull %0) ; 0 uses
  %i.pm = load ptr, ptr %i.dm, align 8, !tbaa !62
  %i.pn = load ptr, ptr %i.dn, align 8, !tbaa !20
  %i.po = ptrtoint ptr %i.pm to i64
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = sub i64 %i.po, %i.pp
  %i.pr = call noundef i32 @_Z10luaD_pcallP9lua_StatePFvS0_PvES1_ll(ptr noundef nonnull %0, ptr noundef nonnull @_ZZL17resolveImportSafeP9lua_StateP8LuaTableP10lua_TValuejEN13ResolveImport3runES0_Pv, ptr noundef nonnull %2, i64 noundef %i.pq, i64 noundef 0)
  %.not10.i.i = icmp eq i32 %i.pr, 0
  %.pre.i = load ptr, ptr %i.dm, align 8, !tbaa !62 ; 3 uses
  br i1 %.not10.i.i, label %_ZL17resolveImportSafeP9lua_StateP8LuaTableP10lua_TValuej.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ps = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  store i32 0, ptr %i.ps, align 4, !tbaa !23
  br label %_ZL17resolveImportSafeP9lua_StateP8LuaTableP10lua_TValuej.exit.i

bb.bn:                                            ; preds = %bb.bk
  %i.pt = load ptr, ptr %i.dm, align 8, !tbaa !62 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 12
  store i32 0, ptr %i.pu, align 4, !tbaa !23
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 16 ; 2 uses
  store ptr %i.pv, ptr %i.dm, align 8, !tbaa !62
  br label %_ZL17resolveImportSafeP9lua_StateP8LuaTableP10lua_TValuej.exit.i

_ZL17resolveImportSafeP9lua_StateP8LuaTableP10lua_TValuej.exit.i: ; preds = %bb.bn, %bb.bm, %bb.bl
  %i.pw = phi ptr [ %.pre.i, %bb.bl ], [ %.pre.i, %bb.bm ], [ %i.pv, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.px = getelementptr inbounds i8, ptr %i.pw, i64 -16
  %i.py = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.py, i64 %indvars.iv1314.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pz, ptr noundef nonnull align 8 dereferenceable(16) %i.px, i64 16, i1 false), !tbaa.struct !131
  %i.qa = load ptr, ptr %i.dm, align 8, !tbaa !62
  %i.qb = getelementptr inbounds i8, ptr %i.qa, i64 -16
  store ptr %i.qb, ptr %i.dm, align 8, !tbaa !62
  br label %bb.ck

.preheader1006.i:                                 ; preds = %.lr.ph1157.i, %.preheader1006.i
  %i.qc = phi i64 [ %i.qe, %.preheader1006.i ], [ %i.nk, %.lr.ph1157.i ] ; 2 uses
  %.08.i773.i = phi i32 [ %i.qi, %.preheader1006.i ], [ 0, %.lr.ph1157.i ]
  %.0.i774.i = phi i32 [ %i.qj, %.preheader1006.i ], [ 0, %.lr.ph1157.i ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.qc
  %.0.copyload.i.i775.i = load i8, ptr %i.qd, align 1 ; 2 uses
  %i.qe = add i64 %i.qc, 1                        ; 3 uses
  %i.qf = and i8 %.0.copyload.i.i775.i, 127
  %i.qg = zext nneg i8 %i.qf to i32
  %i.qh = shl i32 %i.qg, %.0.i774.i
  %i.qi = or i32 %i.qh, %.08.i773.i               ; 4 uses
  %i.qj = add i32 %.0.i774.i, 7
  %.not.i776.i = icmp sgt i8 %.0.copyload.i.i775.i, -1
  br i1 %.not.i776.i, label %_ZL10readVarIntPKcmRm.exit777.i, label %.preheader1006.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit777.i:                  ; preds = %.preheader1006.i
  %i.qk = call noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef %i.qi) ; 2 uses
  %i.ql = icmp sgt i32 %i.qi, 0
  br i1 %i.ql, label %.preheader1002.i, label %._crit_edge1153.i

.preheader1002.i:                                 ; preds = %_ZL10readVarIntPKcmRm.exit777.i, %_ZL10readVarIntPKcmRm.exit783.i
  %.06451152.i = phi i32 [ %i.rc, %_ZL10readVarIntPKcmRm.exit783.i ], [ 0, %_ZL10readVarIntPKcmRm.exit777.i ]
  %.91151.i = phi i64 [ %i.qr, %_ZL10readVarIntPKcmRm.exit783.i ], [ %i.qe, %_ZL10readVarIntPKcmRm.exit777.i ]
  br label %bb.bo

._crit_edge1153.i:                                ; preds = %_ZL10readVarIntPKcmRm.exit783.i, %_ZL10readVarIntPKcmRm.exit777.i
  %.9.lcssa.i = phi i64 [ %i.qe, %_ZL10readVarIntPKcmRm.exit777.i ], [ %i.qr, %_ZL10readVarIntPKcmRm.exit783.i ]
  %i.qm = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.qn = getelementptr inbounds nuw [16 x i8], ptr %i.qm, i64 %indvars.iv1314.i ; 2 uses
  store ptr %i.qk, ptr %i.qn, align 8, !tbaa !21
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 12
  store i32 7, ptr %i.qo, align 4, !tbaa !23
  br label %bb.ck

bb.bo:                                            ; preds = %bb.bo, %.preheader1002.i
  %i.qp = phi i64 [ %i.qr, %bb.bo ], [ %.91151.i, %.preheader1002.i ] ; 2 uses
  %.08.i779.i = phi i32 [ %i.qv, %bb.bo ], [ 0, %.preheader1002.i ]
  %.0.i780.i = phi i32 [ %i.qw, %bb.bo ], [ 0, %.preheader1002.i ] ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.qp
  %.0.copyload.i.i781.i = load i8, ptr %i.qq, align 1 ; 2 uses
  %i.qr = add i64 %i.qp, 1                        ; 3 uses
  %i.qs = and i8 %.0.copyload.i.i781.i, 127
  %i.qt = zext nneg i8 %i.qs to i32
  %i.qu = shl i32 %i.qt, %.0.i780.i
  %i.qv = or i32 %i.qu, %.08.i779.i               ; 2 uses
  %i.qw = add i32 %.0.i780.i, 7
  %.not.i782.i = icmp sgt i8 %.0.copyload.i.i781.i, -1
  br i1 %.not.i782.i, label %_ZL10readVarIntPKcmRm.exit783.i, label %bb.bo, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit783.i:                  ; preds = %bb.bo
  %i.qx = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.qy = sext i32 %i.qv to i64
  %i.qz = getelementptr inbounds [16 x i8], ptr %i.qx, i64 %i.qy
  %i.ra = call noundef ptr @_Z8luaH_setP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef %i.qk, ptr noundef %i.qz) ; 2 uses
  store double 0.000000e+00, ptr %i.ra, align 8, !tbaa !21
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 12
  store i32 3, ptr %i.rb, align 4, !tbaa !23
  %i.rc = add nuw nsw i32 %.06451152.i, 1         ; 2 uses
  %exitcond1313.not.i = icmp eq i32 %i.rc, %i.qi
  br i1 %exitcond1313.not.i, label %._crit_edge1153.i, label %.preheader1002.i, !llvm.loop !80

.preheader1008.i:                                 ; preds = %.lr.ph1157.i, %.preheader1008.i
  %i.rd = phi i64 [ %i.rf, %.preheader1008.i ], [ %i.nk, %.lr.ph1157.i ] ; 2 uses
  %.08.i785.i = phi i32 [ %i.rj, %.preheader1008.i ], [ 0, %.lr.ph1157.i ]
  %.0.i786.i = phi i32 [ %i.rk, %.preheader1008.i ], [ 0, %.lr.ph1157.i ] ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.rd
  %.0.copyload.i.i787.i = load i8, ptr %i.re, align 1 ; 2 uses
  %i.rf = add i64 %i.rd, 1                        ; 3 uses
  %i.rg = and i8 %.0.copyload.i.i787.i, 127
  %i.rh = zext nneg i8 %i.rg to i32
  %i.ri = shl i32 %i.rh, %.0.i786.i
  %i.rj = or i32 %i.ri, %.08.i785.i               ; 5 uses
  %i.rk = add i32 %.0.i786.i, 7
  %.not.i788.i = icmp sgt i8 %.0.copyload.i.i787.i, -1
  br i1 %.not.i788.i, label %_ZL10readVarIntPKcmRm.exit789.i, label %.preheader1008.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit789.i:                  ; preds = %.preheader1008.i
  %i.rl = call noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef %i.rj) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  %i.rm = zext i32 %i.rj to i64                   ; 2 uses
  store ptr %0, ptr %3, align 8, !tbaa !64
  %i.rn = shl nuw nsw i64 %i.rm, 2                ; 2 uses
  %i.ro = invoke noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.rn, i8 noundef zeroext 0)
          to label %_ZN10TempBufferIiE8allocateEP9lua_Statem.exit.i unwind label %bb.bp ; 5 uses

_ZN10TempBufferIiE8allocateEP9lua_Statem.exit.i:  ; preds = %_ZL10readVarIntPKcmRm.exit789.i
  store ptr %i.ro, ptr %i.di, align 8, !tbaa !65
  store i64 %i.rm, ptr %i.dj, align 8, !tbaa !66
  %.not1203.i = icmp eq i32 %i.rj, 0
  br i1 %.not1203.i, label %._crit_edge1150.i, label %.preheader1003.lr.ph.i

.preheader1003.lr.ph.i:                           ; preds = %_ZN10TempBufferIiE8allocateEP9lua_Statem.exit.i
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rl, i64 1
  br label %.preheader1003.i

.preheader1007.i:                                 ; preds = %.thread.i
  %.not1204.i = icmp eq i64 %.3.i, 0
  br i1 %.not1204.i, label %._crit_edge1150.i, label %.lr.ph1149.i

.preheader1003.i:                                 ; preds = %.thread.i, %.preheader1003.lr.ph.i
  %.06351145.i = phi i32 [ 0, %.preheader1003.lr.ph.i ], [ %i.sz, %.thread.i ]
  %.06361144.i = phi i64 [ 0, %.preheader1003.lr.ph.i ], [ %.3.i, %.thread.i ] ; 7 uses
  %.101143.i = phi i64 [ %i.rf, %.preheader1003.lr.ph.i ], [ %i.se, %.thread.i ]
  br label %bb.bq

bb.bp:                                            ; preds = %_ZL10readVarIntPKcmRm.exit789.i
  %i.rq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bq:                                            ; preds = %bb.bq, %.preheader1003.i
  %i.rr = phi i64 [ %i.rt, %bb.bq ], [ %.101143.i, %.preheader1003.i ] ; 3 uses
  %.08.i791.i = phi i32 [ %i.rx, %bb.bq ], [ 0, %.preheader1003.i ]
  %.0.i792.i = phi i32 [ %i.ry, %bb.bq ], [ 0, %.preheader1003.i ] ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.rr
  %.0.copyload.i.i793.i = load i8, ptr %i.rs, align 1 ; 2 uses
  %i.rt = add i64 %i.rr, 1                        ; 2 uses
  %i.ru = and i8 %.0.copyload.i.i793.i, 127
  %i.rv = zext nneg i8 %i.ru to i32
  %i.rw = shl i32 %i.rv, %.0.i792.i
  %i.rx = or i32 %i.rw, %.08.i791.i               ; 3 uses
  %i.ry = add i32 %.0.i792.i, 7
  %.not.i794.i = icmp sgt i8 %.0.copyload.i.i793.i, -1
  br i1 %.not.i794.i, label %_ZL10readVarIntPKcmRm.exit795.i, label %bb.bq, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit795.i:                  ; preds = %bb.bq
  %i.rz = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.sa = sext i32 %i.rx to i64
  %i.sb = getelementptr inbounds [16 x i8], ptr %i.rz, i64 %i.sa
  %i.sc = invoke noundef ptr @_Z8luaH_setP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef %i.rl, ptr noundef %i.sb)
          to label %bb.br unwind label %bb.bt     ; 3 uses

bb.br:                                            ; preds = %_ZL10readVarIntPKcmRm.exit795.i
  %i.sd = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.rt
  %.0.copyload.i796.i = load i32, ptr %i.sd, align 1 ; 2 uses
  %i.se = add i64 %i.rr, 5                        ; 3 uses
  %i.sf = icmp sgt i32 %.0.copyload.i796.i, -1
  br i1 %i.sf, label %bb.bs, label %bb.ca

bb.bs:                                            ; preds = %bb.br
  %i.sg = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.sh = zext nneg i32 %.0.copyload.i796.i to i64
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.sg, i64 %i.sh ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 12 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !23
  %i.sl = icmp eq i32 %i.sk, 0
  br i1 %i.sl, label %bb.bz, label %bb.bv

bb.bt:                                            ; preds = %_ZL10readVarIntPKcmRm.exit795.i
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bu:                                            ; preds = %bb.by
  %i.sn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.bv:                                            ; preds = %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sc, ptr noundef nonnull align 8 dereferenceable(16) %i.si, i64 16, i1 false), !tbaa.struct !131
  %i.so = load i32, ptr %i.sj, align 4, !tbaa !23
  %i.sp = icmp sgt i32 %i.so, 5
  br i1 %i.sp, label %bb.bw, label %.thread.i

bb.bw:                                            ; preds = %bb.bv
  %i.sq = load i8, ptr %i.rp, align 1, !tbaa !21
  %i.sr = and i8 %i.sq, 4
  %.not676.i = icmp eq i8 %i.sr, 0
  br i1 %.not676.i, label %.thread.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ss = load ptr, ptr %i.si, align 8, !tbaa !21 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 1
  %i.su = load i8, ptr %i.st, align 1, !tbaa !21
  %i.sv = and i8 %i.su, 3
  %.not677.i = icmp eq i8 %i.sv, 0
  br i1 %.not677.i, label %.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef %0, ptr noundef nonnull %i.rl, ptr noundef nonnull %i.ss)
          to label %.thread.i unwind label %bb.bu

bb.bz:                                            ; preds = %bb.bs
  %i.sw = add i64 %.06361144.i, 1
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %.06361144.i
  store i32 %i.rx, ptr %i.sx, align 4, !tbaa !120
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.br
  %.2.i = phi i64 [ %i.sw, %bb.bz ], [ %.06361144.i, %bb.br ]
  store double 0.000000e+00, ptr %i.sc, align 8, !tbaa !21
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  store i32 3, ptr %i.sy, align 4, !tbaa !23
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ca, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.3.i = phi i64 [ %.2.i, %bb.ca ], [ %.06361144.i, %bb.bv ], [ %.06361144.i, %bb.bw ], [ %.06361144.i, %bb.bx ], [ %.06361144.i, %bb.by ] ; 3 uses
  %i.sz = add nuw i32 %.06351145.i, 1             ; 2 uses
  %exitcond1310.not.i = icmp eq i32 %i.sz, %i.rj
  br i1 %exitcond1310.not.i, label %.preheader1007.i, label %.preheader1003.i, !llvm.loop !81

._crit_edge1150.i:                                ; preds = %.preheader1007.i, %_ZN10TempBufferIiE8allocateEP9lua_Statem.exit.i
  %.10.lcssa1397.i = phi i64 [ %i.se, %.preheader1007.i ], [ %i.rf, %_ZN10TempBufferIiE8allocateEP9lua_Statem.exit.i ] ; 2 uses
  %i.ta = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.tb = getelementptr inbounds nuw [16 x i8], ptr %i.ta, i64 %indvars.iv1314.i ; 2 uses
  store ptr %i.rl, ptr %i.tb, align 8, !tbaa !21
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  store i32 7, ptr %i.tc, align 4, !tbaa !23
  %.not.i797.i = icmp eq ptr %i.ro, null
  br i1 %.not.i797.i, label %_ZN10TempBufferIiED2Ev.exit.i, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge1150.thread.i, %._crit_edge1150.i
  %.10.lcssa13971400.i = phi i64 [ %i.se, %._crit_edge1150.thread.i ], [ %.10.lcssa1397.i, %._crit_edge1150.i ]
  invoke void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %0, ptr noundef nonnull %i.ro, i64 noundef %i.rn, i8 noundef zeroext 0)
          to label %_ZN10TempBufferIiED2Ev.exit.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.td = landingpad { ptr, i32 }
          catch ptr null
  %i.te = extractvalue { ptr, i32 } %i.td, 0
  call void @__clang_call_terminate(ptr %i.te) #13
  unreachable

_ZN10TempBufferIiED2Ev.exit.i:                    ; preds = %bb.cb, %._crit_edge1150.i
  %.10.lcssa13971401.i = phi i64 [ %.10.lcssa1397.i, %._crit_edge1150.i ], [ %.10.lcssa13971400.i, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %bb.ck

.lr.ph1149.i:                                     ; preds = %.preheader1007.i, %bb.cd
  %.06341148.i = phi i64 [ %i.tm, %bb.cd ], [ 0, %.preheader1007.i ] ; 2 uses
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %.06341148.i
  %i.tg = load i32, ptr %i.tf, align 4, !tbaa !120
  %i.th = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.ti = sext i32 %i.tg to i64
  %i.tj = getelementptr inbounds [16 x i8], ptr %i.th, i64 %i.ti
  %i.tk = invoke noundef ptr @_Z8luaH_setP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef %i.rl, ptr noundef %i.tj)
          to label %bb.cd unwind label %bb.ce

bb.cd:                                            ; preds = %.lr.ph1149.i
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 12
  store i32 0, ptr %i.tl, align 4, !tbaa !23
  %i.tm = add nuw i64 %.06341148.i, 1             ; 2 uses
  %exitcond1311.not.i = icmp eq i64 %i.tm, %.3.i
  br i1 %exitcond1311.not.i, label %._crit_edge1150.thread.i, label %.lr.ph1149.i, !llvm.loop !82

._crit_edge1150.thread.i:                         ; preds = %bb.cd
  %i.tn = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.to = getelementptr inbounds nuw [16 x i8], ptr %i.tn, i64 %indvars.iv1314.i ; 2 uses
  store ptr %i.rl, ptr %i.to, align 8, !tbaa !21
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 12
  store i32 7, ptr %i.tp, align 4, !tbaa !23
  br label %bb.cb

bb.ce:                                            ; preds = %.lr.ph1149.i
  %i.tq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.bu, %bb.bt, %bb.bp
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.rq, %bb.bp ], [ %i.tq, %bb.ce ], [ %i.sn, %bb.bu ], [ %i.sm, %bb.bt ]
  call void @_ZN10TempBufferIiED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  resume { ptr, i32 } %.pn.pn.pn.i

.preheader1009.i:                                 ; preds = %.lr.ph1157.i, %.preheader1009.i
  %i.tr = phi i64 [ %i.tt, %.preheader1009.i ], [ %i.nk, %.lr.ph1157.i ] ; 2 uses
  %.08.i799.i = phi i32 [ %i.tx, %.preheader1009.i ], [ 0, %.lr.ph1157.i ]
  %.0.i800.i = phi i32 [ %i.ty, %.preheader1009.i ], [ 0, %.lr.ph1157.i ] ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.tr
  %.0.copyload.i.i801.i = load i8, ptr %i.ts, align 1 ; 2 uses
  %i.tt = add i64 %i.tr, 1                        ; 2 uses
  %i.tu = and i8 %.0.copyload.i.i801.i, 127
  %i.tv = zext nneg i8 %i.tu to i32
  %i.tw = shl i32 %i.tv, %.0.i800.i
  %i.tx = or i32 %i.tw, %.08.i799.i               ; 2 uses
  %i.ty = add i32 %.0.i800.i, 7
  %.not.i802.i = icmp sgt i8 %.0.copyload.i.i801.i, -1
  br i1 %.not.i802.i, label %_ZL10readVarIntPKcmRm.exit803.i, label %.preheader1009.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit803.i:                  ; preds = %.preheader1009.i
  %i.tz = zext i32 %i.tx to i64
  %i.ua = load ptr, ptr %i.db, align 8, !tbaa !48
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %i.tz
  %i.uc = load ptr, ptr %i.ub, align 8, !tbaa !101 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 3
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !111
  %i.uf = zext i8 %i.ue to i32
  %i.ug = call noundef ptr @_Z16luaF_newLclosureP9lua_StateiP8LuaTableP5Proto(ptr noundef %0, i32 noundef %i.uf, ptr noundef %i.ak, ptr noundef %i.uc) ; 3 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.ui = load i8, ptr %i.uh, align 4, !tbaa !133
  %i.uj = icmp ne i8 %i.ui, 0
  %i.uk = zext i1 %i.uj to i8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 6
  store i8 %i.uk, ptr %i.ul, align 2, !tbaa !134
  %i.um = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.un = getelementptr inbounds nuw [16 x i8], ptr %i.um, i64 %indvars.iv1314.i ; 2 uses
  store ptr %i.ug, ptr %i.un, align 8, !tbaa !21
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 12
  store i32 8, ptr %i.uo, align 4, !tbaa !23
  br label %bb.ck

.preheader1010.i:                                 ; preds = %.lr.ph1157.i, %.preheader1010.i
  %i.up = phi i64 [ %i.ur, %.preheader1010.i ], [ %i.nk, %.lr.ph1157.i ] ; 2 uses
  %.08.i805.i = phi i32 [ %i.uv, %.preheader1010.i ], [ 0, %.lr.ph1157.i ]
  %.0.i806.i = phi i32 [ %i.uw, %.preheader1010.i ], [ 0, %.lr.ph1157.i ] ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.up
  %.0.copyload.i.i807.i = load i8, ptr %i.uq, align 1 ; 2 uses
  %i.ur = add i64 %i.up, 1                        ; 2 uses
  %i.us = and i8 %.0.copyload.i.i807.i, 127
  %i.ut = zext nneg i8 %i.us to i32
  %i.uu = shl i32 %i.ut, %.0.i806.i
  %i.uv = or i32 %i.uu, %.08.i805.i               ; 2 uses
  %i.uw = add i32 %.0.i806.i, 7
  %.not.i808.i = icmp sgt i8 %.0.copyload.i.i807.i, -1
  br i1 %.not.i808.i, label %_ZL10readVarIntPKcmRm.exit809.i, label %.preheader1010.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit809.i:                  ; preds = %.preheader1010.i
  %5 = load ptr, ptr %i.mm, align 8, !tbaa !121
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cg, %_ZL10readVarIntPKcmRm.exit809.i
  %i.ux = phi i64 [ %i.ur, %_ZL10readVarIntPKcmRm.exit809.i ], [ %i.uz, %bb.cg ] ; 2 uses
  %.08.i811.i = phi i32 [ 0, %_ZL10readVarIntPKcmRm.exit809.i ], [ %i.vd, %bb.cg ]
  %.0.i812.i = phi i32 [ 0, %_ZL10readVarIntPKcmRm.exit809.i ], [ %i.ve, %bb.cg ] ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ux
  %.0.copyload.i.i813.i = load i8, ptr %i.uy, align 1 ; 2 uses
  %i.uz = add i64 %i.ux, 1                        ; 2 uses
  %i.va = and i8 %.0.copyload.i.i813.i, 127
  %i.vb = zext nneg i8 %i.va to i32
  %i.vc = shl i32 %i.vb, %.0.i812.i
  %i.vd = or i32 %i.vc, %.08.i811.i               ; 3 uses
  %i.ve = add i32 %.0.i812.i, 7
  %.not.i814.i = icmp sgt i8 %.0.copyload.i.i813.i, -1
  br i1 %.not.i814.i, label %_ZL10readVarIntPKcmRm.exit815.i, label %bb.cg, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit815.i:                  ; preds = %bb.cg, %_ZL10readVarIntPKcmRm.exit815.i
  %i.vf = phi i64 [ %i.vh, %_ZL10readVarIntPKcmRm.exit815.i ], [ %i.uz, %bb.cg ] ; 2 uses
  %.08.i817.i = phi i32 [ %i.vl, %_ZL10readVarIntPKcmRm.exit815.i ], [ 0, %bb.cg ]
  %.0.i818.i = phi i32 [ %i.vm, %_ZL10readVarIntPKcmRm.exit815.i ], [ 0, %bb.cg ] ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.vf
  %.0.copyload.i.i819.i = load i8, ptr %i.vg, align 1 ; 2 uses
  %i.vh = add i64 %i.vf, 1                        ; 3 uses
  %i.vi = and i8 %.0.copyload.i.i819.i, 127
  %i.vj = zext nneg i8 %i.vi to i32
  %i.vk = shl i32 %i.vj, %.0.i818.i
  %i.vl = or i32 %i.vk, %.08.i817.i               ; 3 uses
  %i.vm = add i32 %.0.i818.i, 7
  %.not.i820.i = icmp sgt i8 %.0.copyload.i.i819.i, -1
  br i1 %.not.i820.i, label %_ZL10readVarIntPKcmRm.exit821.i, label %_ZL10readVarIntPKcmRm.exit815.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit821.i:                  ; preds = %_ZL10readVarIntPKcmRm.exit815.i
  %6 = zext i32 %i.uv to i64
  %7 = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %6
  %i.vn = add i32 %i.vl, %i.vd                    ; 3 uses
  %i.vo = zext i32 %i.vn to i64                   ; 2 uses
  %i.vp = shl nuw nsw i64 %i.vo, 3
  %i.vq = load i8, ptr %i.dh, align 4, !tbaa !135
  %i.vr = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.vp, i8 noundef zeroext %i.vq) ; 2 uses
  %i.vs = call noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef %i.vn) ; 3 uses
  %.not1202.i = icmp eq i32 %i.vn, 0
  br i1 %.not1202.i, label %._crit_edge1141.i, label %.preheader1004.i

.preheader1004.i:                                 ; preds = %_ZL10readVarIntPKcmRm.exit821.i, %_ZL10readVarIntPKcmRm.exit827.i
  %indvars.iv1304.i = phi i64 [ %indvars.iv.next1305.i, %_ZL10readVarIntPKcmRm.exit827.i ], [ 0, %_ZL10readVarIntPKcmRm.exit821.i ] ; 3 uses
  %.111139.i = phi i64 [ %i.wb, %_ZL10readVarIntPKcmRm.exit827.i ], [ %i.vh, %_ZL10readVarIntPKcmRm.exit821.i ]
  br label %bb.ch

._crit_edge1141.i:                                ; preds = %_ZL10readVarIntPKcmRm.exit827.i, %_ZL10readVarIntPKcmRm.exit821.i
  %.11.lcssa.i = phi i64 [ %i.vh, %_ZL10readVarIntPKcmRm.exit821.i ], [ %i.wb, %_ZL10readVarIntPKcmRm.exit827.i ]
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 4
  store i8 1, ptr %i.vt, align 4, !tbaa !136
  %i.vu = load ptr, ptr %7, align 8, !tbaa !21
  %i.vv = call noundef ptr @_Z13luaR_newclassP9lua_StateP7TStringP8LuaTablePS2_jj(ptr noundef %0, ptr noundef %i.vu, ptr noundef %i.vs, ptr noundef %i.vr, i32 noundef %i.vd, i32 noundef %i.vl)
  %i.vw = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.vx = getelementptr inbounds nuw [16 x i8], ptr %i.vw, i64 %indvars.iv1314.i ; 2 uses
  store ptr %i.vv, ptr %i.vx, align 8, !tbaa !21
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 12
  store i32 12, ptr %i.vy, align 4, !tbaa !23
  br label %bb.ck

bb.ch:                                            ; preds = %bb.ch, %.preheader1004.i
  %i.vz = phi i64 [ %i.wb, %bb.ch ], [ %.111139.i, %.preheader1004.i ] ; 2 uses
  %.08.i823.i = phi i32 [ %i.wf, %bb.ch ], [ 0, %.preheader1004.i ]
  %.0.i824.i = phi i32 [ %i.wg, %bb.ch ], [ 0, %.preheader1004.i ] ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.vz
  %.0.copyload.i.i825.i = load i8, ptr %i.wa, align 1 ; 2 uses
  %i.wb = add i64 %i.vz, 1                        ; 3 uses
  %i.wc = and i8 %.0.copyload.i.i825.i, 127
  %i.wd = zext nneg i8 %i.wc to i32
  %i.we = shl i32 %i.wd, %.0.i824.i
  %i.wf = or i32 %i.we, %.08.i823.i               ; 2 uses
  %i.wg = add i32 %.0.i824.i, 7
  %.not.i826.i = icmp sgt i8 %.0.copyload.i.i825.i, -1
  br i1 %.not.i826.i, label %_ZL10readVarIntPKcmRm.exit827.i, label %bb.ch, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit827.i:                  ; preds = %bb.ch
  %i.wh = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.wi = zext i32 %i.wf to i64
  %i.wj = getelementptr inbounds nuw [16 x i8], ptr %i.wh, i64 %i.wi
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !21 ; 2 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.vr, i64 %indvars.iv1304.i
  store ptr %i.wk, ptr %i.wl, align 8, !tbaa !96
  %i.wm = call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef %0, ptr noundef %i.vs, ptr noundef %i.wk) ; 2 uses
  %i.wn = trunc nuw i64 %indvars.iv1304.i to i32
  %i.wo = uitofp i32 %i.wn to double
  store double %i.wo, ptr %i.wm, align 8, !tbaa !21
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wm, i64 12
  store i32 3, ptr %i.wp, align 4, !tbaa !23
  %indvars.iv.next1305.i = add nuw nsw i64 %indvars.iv1304.i, 1 ; 2 uses
  %exitcond1308.not.i = icmp eq i64 %indvars.iv.next1305.i, %i.vo
  br i1 %exitcond1308.not.i, label %._crit_edge1141.i, label %.preheader1004.i, !llvm.loop !83

bb.ci:                                            ; preds = %.lr.ph1157.i
  %8 = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.nk
  %.0.copyload.i828.i = load i8, ptr %8, align 1
  %i.wq = add i64 %.81155.i, 2
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %bb.ci
  %i.wr = phi i64 [ %i.wq, %bb.ci ], [ %i.wt, %bb.cj ] ; 2 uses
  %.08.i830.i = phi i64 [ 0, %bb.ci ], [ %i.wy, %bb.cj ]
  %.0.i831.i = phi i32 [ 0, %bb.ci ], [ %i.wz, %bb.cj ] ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.wr
  %.0.copyload.i.i832.i = load i8, ptr %i.ws, align 1 ; 2 uses
  %i.wt = add i64 %i.wr, 1                        ; 2 uses
  %i.wu = and i8 %.0.copyload.i.i832.i, 127
  %i.wv = zext nneg i8 %i.wu to i64
  %i.ww = zext nneg i32 %.0.i831.i to i64
  %i.wx = shl i64 %i.wv, %i.ww
  %i.wy = or i64 %i.wx, %.08.i830.i               ; 3 uses
  %i.wz = add i32 %.0.i831.i, 7
  %.not.i833.i = icmp sgt i8 %.0.copyload.i.i832.i, -1
  br i1 %.not.i833.i, label %_ZL12readVarInt64PKcmRm.exit.i, label %bb.cj, !llvm.loop !84

_ZL12readVarInt64PKcmRm.exit.i:                   ; preds = %bb.cj
  %.not681.i = icmp eq i8 %.0.copyload.i828.i, 0
  %i.xa = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.xb = getelementptr inbounds nuw [16 x i8], ptr %i.xa, i64 %indvars.iv1314.i ; 2 uses
  %i.xc = sub i64 0, %i.wy
  %i.xd = select i1 %.not681.i, i64 %i.wy, i64 %i.xc
  store i64 %i.xd, ptr %i.xb, align 8, !tbaa !21
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xb, i64 12
  store i32 4, ptr %i.xe, align 4, !tbaa !23
  br label %bb.ck

bb.ck:                                            ; preds = %_ZL12readVarInt64PKcmRm.exit.i, %._crit_edge1141.i, %_ZL10readVarIntPKcmRm.exit803.i, %_ZN10TempBufferIiED2Ev.exit.i, %._crit_edge1153.i, %_ZL17resolveImportSafeP9lua_StateP8LuaTableP10lua_TValuej.exit.i, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit769.i, %bb.bh, %bb.bg, %bb.bf, %bb.be, %.lr.ph1157.i
  %.12.i = phi i64 [ %i.nk, %.lr.ph1157.i ], [ %i.wt, %_ZL12readVarInt64PKcmRm.exit.i ], [ %i.nm, %bb.be ], [ %i.ns, %bb.bf ], [ %i.ny, %bb.bg ], [ %i.og, %bb.bh ], [ %i.oq, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit769.i ], [ %i.pg, %_ZL17resolveImportSafeP9lua_StateP8LuaTableP10lua_TValuej.exit.i ], [ %.9.lcssa.i, %._crit_edge1153.i ], [ %.10.lcssa13971401.i, %_ZN10TempBufferIiED2Ev.exit.i ], [ %i.tt, %_ZL10readVarIntPKcmRm.exit803.i ], [ %.11.lcssa.i, %._crit_edge1141.i ] ; 2 uses
  %indvars.iv.next1315.i = add nuw nsw i64 %indvars.iv1314.i, 1 ; 2 uses
  %i.xf = load i32, ptr %i.mn, align 8, !tbaa !122
  %i.xg = sext i32 %i.xf to i64
  %i.xh = icmp slt i64 %indvars.iv.next1315.i, %i.xg
  br i1 %i.xh, label %.lr.ph1157.i, label %._crit_edge1158.i, !llvm.loop !85

bb.cl:                                            ; preds = %._crit_edge1158.i
  %i.xi = load i32, ptr %i.lr, align 8, !tbaa !118
  %i.xj = icmp sgt i32 %i.xi, 0
  br i1 %i.xj, label %.lr.ph1162.preheader.i, label %.loopexit1018.i.preheader

.lr.ph1162.preheader.i:                           ; preds = %bb.cl
  %i.xk = load ptr, ptr %i.lq, align 8, !tbaa !117
  br label %.lr.ph1162.i

.lr.ph1162.i:                                     ; preds = %_ZN4Luau11getOpLengthE10LuauOpcode.exit.i, %.lr.ph1162.preheader.i
  %.06281160.i = phi ptr [ %i.ym, %_ZN4Luau11getOpLengthE10LuauOpcode.exit.i ], [ %i.xk, %.lr.ph1162.preheader.i ] ; 5 uses
  %i.xl = load i32, ptr %.06281160.i, align 4, !tbaa !120 ; 5 uses
  %trunc.i = trunc i32 %i.xl to i8
  switch i8 %trunc.i, label %.critedge.i [
    i8 15, label %bb.co
    i8 16, label %bb.cm
    i8 20, label %bb.cn
  ]

bb.cm:                                            ; preds = %.lr.ph1162.i
  br label %bb.co

bb.cn:                                            ; preds = %.lr.ph1162.i
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm, %.lr.ph1162.i
  %.0627.i = phi i32 [ 85, %bb.cn ], [ 84, %bb.cm ], [ 83, %.lr.ph1162.i ]
  %i.xm = getelementptr inbounds nuw i8, ptr %.06281160.i, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !120 ; 2 uses
  %i.xo = icmp ult i32 %i.xn, 65536
  br i1 %i.xo, label %bb.cp, label %.critedge.i

bb.cp:                                            ; preds = %bb.co
  %i.xp = load ptr, ptr %i.mm, align 8, !tbaa !121
  %i.xq = zext nneg i32 %i.xn to i64
  %i.xr = getelementptr inbounds nuw [16 x i8], ptr %i.xp, i64 %i.xq
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !21 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4 ; 2 uses
  %i.xu = load i16, ptr %i.xt, align 4, !tbaa !137 ; 2 uses
  %i.xv = icmp eq i16 %i.xu, -32768
  br i1 %i.xv, label %bb.cq, label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  %i.xw = load ptr, ptr %i.de, align 8, !tbaa !24
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 1320
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !138 ; 2 uses
  %.not675.i = icmp eq ptr %i.xy, null
  br i1 %.not675.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xs, i64 20
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !99
  %i.yc = zext i32 %i.yb to i64
  %i.yd = call noundef signext i16 %i.xy(ptr noundef nonnull %0, ptr noundef nonnull %i.xz, i64 noundef %i.yc), !inline_history !72
  %.pre1351.pre.pre.i = load i32, ptr %.06281160.i, align 4, !tbaa !120
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pre1351.pre.i = phi i32 [ %.pre1351.pre.pre.i, %bb.cr ], [ %i.xl, %bb.cq ]
  %i.ye = phi i16 [ %i.yd, %bb.cr ], [ -1, %bb.cq ] ; 2 uses
  store i16 %i.ye, ptr %i.xt, align 4, !tbaa !137
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cp
  %.pre1351.i = phi i32 [ %.pre1351.pre.i, %bb.cs ], [ %i.xl, %bb.cp ] ; 2 uses
  %i.yf = phi i16 [ %i.ye, %bb.cs ], [ %i.xu, %bb.cp ]
  %i.yg = icmp sgt i16 %i.yf, -1
  br i1 %i.yg, label %bb.cu, label %.critedge.i

bb.cu:                                            ; preds = %bb.ct
  %i.yh = and i32 %.pre1351.i, -256
  %i.yi = or disjoint i32 %i.yh, %.0627.i         ; 2 uses
  store i32 %i.yi, ptr %.06281160.i, align 4, !tbaa !120
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.cu, %bb.ct, %bb.co, %.lr.ph1162.i
  %i.yj = phi i32 [ %i.xl, %.lr.ph1162.i ], [ %.pre1351.i, %bb.ct ], [ %i.yi, %bb.cu ], [ %i.xl, %bb.co ]
  %trunc1001.i = trunc i32 %i.yj to i8
  %switch.tableidx = add i8 %trunc1001.i, -7      ; 2 uses
  %i.yk = icmp ult i8 %switch.tableidx, 83
  br i1 %i.yk, label %switch.lookup, label %_ZN4Luau11getOpLengthE10LuauOpcode.exit.i

switch.lookup:                                    ; preds = %.critedge.i
  %i.yl = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZZ9luau_loadP9lua_StatePKcS2_miEN11LoadContext3runES0_Pv, i64 %i.yl
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %_ZN4Luau11getOpLengthE10LuauOpcode.exit.i

_ZN4Luau11getOpLengthE10LuauOpcode.exit.i:        ; preds = %.critedge.i, %switch.lookup
  %.0.i834.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %.critedge.i ]
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.06281160.i, i64 %.0.i834.i ; 2 uses
  %i.yn = load ptr, ptr %i.lq, align 8, !tbaa !117
  %i.yo = load i32, ptr %i.lr, align 8, !tbaa !118
  %i.yp = sext i32 %i.yo to i64
  %i.yq = getelementptr inbounds [4 x i8], ptr %i.yn, i64 %i.yp
  %i.yr = icmp ult ptr %i.ym, %i.yq
  br i1 %i.yr, label %.lr.ph1162.i, label %.loopexit1018.i.preheader, !llvm.loop !86

.loopexit1018.i.preheader:                        ; preds = %_ZN4Luau11getOpLengthE10LuauOpcode.exit.i, %bb.cl, %._crit_edge1158.i
  br label %.loopexit1018.i

.loopexit1018.i:                                  ; preds = %.loopexit1018.i.preheader, %.loopexit1018.i
  %i.ys = phi i64 [ %i.yu, %.loopexit1018.i ], [ %.8.lcssa.i, %.loopexit1018.i.preheader ] ; 2 uses
  %.08.i836.i = phi i32 [ %i.yy, %.loopexit1018.i ], [ 0, %.loopexit1018.i.preheader ]
  %.0.i837.i = phi i32 [ %i.yz, %.loopexit1018.i ], [ 0, %.loopexit1018.i.preheader ] ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ys
  %.0.copyload.i.i838.i = load i8, ptr %i.yt, align 1 ; 2 uses
  %i.yu = add i64 %i.ys, 1                        ; 3 uses
  %i.yv = and i8 %.0.copyload.i.i838.i, 127
  %i.yw = zext nneg i8 %i.yv to i32
  %i.yx = shl i32 %i.yw, %.0.i837.i
  %i.yy = or i32 %i.yx, %.08.i836.i               ; 5 uses
  %i.yz = add i32 %.0.i837.i, 7
  %.not.i839.i = icmp sgt i8 %.0.copyload.i.i838.i, -1
  br i1 %.not.i839.i, label %_ZL10readVarIntPKcmRm.exit840.i, label %.loopexit1018.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit840.i:                  ; preds = %.loopexit1018.i
  %i.za = icmp sgt i32 %i.yy, -1
  br i1 %i.za, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %_ZL10readVarIntPKcmRm.exit840.i
  %i.zb = zext nneg i32 %i.yy to i64              ; 2 uses
  %i.zc = shl nuw nsw i64 %i.zb, 3
  %i.zd = load i8, ptr %i.ln, align 2, !tbaa !114
  %i.ze = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.zc, i8 noundef zeroext %i.zd) ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store ptr %i.ze, ptr %i.zf, align 8, !tbaa !139
  %i.zg = getelementptr inbounds nuw i8, ptr %i.en, i64 140
  store i32 %i.yy, ptr %i.zg, align 4, !tbaa !140
  %.not1205.i = icmp eq i32 %i.yy, 0
  br i1 %.not1205.i, label %.preheader1017.i.preheader, label %.preheader1005.lr.ph.i

.preheader1017.i.preheader:                       ; preds = %_ZL10readVarIntPKcmRm.exit860.i, %bb.cv
  %.ph381 = phi i64 [ %i.yu, %bb.cv ], [ %i.aak, %_ZL10readVarIntPKcmRm.exit860.i ]
  br label %.preheader1017.i

.preheader1005.lr.ph.i:                           ; preds = %bb.cv
  %i.zh = load ptr, ptr %i.db, align 8, !tbaa !48
  br label %.preheader1005.i

bb.cw:                                            ; preds = %_ZL10readVarIntPKcmRm.exit840.i
  call void @_Z11luaM_toobigP9lua_State(ptr noundef %0) #15
  unreachable

.preheader1005.i:                                 ; preds = %_ZL10readVarIntPKcmRm.exit860.i, %.preheader1005.lr.ph.i
  %indvars.iv1317.i = phi i64 [ 0, %.preheader1005.lr.ph.i ], [ %indvars.iv.next1318.i, %_ZL10readVarIntPKcmRm.exit860.i ] ; 2 uses
  %.131163.i = phi i64 [ %i.yu, %.preheader1005.lr.ph.i ], [ %i.aak, %_ZL10readVarIntPKcmRm.exit860.i ]
  br label %bb.cz

.preheader1017.i:                                 ; preds = %.preheader1017.i.preheader, %.preheader1017.i
  %i.zi = phi i64 [ %i.zk, %.preheader1017.i ], [ %.ph381, %.preheader1017.i.preheader ] ; 2 uses
  %.08.i842.i = phi i32 [ %i.zo, %.preheader1017.i ], [ 0, %.preheader1017.i.preheader ]
  %.0.i843.i = phi i32 [ %i.zp, %.preheader1017.i ], [ 0, %.preheader1017.i.preheader ] ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.zi
  %.0.copyload.i.i844.i = load i8, ptr %i.zj, align 1 ; 2 uses
  %i.zk = add i64 %i.zi, 1                        ; 2 uses
  %i.zl = and i8 %.0.copyload.i.i844.i, 127
  %i.zm = zext nneg i8 %i.zl to i32
  %i.zn = shl i32 %i.zm, %.0.i843.i
  %i.zo = or i32 %i.zn, %.08.i842.i               ; 2 uses
  %i.zp = add i32 %.0.i843.i, 7
  %.not.i845.i = icmp sgt i8 %.0.copyload.i.i844.i, -1
  br i1 %.not.i845.i, label %_ZL10readVarIntPKcmRm.exit846.i, label %.preheader1017.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit846.i:                  ; preds = %.preheader1017.i
  %i.zq = getelementptr inbounds nuw i8, ptr %i.en, i64 164
  store i32 %i.zo, ptr %i.zq, align 4, !tbaa !141
  %.val686.i = load ptr, ptr %i.ay, align 8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %_ZL10readVarIntPKcmRm.exit846.i
  %i.zr = phi i64 [ %i.zk, %_ZL10readVarIntPKcmRm.exit846.i ], [ %i.zt, %bb.cx ] ; 4 uses
  %.08.i.i848.i = phi i32 [ 0, %_ZL10readVarIntPKcmRm.exit846.i ], [ %i.zx, %bb.cx ]
  %.0.i.i849.i = phi i32 [ 0, %_ZL10readVarIntPKcmRm.exit846.i ], [ %i.zy, %bb.cx ] ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.zr
  %.0.copyload.i.i.i850.i = load i8, ptr %i.zs, align 1 ; 2 uses
  %i.zt = add i64 %i.zr, 1                        ; 2 uses
  %i.zu = and i8 %.0.copyload.i.i.i850.i, 127
  %i.zv = zext nneg i8 %i.zu to i32
  %i.zw = shl i32 %i.zv, %.0.i.i849.i
  %i.zx = or i32 %i.zw, %.08.i.i848.i             ; 3 uses
  %i.zy = add i32 %.0.i.i849.i, 7
  %.not.i.i851.i = icmp sgt i8 %.0.copyload.i.i.i850.i, -1
  br i1 %.not.i.i851.i, label %_ZL10readVarIntPKcmRm.exit.i852.i, label %bb.cx, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit.i852.i:                ; preds = %bb.cx
  %i.zz = icmp eq i32 %i.zx, 0
  br i1 %i.zz, label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit853.i, label %bb.cy

bb.cy:                                            ; preds = %_ZL10readVarIntPKcmRm.exit.i852.i
  %i.aaa = add i32 %i.zx, -1
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %.val686.i, i64 %i.aab
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !96
  br label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit853.i

_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit853.i: ; preds = %bb.cy, %_ZL10readVarIntPKcmRm.exit.i852.i
  %i.aae = phi ptr [ %i.aad, %bb.cy ], [ null, %_ZL10readVarIntPKcmRm.exit.i852.i ]
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.en, i64 96
  store ptr %i.aae, ptr %i.aaf, align 8, !tbaa !142
  %i.aag = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.zt
  %.0.copyload.i854.i = load i8, ptr %i.aag, align 1
  %i.aah = add i64 %i.zr, 2                       ; 2 uses
  %.not669.i = icmp eq i8 %.0.copyload.i854.i, 0
  br i1 %.not669.i, label %.loopexit1016.i, label %bb.da

bb.cz:                                            ; preds = %bb.cz, %.preheader1005.i
  %i.aai = phi i64 [ %i.aak, %bb.cz ], [ %.131163.i, %.preheader1005.i ] ; 2 uses
  %.08.i856.i = phi i32 [ %i.aao, %bb.cz ], [ 0, %.preheader1005.i ]
  %.0.i857.i = phi i32 [ %i.aap, %bb.cz ], [ 0, %.preheader1005.i ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aai
  %.0.copyload.i.i858.i = load i8, ptr %i.aaj, align 1 ; 2 uses
  %i.aak = add i64 %i.aai, 1                      ; 3 uses
  %i.aal = and i8 %.0.copyload.i.i858.i, 127
  %i.aam = zext nneg i8 %i.aal to i32
  %i.aan = shl i32 %i.aam, %.0.i857.i
  %i.aao = or i32 %i.aan, %.08.i856.i             ; 2 uses
  %i.aap = add i32 %.0.i857.i, 7
  %.not.i859.i = icmp sgt i8 %.0.copyload.i.i858.i, -1
  br i1 %.not.i859.i, label %_ZL10readVarIntPKcmRm.exit860.i, label %bb.cz, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit860.i:                  ; preds = %bb.cz
  %i.aaq = zext i32 %i.aao to i64
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.zh, i64 %i.aaq
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !101
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %indvars.iv1317.i
  store ptr %i.aas, ptr %i.aat, align 8, !tbaa !101
  %indvars.iv.next1318.i = add nuw nsw i64 %indvars.iv1317.i, 1 ; 2 uses
  %exitcond1322.not.i = icmp eq i64 %indvars.iv.next1318.i, %i.zb
  br i1 %exitcond1322.not.i, label %.preheader1017.i.preheader, label %.preheader1005.i, !llvm.loop !87

bb.da:                                            ; preds = %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit853.i
  %i.aau = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aah
  %.0.copyload.i861.i = load i8, ptr %i.aau, align 1
  %i.aav = add i64 %i.zr, 3                       ; 2 uses
  %i.aaw = zext i8 %.0.copyload.i861.i to i32     ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.en, i64 160
  store i32 %i.aaw, ptr %i.aax, align 8, !tbaa !143
  %i.aay = load i32, ptr %i.lr, align 8, !tbaa !118 ; 2 uses
  %i.aaz = add nsw i32 %i.aay, -1
  %i.aba = ashr i32 %i.aaz, %i.aaw                ; 4 uses
  %i.abb = shl i32 %i.aba, 2
  %i.abc = add nsw i32 %i.aay, 3
  %i.abd = and i32 %i.abc, -4                     ; 2 uses
  %i.abe = add i32 %i.abd, 4
  %i.abf = add i32 %i.abe, %i.abb                 ; 2 uses
  %i.abg = sext i32 %i.abf to i64
  %i.abh = sext i32 %i.abd to i64
  %i.abi = load i8, ptr %i.ln, align 2, !tbaa !114
  %i.abj = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.abg, i8 noundef zeroext %i.abi) ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %i.en, i64 56 ; 2 uses
  store ptr %i.abj, ptr %i.abk, align 8, !tbaa !144
  %i.abl = getelementptr inbounds nuw i8, ptr %i.en, i64 156
  store i32 %i.abf, ptr %i.abl, align 4, !tbaa !145
  %i.abm = getelementptr inbounds i8, ptr %i.abj, i64 %i.abh
  %i.abn = getelementptr inbounds nuw i8, ptr %i.en, i64 64 ; 2 uses
  store ptr %i.abm, ptr %i.abn, align 8, !tbaa !146
  %i.abo = load i32, ptr %i.lr, align 8, !tbaa !118
  %i.abp = icmp sgt i32 %i.abo, 0
  br i1 %i.abp, label %.lr.ph1170.i, label %.preheader1015.i

.preheader1015.i:                                 ; preds = %.lr.ph1170.i, %bb.da
  %.14.lcssa.i = phi i64 [ %i.aav, %bb.da ], [ %i.abu, %.lr.ph1170.i ] ; 3 uses
  %.not6701172.i = icmp slt i32 %i.aba, 0
  br i1 %.not6701172.i, label %.loopexit1016.i, label %.lr.ph1176.i

.lr.ph1176.i:                                     ; preds = %.preheader1015.i
  %i.abq = load ptr, ptr %i.abn, align 8, !tbaa !146 ; 5 uses
  %i.abr = add nuw nsw i32 %i.aba, 1
  %wide.trip.count1328.i = zext nneg i32 %i.abr to i64 ; 2 uses
  %xtraiter481 = and i64 %wide.trip.count1328.i, 3 ; 3 uses
  %i.abs = icmp ult i32 %i.aba, 3
  br i1 %i.abs, label %.epil.preheader480, label %.lr.ph1176.i.new

.lr.ph1176.i.new:                                 ; preds = %.lr.ph1176.i
  %unroll_iter486 = and i64 %wide.trip.count1328.i, 2147483644
  br label %bb.db

.lr.ph1170.i:                                     ; preds = %bb.da, %.lr.ph1170.i
  %indvars.iv1323.i = phi i64 [ %indvars.iv.next1324.i, %.lr.ph1170.i ], [ 0, %bb.da ] ; 2 uses
  %.06241167.i = phi i8 [ %i.abv, %.lr.ph1170.i ], [ 0, %bb.da ]
  %.141166.i = phi i64 [ %i.abu, %.lr.ph1170.i ], [ %i.aav, %bb.da ] ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.i, i64 %.141166.i
  %.0.copyload.i862.i = load i8, ptr %i.abt, align 1
  %i.abu = add i64 %.141166.i, 1                  ; 2 uses
  %i.abv = add i8 %.0.copyload.i862.i, %.06241167.i ; 2 uses
  %i.abw = load ptr, ptr %i.abk, align 8, !tbaa !144
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 %indvars.iv1323.i
  store i8 %i.abv, ptr %i.abx, align 1, !tbaa !21
  %indvars.iv.next1324.i = add nuw nsw i64 %indvars.iv1323.i, 1 ; 2 uses
  %i.aby = load i32, ptr %i.lr, align 8, !tbaa !118
  %i.abz = sext i32 %i.aby to i64
  %i.aca = icmp slt i64 %indvars.iv.next1324.i, %i.abz
  br i1 %i.aca, label %.lr.ph1170.i, label %.preheader1015.i, !llvm.loop !88

bb.db:                                            ; preds = %bb.db, %.lr.ph1176.i.new
  %indvars.iv1325.i = phi i64 [ 0, %.lr.ph1176.i.new ], [ %indvars.iv.next1326.i.3, %bb.db ] ; 5 uses
  %.06221174.i = phi i32 [ 0, %.lr.ph1176.i.new ], [ %i.acr, %bb.db ]
  %.151173.i = phi i64 [ %.14.lcssa.i, %.lr.ph1176.i.new ], [ %i.acq, %bb.db ] ; 5 uses
  %niter487 = phi i64 [ 0, %.lr.ph1176.i.new ], [ %niter487.next.3, %bb.db ]
  %i.acb = getelementptr inbounds nuw i8, ptr %i.i, i64 %.151173.i
  %.0.copyload.i863.i = load i32, ptr %i.acb, align 1
  %i.acc = add nsw i32 %.0.copyload.i863.i, %.06221174.i ; 2 uses
  %i.acd = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv1325.i
  store i32 %i.acc, ptr %i.acd, align 4, !tbaa !120
  %i.ace = getelementptr i8, ptr %i.i, i64 %.151173.i
  %i.acf = getelementptr i8, ptr %i.ace, i64 4
  %.0.copyload.i863.i.1 = load i32, ptr %i.acf, align 1
  %i.acg = add nsw i32 %.0.copyload.i863.i.1, %i.acc ; 2 uses
  %i.ach = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv1325.i
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 4
  store i32 %i.acg, ptr %i.aci, align 4, !tbaa !120
  %i.acj = getelementptr i8, ptr %i.i, i64 %.151173.i
  %i.ack = getelementptr i8, ptr %i.acj, i64 8
  %.0.copyload.i863.i.2 = load i32, ptr %i.ack, align 1
  %i.acl = add nsw i32 %.0.copyload.i863.i.2, %i.acg ; 2 uses
  %i.acm = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv1325.i
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 8
  store i32 %i.acl, ptr %i.acn, align 4, !tbaa !120
  %i.aco = getelementptr i8, ptr %i.i, i64 %.151173.i
  %i.acp = getelementptr i8, ptr %i.aco, i64 12
  %.0.copyload.i863.i.3 = load i32, ptr %i.acp, align 1
  %i.acq = add i64 %.151173.i, 16                 ; 3 uses
  %i.acr = add nsw i32 %.0.copyload.i863.i.3, %i.acl ; 3 uses
  %i.acs = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv1325.i
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 12
  store i32 %i.acr, ptr %i.act, align 4, !tbaa !120
  %indvars.iv.next1326.i.3 = add nuw nsw i64 %indvars.iv1325.i, 4 ; 2 uses
  %niter487.next.3 = add i64 %niter487, 4         ; 2 uses
  %niter487.ncmp.3 = icmp eq i64 %niter487.next.3, %unroll_iter486
  br i1 %niter487.ncmp.3, label %.loopexit1016.i.loopexit.unr-lcssa, label %bb.db, !llvm.loop !89

.loopexit1016.i.loopexit.unr-lcssa:               ; preds = %bb.db
  %lcmp.mod483.not = icmp eq i64 %xtraiter481, 0
  br i1 %lcmp.mod483.not, label %.loopexit1016.i, label %.epil.preheader480

.epil.preheader480:                               ; preds = %.loopexit1016.i.loopexit.unr-lcssa, %.lr.ph1176.i
  %indvars.iv1325.i.epil.init = phi i64 [ 0, %.lr.ph1176.i ], [ %indvars.iv.next1326.i.3, %.loopexit1016.i.loopexit.unr-lcssa ]
  %.06221174.i.epil.init = phi i32 [ 0, %.lr.ph1176.i ], [ %i.acr, %.loopexit1016.i.loopexit.unr-lcssa ]
  %.151173.i.epil.init = phi i64 [ %.14.lcssa.i, %.lr.ph1176.i ], [ %i.acq, %.loopexit1016.i.loopexit.unr-lcssa ]
  %lcmp.mod485 = icmp ne i64 %xtraiter481, 0
  call void @llvm.assume(i1 %lcmp.mod485)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dc, %.epil.preheader480
  %indvars.iv1325.i.epil = phi i64 [ %indvars.iv1325.i.epil.init, %.epil.preheader480 ], [ %indvars.iv.next1326.i.epil, %bb.dc ] ; 2 uses
  %.06221174.i.epil = phi i32 [ %.06221174.i.epil.init, %.epil.preheader480 ], [ %i.acw, %bb.dc ]
  %.151173.i.epil = phi i64 [ %.151173.i.epil.init, %.epil.preheader480 ], [ %i.acv, %bb.dc ] ; 2 uses
  %epil.iter482 = phi i64 [ 0, %.epil.preheader480 ], [ %epil.iter482.next, %bb.dc ]
  %i.acu = getelementptr inbounds nuw i8, ptr %i.i, i64 %.151173.i.epil
  %.0.copyload.i863.i.epil = load i32, ptr %i.acu, align 1
  %i.acv = add i64 %.151173.i.epil, 4             ; 2 uses
  %i.acw = add nsw i32 %.0.copyload.i863.i.epil, %.06221174.i.epil ; 2 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %indvars.iv1325.i.epil
  store i32 %i.acw, ptr %i.acx, align 4, !tbaa !120
  %indvars.iv.next1326.i.epil = add nuw nsw i64 %indvars.iv1325.i.epil, 1
  %epil.iter482.next = add i64 %epil.iter482, 1   ; 2 uses
  %epil.iter482.cmp.not = icmp eq i64 %epil.iter482.next, %xtraiter481
  br i1 %epil.iter482.cmp.not, label %.loopexit1016.i, label %bb.dc, !llvm.loop !90

.loopexit1016.i:                                  ; preds = %.loopexit1016.i.loopexit.unr-lcssa, %bb.dc, %.preheader1015.i, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit853.i
  %.16.i = phi i64 [ %i.aah, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit853.i ], [ %.14.lcssa.i, %.preheader1015.i ], [ %i.acq, %.loopexit1016.i.loopexit.unr-lcssa ], [ %i.acv, %bb.dc ] ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.i, i64 %.16.i
  %.0.copyload.i864.i = load i8, ptr %i.acy, align 1
  %i.acz = add i64 %.16.i, 1                      ; 2 uses
  %.not671.i = icmp eq i8 %.0.copyload.i864.i, 0
  br i1 %.not671.i, label %.loopexit.i, label %.preheader1014.i

.preheader1014.i:                                 ; preds = %.loopexit1016.i, %.preheader1014.i
  %i.ada = phi i64 [ %i.adc, %.preheader1014.i ], [ %i.acz, %.loopexit1016.i ] ; 2 uses
  %.08.i866.i = phi i32 [ %i.adg, %.preheader1014.i ], [ 0, %.loopexit1016.i ]
  %.0.i867.i = phi i32 [ %i.adh, %.preheader1014.i ], [ 0, %.loopexit1016.i ] ; 2 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ada
  %.0.copyload.i.i868.i = load i8, ptr %i.adb, align 1 ; 2 uses
  %i.adc = add i64 %i.ada, 1                      ; 3 uses
  %i.add = and i8 %.0.copyload.i.i868.i, 127
  %i.ade = zext nneg i8 %i.add to i32
  %i.adf = shl i32 %i.ade, %.0.i867.i
  %i.adg = or i32 %i.adf, %.08.i866.i             ; 5 uses
  %i.adh = add i32 %.0.i867.i, 7
  %.not.i869.i = icmp sgt i8 %.0.copyload.i.i868.i, -1
  br i1 %.not.i869.i, label %_ZL10readVarIntPKcmRm.exit870.i, label %.preheader1014.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit870.i:                  ; preds = %.preheader1014.i
  %i.adi = icmp sgt i32 %i.adg, -1
  br i1 %i.adi, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %_ZL10readVarIntPKcmRm.exit870.i
  %i.adj = zext nneg i32 %i.adg to i64            ; 2 uses
  %i.adk = mul nuw nsw i64 %i.adj, 24
  %i.adl = load i8, ptr %i.ln, align 2, !tbaa !114
  %i.adm = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.adk, i8 noundef zeroext %i.adl) ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  store ptr %i.adm, ptr %i.adn, align 8, !tbaa !147
  %i.ado = getelementptr inbounds nuw i8, ptr %i.en, i64 144
  store i32 %i.adg, ptr %i.ado, align 8, !tbaa !148
  %.not1206.i = icmp eq i32 %i.adg, 0
  br i1 %.not1206.i, label %.preheader1013.i.preheader, label %.lr.ph1181.i

.preheader1013.i.preheader:                       ; preds = %_ZL10readVarIntPKcmRm.exit895.i, %bb.dd
  %.ph = phi i64 [ %i.adc, %bb.dd ], [ %i.afg, %_ZL10readVarIntPKcmRm.exit895.i ]
  br label %.preheader1013.i

bb.de:                                            ; preds = %_ZL10readVarIntPKcmRm.exit870.i
  call void @_Z11luaM_toobigP9lua_State(ptr noundef %0) #15
  unreachable

.preheader1013.i:                                 ; preds = %.preheader1013.i.preheader, %.preheader1013.i
  %i.adp = phi i64 [ %i.adr, %.preheader1013.i ], [ %.ph, %.preheader1013.i.preheader ] ; 2 uses
  %.08.i872.i = phi i32 [ %i.adv, %.preheader1013.i ], [ 0, %.preheader1013.i.preheader ]
  %.0.i873.i = phi i32 [ %i.adw, %.preheader1013.i ], [ 0, %.preheader1013.i.preheader ] ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.adp
  %.0.copyload.i.i874.i = load i8, ptr %i.adq, align 1 ; 2 uses
  %i.adr = add i64 %i.adp, 1                      ; 3 uses
  %i.ads = and i8 %.0.copyload.i.i874.i, 127
  %i.adt = zext nneg i8 %i.ads to i32
  %i.adu = shl i32 %i.adt, %.0.i873.i
  %i.adv = or i32 %i.adu, %.08.i872.i             ; 5 uses
  %i.adw = add i32 %.0.i873.i, 7
  %.not.i875.i = icmp sgt i8 %.0.copyload.i.i874.i, -1
  br i1 %.not.i875.i, label %_ZL10readVarIntPKcmRm.exit876.i, label %.preheader1013.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit876.i:                  ; preds = %.preheader1013.i
  %i.adx = icmp sgt i32 %i.adv, -1
  br i1 %i.adx, label %bb.dj, label %bb.dk

.lr.ph1181.i:                                     ; preds = %bb.dd, %_ZL10readVarIntPKcmRm.exit895.i
  %indvars.iv1330.i = phi i64 [ %indvars.iv.next1331.i, %_ZL10readVarIntPKcmRm.exit895.i ], [ 0, %bb.dd ] ; 2 uses
  %.171178.i = phi i64 [ %i.afg, %_ZL10readVarIntPKcmRm.exit895.i ], [ %i.adc, %bb.dd ]
  %.val685.i = load ptr, ptr %i.ay, align 8
  br label %bb.df

bb.df:                                            ; preds = %bb.df, %.lr.ph1181.i
  %i.ady = phi i64 [ %.171178.i, %.lr.ph1181.i ], [ %i.aea, %bb.df ] ; 2 uses
  %.08.i.i878.i = phi i32 [ 0, %.lr.ph1181.i ], [ %i.aee, %bb.df ]
  %.0.i.i879.i = phi i32 [ 0, %.lr.ph1181.i ], [ %i.aef, %bb.df ] ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ady
  %.0.copyload.i.i.i880.i = load i8, ptr %i.adz, align 1 ; 2 uses
  %i.aea = add i64 %i.ady, 1                      ; 2 uses
  %i.aeb = and i8 %.0.copyload.i.i.i880.i, 127
  %i.aec = zext nneg i8 %i.aeb to i32
  %i.aed = shl i32 %i.aec, %.0.i.i879.i
  %i.aee = or i32 %i.aed, %.08.i.i878.i           ; 3 uses
  %i.aef = add i32 %.0.i.i879.i, 7
  %.not.i.i881.i = icmp sgt i8 %.0.copyload.i.i.i880.i, -1
  br i1 %.not.i.i881.i, label %_ZL10readVarIntPKcmRm.exit.i882.i, label %bb.df, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit.i882.i:                ; preds = %bb.df
  %i.aeg = icmp eq i32 %i.aee, 0
  br i1 %i.aeg, label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit883.i, label %bb.dg

bb.dg:                                            ; preds = %_ZL10readVarIntPKcmRm.exit.i882.i
  %i.aeh = add i32 %i.aee, -1
  %i.aei = zext i32 %i.aeh to i64
  %i.aej = getelementptr inbounds nuw [8 x i8], ptr %.val685.i, i64 %i.aei
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !96
  br label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit883.i

_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit883.i: ; preds = %bb.dg, %_ZL10readVarIntPKcmRm.exit.i882.i
  %i.ael = phi ptr [ %i.aek, %bb.dg ], [ null, %_ZL10readVarIntPKcmRm.exit.i882.i ]
  %i.aem = getelementptr inbounds nuw [24 x i8], ptr %i.adm, i64 %indvars.iv1330.i ; 4 uses
  store ptr %i.ael, ptr %i.aem, align 8, !tbaa !150
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dh, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit883.i
  %i.aen = phi i64 [ %i.aea, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit883.i ], [ %i.aep, %bb.dh ] ; 2 uses
  %.08.i885.i = phi i32 [ 0, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit883.i ], [ %i.aet, %bb.dh ]
  %.0.i886.i = phi i32 [ 0, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit883.i ], [ %i.aeu, %bb.dh ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aen
  %.0.copyload.i.i887.i = load i8, ptr %i.aeo, align 1 ; 2 uses
  %i.aep = add i64 %i.aen, 1                      ; 2 uses
  %i.aeq = and i8 %.0.copyload.i.i887.i, 127
  %i.aer = zext nneg i8 %i.aeq to i32
  %i.aes = shl i32 %i.aer, %.0.i886.i
  %i.aet = or i32 %i.aes, %.08.i885.i             ; 2 uses
  %i.aeu = add i32 %.0.i886.i, 7
  %.not.i888.i = icmp sgt i8 %.0.copyload.i.i887.i, -1
  br i1 %.not.i888.i, label %_ZL10readVarIntPKcmRm.exit889.i, label %bb.dh, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit889.i:                  ; preds = %bb.dh
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aem, i64 8
  store i32 %i.aet, ptr %i.aev, align 8, !tbaa !151
  br label %bb.di

bb.di:                                            ; preds = %bb.di, %_ZL10readVarIntPKcmRm.exit889.i
  %i.aew = phi i64 [ %i.aep, %_ZL10readVarIntPKcmRm.exit889.i ], [ %i.aey, %bb.di ] ; 3 uses
  %.08.i891.i = phi i32 [ 0, %_ZL10readVarIntPKcmRm.exit889.i ], [ %i.afc, %bb.di ]
  %.0.i892.i = phi i32 [ 0, %_ZL10readVarIntPKcmRm.exit889.i ], [ %i.afd, %bb.di ] ; 2 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aew
  %.0.copyload.i.i893.i = load i8, ptr %i.aex, align 1 ; 2 uses
  %i.aey = add i64 %i.aew, 1                      ; 2 uses
  %i.aez = and i8 %.0.copyload.i.i893.i, 127
  %i.afa = zext nneg i8 %i.aez to i32
  %i.afb = shl i32 %i.afa, %.0.i892.i
  %i.afc = or i32 %i.afb, %.08.i891.i             ; 2 uses
  %i.afd = add i32 %.0.i892.i, 7
  %.not.i894.i = icmp sgt i8 %.0.copyload.i.i893.i, -1
  br i1 %.not.i894.i, label %_ZL10readVarIntPKcmRm.exit895.i, label %bb.di, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit895.i:                  ; preds = %bb.di
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aem, i64 12
  store i32 %i.afc, ptr %i.afe, align 4, !tbaa !152
  %i.aff = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aey
  %.0.copyload.i896.i = load i8, ptr %i.aff, align 1
  %i.afg = add i64 %i.aew, 2                      ; 2 uses
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aem, i64 16
  store i8 %.0.copyload.i896.i, ptr %i.afh, align 8, !tbaa !153
  %indvars.iv.next1331.i = add nuw nsw i64 %indvars.iv1330.i, 1 ; 2 uses
  %exitcond1335.not.i = icmp eq i64 %indvars.iv.next1331.i, %i.adj
  br i1 %exitcond1335.not.i, label %.preheader1013.i.preheader, label %.lr.ph1181.i, !llvm.loop !91

bb.dj:                                            ; preds = %_ZL10readVarIntPKcmRm.exit876.i
  %i.afi = zext nneg i32 %i.adv to i64            ; 2 uses
  %i.afj = shl nuw nsw i64 %i.afi, 3
  %i.afk = load i8, ptr %i.ln, align 2, !tbaa !114
  %i.afl = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.afj, i8 noundef zeroext %i.afk) ; 2 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %i.en, i64 80
  store ptr %i.afl, ptr %i.afm, align 8, !tbaa !154
  %i.afn = getelementptr inbounds nuw i8, ptr %i.en, i64 148
  store i32 %i.adv, ptr %i.afn, align 4, !tbaa !155
  %.not1207.i = icmp eq i32 %i.adv, 0
  br i1 %.not1207.i, label %.loopexit.i, label %.lr.ph1186.i

bb.dk:                                            ; preds = %_ZL10readVarIntPKcmRm.exit876.i
  call void @_Z11luaM_toobigP9lua_State(ptr noundef %0) #15
  unreachable

.lr.ph1186.i:                                     ; preds = %bb.dj, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i
  %indvars.iv1336.i = phi i64 [ %indvars.iv.next1337.i, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i ], [ 0, %bb.dj ] ; 2 uses
  %.181183.i = phi i64 [ %i.afq, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i ], [ %i.adr, %bb.dj ]
  %.val.i = load ptr, ptr %i.ay, align 8
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dl, %.lr.ph1186.i
  %i.afo = phi i64 [ %.181183.i, %.lr.ph1186.i ], [ %i.afq, %bb.dl ] ; 2 uses
  %.08.i.i898.i = phi i32 [ 0, %.lr.ph1186.i ], [ %i.afu, %bb.dl ]
  %.0.i.i899.i = phi i32 [ 0, %.lr.ph1186.i ], [ %i.afv, %bb.dl ] ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.afo
  %.0.copyload.i.i.i900.i = load i8, ptr %i.afp, align 1 ; 2 uses
  %i.afq = add i64 %i.afo, 1                      ; 3 uses
  %i.afr = and i8 %.0.copyload.i.i.i900.i, 127
  %i.afs = zext nneg i8 %i.afr to i32
  %i.aft = shl i32 %i.afs, %.0.i.i899.i
  %i.afu = or i32 %i.aft, %.08.i.i898.i           ; 3 uses
  %i.afv = add i32 %.0.i.i899.i, 7
  %.not.i.i901.i = icmp sgt i8 %.0.copyload.i.i.i900.i, -1
  br i1 %.not.i.i901.i, label %_ZL10readVarIntPKcmRm.exit.i902.i, label %bb.dl, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit.i902.i:                ; preds = %bb.dl
  %i.afw = icmp eq i32 %i.afu, 0
  br i1 %i.afw, label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i, label %bb.dm

bb.dm:                                            ; preds = %_ZL10readVarIntPKcmRm.exit.i902.i
  %i.afx = add i32 %i.afu, -1
  %i.afy = zext i32 %i.afx to i64
  %i.afz = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.afy
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !96
  br label %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i

_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i: ; preds = %bb.dm, %_ZL10readVarIntPKcmRm.exit.i902.i
  %i.agb = phi ptr [ %i.aga, %bb.dm ], [ null, %_ZL10readVarIntPKcmRm.exit.i902.i ]
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.afl, i64 %indvars.iv1336.i
  store ptr %i.agb, ptr %i.agc, align 8, !tbaa !96
  %indvars.iv.next1337.i = add nuw nsw i64 %indvars.iv1336.i, 1 ; 2 uses
  %exitcond1341.not.i = icmp eq i64 %indvars.iv.next1337.i, %i.afi
  br i1 %exitcond1341.not.i, label %.loopexit.i, label %.lr.ph1186.i, !llvm.loop !92

.loopexit.i:                                      ; preds = %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i, %bb.dj, %.loopexit1016.i
  %.19.i = phi i64 [ %i.acz, %.loopexit1016.i ], [ %i.adr, %bb.dj ], [ %i.afq, %_ZL10readStringR10TempBufferIP7TStringEPKcmRm.exit903.i ] ; 2 uses
  br i1 %i.do, label %.preheader1012.i, label %.critedge684.i

.preheader1012.i:                                 ; preds = %.loopexit.i, %.preheader1012.i
  %i.agd = phi i64 [ %i.agf, %.preheader1012.i ], [ %.19.i, %.loopexit.i ] ; 2 uses
  %.08.i905.i = phi i32 [ %i.agj, %.preheader1012.i ], [ 0, %.loopexit.i ]
  %.0.i906.i = phi i32 [ %i.agk, %.preheader1012.i ], [ 0, %.loopexit.i ] ; 2 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.agd
  %.0.copyload.i.i907.i = load i8, ptr %i.age, align 1 ; 2 uses
  %i.agf = add i64 %i.agd, 1                      ; 4 uses
  %i.agg = and i8 %.0.copyload.i.i907.i, 127
  %i.agh = zext nneg i8 %i.agg to i32
  %i.agi = shl i32 %i.agh, %.0.i906.i
  %i.agj = or i32 %i.agi, %.08.i905.i             ; 4 uses
  %i.agk = add i32 %.0.i906.i, 7
  %.not.i908.i = icmp sgt i8 %.0.copyload.i.i907.i, -1
  br i1 %.not.i908.i, label %_ZL10readVarIntPKcmRm.exit909.i, label %.preheader1012.i, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit909.i:                  ; preds = %.preheader1012.i
  %i.agl = getelementptr inbounds nuw i8, ptr %i.en, i64 184 ; 3 uses
  store i32 %i.agj, ptr %i.agl, align 8, !tbaa !156
  %.not672.i = icmp eq i32 %i.agj, 0
  br i1 %.not672.i, label %._crit_edge1192.i, label %bb.dn

bb.dn:                                            ; preds = %_ZL10readVarIntPKcmRm.exit909.i
  %i.agm = zext i32 %i.agj to i64
  %i.agn = shl nuw nsw i64 %i.agm, 4
  %i.ago = load i8, ptr %i.ln, align 2, !tbaa !114
  %i.agp = call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.agn, i8 noundef zeroext %i.ago)
  %i.agq = getelementptr inbounds nuw i8, ptr %i.en, i64 176 ; 2 uses
  store ptr %i.agp, ptr %i.agq, align 8, !tbaa !157
  %.pre1352.i = load i32, ptr %i.agl, align 8, !tbaa !156
  %i.agr = icmp eq i32 %.pre1352.i, 0
  br i1 %i.agr, label %._crit_edge1192.i, label %.lr.ph1191.i

.lr.ph1191.i:                                     ; preds = %bb.dn, %_ZL10readVarIntPKcmRm.exit916.i
  %indvars.iv1342.i = phi i64 [ %indvars.iv.next1343.i, %_ZL10readVarIntPKcmRm.exit916.i ], [ 0, %bb.dn ] ; 2 uses
  %.201188.i = phi i64 [ %i.agz, %_ZL10readVarIntPKcmRm.exit916.i ], [ %i.agf, %bb.dn ] ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.i, i64 %.201188.i
  %.0.copyload.i910.i = load i8, ptr %i.ags, align 1
  %i.agt = add i64 %.201188.i, 1
  %i.agu = load ptr, ptr %i.agq, align 8, !tbaa !157
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr %i.agu, i64 %indvars.iv1342.i ; 4 uses
  %i.agw = zext i8 %.0.copyload.i910.i to i32
  store i32 %i.agw, ptr %i.agv, align 4, !tbaa !160
  br label %bb.do

bb.do:                                            ; preds = %bb.do, %.lr.ph1191.i
  %i.agx = phi i64 [ %i.agt, %.lr.ph1191.i ], [ %i.agz, %bb.do ] ; 2 uses
  %.08.i912.i = phi i32 [ 0, %.lr.ph1191.i ], [ %i.ahd, %bb.do ]
  %.0.i913.i = phi i32 [ 0, %.lr.ph1191.i ], [ %i.ahe, %bb.do ] ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.agx
  %.0.copyload.i.i914.i = load i8, ptr %i.agy, align 1 ; 2 uses
  %i.agz = add i64 %i.agx, 1                      ; 3 uses
  %i.aha = and i8 %.0.copyload.i.i914.i, 127
  %i.ahb = zext nneg i8 %i.aha to i32
  %i.ahc = shl i32 %i.ahb, %.0.i913.i
  %i.ahd = or i32 %i.ahc, %.08.i912.i             ; 2 uses
  %i.ahe = add i32 %.0.i913.i, 7
  %.not.i915.i = icmp sgt i8 %.0.copyload.i.i914.i, -1
  br i1 %.not.i915.i, label %_ZL10readVarIntPKcmRm.exit916.i, label %bb.do, !llvm.loop !70

_ZL10readVarIntPKcmRm.exit916.i:                  ; preds = %bb.do
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agv, i64 4
  store i32 %i.ahd, ptr %i.ahf, align 4, !tbaa !21
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  store i32 0, ptr %i.ahg, align 4, !tbaa !21
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agv, i64 12
  store i32 0, ptr %i.ahh, align 4, !tbaa !21
  %indvars.iv.next1343.i = add nuw nsw i64 %indvars.iv1342.i, 1 ; 2 uses
  %i.ahi = load i32, ptr %i.agl, align 8, !tbaa !156
  %i.ahj = zext i32 %i.ahi to i64
  %i.ahk = icmp samesign ult i64 %indvars.iv.next1343.i, %i.ahj
  br i1 %i.ahk, label %.lr.ph1191.i, label %._crit_edge1192.i, !llvm.loop !93

._crit_edge1192.i:                                ; preds = %_ZL10readVarIntPKcmRm.exit916.i, %bb.dn, %_ZL10readVarIntPKcmRm.exit909.i
  %.20.lcssa.i = phi i64 [ %i.agf, %bb.dn ], [ %i.agf, %_ZL10readVarIntPKcmRm.exit909.i ], [ %i.agz, %_ZL10readVarIntPKcmRm.exit916.i ] ; 2 uses
  br i1 %i.dd, label %bb.dp, label %.critedge684.i

bb.dp:                                            ; preds = %._crit_edge1192.i
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.en, i64 7
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !113
  %i.ahn = and i8 %i.ahm, 8
  %.not673.i = icmp eq i8 %i.ahn, 0
  br i1 %.not673.i, label %bb.dq, label %.preheader1011.i

.preheader1011.i:                                 ; preds = %bb.dp, %.preheader1011.i
  %i.aho = phi i64 [ %i.ahq, %.preheader1011.i ], [ %.20.lcssa.i, %bb.dp ] ; 2 uses
  %.08.i918.i = phi i64 [ %i.ahv, %.preheader1011.i ], [ 0, %bb.dp ]
  %.0.i919.i = phi i32 [ %i.ahw, %.preheader1011.i ], [ 0, %bb.dp ] ; 2 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aho
  %.0.copyload.i.i920.i = load i8, ptr %i.ahp, align 1 ; 2 uses
  %i.ahq = add i64 %i.aho, 1
  %i.ahr = and i8 %.0.copyload.i.i920.i, 127
  %i.ahs = zext nneg i8 %i.ahr to i64
  %i.aht = zext nneg i32 %.0.i919.i to i64
  %i.ahu = shl i64 %i.ahs, %i.aht
  %i.ahv = or i64 %i.ahu, %.08.i918.i             ; 2 uses
  %i.ahw = add i32 %.0.i919.i, 7
  %.not.i921.i = icmp sgt i8 %.0.copyload.i.i920.i, -1
  br i1 %.not.i921.i, label %_ZL12readVarInt64PKcmRm.exit922.i, label %.preheader1011.i, !llvm.loop !84

_ZL12readVarInt64PKcmRm.exit922.i:                ; preds = %.preheader1011.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.en, i64 208
  store i64 %i.ahv, ptr %i.ahx, align 8, !tbaa !161
  br label %bb.dq

bb.dq:                                            ; preds = %_ZL12readVarInt64PKcmRm.exit922.i, %bb.dp
  %i.ahy = add i64 %.0633.i, %.5.i
  br label %.critedge684.i

.critedge684.i:                                   ; preds = %bb.dq, %._crit_edge1192.i, %.loopexit.i
  %.23.i = phi i64 [ %i.ahy, %bb.dq ], [ %.20.lcssa.i, %._crit_edge1192.i ], [ %.19.i, %.loopexit.i ] ; 2 uses
  %i.ahz = load ptr, ptr %i.db, align 8, !tbaa !48 ; 2 uses
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.ahz, i64 %indvars.iv1345.i
  store ptr %i.en, ptr %i.aia, align 8, !tbaa !101
  %indvars.iv.next1346.i = add nuw nsw i64 %indvars.iv1345.i, 1 ; 2 uses
  %exitcond1350.not.i = icmp eq i64 %indvars.iv.next1346.i, %i.cy
  br i1 %exitcond1350.not.i, label %.preheader.i, label %bb.v, !llvm.loop !94

bb.dr:                                            ; preds = %_ZL10readVarIntPKcmRm.exit709.i
  %i.aib = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @_Z16luaC_barrierbackP9lua_StateP8GCObjectPS2_(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %i.aib)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZL10readVarIntPKcmRm.exit709.i
  %i.aic = call noundef ptr @_Z16luaF_newLclosureP9lua_StateiP8LuaTableP5Proto(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.ak, ptr noundef %i.ea)
  %i.aid = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !62 ; 2 uses
  store ptr %i.aic, ptr %i.aie, align 8, !tbaa !21
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 12
  store i32 8, ptr %i.aif, align 4, !tbaa !23
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !67
  %i.aii = load ptr, ptr %i.aid, align 8, !tbaa !62 ; 2 uses
  %i.aij = ptrtoint ptr %i.aih to i64
  %i.aik = ptrtoint ptr %i.aii to i64
  %i.ail = sub i64 %i.aij, %i.aik
  %i.aim = icmp slt i64 %i.ail, 17
  br i1 %i.aim, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef 1)
  %.pre1353.i = load ptr, ptr %i.aid, align 8, !tbaa !62
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.ain = phi ptr [ %i.aii, %bb.ds ], [ %.pre1353.i, %bb.dt ]
  %i.aio = getelementptr inbounds nuw i8, ptr %i.ain, i64 16
  store ptr %i.aio, ptr %i.aid, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %_ZL8loadsafeP9lua_StateR10TempBufferIP7TStringERS1_IP5ProtoEPKcSB_mi.exit

_ZL8loadsafeP9lua_StateR10TempBufferIP7TStringERS1_IP5ProtoEPKcSB_mi.exit: ; preds = %bb.b, %bb.d, %bb.g, %bb.du
  %.1.i = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.g ], [ 0, %bb.du ]
  %i.aip = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %.1.i, ptr %i.aip, align 4, !tbaa !47
  ret void
}

declare void @_Z14lua_pushstringP9lua_StatePKc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZZ9luau_loadP9lua_StatePKcS2_miEN11LoadContextD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(80) dereferenceable(80) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN10TempBufferIP5ProtoED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50
  %i.g = shl i64 %i.f, 3
  invoke void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %i.d, ptr noundef nonnull %i.b, i64 noundef %i.g, i8 noundef zeroext 0)
          to label %_ZN10TempBufferIP5ProtoED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13
  unreachable
end_hunk_1
