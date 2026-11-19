Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 181
begin_hunk_0_@js_regexp_Symbol_replace:bb.a
  br label %JS_FreeValue.exit465

JS_FreeValue.exit465:                             ; preds = %JS_FreeValue.exit464, %bb.dm, %bb.dn
  %i.uq = phi ptr [ %i.ui, %JS_FreeValue.exit464 ], [ %i.ui, %bb.dm ], [ %.pre784, %bb.dn ] ; 3 uses
  %i.ur = trunc i64 %.sroa.11.6 to i32
  %i.us = icmp ugt i32 %i.ur, -10
  br i1 %i.us, label %bb.do, label %JS_FreeValue.exit466

bb.do:                                            ; preds = %JS_FreeValue.exit465
  %i.ut = inttoptr i64 %.sroa.0186.6 to ptr
  %i.uu = getelementptr inbounds i8, ptr %i.ut, i64 -4 ; 2 uses
  %i.uv = load i32, ptr %i.uu, align 4, !tbaa !191 ; 2 uses
  %i.uw = add nsw i32 %i.uv, -1
  store i32 %i.uw, ptr %i.uu, align 4, !tbaa !191
  %i.ux = icmp slt i32 %i.uv, 2
  br i1 %i.ux, label %bb.dp, label %JS_FreeValue.exit466

bb.dp:                                            ; preds = %bb.do
  call fastcc void @js_free_value_rt(ptr noundef %i.uq, i64 %.sroa.0186.6, i64 %.sroa.11.6), !inline_history !291
  %.pre785 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %JS_FreeValue.exit466

JS_FreeValue.exit466:                             ; preds = %JS_FreeValue.exit465, %bb.do, %bb.dp
  %i.uy = phi ptr [ %i.uq, %JS_FreeValue.exit465 ], [ %i.uq, %bb.do ], [ %.pre785, %bb.dp ] ; 3 uses
  %i.uz = trunc i64 %.sroa.12.4 to i32
  %i.va = icmp ugt i32 %i.uz, -10
  br i1 %i.va, label %bb.dq, label %JS_FreeValue.exit467

bb.dq:                                            ; preds = %JS_FreeValue.exit466
  %i.vb = inttoptr i64 %.sroa.0173.4 to ptr
  %i.vc = getelementptr inbounds i8, ptr %i.vb, i64 -4 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 4, !tbaa !191 ; 2 uses
  %i.ve = add nsw i32 %i.vd, -1
  store i32 %i.ve, ptr %i.vc, align 4, !tbaa !191
  %i.vf = icmp slt i32 %i.vd, 2
  br i1 %i.vf, label %bb.dr, label %JS_FreeValue.exit467

bb.dr:                                            ; preds = %bb.dq
  call fastcc void @js_free_value_rt(ptr noundef %i.uy, i64 %.sroa.0173.4, i64 %.sroa.12.4), !inline_history !291
  %.pre786 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %JS_FreeValue.exit467

JS_FreeValue.exit467:                             ; preds = %JS_FreeValue.exit466, %bb.dq, %bb.dr
  %i.vg = phi ptr [ %i.uy, %JS_FreeValue.exit466 ], [ %i.uy, %bb.dq ], [ %.pre786, %bb.dr ]
  %i.vh = trunc i64 %i.ca to i32
  %i.vi = icmp ugt i32 %i.vh, -10
  br i1 %i.vi, label %bb.ds, label %JS_FreeValue.exit468

bb.ds:                                            ; preds = %JS_FreeValue.exit467
  %i.vj = inttoptr i64 %i.bz to ptr
  %i.vk = getelementptr inbounds i8, ptr %i.vj, i64 -4 ; 2 uses
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !191 ; 2 uses
  %i.vm = add nsw i32 %i.vl, -1
  store i32 %i.vm, ptr %i.vk, align 4, !tbaa !191
  %i.vn = icmp slt i32 %i.vl, 2
  br i1 %i.vn, label %bb.dt, label %JS_FreeValue.exit468

bb.dt:                                            ; preds = %bb.ds
  call fastcc void @js_free_value_rt(ptr noundef %i.vg, i64 %i.bz, i64 %i.ca), !inline_history !291
  br label %JS_FreeValue.exit468

JS_FreeValue.exit468:                             ; preds = %JS_FreeValue.exit467, %bb.ds, %bb.dt
  %.sroa.0168.sroa.0.0.insert.ext = and i64 %.sroa.0168.sroa.0.1, 4294967295
  %.sroa.0168.sroa.0.0.insert.insert = or i64 %.sroa.0168.sroa.6.1, %.sroa.0168.sroa.0.0.insert.ext
  br label %bb.du

bb.du:                                            ; preds = %JS_FreeValue.exit468, %bb.b
  %.sroa.0390.0 = phi i64 [ %.sroa.0168.sroa.0.0.insert.insert, %JS_FreeValue.exit468 ], [ 0, %bb.b ]
  %.sroa.3391.0 = phi i64 [ %.sroa.7169.1, %JS_FreeValue.exit468 ], [ 6, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0390.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.3391.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_regexp_Symbol_match(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %struct.JSValue, align 8            ; 5 uses
  %7 = alloca %struct.JSValue, align 8            ; 5 uses
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %JS_FreeValue.exit173

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.e, i64 %i.g, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 7 uses
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 7 uses
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 6
  br i1 %i.l, label %JS_FreeValue.exit170.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 117, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 3 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0        ; 4 uses
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 4 uses
  %trunc = trunc i64 %i.o to i32                  ; 2 uses
  switch i32 %trunc, label %bb.e [
    i32 6, label %JS_FreeValue.exit170.thread
    i32 -7, label %JS_ToStringFree.exit
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.n, i64 %i.o, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !232
  %i.s = icmp ugt i32 %trunc, -10
  br i1 %i.s, label %bb.f, label %JS_ToStringFree.exit

bb.f:                                             ; preds = %bb.e
  %i.t = inttoptr i64 %i.n to ptr
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !191  ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !191
  %i.x = icmp slt i32 %i.v, 2
  br i1 %i.x, label %bb.g, label %JS_ToStringFree.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef %i.r, i64 %i.n, i64 %i.o) #51, !inline_history !666
  br label %JS_ToStringFree.exit

JS_ToStringFree.exit:                             ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.fca.1.insert.merged.i = phi { i64, i64 } [ %i.p, %bb.g ], [ %i.p, %bb.e ], [ %i.p, %bb.f ], [ %i.m, %bb.d ] ; 2 uses
  %i.y = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 0 ; 7 uses
  %i.z = extractvalue { i64, i64 } %.fca.1.insert.merged.i, 1 ; 8 uses
  %i.aa = and i64 %i.z, 4294967295
  %i.ab = icmp eq i64 %i.aa, 6
  br i1 %i.ab, label %JS_FreeValue.exit170.thread, label %bb.h

bb.h:                                             ; preds = %JS_ToStringFree.exit
  %i.ac = inttoptr i64 %i.y to ptr                ; 4 uses
  %i.ad = tail call fastcc i32 @string_indexof_char(ptr noundef %i.ac, i32 noundef 103, i32 noundef 0)
  %.not = icmp eq i32 %i.ad, -1
  br i1 %.not, label %JS_FreeValue.exit166.thread, label %bb.i

JS_FreeValue.exit166.thread:                      ; preds = %bb.h
  %i.ae = tail call fastcc { i64, i64 } @JS_RegExpExec(ptr noundef %0, i64 %1, i64 %2, i64 %i.i, i64 %i.j) ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1
  %.sroa.077.sroa.11.0.extract.shift110 = and i64 %i.af, -4294967296
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre229.a = load ptr, ptr %i.ah, align 8, !tbaa !232
  br label %JS_FreeValue.exit167

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call fastcc i32 @string_indexof_char(ptr noundef %i.ac, i32 noundef 117, i32 noundef 0)
  %i.aj = icmp sgt i32 %i.ai, -1
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call fastcc i32 @string_indexof_char(ptr noundef %i.ac, i32 noundef 118, i32 noundef 0)
  %i.al = icmp sgt i32 %i.ak, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = phi i1 [ true, %bb.i ], [ %i.al, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %1, ptr %7, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %i.an, align 8
  %i.ao = tail call fastcc i32 @JS_SetPropertyInternal2(ptr noundef %0, i64 %1, i64 %2, i32 noundef 93, i64 0, i64 0, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %JS_FreeValue.exit170.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !351 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !191
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 4, !tbaa !191
  %i.av = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef %0, ptr noundef %i.ar, i32 noundef 2, ptr noundef null), !inline_history !405 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0      ; 8 uses
  %i.ax = extractvalue { i64, i64 } %i.av, 1      ; 8 uses
  %.sroa.077.sroa.11.0.extract.shift = and i64 %i.aw, -4294967296
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = icmp eq i64 %i.ay, 6
  br i1 %i.az, label %.thread178, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bb = inttoptr i64 %i.i to ptr                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %.thread
  %.0 = phi i32 [ %10, %.thread ], [ 0, %.preheader ] ; 4 uses
  %.sroa.048.0 = phi i64 [ %i.bm, %.thread ], [ 0, %.preheader ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %i.bn, %.thread ], [ 3, %.preheader ] ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.be = trunc i64 %.sroa.11.0 to i32
  %i.bf = icmp ugt i32 %i.be, -10
  br i1 %i.bf, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  %i.bg = inttoptr i64 %.sroa.048.0 to ptr
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !191 ; 2 uses
  %i.bj = add nsw i32 %i.bi, -1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !191
  %i.bk = icmp slt i32 %i.bi, 2
  br i1 %i.bk, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bd, i64 %.sroa.048.0, i64 %.sroa.11.0), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  %i.bl = tail call fastcc { i64, i64 } @JS_RegExpExec(ptr noundef nonnull %0, i64 %1, i64 %2, i64 %i.i, i64 %i.j) ; 2 uses
  %i.bm = extractvalue { i64, i64 } %i.bl, 0      ; 10 uses
  %i.bn = extractvalue { i64, i64 } %i.bl, 1      ; 11 uses
  %trunc210 = trunc i64 %i.bn to i32
  switch i32 %trunc210, label %bb.p [
    i32 6, label %.thread178
    i32 2, label %bb.ah
  ]

bb.p:                                             ; preds = %JS_FreeValue.exit
  %i.bo = and i64 %i.bn, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.bp = icmp eq i64 %i.bo, 4294967295
  br i1 %i.bp, label %bb.q, label %.thread.i, !prof !325

bb.q:                                             ; preds = %bb.p
  %i.bq = inttoptr i64 %i.bm to ptr
  %i.br = call fastcc zeroext i1 @js_get_fast_array_element(ptr noundef nonnull %0, ptr noundef %i.bq, i32 noundef 0, ptr noundef nonnull %6) #51, !inline_history !825
  %.sroa.013.0.copyload.i = load i64, ptr %6, align 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.br, label %JS_GetPropertyInt64.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.q
  %i.bs = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.bm, i64 %i.bn, i32 noundef -2147483648, i64 %i.bm, i64 %i.bn, i1 noundef zeroext false) #51, !inline_history !826 ; 2 uses
  %i.bt = extractvalue { i64, i64 } %i.bs, 0
  %i.bu = extractvalue { i64, i64 } %i.bs, 1
  br label %JS_GetPropertyInt64.exit

JS_GetPropertyInt64.exit:                         ; preds = %bb.q, %.thread.i
  %.sroa.5.1.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.q ], [ %i.bu, %.thread.i ] ; 5 uses
  %.sroa.013.sroa.0.1.i = phi i64 [ %.sroa.013.0.copyload.i, %bb.q ], [ %i.bt, %.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.013.sroa.0.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.5.1.i, 1
  %i.bv = and i64 %.sroa.5.1.i, 4294967295
  %i.bw = icmp eq i64 %i.bv, 4294967289
  br i1 %i.bw, label %JS_ToStringFree.exit162, label %bb.r

bb.r:                                             ; preds = %JS_GetPropertyInt64.exit
  %i.bx = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %.sroa.013.sroa.0.1.i, i64 %.sroa.5.1.i, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.by = load ptr, ptr %i.ba, align 8, !tbaa !232
  %i.bz = trunc i64 %.sroa.5.1.i to i32
  %i.ca = icmp ugt i32 %i.bz, -10
  br i1 %i.ca, label %bb.s, label %JS_ToStringFree.exit162

bb.s:                                             ; preds = %bb.r
  %i.cb = inttoptr i64 %.sroa.013.sroa.0.1.i to ptr
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 -4 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !191 ; 2 uses
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !191
  %i.cf = icmp slt i32 %i.cd, 2
  br i1 %i.cf, label %bb.t, label %JS_ToStringFree.exit162

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @js_free_value_rt(ptr noundef %i.by, i64 %.sroa.013.sroa.0.1.i, i64 %.sroa.5.1.i) #51, !inline_history !666
  br label %JS_ToStringFree.exit162

JS_ToStringFree.exit162:                          ; preds = %JS_GetPropertyInt64.exit, %bb.r, %bb.s, %bb.t
  %.fca.1.insert.merged.i161 = phi { i64, i64 } [ %i.bx, %bb.t ], [ %i.bx, %bb.r ], [ %i.bx, %bb.s ], [ %.fca.1.insert.i, %JS_GetPropertyInt64.exit ] ; 2 uses
  %i.cg = extractvalue { i64, i64 } %.fca.1.insert.merged.i161, 0 ; 3 uses
  %i.ch = extractvalue { i64, i64 } %.fca.1.insert.merged.i161, 1 ; 3 uses
  %trunc211 = trunc i64 %i.ch to i32
  switch i32 %trunc211, label %JS_IsEmptyString.exit.thread [
    i32 6, label %.thread178
    i32 -7, label %JS_IsEmptyString.exit
  ]

JS_IsEmptyString.exit:                            ; preds = %JS_ToStringFree.exit162
  %i.ci = inttoptr i64 %i.cg to ptr
  %i.cj = load i64, ptr %i.ci, align 8
  %8 = zext nneg i32 %.0 to i64
  %i.ck = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %i.aw, i64 %i.ax, i64 noundef %8, i64 %i.cg, i64 %i.ch)
  %i.cl = icmp slt i32 %i.ck, 0
  br i1 %i.cl, label %.thread178, label %bb.u

