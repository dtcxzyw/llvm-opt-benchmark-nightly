Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lutf8lib?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
begin_hunk_0_@utflen:bb.a
  %i.au = or i32 %i.at, %.032.lcssa.i.us          ; 3 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %.thread, label %bb.l

bb.l:                                             ; preds = %._crit_edge.i.us
  %i.aw = zext nneg i32 %.0.lcssa.i.us to i64     ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !15
  %i.az = icmp ult i32 %i.au, %i.ay
  br i1 %i.az, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.aw
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.split.us
  %.140.i.us = phi ptr [ %i.ba, %bb.m ], [ %i.aa, %.lr.ph.split.us ]
  %.3.i.us = phi i32 [ %i.au, %bb.m ], [ %i.ac, %.lr.ph.split.us ] ; 2 uses
  %i.bb = icmp samesign ugt i32 %.3.i.us, 1114111
  %i.bc = and i32 %.3.i.us, 2095104
  %or.cond.i.us = icmp eq i32 %i.bc, 55296
  %or.cond47.i.us = or i1 %i.bb, %or.cond.i.us
  br i1 %or.cond47.i.us, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.140.i.us, i64 1
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = sub i64 %i.be, %i.z                     ; 2 uses
  %i.bg = add nuw nsw i64 %.02554.us, 1           ; 2 uses
  %.not33.not.us = icmp slt i64 %i.bf, %.0.i36
  br i1 %.not33.not.us, label %.lr.ph.split.us, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.t
  %.155 = phi i64 [ %i.ck, %bb.t ], [ %.024, %.lr.ph ] ; 5 uses
  %.02554 = phi i64 [ %i.cl, %bb.t ], [ 0, %.lr.ph ]
  %i.bh = getelementptr inbounds i8, ptr %i.b, i64 %.155 ; 4 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !12  ; 3 uses
  %i.bj = zext i8 %i.bi to i32                    ; 3 uses
  %i.bk = icmp sgt i8 %i.bi, -1
  br i1 %i.bk, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split
  %i.bl = icmp samesign ugt i8 %i.bi, -3
  br i1 %i.bl, label %.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %i.bm = and i32 %i.bj, 64
  %.not51.i = icmp eq i32 %i.bm, 0
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.q
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %.preheader.i ]
  %.03253.i = phi i32 [ %i.bu, %bb.q ], [ 0, %.preheader.i ]
  %.03452.i = phi i32 [ %i.bv, %bb.q ], [ %i.bj, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.next.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !12
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = and i32 %i.bp, 192
  %i.br = icmp eq i32 %i.bq, 128
  br i1 %i.br, label %bb.q, label %.thread

bb.q:                                             ; preds = %.lr.ph.i
  %i.bs = shl i32 %.03253.i, 6
  %i.bt = and i32 %i.bp, 63
  %i.bu = or disjoint i32 %i.bt, %i.bs            ; 2 uses
  %i.bv = shl i32 %.03452.i, 1                    ; 2 uses
  %i.bw = and i32 %.03452.i, 32
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.q
  %i.bx = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.034.lcssa.i = phi i32 [ %i.bj, %.preheader.i ], [ %i.bv, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bu, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.bx, %._crit_edge.loopexit.i ] ; 2 uses
  %i.by = and i32 %.034.lcssa.i, 63
  %i.bz = mul nuw nsw i32 %.0.lcssa.i, 5
  %i.ca = shl i32 %i.by, %i.bz
  %i.cb = or i32 %i.ca, %.032.lcssa.i             ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.cd = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !15
  %i.cg = icmp ult i32 %i.cb, %i.cf
  br i1 %i.cg, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.cd
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.split
  %.140.i = phi ptr [ %i.ch, %bb.s ], [ %i.bh, %.lr.ph.split ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.140.i, i64 1
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cj, %i.z                     ; 2 uses
  %i.cl = add nuw nsw i64 %.02554, 1              ; 2 uses
  %.not33.not = icmp slt i64 %i.ck, %.0.i36
  br i1 %.not33.not, label %.lr.ph.split, label %._crit_edge

.thread:                                          ; preds = %bb.p, %._crit_edge.i, %bb.r, %.lr.ph.i, %bb.n, %bb.l, %._crit_edge.i.us, %bb.j, %.lr.ph.i.us
  %.150 = phi i64 [ %.155.us, %.lr.ph.i.us ], [ %.155.us, %bb.n ], [ %.155, %.lr.ph.i ], [ %.155.us, %bb.j ], [ %.155.us, %._crit_edge.i.us ], [ %.155.us, %bb.l ], [ %.155, %bb.r ], [ %.155, %._crit_edge.i ], [ %.155, %bb.p ]
  call void @lua_pushnil(ptr noundef %0) #3
  %i.cm = add nsw i64 %.150, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.t, %bb.o, %bb.i, %.thread
  %.sink = phi i64 [ %i.cm, %.thread ], [ 0, %bb.i ], [ %i.bg, %bb.o ], [ %i.cl, %bb.t ]
  %.229 = phi i32 [ 2, %.thread ], [ 1, %bb.i ], [ 1, %bb.o ], [ 1, %bb.t ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.sink) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.229
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @iter_codes(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @lua_toboolean(ptr noundef %0, i32 noundef 2) #3
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #3
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  %i.d = icmp sgt i8 %i.c, -65
  br i1 %i.d, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.11) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq i32 %i.a, 0
  %i.f = select i1 %.not, ptr @iter_auxstrict, ptr @iter_auxlax
  tail call void @lua_pushcclosure(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 0) #3
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #3
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef 0) #3
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_addvalue(ptr noundef) local_unnamed_addr #1

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

declare ptr @lua_pushfstring(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @lua_pushcclosure(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @iter_auxlax(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @iter_aux(ptr noundef %0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @iter_auxstrict(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call fastcc i32 @iter_aux(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @iter_aux(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #3 ; 2 uses
  %i.c = call i64 @lua_tointegerx(ptr noundef %0, i32 noundef 2, ptr noundef null) #3 ; 3 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp ult i64 %i.c, %i.d
  br i1 %i.e, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi i64 [ %i.i, %.preheader ], [ %i.c, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = icmp slt i8 %i.g, -64
  %i.i = add i64 %.0, 1
  br i1 %i.h, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %i.c, %bb.a ], [ %.0, %.preheader ] ; 3 uses
  %.not = icmp ult i64 %.1, %i.d
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.loopexit
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.1 ; 4 uses
  %3 = load i8, ptr %2, align 1, !tbaa !12        ; 3 uses
  %i.j = zext i8 %3 to i32                        ; 4 uses
  %i.k = icmp sgt i8 %3, -1
  br i1 %i.k, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i8 %3, -3
  br i1 %i.l, label %utf8_decode.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.m = and i32 %i.j, 64
  %.not51.i = icmp eq i32 %i.m, 0
  br i1 %.not51.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ 0, %.preheader.i ]
  %.03253.i = phi i32 [ %i.u, %bb.d ], [ 0, %.preheader.i ]
  %.03452.i = phi i32 [ %i.v, %bb.d ], [ %i.j, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next.i
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = zext i8 %i.o to i32                      ; 2 uses
  %i.q = and i32 %i.p, 192
  %i.r = icmp eq i32 %i.q, 128
  br i1 %i.r, label %bb.d, label %utf8_decode.exit.thread

bb.d:                                             ; preds = %.lr.ph.i
  %i.s = shl i32 %.03253.i, 6
  %i.t = and i32 %i.p, 63
  %i.u = or disjoint i32 %i.t, %i.s               ; 2 uses
  %i.v = shl i32 %.03452.i, 1                     ; 2 uses
  %i.w = and i32 %.03452.i, 32
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %bb.d
  %i.x = trunc nuw nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.034.lcssa.i = phi i32 [ %i.j, %.preheader.i ], [ %i.v, %._crit_edge.loopexit.i ]
  %.032.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.u, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.x, %._crit_edge.loopexit.i ] ; 2 uses
  %i.y = and i32 %.034.lcssa.i, 63
  %i.z = mul nuw nsw i32 %.0.lcssa.i, 5
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = or i32 %i.aa, %.032.lcssa.i             ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %utf8_decode.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ad = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @utf8_decode.limits, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !15
  %i.ag = icmp ult i32 %i.ab, %i.af
  br i1 %i.ag, label %utf8_decode.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 %i.ad
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  %.140.i = phi ptr [ %i.ah, %bb.f ], [ %2, %bb.b ]
  %.3.i = phi i32 [ %i.ab, %bb.f ], [ %i.j, %bb.b ] ; 3 uses
  %.not45.i = icmp eq i32 %1, 0
  br i1 %.not45.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = icmp samesign ugt i32 %.3.i, 1114111
  %i.aj = and i32 %.3.i, 2095104
  %or.cond.i = icmp eq i32 %i.aj, 55296
  %or.cond47.i = or i1 %i.ai, %or.cond.i
  br i1 %or.cond47.i, label %utf8_decode.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.140.i, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = icmp slt i8 %i.al, -64
  br i1 %i.am, label %utf8_decode.exit.thread, label %bb.j

utf8_decode.exit.thread:                          ; preds = %.lr.ph.i, %bb.e, %._crit_edge.i, %bb.h, %bb.c, %bb.i
  %i.an = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.11) #3
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %4 = add i64 %.1, 1
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %4) #3
  %i.ao = zext nneg i32 %.3.i to i64
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ao) #3
  br label %bb.k

bb.k:                                             ; preds = %utf8_decode.exit.thread, %bb.j, %.loopexit
  %.117 = phi i32 [ 0, %.loopexit ], [ %i.an, %utf8_decode.exit.thread ], [ 2, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.117
}

declare i64 @lua_tointegerx(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!7, !7, i64 0}
!16 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
end_hunk_0
