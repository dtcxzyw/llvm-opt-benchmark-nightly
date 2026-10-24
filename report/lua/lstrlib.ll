Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
inline.NumInlined: 79
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@gmatch_aux:bb.a

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !36
  %.not24 = icmp eq ptr %i.l, %i.m
  br i1 %.not24, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.l, ptr %i.j, align 8, !tbaa !36
  store ptr %i.l, ptr %i.a, align 8, !tbaa !34
  %i.n = tail call fastcc i32 @push_captures(ptr noundef nonnull %i.b, ptr noundef %.02031, ptr noundef nonnull %i.l)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.02031, i64 1 ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !69
  %.not = icmp ugt ptr %i.o, %i.p
  br i1 %.not, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d
  %.2 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i32 %.2
}

declare ptr @lua_touserdata(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaL_typeerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_callk(ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lua_gettable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_isstring(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @lua_typename(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @luaL_optlstring(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lua_pushstring(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 11) i32 @getdetails(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = tail call fastcc i32 @getoption(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = load i64, ptr %3, align 8, !tbaa !11     ; 2 uses
  %i.d = icmp eq i32 %i.b, 9
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !46
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call fastcc i32 @getoption(ptr noundef %0, ptr noundef %2, ptr noundef %i.a)
  %i.i = icmp eq i32 %i.h, 5
  %i.j = load i64, ptr %i.a, align 8              ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i64 [ %i.j, %bb.c ], [ %i.c, %bb.b ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !48
  %i.n = tail call i32 @luaL_argerror(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.64) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.o = phi i64 [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.p = icmp ult i64 %i.o, 2
  %i.q = icmp eq i32 %i.b, 5
  %or.cond3 = or i1 %i.q, %i.p
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %4, align 4, !tbaa !45
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !50
  %i.t = zext i32 %i.s to i64
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.t) ; 3 uses
  %i.u = tail call range(i64 0, 33) i64 @llvm.ctpop.i64(i64 %spec.select)
  %i.v = icmp samesign ugt i64 %i.u, 1
  br i1 %i.v, label %bb.h, label %bb.i, !prof !12

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %4, align 4, !tbaa !45
  %i.w = load ptr, ptr %0, align 8, !tbaa !48
  %i.x = tail call i32 @luaL_argerror(ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull @.str.65) #12 ; 0 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.y = add nsw i64 %spec.select, -1             ; 2 uses
  %i.z = and i64 %i.y, %1
  %i.aa = sub i64 %spec.select, %i.z
  %i.ab = and i64 %i.aa, %i.y
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %4, align 4, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 11) i32 @getoption(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 11 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !46
  %i.c = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  store i64 0, ptr %2, align 8, !tbaa !11
  switch i8 %i.c, label %bb.ac [
    i8 98, label %bb.b
    i8 66, label %bb.c
    i8 104, label %bb.d
    i8 72, label %bb.e
    i8 108, label %bb.f
    i8 76, label %bb.g
    i8 106, label %bb.h
    i8 74, label %bb.i
    i8 84, label %bb.j
    i8 102, label %bb.k
    i8 110, label %bb.l
    i8 100, label %bb.m
    i8 105, label %bb.n
    i8 73, label %bb.p
    i8 115, label %bb.r
    i8 99, label %bb.t
    i8 122, label %bb.ae
    i8 120, label %bb.v
    i8 88, label %bb.w
    i8 32, label %bb.ad
    i8 60, label %bb.x
    i8 62, label %bb.y
    i8 61, label %bb.z
    i8 33, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  store i64 1, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  store i64 2, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.e:                                             ; preds = %bb.a
  store i64 2, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.f:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.g:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.h:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.i:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.j:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.k:                                             ; preds = %bb.a
  store i64 4, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.l:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.m:                                             ; preds = %bb.a
  store i64 8, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.n:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !13
  %3 = add i8 %i.d, -58
  %i.e = icmp ult i8 %3, -10
  br i1 %i.e, label %getnumlimit.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %i.f = phi ptr [ %i.h, %.preheader.i.i ], [ %i.b, %bb.n ] ; 2 uses
  %.0.i.i = phi i64 [ %i.m, %.preheader.i.i ], [ 0, %bb.n ]
  %i.g = mul nuw nsw i64 %.0.i.i, 10
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !46
  %i.i = load i8, ptr %i.f, align 1, !tbaa !13
  %i.j = sext i8 %i.i to i64
  %i.k = add nsw i64 %i.j, 4294967248
  %i.l = and i64 %i.k, 4294967295
  %i.m = add nuw i64 %i.l, %i.g                   ; 5 uses
  %i.n = load i8, ptr %i.h, align 1, !tbaa !13
  %4 = add i8 %i.n, -48
  %i.o = icmp ult i8 %4, 10
  %i.p = icmp ult i64 %i.m, 922337203685477580
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br i1 %i.q, label %.preheader.i.i, label %getnum.exit.i

getnum.exit.i:                                    ; preds = %.preheader.i.i
  %i.r = add i64 %i.m, -17
  %i.s = icmp ult i64 %i.r, -16
  br i1 %i.s, label %bb.o, label %getnumlimit.exit, !prof !70

bb.o:                                             ; preds = %getnum.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !48
  %i.u = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.t, ptr noundef nonnull @.str.68, i64 noundef %i.m, i32 noundef 16) #12
  %i.v = zext i32 %i.u to i64
  br label %getnumlimit.exit

getnumlimit.exit:                                 ; preds = %getnum.exit.i, %bb.n, %bb.o
  %.0.i = phi i64 [ %i.v, %bb.o ], [ %i.m, %getnum.exit.i ], [ 4, %bb.n ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.p:                                             ; preds = %bb.a
  %i.w = load i8, ptr %i.b, align 1, !tbaa !13
  %5 = add i8 %i.w, -58
  %i.x = icmp ult i8 %5, -10
  br i1 %i.x, label %getnumlimit.exit42, label %.preheader.i.i37

.preheader.i.i37:                                 ; preds = %bb.p, %.preheader.i.i37
  %i.y = phi ptr [ %i.aa, %.preheader.i.i37 ], [ %i.b, %bb.p ] ; 2 uses
  %.0.i.i38 = phi i64 [ %i.af, %.preheader.i.i37 ], [ 0, %bb.p ]
  %i.z = mul nuw nsw i64 %.0.i.i38, 10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 3 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !46
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !13
  %i.ac = sext i8 %i.ab to i64
  %i.ad = add nsw i64 %i.ac, 4294967248
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = add nuw i64 %i.ae, %i.z                 ; 5 uses
  %i.ag = load i8, ptr %i.aa, align 1, !tbaa !13
  %6 = add i8 %i.ag, -48
  %i.ah = icmp ult i8 %6, 10
  %i.ai = icmp ult i64 %i.af, 922337203685477580
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %.preheader.i.i37, label %getnum.exit.i39

getnum.exit.i39:                                  ; preds = %.preheader.i.i37
  %i.ak = add i64 %i.af, -17
  %i.al = icmp ult i64 %i.ak, -16
  br i1 %i.al, label %bb.q, label %getnumlimit.exit42, !prof !70

bb.q:                                             ; preds = %getnum.exit.i39
  %i.am = load ptr, ptr %0, align 8, !tbaa !48
  %i.an = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.am, ptr noundef nonnull @.str.68, i64 noundef %i.af, i32 noundef 16) #12
  %i.ao = zext i32 %i.an to i64
  br label %getnumlimit.exit42

getnumlimit.exit42:                               ; preds = %getnum.exit.i39, %bb.p, %bb.q
  %.0.i41 = phi i64 [ %i.ao, %bb.q ], [ %i.af, %getnum.exit.i39 ], [ 4, %bb.p ]
  store i64 %.0.i41, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  %i.ap = load i8, ptr %i.b, align 1, !tbaa !13
  %7 = add i8 %i.ap, -58
  %i.aq = icmp ult i8 %7, -10
  br i1 %i.aq, label %getnumlimit.exit48, label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %bb.r, %.preheader.i.i43
  %i.ar = phi ptr [ %i.at, %.preheader.i.i43 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i44 = phi i64 [ %i.ay, %.preheader.i.i43 ], [ 0, %bb.r ]
  %i.as = mul nuw nsw i64 %.0.i.i44, 10
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 1 ; 3 uses
  store ptr %i.at, ptr %1, align 8, !tbaa !46
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.av = sext i8 %i.au to i64
  %i.aw = add nsw i64 %i.av, 4294967248
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = add nuw i64 %i.ax, %i.as                ; 5 uses
  %i.az = load i8, ptr %i.at, align 1, !tbaa !13
  %8 = add i8 %i.az, -48
  %i.ba = icmp ult i8 %8, 10
  %i.bb = icmp ult i64 %i.ay, 922337203685477580
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %.preheader.i.i43, label %getnum.exit.i45

getnum.exit.i45:                                  ; preds = %.preheader.i.i43
  %i.bd = add i64 %i.ay, -17
  %i.be = icmp ult i64 %i.bd, -16
  br i1 %i.be, label %bb.s, label %getnumlimit.exit48, !prof !70

bb.s:                                             ; preds = %getnum.exit.i45
  %i.bf = load ptr, ptr %0, align 8, !tbaa !48
  %i.bg = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bf, ptr noundef nonnull @.str.68, i64 noundef %i.ay, i32 noundef 16) #12
  %i.bh = zext i32 %i.bg to i64
  br label %getnumlimit.exit48

getnumlimit.exit48:                               ; preds = %getnum.exit.i45, %bb.r, %bb.s
  %.0.i47 = phi i64 [ %i.bh, %bb.s ], [ %i.ay, %getnum.exit.i45 ], [ 8, %bb.r ]
  store i64 %.0.i47, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bi = load i8, ptr %i.b, align 1, !tbaa !13
  %9 = add i8 %i.bi, -58
  %i.bj = icmp ult i8 %9, -10
  br i1 %i.bj, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %i.bk = phi ptr [ %i.bm, %.preheader.i ], [ %i.b, %bb.t ] ; 2 uses
  %.0.i49 = phi i64 [ %i.br, %.preheader.i ], [ 0, %bb.t ]
  %i.bl = mul nuw nsw i64 %.0.i49, 10
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1 ; 3 uses
  store ptr %i.bm, ptr %1, align 8, !tbaa !46
  %i.bn = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bo = sext i8 %i.bn to i64
  %i.bp = add nsw i64 %i.bo, 4294967248
  %i.bq = and i64 %i.bp, 4294967295
  %i.br = add nuw i64 %i.bq, %i.bl                ; 3 uses
  %i.bs = load i8, ptr %i.bm, align 1, !tbaa !13
  %10 = add i8 %i.bs, -48
  %i.bt = icmp ult i8 %10, 10
  %i.bu = icmp ult i64 %i.br, 922337203685477580
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.preheader.i, label %getnum.exit

getnum.exit:                                      ; preds = %.preheader.i
  store i64 %i.br, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %2, align 8, !tbaa !11
  %i.bw = load ptr, ptr %0, align 8, !tbaa !48
  %i.bx = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bw, ptr noundef nonnull @.str.66) #12 ; 0 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  store i64 1, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.by, align 8, !tbaa !49
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bz, align 8, !tbaa !49
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ca, align 8, !tbaa !49
  br label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.cb = load i8, ptr %i.b, align 1, !tbaa !13
  %11 = add i8 %i.cb, -58
  %i.cc = icmp ult i8 %11, -10
  br i1 %i.cc, label %getnum.exit.i52.thread, label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %bb.aa, %.preheader.i.i50
  %i.cd = phi ptr [ %i.cf, %.preheader.i.i50 ], [ %i.b, %bb.aa ] ; 2 uses
  %.0.i.i51 = phi i64 [ %i.ck, %.preheader.i.i50 ], [ 0, %bb.aa ]
  %i.ce = mul nuw nsw i64 %.0.i.i51, 10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 3 uses
  store ptr %i.cf, ptr %1, align 8, !tbaa !46
  %i.cg = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.ch = sext i8 %i.cg to i64
  %i.ci = add nsw i64 %i.ch, 4294967248
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = add nuw i64 %i.cj, %i.ce                ; 5 uses
  %i.cl = load i8, ptr %i.cf, align 1, !tbaa !13
  %12 = add i8 %i.cl, -48
  %i.cm = icmp ult i8 %12, 10
  %i.cn = icmp ult i64 %i.ck, 922337203685477580
  %i.co = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %i.co, label %.preheader.i.i50, label %getnum.exit.i52

getnum.exit.i52:                                  ; preds = %.preheader.i.i50
  %i.cp = add i64 %i.ck, -17
  %i.cq = icmp ult i64 %i.cp, -16
  br i1 %i.cq, label %bb.ab, label %getnum.exit.i52.thread, !prof !70

bb.ab:                                            ; preds = %getnum.exit.i52
  %i.cr = load ptr, ptr %0, align 8, !tbaa !48
  %i.cs = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cr, ptr noundef nonnull @.str.68, i64 noundef %i.ck, i32 noundef 16) #12
  br label %getnumlimit.exit55

getnum.exit.i52.thread:                           ; preds = %bb.aa, %getnum.exit.i52
  %.07.i.i5364 = phi i64 [ %i.ck, %getnum.exit.i52 ], [ 16, %bb.aa ]
  %i.ct = trunc nuw nsw i64 %.07.i.i5364 to i32
  br label %getnumlimit.exit55

getnumlimit.exit55:                               ; preds = %bb.ab, %getnum.exit.i52.thread
  %.0.i54 = phi i32 [ %i.cs, %bb.ab ], [ %i.ct, %getnum.exit.i52.thread ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i54, ptr %i.cu, align 4, !tbaa !50
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.cv = sext i8 %i.c to i32
  %i.cw = load ptr, ptr %0, align 8, !tbaa !48
  %i.cx = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cw, ptr noundef nonnull @.str.67, i32 noundef %i.cv) #12 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %getnumlimit.exit55, %bb.z, %bb.y, %bb.x, %bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %getnum.exit, %bb.a, %bb.u, %bb.ad, %bb.w, %bb.v, %getnumlimit.exit48, %getnumlimit.exit42, %getnumlimit.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.ad ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %getnumlimit.exit ], [ 1, %getnumlimit.exit42 ], [ 6, %getnumlimit.exit48 ], [ 9, %bb.w ], [ 5, %getnum.exit ], [ 8, %bb.v ], [ 5, %bb.u ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @unpackint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq i32 %2, 0
  %i.b = zext nneg i32 %3 to i64                  ; 9 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 8) ; 16 uses
  br i1 %.not41, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = sub nsw i64 %i.b, %i.c
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
  %i.g = zext i8 %i.f to i64                      ; 2 uses
  %.not75 = icmp eq i32 %3, 1
  br i1 %.not75, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %indvars.iv.next52 = add nsw i64 %i.c, -1
  %i.h = shl nuw nsw i64 %i.g, 8
  %i.i = sub nsw i64 %i.b, %indvars.iv.next52
  %i.j = getelementptr inbounds i8, ptr %1, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13
  %i.l = zext i8 %i.k to i64
  %i.m = or disjoint i64 %i.h, %i.l               ; 2 uses
  %i.n = icmp ugt i32 %3, 2
  br i1 %i.n, label %.lr.ph.split.us.2, label %._crit_edge

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %indvars.iv.next52.1 = add nsw i64 %i.c, -2
  %i.o = shl nuw nsw i64 %i.m, 8
  %i.p = sub nsw i64 %i.b, %indvars.iv.next52.1
  %i.q = getelementptr inbounds i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.o, %i.s               ; 2 uses
  %.not76 = icmp eq i32 %3, 3
  br i1 %.not76, label %._crit_edge, label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %indvars.iv.next52.2 = add nsw i64 %i.c, -3
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = sub nsw i64 %i.b, %indvars.iv.next52.2
  %i.w = getelementptr inbounds i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.u, %i.y               ; 2 uses
  %i.aa = icmp ugt i32 %3, 4
  br i1 %i.aa, label %.lr.ph.split.us.4, label %._crit_edge

.lr.ph.split.us.4:                                ; preds = %.lr.ph.split.us.3
  %indvars.iv.next52.3 = add nsw i64 %i.c, -4
  %i.ab = shl i64 %i.z, 8
  %i.ac = sub nsw i64 %i.b, %indvars.iv.next52.3
  %i.ad = getelementptr inbounds i8, ptr %1, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !13
  %i.af = zext i8 %i.ae to i64
  %i.ag = or disjoint i64 %i.ab, %i.af            ; 2 uses
  %.not77 = icmp eq i32 %3, 5
  br i1 %.not77, label %._crit_edge, label %.lr.ph.split.us.5

.lr.ph.split.us.5:                                ; preds = %.lr.ph.split.us.4
  %indvars.iv.next52.4 = add nsw i64 %i.c, -5
  %i.ah = shl i64 %i.ag, 8
  %i.ai = sub nsw i64 %i.b, %indvars.iv.next52.4
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !13
  %i.al = zext i8 %i.ak to i64
  %i.am = or disjoint i64 %i.ah, %i.al            ; 2 uses
  %i.an = icmp ugt i32 %3, 6
  br i1 %i.an, label %.lr.ph.split.us.6, label %._crit_edge

.lr.ph.split.us.6:                                ; preds = %.lr.ph.split.us.5
  %indvars.iv.next52.5 = add nsw i64 %i.c, -6
  %i.ao = shl i64 %i.am, 8
  %i.ap = sub nsw i64 %i.b, %indvars.iv.next52.5
  %i.aq = getelementptr inbounds i8, ptr %1, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !13
  %i.as = zext i8 %i.ar to i64
  %i.at = or disjoint i64 %i.ao, %i.as            ; 2 uses
  %.not78 = icmp eq i32 %3, 7
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split.us.7

.lr.ph.split.us.7:                                ; preds = %.lr.ph.split.us.6
  %indvars.iv.next52.6 = add nsw i64 %i.c, -7
  %i.au = shl i64 %i.at, 8
  %i.av = sub nsw i64 %i.b, %indvars.iv.next52.6
  %i.aw = getelementptr inbounds i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.au, %i.ay
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ba = getelementptr i8, ptr %1, i64 %i.c
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %.not71 = icmp eq i32 %3, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %i.be = shl nuw nsw i64 %i.bd, 8
  %i.bf = getelementptr i8, ptr %1, i64 %i.c
  %i.bg = getelementptr i8, ptr %i.bf, i64 -2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !13
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.be, %i.bi            ; 2 uses
  %i.bk = icmp ugt i32 %3, 2
  br i1 %i.bk, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.bl = shl nuw nsw i64 %i.bj, 8
  %i.bm = getelementptr i8, ptr %1, i64 %i.c
  %i.bn = getelementptr i8, ptr %i.bm, i64 -3
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = zext i8 %i.bo to i64
  %i.bq = or disjoint i64 %i.bl, %i.bp            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.br = shl nuw nsw i64 %i.bq, 8
  %i.bs = getelementptr i8, ptr %1, i64 %i.c
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = zext i8 %i.bu to i64
  %i.bw = or disjoint i64 %i.br, %i.bv            ; 2 uses
  %i.bx = icmp ugt i32 %3, 4
  br i1 %i.bx, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.by = shl i64 %i.bw, 8
  %i.bz = getelementptr i8, ptr %1, i64 %i.c
  %i.ca = getelementptr i8, ptr %i.bz, i64 -5
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.cc = zext i8 %i.cb to i64
  %i.cd = or disjoint i64 %i.by, %i.cc            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.ce = shl i64 %i.cd, 8
  %i.cf = getelementptr i8, ptr %1, i64 %i.c
  %i.cg = getelementptr i8, ptr %i.cf, i64 -6
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = zext i8 %i.ch to i64
  %i.cj = or disjoint i64 %i.ce, %i.ci            ; 2 uses
  %i.ck = icmp ugt i32 %3, 6
  br i1 %i.ck, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.cl = shl i64 %i.cj, 8
  %i.cm = getelementptr i8, ptr %1, i64 %i.c
  %i.cn = getelementptr i8, ptr %i.cm, i64 -7
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !13
  %i.cp = zext i8 %i.co to i64
  %i.cq = or disjoint i64 %i.cl, %i.cp            ; 2 uses
end_hunk_0