JS_IsEmptyString.exit.thread:                     ; preds = %JS_ToStringFree.exit162
  %9 = zext nneg i32 %.0 to i64
  %i.cm = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %i.aw, i64 %i.ax, i64 noundef %9, i64 %i.cg, i64 %i.ch)
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread178, label %.thread

bb.u:                                             ; preds = %JS_IsEmptyString.exit
  %i.co = and i64 %i.cj, 2147483647
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cq = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 93, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.cr = extractvalue { i64, i64 } %i.cq, 0      ; 4 uses
  %i.cs = extractvalue { i64, i64 } %i.cq, 1      ; 3 uses
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = icmp ugt i32 %i.ct, -10                 ; 2 uses
  br i1 %i.cu, label %bb.w, label %js_dup.exit.i.i.preheader

bb.w:                                             ; preds = %bb.v
  %i.cv = inttoptr i64 %i.cr to ptr
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -4 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !191
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.w, %bb.v
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.aa
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.dh, %bb.aa ], [ %i.cr, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.di, %bb.aa ], [ %i.cs, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.cz = trunc i64 %.sroa.6.0.i.i.i to i32
  switch i32 %i.cz, label %bb.aa [
    i32 0, label %bb.x
    i32 1, label %bb.x
    i32 2, label %bb.x
    i32 3, label %bb.x
    i32 6, label %JS_ToInt64Clamp.exit.i
    i32 8, label %bb.y
  ]

bb.x:                                             ; preds = %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i, %js_dup.exit.i.i
  %i.da = shl i64 %.sroa.012.0.in.i.i.i, 32
  %i.db = ashr exact i64 %i.da, 32
  br label %select.unfold.i.i

bb.y:                                             ; preds = %js_dup.exit.i.i
  %.sroa.012.0.le.i.i.i = bitcast i64 %.sroa.012.0.in.i.i.i to double ; 4 uses
  %i.dc = fcmp uno double %.sroa.012.0.le.i.i.i, 0.000000e+00
  %i.dd = fcmp olt double %.sroa.012.0.le.i.i.i, f0xC3E0000000000000
  %or.cond = or i1 %i.dc, %i.dd
  br i1 %or.cond, label %JS_ToInt64Clamp.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = fcmp ult double %.sroa.012.0.le.i.i.i, f0x43E0000000000000
  %i.df = fptosi double %.sroa.012.0.le.i.i.i to i64
  br i1 %i.de, label %select.unfold.i.i, label %JS_ToInt64Clamp.exit.i

bb.aa:                                            ; preds = %js_dup.exit.i.i
  %i.dg = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i.i, i64 %.sroa.6.0.i.i.i, i32 noundef 0), !inline_history !47 ; 2 uses
  %i.dh = extractvalue { i64, i64 } %i.dg, 0
  %i.di = extractvalue { i64, i64 } %i.dg, 1      ; 2 uses
  %i.dj = and i64 %i.di, 4294967295
  %i.dk = icmp eq i64 %i.dj, 6
  br i1 %i.dk, label %JS_ToInt64Clamp.exit.i, label %js_dup.exit.i.i

select.unfold.i.i:                                ; preds = %bb.z, %bb.x
  %.sink.i.ph.i.i = phi i64 [ %i.db, %bb.x ], [ %i.df, %bb.z ] ; 2 uses
  %i.dl = icmp slt i64 %.sink.i.ph.i.i, 0
  br i1 %i.dl, label %JS_ToInt64Clamp.exit.i, label %.thread.i163

.thread.i163:                                     ; preds = %select.unfold.i.i
  %spec.select = tail call i64 @llvm.umin.i64(i64 %.sink.i.ph.i.i, i64 9007199254740991)
  br label %JS_ToInt64Clamp.exit.i

JS_ToInt64Clamp.exit.i:                           ; preds = %js_dup.exit.i.i, %bb.aa, %.thread.i163, %bb.z, %bb.y, %select.unfold.i.i
  %.1 = phi i64 [ 0, %bb.y ], [ %spec.select, %.thread.i163 ], [ 9007199254740991, %bb.z ], [ 0, %select.unfold.i.i ], [ 0, %bb.aa ], [ 0, %js_dup.exit.i.i ] ; 3 uses
  %i.dm = phi i1 [ false, %bb.y ], [ false, %.thread.i163 ], [ false, %bb.z ], [ false, %select.unfold.i.i ], [ true, %bb.aa ], [ true, %js_dup.exit.i.i ]
  %i.dn = load ptr, ptr %i.ba, align 8, !tbaa !232
  br i1 %i.cu, label %bb.ab, label %JS_ToLengthFree.exit

bb.ab:                                            ; preds = %JS_ToInt64Clamp.exit.i
  %i.do = inttoptr i64 %i.cr to ptr
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -4 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !191 ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !191
  %i.ds = icmp slt i32 %i.dq, 2
  br i1 %i.ds, label %bb.ac, label %JS_ToLengthFree.exit

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dn, i64 %i.cr, i64 %i.cs), !inline_history !476
  br label %JS_ToLengthFree.exit

JS_ToLengthFree.exit:                             ; preds = %JS_ToInt64Clamp.exit.i, %bb.ab, %bb.ac
  br i1 %i.dm, label %.thread178, label %bb.ad

bb.ad:                                            ; preds = %JS_ToLengthFree.exit
  br i1 %i.am, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dt = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.du = and i64 %i.dt, 2147483647
  %.not.i = icmp samesign uge i64 %.1, %i.du
  %i.dv = and i64 %i.dt, 2147483648
  %.not8.i = icmp eq i64 %i.dv, 0
  %or.cond.i = or i1 %.not.i, %.not8.i
  br i1 %or.cond.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dw = add nuw nsw i64 %.1, 1
  br label %string_advance_index.exit

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.dx = trunc nuw nsw i64 %.1 to i32
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !191
  %i.dy = call fastcc i32 @string_getc(ptr noundef nonnull readonly %i.bb, ptr noundef %i.a) ; 0 uses
  %i.dz = load i32, ptr %i.a, align 4, !tbaa !191
  %i.ea = sext i32 %i.dz to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %string_advance_index.exit

string_advance_index.exit:                        ; preds = %bb.af, %bb.ag
  %.0.i = phi i64 [ %i.dw, %bb.af ], [ %i.ea, %bb.ag ] ; 3 uses
  %or.cond.i164 = icmp slt i64 %.0.i, 2147483648  ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %.0.i, 4294967295
  %i.eb = sitofp i64 %.0.i to double
  %i.ec = bitcast double %i.eb to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %or.cond.i164, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.ec
  %.sroa.3.0.i = select i1 %or.cond.i164, i64 0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %i.bc, align 8
  %i.ed = tail call fastcc i32 @JS_SetPropertyInternal2(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 93, i64 %.sroa.0.0.insert.ext.i.pn.i, i64 %.sroa.3.0.i, ptr noundef nonnull byval(%struct.JSValue) align 8 %5, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %.thread178, label %.thread

.thread:                                          ; preds = %JS_IsEmptyString.exit.thread, %string_advance_index.exit, %bb.u
  %10 = add nuw nsw i32 %.0, 1
  br label %bb.m

bb.ah:                                            ; preds = %JS_FreeValue.exit
  %i.ef = icmp eq i32 %.0, 0
  %.pre227.a = load ptr, ptr %i.ba, align 8, !tbaa !232 ; 4 uses
  br i1 %i.ef, label %bb.ai, label %JS_FreeValue.exit167

bb.ai:                                            ; preds = %bb.ah
  %i.eg = trunc i64 %i.ax to i32
  %i.eh = icmp ugt i32 %i.eg, -10
  br i1 %i.eh, label %bb.aj, label %JS_FreeValue.exit167

bb.aj:                                            ; preds = %bb.ai
  %i.ei = inttoptr i64 %i.aw to ptr
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -4 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !191 ; 2 uses
  %i.el = add nsw i32 %i.ek, -1
  store i32 %i.el, ptr %i.ej, align 4, !tbaa !191
  %i.em = icmp slt i32 %i.ek, 2
  br i1 %i.em, label %bb.ak, label %JS_FreeValue.exit167

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @js_free_value_rt(ptr noundef %.pre227.a, i64 %i.aw, i64 %i.ax), !inline_history !291
  %.pre = load ptr, ptr %i.ba, align 8, !tbaa !232
  br label %JS_FreeValue.exit167

JS_FreeValue.exit167:                             ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %JS_FreeValue.exit166.thread
  %i.en = phi ptr [ %.pre229.a, %JS_FreeValue.exit166.thread ], [ %.pre, %bb.ak ], [ %.pre227.a, %bb.ah ], [ %.pre227.a, %bb.ai ], [ %.pre227.a, %bb.aj ] ; 3 uses
  %i.eo = phi ptr [ %i.ah, %JS_FreeValue.exit166.thread ], [ %i.ba, %bb.ak ], [ %i.ba, %bb.ah ], [ %i.ba, %bb.ai ], [ %i.ba, %bb.aj ]
  %.sroa.077.sroa.11.0187 = phi i64 [ %.sroa.077.sroa.11.0.extract.shift110, %JS_FreeValue.exit166.thread ], [ 0, %bb.ak ], [ %.sroa.077.sroa.11.0.extract.shift, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ]
  %.sroa.077.sroa.0.0186 = phi i64 [ %i.af, %JS_FreeValue.exit166.thread ], [ 0, %bb.ak ], [ %i.aw, %bb.ah ], [ 0, %bb.ai ], [ 0, %bb.aj ]
  %.sroa.13.0185 = phi i64 [ %i.ag, %JS_FreeValue.exit166.thread ], [ 2, %bb.ak ], [ %i.ax, %bb.ah ], [ 2, %bb.ai ], [ 2, %bb.aj ]
  %i.ep = trunc i64 %i.z to i32
  %i.eq = icmp ugt i32 %i.ep, -10
  br i1 %i.eq, label %bb.al, label %JS_FreeValue.exit168

bb.al:                                            ; preds = %JS_FreeValue.exit167
  %i.er = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !191 ; 2 uses
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !191
  %i.eu = icmp slt i32 %i.es, 2
  br i1 %i.eu, label %bb.am, label %JS_FreeValue.exit168

bb.am:                                            ; preds = %bb.al
  tail call fastcc void @js_free_value_rt(ptr noundef %i.en, i64 %i.y, i64 %i.z), !inline_history !291
  %.pre230.a = load ptr, ptr %i.eo, align 8, !tbaa !232
  br label %JS_FreeValue.exit168

JS_FreeValue.exit168:                             ; preds = %JS_FreeValue.exit167, %bb.al, %bb.am
  %i.ev = phi ptr [ %i.en, %JS_FreeValue.exit167 ], [ %i.en, %bb.al ], [ %.pre230.a, %bb.am ]
  %i.ew = trunc i64 %i.j to i32
  %i.ex = icmp ugt i32 %i.ew, -10
  br i1 %i.ex, label %bb.an, label %JS_FreeValue.exit169

bb.an:                                            ; preds = %JS_FreeValue.exit168
  %i.ey = inttoptr i64 %i.i to ptr
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !191 ; 2 uses
  %i.fb = add nsw i32 %i.fa, -1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !191
  %i.fc = icmp slt i32 %i.fa, 2
  br i1 %i.fc, label %bb.ao, label %JS_FreeValue.exit169

bb.ao:                                            ; preds = %bb.an
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ev, i64 %i.i, i64 %i.j), !inline_history !291
  br label %JS_FreeValue.exit169

JS_FreeValue.exit169:                             ; preds = %JS_FreeValue.exit168, %bb.an, %bb.ao
  %i.fd = and i64 %.sroa.077.sroa.0.0186, 4294967295
  %i.fe = or disjoint i64 %i.fd, %.sroa.077.sroa.11.0187
  br label %JS_FreeValue.exit173

JS_FreeValue.exit170.thread:                      ; preds = %bb.d, %bb.k, %JS_ToStringFree.exit, %bb.c
  %.sroa.059.0.ph = phi i64 [ %i.y, %bb.k ], [ %i.y, %JS_ToStringFree.exit ], [ %i.n, %bb.d ], [ 0, %bb.c ]
  %.sroa.12.0.ph = phi i64 [ %i.z, %bb.k ], [ %i.z, %JS_ToStringFree.exit ], [ %i.o, %bb.d ], [ 3, %bb.c ]
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %JS_FreeValue.exit171

.thread178:                                       ; preds = %JS_ToStringFree.exit162, %JS_FreeValue.exit, %string_advance_index.exit, %JS_ToLengthFree.exit, %JS_IsEmptyString.exit.thread, %JS_IsEmptyString.exit, %bb.l
  %.sroa.048.2 = phi i64 [ 0, %bb.l ], [ %i.bm, %JS_IsEmptyString.exit ], [ %i.bm, %JS_IsEmptyString.exit.thread ], [ %i.bm, %JS_ToLengthFree.exit ], [ %i.bm, %string_advance_index.exit ], [ %i.bm, %JS_FreeValue.exit ], [ %i.bm, %JS_ToStringFree.exit162 ] ; 2 uses
  %.sroa.11.2 = phi i64 [ 3, %bb.l ], [ %i.bn, %JS_IsEmptyString.exit ], [ %i.bn, %JS_IsEmptyString.exit.thread ], [ %i.bn, %JS_ToLengthFree.exit ], [ %i.bn, %string_advance_index.exit ], [ %i.bn, %JS_FreeValue.exit ], [ %i.bn, %JS_ToStringFree.exit162 ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !232 ; 3 uses
  %i.fi = trunc i64 %i.ax to i32
  %i.fj = icmp ugt i32 %i.fi, -10
  br i1 %i.fj, label %bb.ap, label %JS_FreeValue.exit170

bb.ap:                                            ; preds = %.thread178
  %i.fk = inttoptr i64 %i.aw to ptr
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -4 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !191 ; 2 uses
  %i.fn = add nsw i32 %i.fm, -1
  store i32 %i.fn, ptr %i.fl, align 4, !tbaa !191
  %i.fo = icmp slt i32 %i.fm, 2
  br i1 %i.fo, label %bb.aq, label %JS_FreeValue.exit170

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fh, i64 %i.aw, i64 %i.ax), !inline_history !291
  %.pre228 = load ptr, ptr %i.fg, align 8, !tbaa !232
  br label %JS_FreeValue.exit170

JS_FreeValue.exit170:                             ; preds = %.thread178, %bb.ap, %bb.aq
  %i.fp = phi ptr [ %i.fh, %.thread178 ], [ %i.fh, %bb.ap ], [ %.pre228, %bb.aq ]
  %i.fq = trunc i64 %.sroa.11.2 to i32
  %i.fr = icmp ugt i32 %i.fq, -10
  br i1 %i.fr, label %bb.ar, label %JS_FreeValue.exit171

bb.ar:                                            ; preds = %JS_FreeValue.exit170
  %i.fs = inttoptr i64 %.sroa.048.2 to ptr
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -4 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !191 ; 2 uses
  %i.fv = add nsw i32 %i.fu, -1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !191
  %i.fw = icmp slt i32 %i.fu, 2
  br i1 %i.fw, label %bb.as, label %JS_FreeValue.exit171

bb.as:                                            ; preds = %bb.ar
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fp, i64 %.sroa.048.2, i64 %.sroa.11.2), !inline_history !291
  br label %JS_FreeValue.exit171

JS_FreeValue.exit171:                             ; preds = %JS_FreeValue.exit170.thread, %JS_FreeValue.exit170, %bb.ar, %bb.as
  %.sroa.059.0202209 = phi i64 [ %.sroa.059.0.ph, %JS_FreeValue.exit170.thread ], [ %i.y, %JS_FreeValue.exit170 ], [ %i.y, %bb.ar ], [ %i.y, %bb.as ] ; 2 uses
  %.sroa.12.0203208 = phi i64 [ %.sroa.12.0.ph, %JS_FreeValue.exit170.thread ], [ %i.z, %JS_FreeValue.exit170 ], [ %i.z, %bb.ar ], [ %i.z, %bb.as ] ; 2 uses
  %i.fx = phi ptr [ %i.ff, %JS_FreeValue.exit170.thread ], [ %i.fg, %JS_FreeValue.exit170 ], [ %i.fg, %bb.ar ], [ %i.fg, %bb.as ] ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !232 ; 3 uses
  %i.fz = trunc i64 %.sroa.12.0203208 to i32
  %i.ga = icmp ugt i32 %i.fz, -10
  br i1 %i.ga, label %bb.at, label %JS_FreeValue.exit172

bb.at:                                            ; preds = %JS_FreeValue.exit171
  %i.gb = inttoptr i64 %.sroa.059.0202209 to ptr
  %i.gc = getelementptr inbounds i8, ptr %i.gb, i64 -4 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !191 ; 2 uses
  %i.ge = add nsw i32 %i.gd, -1
  store i32 %i.ge, ptr %i.gc, align 4, !tbaa !191
  %i.gf = icmp slt i32 %i.gd, 2
  br i1 %i.gf, label %bb.au, label %JS_FreeValue.exit172

bb.au:                                            ; preds = %bb.at
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fy, i64 %.sroa.059.0202209, i64 %.sroa.12.0203208), !inline_history !291
  %.pre231 = load ptr, ptr %i.fx, align 8, !tbaa !232
  br label %JS_FreeValue.exit172

JS_FreeValue.exit172:                             ; preds = %JS_FreeValue.exit171, %bb.at, %bb.au
  %i.gg = phi ptr [ %i.fy, %JS_FreeValue.exit171 ], [ %i.fy, %bb.at ], [ %.pre231, %bb.au ]
  %i.gh = trunc i64 %i.j to i32
  %i.gi = icmp ugt i32 %i.gh, -10
  br i1 %i.gi, label %bb.av, label %JS_FreeValue.exit173

bb.av:                                            ; preds = %JS_FreeValue.exit172
  %i.gj = inttoptr i64 %i.i to ptr
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 -4 ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !191 ; 2 uses
  %i.gm = add nsw i32 %i.gl, -1
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !191
  %i.gn = icmp slt i32 %i.gl, 2
  br i1 %i.gn, label %bb.aw, label %JS_FreeValue.exit173

bb.aw:                                            ; preds = %bb.av
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gg, i64 %i.i, i64 %i.j), !inline_history !291
  br label %JS_FreeValue.exit173

JS_FreeValue.exit173:                             ; preds = %bb.aw, %bb.av, %JS_FreeValue.exit172, %JS_FreeValue.exit169, %bb.b
  %.sroa.4157.0 = phi i64 [ 0, %bb.b ], [ %i.fe, %JS_FreeValue.exit169 ], [ 0, %JS_FreeValue.exit172 ], [ 0, %bb.av ], [ 0, %bb.aw ]
  %.sroa.5.0 = phi i64 [ 6, %bb.b ], [ %.sroa.13.0185, %JS_FreeValue.exit169 ], [ 6, %JS_FreeValue.exit172 ], [ 6, %bb.av ], [ 6, %bb.aw ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.4157.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_regexp_Symbol_matchAll(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.JSValue, align 8            ; 5 uses
  %6 = alloca [2 x %struct.JSValue], align 16     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.118), !inline_history !42 ; 0 uses
  br label %JS_FreeValue.exit145

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.d, i64 %i.f, i32 noundef 0), !inline_history !400 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 3 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 4 uses
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load i64, ptr %i.n, align 8
  %i.p = tail call fastcc { i64, i64 } @JS_SpeciesConstructor(ptr noundef %0, i64 %1, i64 %2, i64 %i.m, i64 %i.o) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0        ; 11 uses
  %i.r = extractvalue { i64, i64 } %i.p, 1        ; 12 uses
end_hunk_0
begin_hunk_1_@js_promise_all:bb.a
  %i.k = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 138, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0        ; 4 uses
  %i.m = extractvalue { i64, i64 } %i.k, 1        ; 3 uses
  %trunc = trunc i64 %i.m to i32                  ; 2 uses
  switch i32 %trunc, label %check_function.exit [
    i32 6, label %.loopexit
    i32 -1, label %bb.e
  ], !prof !846

bb.e:                                             ; preds = %bb.d
  %i.n = inttoptr i64 %i.l to ptr                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 18
  %i.p = load i16, ptr %i.o, align 2, !tbaa !276  ; 2 uses
  switch i16 %i.p, label %JS_IsFunction.exit.i [
    i16 13, label %bb.f
    i16 51, label %.split.i
  ]

.split.i:                                         ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !218
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !458
  %.not.i = icmp eq i8 %i.t, 0
  br i1 %.not.i, label %check_function.exit, label %bb.f, !prof !404

JS_IsFunction.exit.i:                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !232
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1128
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !251
  %i.y = zext i16 %i.p to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !255
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %check_function.exit, label %bb.f, !prof !404

check_function.exit:                              ; preds = %bb.d, %.split.i, %JS_IsFunction.exit.i
  %i.ac = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.165), !inline_history !117 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %JS_IsFunction.exit.i, %.split.i, %bb.e
  %i.ad = load i64, ptr %4, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = tail call fastcc { i64, i64 } @JS_GetIterator(ptr noundef %0, i64 %i.ad, i64 %i.af, i1 noundef zeroext false) ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0      ; 18 uses
  %i.ai = extractvalue { i64, i64 } %i.ag, 1      ; 19 uses
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = icmp eq i64 %i.aj, 6
  br i1 %i.ak, label %.loopexit, label %bb.l

.loopexit:                                        ; preds = %bb.p, %.preheader, %bb.d, %bb.ay, %check_function.exit, %bb.bc, %bb.av, %bb.o, %bb.n, %bb.m, %bb.l, %bb.f, %JS_FreeValue.exit223
  %.sroa.058.0 = phi i64 [ 0, %bb.d ], [ 0, %check_function.exit ], [ %i.ah, %bb.f ], [ %i.ah, %bb.l ], [ %i.ah, %bb.m ], [ %i.ah, %bb.n ], [ %i.ah, %bb.o ], [ %i.ah, %bb.ay ], [ %i.ah, %bb.av ], [ %i.ah, %bb.bc ], [ %i.ah, %JS_FreeValue.exit223 ], [ %i.ah, %.preheader ], [ %i.ah, %bb.p ] ; 6 uses
  %.sroa.9.0 = phi i64 [ 3, %bb.d ], [ 3, %check_function.exit ], [ %i.ai, %bb.f ], [ %i.ai, %bb.l ], [ %i.ai, %bb.m ], [ %i.ai, %bb.n ], [ %i.ai, %bb.o ], [ %i.ai, %bb.ay ], [ %i.ai, %bb.av ], [ %i.ai, %bb.bc ], [ %i.ai, %JS_FreeValue.exit223 ], [ %i.ai, %.preheader ], [ %i.ai, %bb.p ] ; 6 uses
  %.sroa.090.0 = phi i64 [ 0, %bb.d ], [ 0, %check_function.exit ], [ 0, %bb.f ], [ 0, %bb.l ], [ 0, %bb.m ], [ %i.cj, %bb.n ], [ %i.cj, %bb.o ], [ %i.cj, %bb.ay ], [ %i.cj, %bb.av ], [ %i.cj, %bb.bc ], [ %i.cj, %JS_FreeValue.exit223 ], [ %i.cj, %.preheader ], [ %i.cj, %bb.p ] ; 6 uses
  %.sroa.10.0 = phi i64 [ 3, %bb.d ], [ 3, %check_function.exit ], [ 3, %bb.f ], [ 3, %bb.l ], [ 3, %bb.m ], [ %i.ck, %bb.n ], [ %i.ck, %bb.o ], [ %i.ck, %bb.ay ], [ %i.ck, %bb.av ], [ %i.ck, %bb.bc ], [ %i.ck, %JS_FreeValue.exit223 ], [ %i.ck, %.preheader ], [ %i.ck, %bb.p ] ; 6 uses
  %.sroa.0101.0 = phi i64 [ 0, %bb.d ], [ 0, %check_function.exit ], [ 0, %bb.f ], [ %i.bq, %bb.l ], [ %i.bq, %bb.m ], [ %i.bq, %bb.n ], [ %i.bq, %bb.o ], [ %i.bq, %bb.ay ], [ %i.bq, %bb.av ], [ %i.bq, %bb.bc ], [ %i.bq, %JS_FreeValue.exit223 ], [ %i.bq, %.preheader ], [ %i.bq, %bb.p ] ; 6 uses
  %.sroa.7.0 = phi i64 [ 3, %bb.d ], [ 3, %check_function.exit ], [ 3, %bb.f ], [ %i.br, %bb.l ], [ %i.br, %bb.m ], [ %i.br, %bb.n ], [ %i.br, %bb.o ], [ %i.br, %bb.ay ], [ %i.br, %bb.av ], [ %i.br, %bb.bc ], [ %i.br, %JS_FreeValue.exit223 ], [ %i.br, %.preheader ], [ %i.br, %bb.p ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !232 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1248
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1244
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ao = load <2 x i64>, ptr %i.an, align 8, !tbaa !218
  store i32 0, ptr %i.an, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  store <2 x i64> %i.ao, ptr %11, align 16, !tbaa !218
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load i64, ptr %i.ap, align 16
  %i.ar = load i64, ptr %.sroa.sel245.sroa.sel.v.sroa.gep, align 8
  %i.as = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.aq, i64 %i.ar, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %11, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.at = extractvalue { i64, i64 } %i.as, 0      ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.as, 1      ; 3 uses
  %i.av = load i64, ptr %11, align 16             ; 2 uses
  %i.aw = load i64, ptr %.sroa.444.0..sroa_idx, align 8 ; 2 uses
  %i.ax = load ptr, ptr %i.al, align 8, !tbaa !232
  %i.ay = trunc i64 %i.aw to i32
  %i.az = icmp ugt i32 %i.ay, -10
  br i1 %i.az, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %.loopexit
  %i.ba = inttoptr i64 %i.av to ptr
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !191 ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !191
  %i.be = icmp slt i32 %i.bc, 2
  br i1 %i.be, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef %i.ax, i64 %i.av, i64 %i.aw), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %.loopexit, %bb.g, %bb.h
  %i.bf = and i64 %i.au, 4294967295
  %i.bg = icmp eq i64 %i.bf, 6
  %i.bh = load ptr, ptr %i.al, align 8, !tbaa !232 ; 2 uses
  br i1 %i.bg, label %bb.br, label %bb.i

bb.i:                                             ; preds = %JS_FreeValue.exit
  %i.bi = trunc i64 %i.au to i32
  %i.bj = icmp ugt i32 %i.bi, -10
  br i1 %i.bj, label %bb.j, label %JS_FreeValue.exit219

bb.j:                                             ; preds = %bb.i
  %i.bk = inttoptr i64 %i.at to ptr
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !191 ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !191
  %i.bo = icmp slt i32 %i.bm, 2
  br i1 %i.bo, label %bb.k, label %JS_FreeValue.exit219

bb.k:                                             ; preds = %bb.j
  call fastcc void @js_free_value_rt(ptr noundef %i.bh, i64 %i.at, i64 %i.au), !inline_history !291
  br label %JS_FreeValue.exit219

bb.l:                                             ; preds = %bb.f
  %i.bp = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %i.ah, i64 %i.ai, i32 noundef 114, i64 %i.ah, i64 %i.ai, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.bq = extractvalue { i64, i64 } %i.bp, 0      ; 14 uses
  %i.br = extractvalue { i64, i64 } %i.bp, 1      ; 15 uses
  %i.bs = and i64 %i.br, 4294967295
  %i.bt = icmp eq i64 %i.bs, 6
  br i1 %i.bt, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !351 ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !191
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !191
  %i.bz = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef %0, ptr noundef %i.bv, i32 noundef 2, ptr noundef null), !inline_history !405 ; 2 uses
  %i.ca = extractvalue { i64, i64 } %i.bz, 0
  %i.cb = extractvalue { i64, i64 } %i.bz, 1      ; 2 uses
  store i64 %i.ca, ptr %8, align 8, !tbaa !218
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 %i.cb, ptr %.sroa.435.0..sroa_idx, align 8, !tbaa !240
  %i.cc = and i64 %i.cb, 4294967295
  %i.cd = icmp eq i64 %i.cc, 6
  br i1 %i.cd, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = load ptr, ptr %i.bu, align 8, !tbaa !351 ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -4 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !191
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !191
  %i.ci = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef nonnull %0, ptr noundef %i.ce, i32 noundef 2, ptr noundef null), !inline_history !405 ; 2 uses
  %i.cj = extractvalue { i64, i64 } %i.ci, 0      ; 14 uses
  %i.ck = extractvalue { i64, i64 } %i.ci, 1      ; 15 uses
  %i.cl = and i64 %i.ck, 4294967295
  %i.cm = icmp eq i64 %i.cl, 6
  br i1 %i.cm, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = tail call i32 @JS_DefinePropertyValueUint32(ptr noundef nonnull %0, i64 %i.cj, i64 %i.ck, i32 noundef 0, i64 1, i64 0, i32 noundef 7)
  %i.co = icmp slt i32 %i.cn, 0
  br i1 %i.co, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.o
  %i.cp = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef nonnull %0, i64 %i.ah, i64 %i.ai, i64 %i.bq, i64 %i.br, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.cq = extractvalue { i64, i64 } %i.cp, 0
  %i.cr = extractvalue { i64, i64 } %i.cp, 1      ; 2 uses
  store i64 %i.cq, ptr %7, align 8, !tbaa !218
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  store i64 %i.cr, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !240
  %i.cs = and i64 %i.cr, 4294967295
  %i.ct = icmp eq i64 %i.cs, 6
  br i1 %i.ct, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cu = getelementptr i8, ptr %0, i64 16        ; 11 uses
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %.sroa.sel = select i1 %i.b, ptr %.sroa.gep, ptr %6
  %i.cy = getelementptr inbounds nuw i8, ptr %10, i64 64
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.cz = icmp eq i32 %5, 1
  %i.da = load i64, ptr %.sroa.gep, align 16      ; 4 uses
  %i.db = load i64, ptr %.sroa.sel245.sroa.sel.v.sroa.gep, align 8 ; 3 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = icmp ugt i32 %i.dc, -10
  %i.de = inttoptr i64 %i.da to ptr
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -4 ; 2 uses
  %.sroa.986.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %.sroa.978.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %9, i64 24
  br label %bb.q

bb.p:                                             ; preds = %JS_FreeValue.exit232
  %12 = add nuw nsw i32 %.0261, 1
  %i.dh = call fastcc { i64, i64 } @JS_IteratorNext(ptr noundef nonnull %0, i64 %i.ah, i64 %i.ai, i64 %i.bq, i64 %i.br, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %i.di = extractvalue { i64, i64 } %i.dh, 0
  %i.dj = extractvalue { i64, i64 } %i.dh, 1      ; 2 uses
  store i64 %i.di, ptr %7, align 8, !tbaa !218
  store i64 %i.dj, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !240
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = icmp eq i64 %i.dk, 6
  br i1 %i.dl, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %.0261 = phi i32 [ 0, %.lr.ph ], [ %12, %bb.p ] ; 3 uses
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !191
  %.not214 = icmp eq i32 %i.dm, 0
  br i1 %.not214, label %bb.r, label %bb.av

bb.r:                                             ; preds = %bb.q
  %i.dn = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef nonnull %0, i64 %i.l, i64 %i.m, i64 %1, i64 %2, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 2), !inline_history !284 ; 2 uses
  %i.do = extractvalue { i64, i64 } %i.dn, 0      ; 7 uses
  %i.dp = extractvalue { i64, i64 } %i.dn, 1      ; 8 uses
  %i.dq = load i64, ptr %7, align 8               ; 2 uses
  %i.dr = load i64, ptr %.sroa.429.0..sroa_idx, align 8 ; 2 uses
  %i.ds = load ptr, ptr %i.cu, align 8, !tbaa !232
  %i.dt = trunc i64 %i.dr to i32
  %i.du = icmp ugt i32 %i.dt, -10
  br i1 %i.du, label %bb.s, label %JS_FreeValue.exit220

bb.s:                                             ; preds = %bb.r
  %i.dv = inttoptr i64 %i.dq to ptr
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !191 ; 2 uses
  %i.dy = add nsw i32 %i.dx, -1
  store i32 %i.dy, ptr %i.dw, align 4, !tbaa !191
  %i.dz = icmp slt i32 %i.dx, 2
  br i1 %i.dz, label %bb.t, label %JS_FreeValue.exit220

bb.t:                                             ; preds = %bb.s
  call fastcc void @js_free_value_rt(ptr noundef %i.ds, i64 %i.dq, i64 %i.dr), !inline_history !291
  br label %JS_FreeValue.exit220

JS_FreeValue.exit220:                             ; preds = %bb.r, %bb.s, %bb.t
  %i.ea = and i64 %i.dp, 4294967295
  %i.eb = icmp eq i64 %i.ea, 6
  br i1 %i.eb, label %JS_FreeValue.exit223, label %bb.u

JS_FreeValue.exit223:                             ; preds = %JS_FreeValue.exit232, %bb.ae, %JS_FreeValue.exit220, %bb.ap, %bb.ao, %JS_FreeValue.exit229, %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.v
  %i.ec = call fastcc i32 @JS_IteratorClose(ptr noundef nonnull %0, i64 %i.ah, i64 %i.ai, i1 noundef zeroext true) ; 0 uses
  br label %.loopexit

bb.u:                                             ; preds = %JS_FreeValue.exit220
  store i32 0, ptr %10, align 16
  store i32 0, ptr %.sroa.224.0..sroa_idx, align 4, !tbaa !218
  store i64 1, ptr %.sroa.325.0..sroa_idx, align 8, !tbaa !240
  %.sroa.0.0.insert.ext.i = zext nneg i32 %.0261 to i64
  store i64 %.sroa.0.0.insert.ext.i, ptr %i.cv, align 16, !tbaa !218
  store i64 0, ptr %.sroa.422.0..sroa_idx, align 8, !tbaa !240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.sel, i64 16, i1 false), !tbaa.struct !282
  store i64 %i.cj, ptr %i.cy, align 16, !tbaa !218
  store i64 %i.ck, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240
  %i.ed = call { i64, i64 } @JS_NewCFunctionData2(ptr noundef nonnull %0, ptr noundef nonnull @js_promise_all_resolve_element, ptr noundef null, i32 noundef 1, i32 noundef %5, i32 noundef 5, ptr noundef nonnull readonly %10), !inline_history !372 ; 2 uses
  %i.ee = extractvalue { i64, i64 } %i.ed, 0      ; 5 uses
  %i.ef = extractvalue { i64, i64 } %i.ed, 1      ; 6 uses
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = icmp eq i64 %i.eg, 6
  br i1 %i.eh, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.ei = load ptr, ptr %i.cu, align 8, !tbaa !232
  %i.ej = trunc i64 %i.dp to i32
  %i.ek = icmp ugt i32 %i.ej, -10
  br i1 %i.ek, label %bb.w, label %JS_FreeValue.exit223

bb.w:                                             ; preds = %bb.v
  %i.el = inttoptr i64 %i.do to ptr
  %i.em = getelementptr inbounds i8, ptr %i.el, i64 -4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !191 ; 2 uses
  %i.eo = add nsw i32 %i.en, -1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !191
  %i.ep = icmp slt i32 %i.en, 2
  br i1 %i.ep, label %bb.x, label %JS_FreeValue.exit223

bb.x:                                             ; preds = %bb.w
  call fastcc void @js_free_value_rt(ptr noundef %i.ei, i64 %i.do, i64 %i.dp), !inline_history !291
  br label %JS_FreeValue.exit223

bb.y:                                             ; preds = %bb.u
  br i1 %i.cz, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.eq = call { i64, i64 } @JS_NewCFunctionData2(ptr noundef nonnull %0, ptr noundef nonnull @js_promise_all_resolve_element, ptr noundef null, i32 noundef 1, i32 noundef 5, i32 noundef 5, ptr noundef nonnull readonly %10), !inline_history !372 ; 2 uses
  %i.er = extractvalue { i64, i64 } %i.eq, 0
  %i.es = extractvalue { i64, i64 } %i.eq, 1      ; 2 uses
  %i.et = and i64 %i.es, 4294967295
  %i.eu = icmp eq i64 %i.et, 6
  br i1 %i.eu, label %bb.aa, label %js_dup.exit

bb.aa:                                            ; preds = %bb.z
  %i.ev = load ptr, ptr %i.cu, align 8, !tbaa !232
  %i.ew = trunc i64 %i.dp to i32
  %i.ex = icmp ugt i32 %i.ew, -10
  br i1 %i.ex, label %bb.ab, label %JS_FreeValue.exit223

bb.ab:                                            ; preds = %bb.aa
  %i.ey = inttoptr i64 %i.do to ptr
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -4 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !191 ; 2 uses
  %i.fb = add nsw i32 %i.fa, -1
  store i32 %i.fb, ptr %i.ez, align 4, !tbaa !191
  %i.fc = icmp slt i32 %i.fa, 2
  br i1 %i.fc, label %bb.ac, label %JS_FreeValue.exit223

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @js_free_value_rt(ptr noundef %i.ev, i64 %i.do, i64 %i.dp), !inline_history !291
  br label %JS_FreeValue.exit223

bb.ad:                                            ; preds = %bb.y
  br i1 %i.b, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.fd = load i64, ptr %8, align 8
  %i.fe = load i64, ptr %.sroa.435.0..sroa_idx, align 8
  %i.ff = call i32 @JS_DefinePropertyValueUint32(ptr noundef nonnull %0, i64 %i.fd, i64 %i.fe, i32 noundef %.0261, i64 0, i64 3, i32 noundef 7)
  %i.fg = icmp slt i32 %i.ff, 0
  br i1 %i.fg, label %JS_FreeValue.exit223, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fh = load i64, ptr %6, align 16              ; 3 uses
  %i.fi = load i64, ptr %.sroa.sel245.sroa.sel.v.sroa.gep276, align 8 ; 3 uses
  %i.fj = trunc i64 %i.fi to i32
  %i.fk = icmp ugt i32 %i.fj, -10
  br i1 %i.fk, label %bb.ag, label %js_dup.exit

bb.ag:                                            ; preds = %bb.af
  %i.fl = inttoptr i64 %i.fh to ptr
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -4 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !191
  %i.fo = add nsw i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !191
  br label %js_dup.exit

bb.ah:                                            ; preds = %bb.ad
  br i1 %i.dd, label %bb.ai, label %js_dup.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fp = load i32, ptr %i.df, align 4, !tbaa !191
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.df, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.z
  %.sroa.074.0 = phi i64 [ %i.er, %bb.z ], [ %i.ee, %bb.ag ], [ %i.ee, %bb.af ], [ %i.da, %bb.ah ], [ %i.da, %bb.ai ] ; 5 uses
  %.sroa.978.0 = phi i64 [ %i.es, %bb.z ], [ %i.ef, %bb.ag ], [ %i.ef, %bb.af ], [ %i.db, %bb.ah ], [ %i.db, %bb.ai ] ; 5 uses
  %.sroa.083.0 = phi i64 [ %i.ee, %bb.z ], [ %i.fh, %bb.ag ], [ %i.fh, %bb.af ], [ %i.ee, %bb.ah ], [ %i.ee, %bb.ai ] ; 5 uses
  %.sroa.986.0 = phi i64 [ %i.ef, %bb.z ], [ %i.fi, %bb.ag ], [ %i.fi, %bb.af ], [ %i.ef, %bb.ah ], [ %i.ef, %bb.ai ] ; 5 uses
  %i.fr = call fastcc i32 @remainingElementsCount_add(ptr noundef nonnull %0, i64 %i.cj, i64 %i.ck, i32 noundef 1)
  %i.fs = icmp slt i32 %i.fr, 0
  br i1 %i.fs, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %js_dup.exit
  %i.ft = load ptr, ptr %i.cu, align 8, !tbaa !232 ; 3 uses
  %i.fu = trunc i64 %i.dp to i32
  %i.fv = icmp ugt i32 %i.fu, -10
  br i1 %i.fv, label %bb.ak, label %JS_FreeValue.exit228

bb.ak:                                            ; preds = %bb.aj
  %i.fw = inttoptr i64 %i.do to ptr
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 -4 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !191 ; 2 uses
  %i.fz = add nsw i32 %i.fy, -1
  store i32 %i.fz, ptr %i.fx, align 4, !tbaa !191
  %i.ga = icmp slt i32 %i.fy, 2
  br i1 %i.ga, label %bb.al, label %JS_FreeValue.exit228

bb.al:                                            ; preds = %bb.ak
  call fastcc void @js_free_value_rt(ptr noundef %i.ft, i64 %i.do, i64 %i.dp), !inline_history !291
  %.pre278.a = load ptr, ptr %i.cu, align 8, !tbaa !232
  br label %JS_FreeValue.exit228

JS_FreeValue.exit228:                             ; preds = %bb.aj, %bb.ak, %bb.al
  %i.gb = phi ptr [ %i.ft, %bb.aj ], [ %i.ft, %bb.ak ], [ %.pre278.a, %bb.al ] ; 3 uses
  %i.gc = trunc i64 %.sroa.986.0 to i32
  %i.gd = icmp ugt i32 %i.gc, -10
  br i1 %i.gd, label %bb.am, label %JS_FreeValue.exit229

bb.am:                                            ; preds = %JS_FreeValue.exit228
  %i.ge = inttoptr i64 %.sroa.083.0 to ptr
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 -4 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !191 ; 2 uses
  %i.gh = add nsw i32 %i.gg, -1
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !191
  %i.gi = icmp slt i32 %i.gg, 2
  br i1 %i.gi, label %bb.an, label %JS_FreeValue.exit229

bb.an:                                            ; preds = %bb.am
  call fastcc void @js_free_value_rt(ptr noundef %i.gb, i64 %.sroa.083.0, i64 %.sroa.986.0), !inline_history !291
  %.pre279.a = load ptr, ptr %i.cu, align 8, !tbaa !232
  br label %JS_FreeValue.exit229

JS_FreeValue.exit229:                             ; preds = %JS_FreeValue.exit228, %bb.am, %bb.an
  %i.gj = phi ptr [ %i.gb, %JS_FreeValue.exit228 ], [ %i.gb, %bb.am ], [ %.pre279.a, %bb.an ]
  %i.gk = trunc i64 %.sroa.978.0 to i32
  %i.gl = icmp ugt i32 %i.gk, -10
  br i1 %i.gl, label %bb.ao, label %JS_FreeValue.exit223

bb.ao:                                            ; preds = %JS_FreeValue.exit229
  %i.gm = inttoptr i64 %.sroa.074.0 to ptr
  %i.gn = getelementptr inbounds i8, ptr %i.gm, i64 -4 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !191 ; 2 uses
  %i.gp = add nsw i32 %i.go, -1
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !191
  %i.gq = icmp slt i32 %i.go, 2
  br i1 %i.gq, label %bb.ap, label %JS_FreeValue.exit223

bb.ap:                                            ; preds = %bb.ao
  call fastcc void @js_free_value_rt(ptr noundef %i.gj, i64 %.sroa.074.0, i64 %.sroa.978.0), !inline_history !291
  br label %JS_FreeValue.exit223

bb.aq:                                            ; preds = %js_dup.exit
  store i64 %.sroa.083.0, ptr %9, align 16, !tbaa !218
  store i64 %.sroa.986.0, ptr %.sroa.986.0..sroa_idx, align 8, !tbaa !240
  store i64 %.sroa.074.0, ptr %i.dg, align 16, !tbaa !218
  store i64 %.sroa.978.0, ptr %.sroa.978.0..sroa_idx79, align 8, !tbaa !240
  %i.gr = call fastcc { i64, i64 } @JS_InvokeFree(ptr noundef nonnull %0, i64 %i.do, i64 %i.dp, i32 noundef 137, i32 noundef 2, ptr noundef nonnull %9) ; 2 uses
  %i.gs = extractvalue { i64, i64 } %i.gr, 0
  %i.gt = extractvalue { i64, i64 } %i.gr, 1
  %i.gu = load ptr, ptr %i.cu, align 8, !tbaa !232 ; 3 uses
  %i.gv = trunc i64 %.sroa.986.0 to i32
  %i.gw = icmp ugt i32 %i.gv, -10
  br i1 %i.gw, label %bb.ar, label %JS_FreeValue.exit231

bb.ar:                                            ; preds = %bb.aq
  %i.gx = inttoptr i64 %.sroa.083.0 to ptr
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -4 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !191 ; 2 uses
  %i.ha = add nsw i32 %i.gz, -1
  store i32 %i.ha, ptr %i.gy, align 4, !tbaa !191
  %i.hb = icmp slt i32 %i.gz, 2
  br i1 %i.hb, label %bb.as, label %JS_FreeValue.exit231

bb.as:                                            ; preds = %bb.ar
  call fastcc void @js_free_value_rt(ptr noundef %i.gu, i64 %.sroa.083.0, i64 %.sroa.986.0), !inline_history !291
  %.pre = load ptr, ptr %i.cu, align 8, !tbaa !232
  br label %JS_FreeValue.exit231

JS_FreeValue.exit231:                             ; preds = %bb.aq, %bb.ar, %bb.as
  %i.hc = phi ptr [ %i.gu, %bb.aq ], [ %i.gu, %bb.ar ], [ %.pre, %bb.as ] ; 3 uses
  %i.hd = trunc i64 %.sroa.978.0 to i32
  %i.he = icmp ugt i32 %i.hd, -10
  br i1 %i.he, label %bb.at, label %JS_FreeValue.exit232

bb.at:                                            ; preds = %JS_FreeValue.exit231
  %i.hf = inttoptr i64 %.sroa.074.0 to ptr
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -4 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !191 ; 2 uses
  %i.hi = add nsw i32 %i.hh, -1
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !191
  %i.hj = icmp slt i32 %i.hh, 2
  br i1 %i.hj, label %bb.au, label %JS_FreeValue.exit232

bb.au:                                            ; preds = %bb.at
  call fastcc void @js_free_value_rt(ptr noundef %i.hc, i64 %.sroa.074.0, i64 %.sroa.978.0), !inline_history !291
  %.val218.pre = load ptr, ptr %i.cu, align 8, !tbaa !232
  br label %JS_FreeValue.exit232

JS_FreeValue.exit232:                             ; preds = %JS_FreeValue.exit231, %bb.at, %bb.au
  %.val218 = phi ptr [ %i.hc, %JS_FreeValue.exit231 ], [ %i.hc, %bb.at ], [ %.val218.pre, %bb.au ]
  %i.hk = call fastcc i32 @check_exception_free(ptr %.val218, i64 %i.gs, i64 %i.gt)
  %.not215 = icmp eq i32 %i.hk, 0
  br i1 %.not215, label %bb.p, label %JS_FreeValue.exit223

bb.av:                                            ; preds = %bb.q
  %i.hl = call fastcc i32 @remainingElementsCount_add(ptr noundef nonnull %0, i64 %i.cj, i64 %i.ck, i32 noundef -1) ; 2 uses
  %i.hm = icmp slt i32 %i.hl, 0
  br i1 %i.hm, label %.loopexit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not216 = icmp eq i32 %i.hl, 0
  br i1 %.not216, label %JS_FreeValue.exit219, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.b, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.hn = load i64, ptr %8, align 8
  %i.ho = load i64, ptr %.sroa.435.0..sroa_idx, align 8
  %i.hp = call fastcc { i64, i64 } @js_aggregate_error_constructor(ptr noundef nonnull %0, i64 %i.hn, i64 %i.ho) ; 2 uses
  %i.hq = extractvalue { i64, i64 } %i.hp, 0
  %i.hr = extractvalue { i64, i64 } %i.hp, 1      ; 2 uses
  %i.hs = and i64 %i.hr, 4294967295
  %i.ht = icmp eq i64 %i.hs, 6
  br i1 %i.ht, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hu = load i64, ptr %8, align 8               ; 2 uses
  %i.hv = load i64, ptr %.sroa.435.0..sroa_idx, align 8 ; 2 uses
  %i.hw = load ptr, ptr %i.cu, align 8, !tbaa !232
  %i.hx = trunc i64 %i.hv to i32
  %i.hy = icmp ugt i32 %i.hx, -10
  br i1 %i.hy, label %bb.ba, label %.thread

bb.ba:                                            ; preds = %bb.az
  %i.hz = inttoptr i64 %i.hu to ptr
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 -4 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !191 ; 2 uses
  %i.ic = add nsw i32 %i.ib, -1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !191
  %i.id = icmp slt i32 %i.ib, 2
  br i1 %i.id, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @js_free_value_rt(ptr noundef %i.hw, i64 %i.hu, i64 %i.hv), !inline_history !291
  br label %.thread

.thread:                                          ; preds = %bb.bb, %bb.ba, %bb.az
  store i64 %i.hq, ptr %8, align 8, !tbaa !218
  store i64 %i.hr, ptr %.sroa.435.0..sroa_idx, align 8, !tbaa !240
  br label %bb.bc

bb.bc:                                            ; preds = %.thread, %bb.ax
  %.sroa.sel245.sroa.sel.v.sroa.phi = phi ptr [ %.sroa.sel245.sroa.sel.v.sroa.gep, %.thread ], [ %.sroa.sel245.sroa.sel.v.sroa.gep276, %bb.ax ]
  %.val249 = load i64, ptr %6, align 16
  %i.ie = select i1 %i.b, i64 %i.da, i64 %.val249
end_hunk_1
begin_hunk_2_@js_global_unescape:bb.a
._crit_edge:                                      ; preds = %bb.ai, %string_buffer_init.exit
  %i.ei = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.ej = trunc i64 %i.f to i32
  %i.ek = icmp ugt i32 %i.ej, -10
  br i1 %i.ek, label %bb.aj, label %JS_FreeValue.exit

bb.aj:                                            ; preds = %._crit_edge
  %i.el = getelementptr inbounds i8, ptr %i.bt, i64 -4 ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !191 ; 2 uses
  %i.en = add nsw i32 %i.em, -1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !191
  %i.eo = icmp slt i32 %i.em, 2
  br i1 %i.eo, label %bb.ak, label %JS_FreeValue.exit

bb.ak:                                            ; preds = %bb.aj
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ei, i64 %i.e, i64 %i.f), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %._crit_edge, %bb.aj, %bb.ak
  %i.ep = call fastcc { i64, i64 } @string_buffer_end(ptr noundef nonnull %5)
  br label %bb.al

bb.al:                                            ; preds = %bb.a, %JS_FreeValue.exit
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.ep, %JS_FreeValue.exit ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_global_eval(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i64, ptr %4, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call fastcc { i64, i64 } @JS_EvalObject(ptr noundef %0, i64 %i.b, i64 %i.d, i64 %i.e, i64 %i.g, i32 noundef 3, i32 noundef -1)
  ret { i64, i64 } %i.h
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_microtask_job(ptr noundef %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load i64, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = load i64, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.b, i64 %i.d, i64 %i.e, i64 %i.g, i64 0, i64 3, i32 noundef 0, ptr noundef null, i32 noundef 2), !inline_history !284
  ret { i64, i64 } %i.h
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @hex_decode(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 3 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 2147483647                 ; 2 uses
  %.not = icmp slt i32 %2, %i.c
  br i1 %.not, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 2147483648
  %.not.i = icmp eq i64 %i.d, 0
  %i.e = lshr i64 %i.a, 60
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = and i32 %i.f, 3                          ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.g, label %default.unreachable [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
    i32 3, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str16.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !389
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !390
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n
  br label %str16.exit.i

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !239
  br label %str16.exit.i

default.unreachable:                              ; preds = %bb.h, %bb.c
  unreachable

bb.g:                                             ; preds = %bb.c
  tail call void @abort() #50
  unreachable

str16.exit.i:                                     ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.h, %bb.d ], [ %i.o, %bb.e ], [ %i.q, %bb.f ]
  %i.r = sext i32 %2 to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %.0.i.i.i, i64 %i.r
  %i.t = load i16, ptr %i.s, align 2, !tbaa !221
  %i.u = zext i16 %i.t to i32
  br label %string_get.exit

bb.h:                                             ; preds = %bb.b
  switch i32 %i.g, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str8.exit.i

bb.j:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !389
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !390
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  br label %str8.exit.i

bb.k:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !239
  br label %str8.exit.i

bb.l:                                             ; preds = %bb.h
  tail call void @abort() #50
  unreachable

str8.exit.i:                                      ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i4.i = phi ptr [ %i.v, %bb.i ], [ %i.ac, %bb.j ], [ %i.ae, %bb.k ]
  %i.af = sext i32 %2 to i64
  %i.ag = getelementptr inbounds i8, ptr %.0.i.i4.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !218
  %i.ai = zext i8 %i.ah to i32
  br label %string_get.exit

string_get.exit:                                  ; preds = %str16.exit.i, %str8.exit.i
  %i.aj = phi i32 [ %i.u, %str16.exit.i ], [ %i.ai, %str8.exit.i ]
  %.not13 = icmp eq i32 %i.aj, 37
  br i1 %.not13, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %string_get.exit
  %i.ak = add nsw i32 %2, 2
  %.not14 = icmp slt i32 %i.ak, %i.c
  br i1 %.not14, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.al = add nsw i32 %2, 1
  %i.am = tail call fastcc i32 @string_get_hex(ptr noundef nonnull %1, i32 noundef %i.al, i32 noundef 2) ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.m, %bb.n, %bb.a, %string_get.exit
  %.str.796.sink = phi ptr [ @.str.795, %bb.a ], [ @.str.795, %string_get.exit ], [ @.str.796, %bb.n ], [ @.str.796, %bb.m ]
  tail call void (ptr, ptr, ...) @js_throw_URIError(ptr noundef %0, ptr noundef nonnull %.str.796.sink)
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n
  %.0 = phi i32 [ %i.am, %bb.n ], [ -1, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @js_throw_URIError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) unnamed_addr #2 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call fastcc void @JS_ThrowError(ptr noundef %0, i32 noundef 5, ptr noundef %1, ptr noundef %2)
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc i32 @string_get_hex(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef range(i32 2, 5) %2) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = and i64 %i.a, 2147483648
  %.not.i = icmp eq i64 %i.b, 0
  %i.c = lshr i64 %i.a, 60
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 3                          ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  switch i32 %i.e, label %.split.us.split.preheader [
    i32 3, label %.split17.us
    i32 0, label %str8.exit.i.us
    i32 1, label %bb.c
    i32 2, label %bb.b
  ]

.split.us.split.preheader:                        ; preds = %.split.us
  unreachable

bb.b:                                             ; preds = %.split.us
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !239
  br label %str8.exit.i.us

bb.c:                                             ; preds = %.split.us
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.g, align 8, !tbaa !390
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  br label %str8.exit.i.us

str8.exit.i.us:                                   ; preds = %.split.us, %bb.c, %bb.b
  %.0.i.i4.i.us = phi ptr [ %i.h, %bb.b ], [ %i.m, %bb.c ], [ %i.f, %.split.us ]
  %3 = sext i32 %1 to i64
  %i.n = getelementptr inbounds i8, ptr %.0.i.i4.i.us, i64 %3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !218   ; 3 uses
  %i.p = zext i8 %i.o to i32                      ; 3 uses
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %or.cond.i.us = icmp ult i32 %i.q, 10
  br i1 %or.cond.i.us, label %.split.us.split.1, label %bb.d

bb.d:                                             ; preds = %str8.exit.i.us
  %i.r = add i8 %i.o, -65
  %or.cond3.i.us = icmp ult i8 %i.r, 6
  br i1 %or.cond3.i.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.p, -87
  %i.t = add i8 %i.o, -103
  %or.cond.us = icmp ult i8 %i.t, -6
  br i1 %or.cond.us, label %from_hex.exit.thread12, label %.split.us.split.1

bb.f:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.p, -55
  br label %.split.us.split.1

.split.us.split.1:                                ; preds = %str8.exit.i.us, %bb.e, %bb.f
  %.0.i11.us = phi i32 [ %i.s, %bb.e ], [ %i.q, %str8.exit.i.us ], [ %i.u, %bb.f ]
  switch i32 %i.e, label %bb.h [
    i32 0, label %str8.exit.i.us.1
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %.split.us.split.1
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.g, align 8, !tbaa !390
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  br label %str8.exit.i.us.1

bb.h:                                             ; preds = %.split.us.split.1
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !239
  br label %str8.exit.i.us.1

str8.exit.i.us.1:                                 ; preds = %bb.h, %bb.g, %.split.us.split.1
  %.0.i.i4.i.us.1 = phi ptr [ %i.aa, %bb.h ], [ %i.z, %bb.g ], [ %i.f, %.split.us.split.1 ]
  %4 = sext i32 %1 to i64
  %i.ab = getelementptr i8, ptr %.0.i.i4.i.us.1, i64 %4
  %i.ac = getelementptr i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !218 ; 3 uses
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %or.cond.i.us.1 = icmp ult i32 %i.af, 10
  br i1 %or.cond.i.us.1, label %from_hex.exit.thread.us.1, label %bb.i

bb.i:                                             ; preds = %str8.exit.i.us.1
  %i.ag = add i8 %i.ad, -65
  %or.cond3.i.us.1 = icmp ult i8 %i.ag, 6
  br i1 %or.cond3.i.us.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = add nsw i32 %i.ae, -87
  %i.ai = add i8 %i.ad, -103
  %or.cond.us.1 = icmp ult i8 %i.ai, -6
  br i1 %or.cond.us.1, label %from_hex.exit.thread12, label %from_hex.exit.thread.us.1

bb.k:                                             ; preds = %bb.i
  %i.aj = add nsw i32 %i.ae, -55
  br label %from_hex.exit.thread.us.1

from_hex.exit.thread.us.1:                        ; preds = %bb.k, %bb.j, %str8.exit.i.us.1
  %.0.i11.us.1 = phi i32 [ %i.ah, %bb.j ], [ %i.af, %str8.exit.i.us.1 ], [ %i.aj, %bb.k ]
  %i.ak = shl nsw i32 %.0.i11.us, 4
  %i.al = or i32 %.0.i11.us.1, %i.ak              ; 2 uses
  %i.am = icmp samesign ugt i32 %2, 2
  br i1 %i.am, label %.split.us.split.2, label %from_hex.exit.thread12

.split.us.split.2:                                ; preds = %from_hex.exit.thread.us.1
  switch i32 %i.e, label %bb.m [
    i32 0, label %str8.exit.i.us.2
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %.split.us.split.2
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !390
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq
  br label %str8.exit.i.us.2

bb.m:                                             ; preds = %.split.us.split.2
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !239
  br label %str8.exit.i.us.2

str8.exit.i.us.2:                                 ; preds = %bb.m, %bb.l, %.split.us.split.2
  %.0.i.i4.i.us.2 = phi ptr [ %i.as, %bb.m ], [ %i.ar, %bb.l ], [ %i.f, %.split.us.split.2 ]
  %5 = sext i32 %1 to i64
  %i.at = getelementptr i8, ptr %.0.i.i4.i.us.2, i64 %5
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !218 ; 3 uses
  %i.aw = zext i8 %i.av to i32                    ; 3 uses
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %or.cond.i.us.2 = icmp ult i32 %i.ax, 10
  br i1 %or.cond.i.us.2, label %from_hex.exit.thread.us.2, label %bb.n

bb.n:                                             ; preds = %str8.exit.i.us.2
  %i.ay = add i8 %i.av, -65
  %or.cond3.i.us.2 = icmp ult i8 %i.ay, 6
  br i1 %or.cond3.i.us.2, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = add nsw i32 %i.aw, -87
  %i.ba = add i8 %i.av, -103
  %or.cond.us.2 = icmp ult i8 %i.ba, -6
  br i1 %or.cond.us.2, label %from_hex.exit.thread12, label %from_hex.exit.thread.us.2

bb.p:                                             ; preds = %bb.n
  %i.bb = add nsw i32 %i.aw, -55
  br label %from_hex.exit.thread.us.2

from_hex.exit.thread.us.2:                        ; preds = %bb.p, %bb.o, %str8.exit.i.us.2
  %.0.i11.us.2 = phi i32 [ %i.az, %bb.o ], [ %i.ax, %str8.exit.i.us.2 ], [ %i.bb, %bb.p ]
  %i.bc = shl nsw i32 %i.al, 4
  %i.bd = or i32 %.0.i11.us.2, %i.bc              ; 2 uses
  %.not79 = icmp eq i32 %2, 3
  br i1 %.not79, label %from_hex.exit.thread12, label %.split.us.split.3

.split.us.split.3:                                ; preds = %from_hex.exit.thread.us.2
  switch i32 %i.e, label %bb.r [
    i32 0, label %str8.exit.i.us.3
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %.split.us.split.3
  %i.be = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load i32, ptr %i.g, align 8, !tbaa !390
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  br label %str8.exit.i.us.3

bb.r:                                             ; preds = %.split.us.split.3
  %i.bj = load ptr, ptr %i.f, align 8, !tbaa !239
  br label %str8.exit.i.us.3

str8.exit.i.us.3:                                 ; preds = %bb.r, %bb.q, %.split.us.split.3
  %.0.i.i4.i.us.3 = phi ptr [ %i.bj, %bb.r ], [ %i.bi, %bb.q ], [ %i.f, %.split.us.split.3 ]
  %6 = sext i32 %1 to i64
  %i.bk = getelementptr i8, ptr %.0.i.i4.i.us.3, i64 %6
  %i.bl = getelementptr i8, ptr %i.bk, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !218 ; 3 uses
  %i.bn = zext i8 %i.bm to i32                    ; 3 uses
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %or.cond.i.us.3 = icmp ult i32 %i.bo, 10
  br i1 %or.cond.i.us.3, label %from_hex.exit.thread.us.3, label %bb.s

bb.s:                                             ; preds = %str8.exit.i.us.3
  %i.bp = add i8 %i.bm, -65
  %or.cond3.i.us.3 = icmp ult i8 %i.bp, 6
  br i1 %or.cond3.i.us.3, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = add nsw i32 %i.bn, -87
  %i.br = add i8 %i.bm, -103
  %or.cond.us.3 = icmp ult i8 %i.br, -6
  br i1 %or.cond.us.3, label %from_hex.exit.thread12, label %from_hex.exit.thread.us.3

bb.u:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bn, -55
  br label %from_hex.exit.thread.us.3

from_hex.exit.thread.us.3:                        ; preds = %bb.u, %bb.t, %str8.exit.i.us.3
  %.0.i11.us.3 = phi i32 [ %i.bq, %bb.t ], [ %i.bo, %str8.exit.i.us.3 ], [ %i.bs, %bb.u ]
  %i.bt = shl i32 %i.bd, 4
  %i.bu = or i32 %.0.i11.us.3, %i.bt
  br label %from_hex.exit.thread12

.split:                                           ; preds = %bb.a
  switch i32 %i.e, label %default.unreachable [
    i32 3, label %bb.at
    i32 0, label %str16.exit.i.us.preheader
    i32 1, label %.split.split.split.us27
    i32 2, label %.split.split.split
  ]

str16.exit.i.us.preheader:                        ; preds = %.split
  %i.bv = sext i32 %1 to i64                      ; 4 uses
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !221 ; 3 uses
  %i.by = zext i16 %i.bx to i32                   ; 3 uses
  %i.bz = add nsw i32 %i.by, -48                  ; 2 uses
  %or.cond.i.us20 = icmp ult i32 %i.bz, 10
  br i1 %or.cond.i.us20, label %str16.exit.i.us.1, label %bb.v

bb.v:                                             ; preds = %str16.exit.i.us.preheader
  %i.ca = add i16 %i.bx, -65
  %or.cond3.i.us21 = icmp ult i16 %i.ca, 6
  br i1 %or.cond3.i.us21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = add nsw i32 %i.by, -87
  %i.cc = add i16 %i.bx, -103
  %or.cond.us22 = icmp ult i16 %i.cc, -6
  br i1 %or.cond.us22, label %from_hex.exit.thread12, label %str16.exit.i.us.1

bb.x:                                             ; preds = %bb.v
  %i.cd = add nsw i32 %i.by, -55
  br label %str16.exit.i.us.1

str16.exit.i.us.1:                                ; preds = %str16.exit.i.us.preheader, %bb.w, %bb.x
  %.0.i11.us24 = phi i32 [ %i.cb, %bb.w ], [ %i.bz, %str16.exit.i.us.preheader ], [ %i.cd, %bb.x ]
  %i.ce = getelementptr [2 x i8], ptr %i.f, i64 %i.bv
  %i.cf = getelementptr i8, ptr %i.ce, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !221 ; 3 uses
  %i.ch = zext i16 %i.cg to i32                   ; 3 uses
  %i.ci = add nsw i32 %i.ch, -48                  ; 2 uses
  %or.cond.i.us20.1 = icmp ult i32 %i.ci, 10
  br i1 %or.cond.i.us20.1, label %from_hex.exit.thread.us23.1, label %bb.y

bb.y:                                             ; preds = %str16.exit.i.us.1
  %i.cj = add i16 %i.cg, -65
  %or.cond3.i.us21.1 = icmp ult i16 %i.cj, 6
  br i1 %or.cond3.i.us21.1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = add nsw i32 %i.ch, -87
  %i.cl = add i16 %i.cg, -103
  %or.cond.us22.1 = icmp ult i16 %i.cl, -6
  br i1 %or.cond.us22.1, label %from_hex.exit.thread12, label %from_hex.exit.thread.us23.1

bb.aa:                                            ; preds = %bb.y
  %i.cm = add nsw i32 %i.ch, -55
  br label %from_hex.exit.thread.us23.1

from_hex.exit.thread.us23.1:                      ; preds = %bb.aa, %bb.z, %str16.exit.i.us.1
  %.0.i11.us24.1 = phi i32 [ %i.ck, %bb.z ], [ %i.ci, %str16.exit.i.us.1 ], [ %i.cm, %bb.aa ]
  %i.cn = shl nsw i32 %.0.i11.us24, 4
  %i.co = or i32 %.0.i11.us24.1, %i.cn            ; 2 uses
  %i.cp = icmp samesign ugt i32 %2, 2
  br i1 %i.cp, label %str16.exit.i.us.2, label %from_hex.exit.thread12

str16.exit.i.us.2:                                ; preds = %from_hex.exit.thread.us23.1
  %i.cq = getelementptr [2 x i8], ptr %i.f, i64 %i.bv
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !221 ; 3 uses
  %i.ct = zext i16 %i.cs to i32                   ; 3 uses
  %i.cu = add nsw i32 %i.ct, -48                  ; 2 uses
  %or.cond.i.us20.2 = icmp ult i32 %i.cu, 10
  br i1 %or.cond.i.us20.2, label %from_hex.exit.thread.us23.2, label %bb.ab

bb.ab:                                            ; preds = %str16.exit.i.us.2
  %i.cv = add i16 %i.cs, -65
  %or.cond3.i.us21.2 = icmp ult i16 %i.cv, 6
  br i1 %or.cond3.i.us21.2, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cw = add nsw i32 %i.ct, -87
  %i.cx = add i16 %i.cs, -103
  %or.cond.us22.2 = icmp ult i16 %i.cx, -6
  br i1 %or.cond.us22.2, label %from_hex.exit.thread12, label %from_hex.exit.thread.us23.2

bb.ad:                                            ; preds = %bb.ab
  %i.cy = add nsw i32 %i.ct, -55
  br label %from_hex.exit.thread.us23.2

from_hex.exit.thread.us23.2:                      ; preds = %bb.ad, %bb.ac, %str16.exit.i.us.2
  %.0.i11.us24.2 = phi i32 [ %i.cw, %bb.ac ], [ %i.cu, %str16.exit.i.us.2 ], [ %i.cy, %bb.ad ]
  %i.cz = shl nsw i32 %i.co, 4
  %i.da = or i32 %.0.i11.us24.2, %i.cz            ; 2 uses
  %.not78 = icmp eq i32 %2, 3
  br i1 %.not78, label %from_hex.exit.thread12, label %str16.exit.i.us.3

str16.exit.i.us.3:                                ; preds = %from_hex.exit.thread.us23.2
  %i.db = getelementptr [2 x i8], ptr %i.f, i64 %i.bv
  %i.dc = getelementptr i8, ptr %i.db, i64 6
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !221 ; 3 uses
  %i.de = zext i16 %i.dd to i32                   ; 3 uses
  %i.df = add nsw i32 %i.de, -48                  ; 2 uses
  %or.cond.i.us20.3 = icmp ult i32 %i.df, 10
  br i1 %or.cond.i.us20.3, label %from_hex.exit.thread.us23.3, label %bb.ae

bb.ae:                                            ; preds = %str16.exit.i.us.3
  %i.dg = add i16 %i.dd, -65
  %or.cond3.i.us21.3 = icmp ult i16 %i.dg, 6
  br i1 %or.cond3.i.us21.3, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = add nsw i32 %i.de, -87
  %i.di = add i16 %i.dd, -103
  %or.cond.us22.3 = icmp ult i16 %i.di, -6
  br i1 %or.cond.us22.3, label %from_hex.exit.thread12, label %from_hex.exit.thread.us23.3

bb.ag:                                            ; preds = %bb.ae
  %i.dj = add nsw i32 %i.de, -55
  br label %from_hex.exit.thread.us23.3

from_hex.exit.thread.us23.3:                      ; preds = %bb.ag, %bb.af, %str16.exit.i.us.3
  %.0.i11.us24.3 = phi i32 [ %i.dh, %bb.af ], [ %i.df, %str16.exit.i.us.3 ], [ %i.dj, %bb.ag ]
  %i.dk = shl i32 %i.da, 4
  %i.dl = or i32 %.0.i11.us24.3, %i.dk
  br label %from_hex.exit.thread12

.split.split.split.us27:                          ; preds = %.split
  %i.dm = load ptr, ptr %i.f, align 8, !tbaa !389
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i32, ptr %i.g, align 8, !tbaa !390
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp ; 4 uses
  %i.dr = sext i32 %1 to i64                      ; 4 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !221 ; 3 uses
  %i.du = zext i16 %i.dt to i32                   ; 3 uses
  %i.dv = add nsw i32 %i.du, -48                  ; 2 uses
  %or.cond.i.us32 = icmp ult i32 %i.dv, 10
  br i1 %or.cond.i.us32, label %str16.exit.i.us30.1, label %bb.ah

bb.ah:                                            ; preds = %.split.split.split.us27
  %i.dw = add i16 %i.dt, -65
  %or.cond3.i.us33 = icmp ult i16 %i.dw, 6
  br i1 %or.cond3.i.us33, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = add nsw i32 %i.du, -87
  %i.dy = add i16 %i.dt, -103
  %or.cond.us34 = icmp ult i16 %i.dy, -6
  br i1 %or.cond.us34, label %from_hex.exit.thread12, label %str16.exit.i.us30.1

bb.aj:                                            ; preds = %bb.ah
  %i.dz = add nsw i32 %i.du, -55
  br label %str16.exit.i.us30.1

str16.exit.i.us30.1:                              ; preds = %.split.split.split.us27, %bb.ai, %bb.aj
  %.0.i11.us36 = phi i32 [ %i.dx, %bb.ai ], [ %i.dv, %.split.split.split.us27 ], [ %i.dz, %bb.aj ]
  %i.ea = getelementptr [2 x i8], ptr %i.dq, i64 %i.dr
  %i.eb = getelementptr i8, ptr %i.ea, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !221 ; 3 uses
  %i.ed = zext i16 %i.ec to i32                   ; 3 uses
  %i.ee = add nsw i32 %i.ed, -48                  ; 2 uses
  %or.cond.i.us32.1 = icmp ult i32 %i.ee, 10
  br i1 %or.cond.i.us32.1, label %from_hex.exit.thread.us35.1, label %bb.ak

bb.ak:                                            ; preds = %str16.exit.i.us30.1
  %i.ef = add i16 %i.ec, -65
  %or.cond3.i.us33.1 = icmp ult i16 %i.ef, 6
  br i1 %or.cond3.i.us33.1, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eg = add nsw i32 %i.ed, -87
  %i.eh = add i16 %i.ec, -103
end_hunk_2
begin_hunk_3_@string_indexof:bb.a
  tail call void @abort() #50
  unreachable

str16.exit.i:                                     ; preds = %bb.f, %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.s, %bb.e ], [ %i.u, %bb.f ]
  %i.v = load i16, ptr %.0.i.i.i, align 2, !tbaa !221
  %i.w = zext i16 %i.v to i32
  br label %string_get.exit

bb.h:                                             ; preds = %bb.b
  switch i32 %i.k, label %default.unreachable [
    i32 0, label %bb.i
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str8.exit.i

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !389
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !390
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  br label %str8.exit.i

bb.k:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !239
  br label %str8.exit.i

bb.l:                                             ; preds = %bb.h
  tail call void @abort() #50
  unreachable

str8.exit.i:                                      ; preds = %bb.k, %bb.j, %bb.i
  %.0.i.i4.i = phi ptr [ %i.x, %bb.i ], [ %i.ae, %bb.j ], [ %i.ag, %bb.k ]
  %i.ah = load i8, ptr %.0.i.i4.i, align 1, !tbaa !218
  %i.ai = zext i8 %i.ah to i32
  br label %string_get.exit

string_get.exit:                                  ; preds = %str16.exit.i, %str8.exit.i
  %i.aj = phi i32 [ %i.w, %str16.exit.i ], [ %i.ai, %str8.exit.i ]
  %invariant.op = sub nsw i32 %i.c, %i.f          ; 2 uses
  %i.ak = add nsw i32 %i.f, -1
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %string_get.exit
  %.0 = phi i32 [ %2, %string_get.exit ], [ %i.ao, %bb.o ] ; 2 uses
  %.not = icmp sgt i32 %.0, %invariant.op
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = tail call fastcc i32 @string_indexof_char(ptr noundef nonnull %0, i32 noundef %i.aj, i32 noundef %.0) ; 4 uses
  %i.am = icmp slt i32 %i.al, 0
  %i.an = icmp sgt i32 %i.al, %invariant.op
  %or.cond = or i1 %i.am, %i.an
  br i1 %or.cond, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = add nuw nsw i32 %i.al, 1                ; 2 uses
  %i.ap = tail call fastcc i32 @string_cmp(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.ao, i32 noundef 1, i32 noundef %i.ak)
  %.not26 = icmp eq i32 %i.ap, 0
  br i1 %.not26, label %.loopexit, label %bb.m, !llvm.loop !2207

.loopexit:                                        ; preds = %bb.m, %bb.n, %bb.o, %bb.a
  %.022 = phi i32 [ %2, %bb.a ], [ -1, %bb.m ], [ -1, %bb.n ], [ %i.al, %bb.o ]
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @string_buffer_fill(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !646
  %i.c = add nsw i32 %i.b, %2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !645
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @string_buffer_realloc(ptr noundef nonnull %0, i32 noundef %i.c, i32 noundef %1)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp sgt i32 %2, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %.014, -1
  %i.j = icmp sgt i32 %.014, 1
  br i1 %i.j, label %.lr.ph, label %.loopexit, !llvm.loop !2208

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.014 = phi i32 [ %i.i, %bb.d ], [ %2, %bb.c ]  ; 2 uses
  %i.k = tail call fastcc i32 @string_buffer_putc16(ptr noundef %0, i32 noundef %1)
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %bb.d, label %..loopexit.loopexit_crit_edge, !llvm.loop !2208

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %.loopexit, !llvm.loop !2208

.loopexit:                                        ; preds = %bb.d, %bb.c, %..loopexit.loopexit_crit_edge, %bb.b
  %.010 = phi i32 [ -1, %bb.b ], [ -1, %..loopexit.loopexit_crit_edge ], [ 0, %bb.c ], [ 0, %bb.d ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @to_utf32_buf(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = load i64, ptr %1, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 2147483647                 ; 3 uses
  %i.e = tail call i32 @llvm.umax.i32(i32 %i.d, i32 1)
  %i.f = zext nneg i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232  ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !196
  %i.m = add i64 %i.g, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !197
  %i.p = add i64 %i.o, -1
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.g, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.r = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.i, i64 noundef %i.g), !inline_history !237 ; 6 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !232
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.s = load i64, ptr %i.j, align 8, !tbaa !217
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.j, align 8, !tbaa !217
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !218
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 1064
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !219
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull %i.u) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not15.i.i.i, i64 8, i64 %i.ab
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 -6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !218
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !221
  %i.ai = zext i16 %i.ah to i64
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i, %bb.a
  %i.aj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.i, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1256 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !233, !range !234, !noundef !235
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %js_malloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.ak, align 8, !tbaa !233
  %i.an = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !233
  br label %js_malloc.exit.thread

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.011.i.i.i = phi i64 [ 8, %bb.d ], [ %i.ac, %bb.e ], [ %i.ai, %bb.f ]
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !196
  %i.ap = add i64 %i.ao, %.011.i.i.i
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !196
  store i32 0, ptr %i.a, align 4, !tbaa !191
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %js_malloc.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.014 = phi i32 [ %3, %.lr.ph ], [ 0, %bb.i ]   ; 2 uses
  %i.aq = call fastcc i32 @string_getc(ptr noundef nonnull %1, ptr noundef %i.a)
  %3 = add nuw nsw i32 %.014, 1                   ; 2 uses
  %4 = zext nneg i32 %.014 to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !191
  %i.as = load i32, ptr %i.a, align 4, !tbaa !191
  %i.at = icmp slt i32 %i.as, %i.d
  br i1 %i.at, label %.lr.ph, label %js_malloc.exit.thread, !llvm.loop !2209

js_malloc.exit.thread:                            ; preds = %.lr.ph, %bb.i, %bb.h, %bb.g
  %.0.i13 = phi ptr [ null, %bb.h ], [ null, %bb.g ], [ %i.r, %bb.i ], [ %i.r, %.lr.ph ]
  %.1 = phi i32 [ -1, %bb.h ], [ -1, %bb.g ], [ 0, %bb.i ], [ %3, %.lr.ph ]
  store ptr %.0.i13, ptr %2, align 8, !tbaa !963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret i32 %.1
}

declare i32 @unicode_normalize(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #14

declare i32 @lre_case_conv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

declare zeroext i1 @lre_is_case_ignorable(i32 noundef) local_unnamed_addr #14

declare zeroext i1 @lre_is_cased(i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_string_iterator_next(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5, i32 %6) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = and i64 %2, 4294967295
  %.not.i.i = icmp eq i64 %i.c, 4294967295
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %i.f = load i16, ptr %i.e, align 2, !tbaa !276
  %.not3.i.i = icmp eq i16 %i.f, 47
  br i1 %.not3.i.i, label %JS_GetOpaque.exit.i, label %bb.c

JS_GetOpaque.exit.i:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !218  ; 6 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.c, label %JS_GetOpaque2.exit, !prof !404

bb.c:                                             ; preds = %bb.a, %bb.b, %JS_GetOpaque.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !232  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !251
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1884
  %i.n = load i32, ptr %i.m, align 4, !tbaa !296
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.o = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.j, ptr noundef nonnull %i.a, i32 noundef %i.n) ; 0 uses
  %i.p = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !115 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  store i32 0, ptr %5, align 4, !tbaa !191
  br label %bb.z

JS_GetOpaque2.exit:                               ; preds = %JS_GetOpaque.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 3
  br i1 %i.t, label %bb.h, label %bb.d

bb.d:                                             ; preds = %JS_GetOpaque2.exit
  %i.u = load ptr, ptr %i.h, align 8              ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 20 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !804  ; 3 uses
  store i32 %i.w, ptr %i.b, align 4, !tbaa !191
  %i.x = load i64, ptr %i.u, align 8
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 2147483647
  %.not27 = icmp ult i32 %i.w, %i.z
  %i.aa = ptrtoint ptr %i.u to i64
  br i1 %.not27, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !232
  %i.ad = trunc i64 %i.r to i32
  %i.ae = icmp ugt i32 %i.ad, -10
  br i1 %i.ae, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !191 ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !191
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ac, i64 %i.aa, i64 %i.r), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  store i32 0, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %i.q, align 8, !tbaa !240
  br label %bb.h

bb.h:                                             ; preds = %JS_GetOpaque2.exit, %JS_FreeValue.exit
  store i32 1, ptr %5, align 4, !tbaa !191
  br label %bb.z

bb.i:                                             ; preds = %bb.d
  %i.aj = call fastcc i32 @string_getc(ptr noundef nonnull %i.u, ptr noundef %i.b) ; 2 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !191
  store i32 %i.ak, ptr %i.v, align 4, !tbaa !804
  store i32 0, ptr %5, align 4, !tbaa !191
  %i.al = icmp samesign ult i32 %i.aj, 65536
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = trunc nuw i32 %i.aj to i16
  %i.an = tail call fastcc { i64, i64 } @js_new_string_char(ptr noundef %0, i16 noundef zeroext %i.am) ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0      ; 2 uses
  %.sroa.5.0.extract.shift = and i64 %i.ao, -4294967296
  %i.ap = extractvalue { i64, i64 } %i.an, 1
  br label %bb.z

bb.k:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.u, align 8
  %i.ar = lshr i64 %i.aq, 60
  %i.as = trunc nuw nsw i64 %i.ar to i32
  %i.at = and i32 %i.as, 3
  switch i32 %i.at, label %default.unreachable [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  br label %str16.exit

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !389
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !390
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  br label %str16.exit

bb.n:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !239
  br label %str16.exit

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.o:                                             ; preds = %bb.k
  tail call void @abort() #50
  unreachable

str16.exit:                                       ; preds = %bb.l, %bb.m, %bb.n
  %.0.i.i = phi ptr [ %i.au, %bb.l ], [ %i.bb, %bb.m ], [ %i.bd, %bb.n ]
  %i.be = zext nneg i32 %i.w to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !232 ; 9 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 48 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !196
  %i.bl = add i64 %i.bk, 28
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !197
  %i.bo = add i64 %i.bn, -1
  %i.bp = icmp ugt i64 %i.bl, %i.bo
  br i1 %i.bp, label %bb.x, label %bb.p, !prof !192

bb.p:                                             ; preds = %str16.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 616
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 624
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !222 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.bq
  br i1 %i.bt, label %bb.q, label %bb.r, !prof !192

bb.q:                                             ; preds = %bb.p
  %i.bu = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.bh, i32 noundef 3) ; 2 uses
  %.not.i32 = icmp eq ptr %i.bu, null
  br i1 %.not.i32, label %._crit_edge.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0.i31 = phi ptr [ %i.bu, %bb.q ], [ %i.bs, %bb.p ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i31, i64 38 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !221 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i31, i64 40
  %i.by = zext i16 %i.bw to i64
  %i.bz = mul nuw nsw i64 %i.by, 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 10 uses
  %i.cb = load i16, ptr %i.ca, align 8, !tbaa !218
  store i16 %i.cb, ptr %i.bv, align 2, !tbaa !221
  store i16 %i.bw, ptr %i.ca, align 8, !tbaa !218
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i31, i64 34 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !221
  %i.ce = add i16 %i.cd, 1                        ; 2 uses
  store i16 %i.ce, ptr %i.cc, align 2, !tbaa !221
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.i31, i64 36
  %i.cg = load i16, ptr %i.cf, align 4, !tbaa !221
  %i.ch = icmp eq i16 %i.ce, %i.cg
  br i1 %i.ch, label %bb.s, label %bb.t, !prof !192
end_hunk_3
