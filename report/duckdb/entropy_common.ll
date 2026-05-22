inline.NumInlined: 37
inline.NumDeleted: 11
begin_hunk_0_@_ZN11duckdb_zstd16FSE_getErrorNameEm:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @_ZN11duckdb_zstd11HUF_isErrorEm(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %0, -120
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN11duckdb_zstd16HUF_getErrorNameEm(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %0, -119
  %i.b = trunc nsw i64 %0 to i32
  %i.c = sub i32 0, %i.b
  %.0.i.i = select i1 %i.a, i32 0, i32 %i.c
  %i.d = tail call noundef ptr @_ZN11duckdb_zstd18ERR_getErrorStringENS_14ZSTD_ErrorCodeE(i32 noundef %.0.i.i)
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !3
  %i.e = add i32 %i.d, 1                          ; 4 uses
  %i.f = icmp ult i64 %4, 8
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %3, i64 %4, i1 false)
  %i.g = call noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 0), !inline_history !7 ; 3 uses
  %i.h = icmp ult i64 %i.g, -119
  %i.i = icmp ugt i64 %i.g, %4
  %i.j = and i1 %i.h, %i.i
  %.0129.i.i = select i1 %i.j, i64 -20, i64 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit

bb.e:                                             ; preds = %bb.c
  %i.k = zext i32 %i.e to i64
  %i.l = shl nuw nsw i64 %i.k, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %i.l, i1 false)
  %.val.i13 = load i32, ptr %3, align 1, !tbaa !3 ; 2 uses
  %i.m = and i32 %.val.i13, 15                    ; 4 uses
  %i.n = icmp samesign ugt i32 %i.m, 10
  br i1 %i.n, label %_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nuw nsw i32 %i.m, 5
  %i.p = lshr i32 %.val.i13, 4
  store i32 %i.o, ptr %2, align 4, !tbaa !3
  %i.q = shl nuw nsw i32 32, %i.m                 ; 2 uses
  %i.r = or disjoint i32 %i.q, 1
  %i.s = add nuw nsw i32 %i.m, 6
  %i.t = getelementptr inbounds i8, ptr %i.c, i64 -7 ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.c, i64 -4 ; 6 uses
  %i.w = ptrtoint ptr %i.v to i64                 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.y, %bb.f
  %.0161.i.i = phi i32 [ %i.r, %bb.f ], [ %.1162.i.i, %bb.y ] ; 3 uses
  %.0158.i.i = phi i32 [ %i.q, %bb.f ], [ %.1159.i.i, %bb.y ] ; 5 uses
  %.0153.i.i = phi i32 [ %i.p, %bb.f ], [ %i.ce, %bb.y ] ; 3 uses
  %.0144.i.i = phi i32 [ 4, %bb.f ], [ %.7151.i.i, %bb.y ] ; 3 uses
  %.0140.i.i = phi i32 [ 0, %bb.f ], [ %i.bn, %bb.y ] ; 3 uses
  %.0137.i.i = phi i32 [ %i.s, %bb.f ], [ %.1138.i.i, %bb.y ] ; 3 uses
  %.0136.i.i = phi i1 [ true, %bb.f ], [ %i.bq, %bb.y ]
  %.0134.i.i = phi ptr [ %3, %bb.f ], [ %.6.i.i, %bb.y ] ; 3 uses
  br i1 %.0136.i.i, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = xor i32 %.0153.i.i, -1
  %i.y = or i32 %i.x, -2147483648
  %i.z = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.y, i1 true) ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.z, 23
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h, %bb.k
  %.1135.i.i27 = phi ptr [ %.2.i.i, %bb.k ], [ %.0134.i.i, %bb.h ] ; 3 uses
  %.1141.i.i26 = phi i32 [ %i.ab, %bb.k ], [ %.0140.i.i, %bb.h ]
  %.1145.i.i25 = phi i32 [ %.2146.i.i, %bb.k ], [ %.0144.i.i, %bb.h ] ; 2 uses
  %i.ab = add i32 %.1141.i.i26, 36                ; 2 uses
  %.not187.i.i = icmp ugt ptr %.1135.i.i27, %i.t
  br i1 %.not187.i.i, label %bb.j, label %bb.i, !prof !8

bb.i:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %.1135.i.i27, i64 3
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ad = ptrtoint ptr %.1135.i.i27 to i64
  %.neg188.i.i = sub i64 %i.ad, %i.u
  %.tr.neg189.i.i = trunc i64 %.neg188.i.i to i32
  %.neg190.i.i = shl i32 %.tr.neg189.i.i, 3
  %i.ae = add i32 %.neg190.i.i, %.1145.i.i25
  %i.af = and i32 %i.ae, 31
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2146.i.i = phi i32 [ %.1145.i.i25, %bb.i ], [ %i.af, %bb.j ] ; 3 uses
  %.2.i.i = phi ptr [ %i.ac, %bb.i ], [ %i.v, %bb.j ] ; 3 uses
  %.val.i12 = load i32, ptr %.2.i.i, align 1, !tbaa !3
  %i.ag = lshr i32 %.val.i12, %.2146.i.i          ; 2 uses
  %i.ah = xor i32 %i.ag, -1
  %i.ai = or i32 %i.ah, -2147483648
  %i.aj = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.ai, i1 true) ; 2 uses
  %i.ak = icmp samesign ugt i32 %i.aj, 23
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %.1154.i.i.lcssa = phi i32 [ %.0153.i.i, %bb.h ], [ %i.ag, %bb.k ]
  %.1145.i.i.lcssa = phi i32 [ %.0144.i.i, %bb.h ], [ %.2146.i.i, %bb.k ]
  %.1141.i.i.lcssa = phi i32 [ %.0140.i.i, %bb.h ], [ %i.ab, %bb.k ]
  %.1135.i.i.lcssa = phi ptr [ %.0134.i.i, %bb.h ], [ %.2.i.i, %bb.k ] ; 5 uses
  %.0131.in.i.i.lcssa = phi i32 [ %i.z, %bb.h ], [ %i.aj, %bb.k ] ; 2 uses
  %.0131.i.i = lshr i32 %.0131.in.i.i.lcssa, 1
  %i.al = mul nuw nsw i32 %.0131.i.i, 3
  %i.am = add i32 %i.al, %.1141.i.i.lcssa
  %i.an = and i32 %.0131.in.i.i.lcssa, 30         ; 2 uses
  %i.ao = lshr i32 %.1154.i.i.lcssa, %i.an
  %i.ap = and i32 %i.ao, 3
  %i.aq = add i32 %i.am, %i.ap                    ; 3 uses
  %i.ar = add nuw nsw i32 %.1145.i.i.lcssa, 2
  %i.as = add nuw nsw i32 %i.ar, %i.an            ; 4 uses
  %.not.i.i = icmp ult i32 %i.aq, %i.e
  br i1 %.not.i.i, label %bb.l, label %.thread18

bb.l:                                             ; preds = %._crit_edge
  %.not176.i.i = icmp ugt ptr %.1135.i.i.lcssa, %i.t
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  br i1 %.not176.i.i, label %bb.m, label %._crit_edge34, !prof !8

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %.1135.i.i.lcssa, i64 %i.au
  %.not177.i.i = icmp ugt ptr %i.av, %i.v
  br i1 %.not177.i.i, label %bb.n, label %._crit_edge34

._crit_edge34:                                    ; preds = %bb.l, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.1135.i.i.lcssa, i64 %i.au
  %i.ax = and i32 %i.as, 7
  br label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ay = ptrtoint ptr %.1135.i.i.lcssa to i64
  %.neg.i.i = sub i64 %i.ay, %i.w
  %.tr.neg.i.i = trunc i64 %.neg.i.i to i32
  %.neg178.i.i = shl i32 %.tr.neg.i.i, 3
  %i.az = add i32 %.neg178.i.i, %i.as
  %i.ba = and i32 %i.az, 31
  br label %.thread

.thread:                                          ; preds = %._crit_edge34, %bb.n
  %.3147.i.i = phi i32 [ %i.ax, %._crit_edge34 ], [ %i.ba, %bb.n ] ; 2 uses
  %.3.i.i = phi ptr [ %i.aw, %._crit_edge34 ], [ %i.v, %bb.n ] ; 2 uses
  %.val.i11 = load i32, ptr %.3.i.i, align 1, !tbaa !3
  %i.bb = lshr i32 %.val.i11, %.3147.i.i
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.g
  %.3156.i.i = phi i32 [ %i.bb, %.thread ], [ %.0153.i.i, %bb.g ] ; 2 uses
  %.5149.i.i = phi i32 [ %.3147.i.i, %.thread ], [ %.0144.i.i, %bb.g ]
  %.2142.i.i = phi i32 [ %i.aq, %.thread ], [ %.0140.i.i, %bb.g ] ; 2 uses
  %.5.i.i = phi ptr [ %.3.i.i, %.thread ], [ %.0134.i.i, %bb.g ] ; 6 uses
  %i.bc = shl nuw nsw i32 %.0158.i.i, 1
  %i.bd = add nsw i32 %i.bc, -1                   ; 2 uses
  %i.be = sub nsw i32 %i.bd, %.0161.i.i           ; 2 uses
  %i.bf = add nsw i32 %.0158.i.i, -1
  %i.bg = and i32 %.3156.i.i, %i.bf               ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %i.be
  br i1 %i.bh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %.0137.i.i, -1
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = and i32 %.3156.i.i, %i.bd               ; 2 uses
  %.not179.i.i = icmp slt i32 %i.bj, %.0158.i.i
  %i.bk = select i1 %.not179.i.i, i32 0, i32 %i.be
  %spec.select.i.i = sub nsw i32 %i.bj, %i.bk
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn.i.i = phi i32 [ %i.bi, %bb.p ], [ %.0137.i.i, %bb.q ]
  %.1.i.i = phi i32 [ %i.bg, %bb.p ], [ %spec.select.i.i, %bb.q ] ; 3 uses
  %.6150.i.i = add nuw nsw i32 %.pn.i.i, %.5149.i.i ; 5 uses
  %i.bl = add nsw i32 %.1.i.i, -1                 ; 3 uses
  %6 = sub nsw i32 1, %.1.i.i
  %.narrow = icmp sgt i32 %.1.i.i, 1
  %.1162.i.i.p = select i1 %.narrow, i32 %6, i32 %i.bl
  %.1162.i.i = add i32 %.1162.i.i.p, %.0161.i.i   ; 6 uses
  %i.bm = trunc i32 %i.bl to i16
  %i.bn = add nuw i32 %.2142.i.i, 1               ; 4 uses
  %i.bo = zext i32 %.2142.i.i to i64
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bo
  store i16 %i.bm, ptr %i.bp, align 2, !tbaa !11
  %i.bq = icmp ne i32 %i.bl, 0
  %i.br = icmp slt i32 %.1162.i.i, %.0158.i.i
  br i1 %i.br, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bs = icmp slt i32 %.1162.i.i, 2
  br i1 %i.bs, label %.thread18, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bt = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1162.i.i, i1 true) ; 2 uses
  %i.bu = sub nuw nsw i32 32, %i.bt
  %i.bv = lshr exact i32 -2147483648, %i.bt
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %.1159.i.i = phi i32 [ %i.bv, %bb.t ], [ %.0158.i.i, %bb.r ]
  %.1138.i.i = phi i32 [ %i.bu, %bb.t ], [ %.0137.i.i, %bb.r ]
  %.not180.i.i = icmp ult i32 %i.bn, %i.e
  br i1 %.not180.i.i, label %bb.v, label %.thread18

bb.v:                                             ; preds = %bb.u
  %.not181.i.i = icmp ugt ptr %.5.i.i, %i.t
  %i.bw = lshr i32 %.6150.i.i, 3
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  br i1 %.not181.i.i, label %bb.w, label %._crit_edge35, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.by = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 %i.bx
  %.not182.i.i = icmp ugt ptr %i.by, %i.v
  br i1 %.not182.i.i, label %bb.x, label %._crit_edge35

._crit_edge35:                                    ; preds = %bb.v, %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %.5.i.i, i64 %i.bx
  %i.ca = and i32 %.6150.i.i, 7
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cb = ptrtoint ptr %.5.i.i to i64
  %.neg183.i.i = sub i64 %i.cb, %i.w
  %.tr.neg184.i.i = trunc i64 %.neg183.i.i to i32
  %.neg185.i.i = shl i32 %.tr.neg184.i.i, 3
  %i.cc = add i32 %.6150.i.i, %.neg185.i.i
  %i.cd = and i32 %i.cc, 31
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge35, %bb.x
  %.7151.i.i = phi i32 [ %i.ca, %._crit_edge35 ], [ %i.cd, %bb.x ] ; 2 uses
  %.6.i.i = phi ptr [ %i.bz, %._crit_edge35 ], [ %i.v, %bb.x ] ; 2 uses
  %.val.i = load i32, ptr %.6.i.i, align 1, !tbaa !3
  %i.ce = lshr i32 %.val.i, %.7151.i.i
  br label %bb.g

.thread18:                                        ; preds = %bb.u, %bb.s, %._crit_edge
  %.2163.i.i = phi i32 [ %.0161.i.i, %._crit_edge ], [ %.1162.i.i, %bb.s ], [ %.1162.i.i, %bb.u ]
  %.9.i.i = phi i32 [ %i.as, %._crit_edge ], [ %.6150.i.i, %bb.s ], [ %.6150.i.i, %bb.u ] ; 2 uses
  %.3143.i.i = phi i32 [ %i.aq, %._crit_edge ], [ %i.bn, %bb.s ], [ %i.bn, %bb.u ] ; 2 uses
  %.8.i.i = phi ptr [ %.1135.i.i.lcssa, %._crit_edge ], [ %.5.i.i, %bb.s ], [ %.5.i.i, %bb.u ]
  %.not186.i.i = icmp eq i32 %.2163.i.i, 1
  br i1 %.not186.i.i, label %bb.z, label %_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit

bb.z:                                             ; preds = %.thread18
  %i.cf = icmp ugt i32 %.3143.i.i, %i.e
  br i1 %i.cf, label %_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = icmp sgt i32 %.9.i.i, 32
  br i1 %i.cg, label %_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = add i32 %.3143.i.i, -1
  store i32 %i.ch, ptr %1, align 4, !tbaa !3
  %i.ci = add nsw i32 %.9.i.i, 7
  %i.cj = ashr i32 %i.ci, 3
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %.8.i.i, i64 %i.ck
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %3 to i64
  %i.co = sub i64 %i.cm, %i.cn
  br label %_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit

_ZN11duckdb_zstdL27FSE_readNCount_body_defaultEPsPjS1_PKvm.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %.thread18, %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ %.0129.i.i, %bb.d ], [ %i.co, %bb.ab ], [ -44, %bb.e ], [ -20, %.thread18 ], [ -48, %bb.z ], [ -20, %bb.aa ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i64 @_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !3
  %i.d = add i32 %i.c, 1                          ; 4 uses
  %i.e = icmp ult i64 %4, 8
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr align 1 %3, i64 %4, i1 false)
  %i.f = call noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %i.a, i64 noundef 8, i32 noundef 0), !inline_history !13 ; 3 uses
  %i.g = icmp ult i64 %i.f, -119
  %i.h = icmp ugt i64 %i.f, %4
  %i.i = and i1 %i.g, %i.h
  %.0129.i = select i1 %i.i, i64 -20, i64 %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit

bb.c:                                             ; preds = %bb.a
  %i.j = zext i32 %i.d to i64
  %i.k = shl nuw nsw i64 %i.j, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 %i.k, i1 false)
  %.val.i = load i32, ptr %3, align 1, !tbaa !3   ; 2 uses
  %i.l = and i32 %.val.i, 15                      ; 4 uses
  %i.m = icmp samesign ugt i32 %i.l, 10
  br i1 %i.m, label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.l, 5
  %i.o = lshr i32 %.val.i, 4
  store i32 %i.n, ptr %2, align 4, !tbaa !3
  %i.p = shl nuw nsw i32 32, %i.l                 ; 2 uses
  %i.q = or disjoint i32 %i.p, 1
  %i.r = add nuw nsw i32 %i.l, 6
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -7 ; 4 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 6 uses
  %i.v = ptrtoint ptr %i.u to i64                 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %bb.d
  %.0161.i = phi i32 [ %i.q, %bb.d ], [ %.1162.i, %bb.w ] ; 3 uses
  %.0158.i = phi i32 [ %i.p, %bb.d ], [ %.1159.i, %bb.w ] ; 5 uses
  %.0153.i = phi i32 [ %i.o, %bb.d ], [ %i.cd, %bb.w ] ; 3 uses
  %.0144.i = phi i32 [ 4, %bb.d ], [ %.7151.i, %bb.w ] ; 3 uses
  %.0140.i = phi i32 [ 0, %bb.d ], [ %i.bm, %bb.w ] ; 3 uses
  %.0137.i = phi i32 [ %i.r, %bb.d ], [ %.1138.i, %bb.w ] ; 3 uses
  %.0136.i = phi i1 [ true, %bb.d ], [ %i.bp, %bb.w ]
  %.0134.i = phi ptr [ %3, %bb.d ], [ %.6.i, %bb.w ] ; 3 uses
  br i1 %.0136.i, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = xor i32 %.0153.i, -1
  %i.x = or i32 %i.w, -2147483648
  %i.y = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.x, i1 true) ; 2 uses
  %i.z = icmp samesign ugt i32 %i.y, 23
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %.1135.i20 = phi ptr [ %.2.i, %bb.i ], [ %.0134.i, %bb.f ] ; 3 uses
  %.1141.i19 = phi i32 [ %i.aa, %bb.i ], [ %.0140.i, %bb.f ]
  %.1145.i18 = phi i32 [ %.2146.i, %bb.i ], [ %.0144.i, %bb.f ] ; 2 uses
  %i.aa = add i32 %.1141.i19, 36                  ; 2 uses
  %.not187.i = icmp ugt ptr %.1135.i20, %i.s
  br i1 %.not187.i, label %bb.h, label %bb.g, !prof !8

bb.g:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.1135.i20, i64 3
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ac = ptrtoint ptr %.1135.i20 to i64
  %.neg188.i = sub i64 %i.ac, %i.t
  %.tr.neg189.i = trunc i64 %.neg188.i to i32
  %.neg190.i = shl i32 %.tr.neg189.i, 3
  %i.ad = add i32 %.neg190.i, %.1145.i18
  %i.ae = and i32 %i.ad, 31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2146.i = phi i32 [ %.1145.i18, %bb.g ], [ %i.ae, %bb.h ] ; 3 uses
  %.2.i = phi ptr [ %i.ab, %bb.g ], [ %i.u, %bb.h ] ; 3 uses
  %.val.i4 = load i32, ptr %.2.i, align 1, !tbaa !3
  %i.af = lshr i32 %.val.i4, %.2146.i             ; 2 uses
  %i.ag = xor i32 %i.af, -1
  %i.ah = or i32 %i.ag, -2147483648
  %i.ai = tail call noundef range(i32 0, 32) i32 @llvm.cttz.i32(i32 range(i32 -2147483648, 0) %i.ah, i1 true) ; 2 uses
  %i.aj = icmp samesign ugt i32 %i.ai, 23
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %.1154.i.lcssa = phi i32 [ %.0153.i, %bb.f ], [ %i.af, %bb.i ]
  %.1145.i.lcssa = phi i32 [ %.0144.i, %bb.f ], [ %.2146.i, %bb.i ]
  %.1141.i.lcssa = phi i32 [ %.0140.i, %bb.f ], [ %i.aa, %bb.i ]
  %.1135.i.lcssa = phi ptr [ %.0134.i, %bb.f ], [ %.2.i, %bb.i ] ; 5 uses
  %.0131.in.i.lcssa = phi i32 [ %i.y, %bb.f ], [ %i.ai, %bb.i ] ; 2 uses
  %.0131.i = lshr i32 %.0131.in.i.lcssa, 1
  %i.ak = mul nuw nsw i32 %.0131.i, 3
  %i.al = add i32 %i.ak, %.1141.i.lcssa
  %i.am = and i32 %.0131.in.i.lcssa, 30           ; 2 uses
  %i.an = lshr i32 %.1154.i.lcssa, %i.am
  %i.ao = and i32 %i.an, 3
  %i.ap = add i32 %i.al, %i.ao                    ; 3 uses
  %i.aq = add nuw nsw i32 %.1145.i.lcssa, 2
  %i.ar = add nuw nsw i32 %i.aq, %i.am            ; 4 uses
  %.not.i = icmp ult i32 %i.ap, %i.d
  br i1 %.not.i, label %bb.j, label %.thread11

bb.j:                                             ; preds = %._crit_edge
  %.not176.i = icmp ugt ptr %.1135.i.lcssa, %i.s
  %i.as = lshr i32 %i.ar, 3
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  br i1 %.not176.i, label %bb.k, label %._crit_edge27, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.1135.i.lcssa, i64 %i.at
  %.not177.i = icmp ugt ptr %i.au, %i.u
  br i1 %.not177.i, label %bb.l, label %._crit_edge27

._crit_edge27:                                    ; preds = %bb.j, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.1135.i.lcssa, i64 %i.at
  %i.aw = and i32 %i.ar, 7
  br label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ax = ptrtoint ptr %.1135.i.lcssa to i64
  %.neg.i = sub i64 %i.ax, %i.v
  %.tr.neg.i = trunc i64 %.neg.i to i32
  %.neg178.i = shl i32 %.tr.neg.i, 3
  %i.ay = add i32 %.neg178.i, %i.ar
  %i.az = and i32 %i.ay, 31
  br label %.thread

.thread:                                          ; preds = %._crit_edge27, %bb.l
  %.3147.i = phi i32 [ %i.aw, %._crit_edge27 ], [ %i.az, %bb.l ] ; 2 uses
  %.3.i = phi ptr [ %i.av, %._crit_edge27 ], [ %i.u, %bb.l ] ; 2 uses
  %.val.i5 = load i32, ptr %.3.i, align 1, !tbaa !3
  %i.ba = lshr i32 %.val.i5, %.3147.i
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.e
  %.3156.i = phi i32 [ %i.ba, %.thread ], [ %.0153.i, %bb.e ] ; 2 uses
  %.5149.i = phi i32 [ %.3147.i, %.thread ], [ %.0144.i, %bb.e ]
  %.2142.i = phi i32 [ %i.ap, %.thread ], [ %.0140.i, %bb.e ] ; 2 uses
  %.5.i = phi ptr [ %.3.i, %.thread ], [ %.0134.i, %bb.e ] ; 6 uses
  %i.bb = shl nuw nsw i32 %.0158.i, 1
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.0161.i             ; 2 uses
  %i.be = add nsw i32 %.0158.i, -1
  %i.bf = and i32 %.3156.i, %i.be                 ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %i.bd
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %.0137.i, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %.3156.i, %i.bc                 ; 2 uses
  %.not179.i = icmp slt i32 %i.bi, %.0158.i
  %i.bj = select i1 %.not179.i, i32 0, i32 %i.bd
  %spec.select.i = sub nsw i32 %i.bi, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi i32 [ %i.bh, %bb.n ], [ %.0137.i, %bb.o ]
  %.1.i = phi i32 [ %i.bf, %bb.n ], [ %spec.select.i, %bb.o ] ; 3 uses
  %.6150.i = add nuw nsw i32 %.pn.i, %.5149.i     ; 5 uses
  %i.bk = add nsw i32 %.1.i, -1                   ; 3 uses
  %5 = sub nsw i32 1, %.1.i
  %.narrow = icmp sgt i32 %.1.i, 1
  %.1162.i.p = select i1 %.narrow, i32 %5, i32 %i.bk
  %.1162.i = add i32 %.1162.i.p, %.0161.i         ; 6 uses
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = add nuw i32 %.2142.i, 1                 ; 4 uses
  %i.bn = zext i32 %.2142.i to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !11
  %i.bp = icmp ne i32 %i.bk, 0
  %i.bq = icmp slt i32 %.1162.i, %.0158.i
  br i1 %i.bq, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.br = icmp slt i32 %.1162.i, 2
  br i1 %i.br, label %.thread11, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1162.i, i1 true) ; 2 uses
  %i.bt = sub nuw nsw i32 32, %i.bs
  %i.bu = lshr exact i32 -2147483648, %i.bs
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1159.i = phi i32 [ %i.bu, %bb.r ], [ %.0158.i, %bb.p ]
  %.1138.i = phi i32 [ %i.bt, %bb.r ], [ %.0137.i, %bb.p ]
  %.not180.i = icmp ult i32 %i.bm, %i.d
  br i1 %.not180.i, label %bb.t, label %.thread11

bb.t:                                             ; preds = %bb.s
  %.not181.i = icmp ugt ptr %.5.i, %i.s
  %i.bv = lshr i32 %.6150.i, 3
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  br i1 %.not181.i, label %bb.u, label %._crit_edge28, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %.5.i, i64 %i.bw
  %.not182.i = icmp ugt ptr %i.bx, %i.u
  br i1 %.not182.i, label %bb.v, label %._crit_edge28

._crit_edge28:                                    ; preds = %bb.t, %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %.5.i, i64 %i.bw
  %i.bz = and i32 %.6150.i, 7
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ca = ptrtoint ptr %.5.i to i64
  %.neg183.i = sub i64 %i.ca, %i.v
  %.tr.neg184.i = trunc i64 %.neg183.i to i32
  %.neg185.i = shl i32 %.tr.neg184.i, 3
  %i.cb = add i32 %.6150.i, %.neg185.i
  %i.cc = and i32 %i.cb, 31
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge28, %bb.v
  %.7151.i = phi i32 [ %i.bz, %._crit_edge28 ], [ %i.cc, %bb.v ] ; 2 uses
  %.6.i = phi ptr [ %i.by, %._crit_edge28 ], [ %i.u, %bb.v ] ; 2 uses
  %.val.i6 = load i32, ptr %.6.i, align 1, !tbaa !3
  %i.cd = lshr i32 %.val.i6, %.7151.i
  br label %bb.e

.thread11:                                        ; preds = %bb.s, %bb.q, %._crit_edge
  %.2163.i = phi i32 [ %.0161.i, %._crit_edge ], [ %.1162.i, %bb.q ], [ %.1162.i, %bb.s ]
  %.9.i = phi i32 [ %i.ar, %._crit_edge ], [ %.6150.i, %bb.q ], [ %.6150.i, %bb.s ] ; 2 uses
  %.3143.i = phi i32 [ %i.ap, %._crit_edge ], [ %i.bm, %bb.q ], [ %i.bm, %bb.s ] ; 2 uses
  %.8.i = phi ptr [ %.1135.i.lcssa, %._crit_edge ], [ %.5.i, %bb.q ], [ %.5.i, %bb.s ]
  %.not186.i = icmp eq i32 %.2163.i, 1
  br i1 %.not186.i, label %bb.x, label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit

bb.x:                                             ; preds = %.thread11
  %i.ce = icmp ugt i32 %.3143.i, %i.d
  br i1 %i.ce, label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cf = icmp sgt i32 %.9.i, 32
  br i1 %i.cf, label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = add i32 %.3143.i, -1
  store i32 %i.cg, ptr %1, align 4, !tbaa !3
  %i.ch = add nsw i32 %.9.i, 7
  %i.ci = ashr i32 %i.ch, 3
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %.8.i, i64 %i.cj
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %3 to i64
  %i.cn = sub i64 %i.cl, %i.cm
  br label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit

_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit: ; preds = %bb.b, %bb.c, %.thread11, %bb.x, %bb.y, %bb.z
  %.1130.i = phi i64 [ %.0129.i, %bb.b ], [ %i.cn, %bb.z ], [ -44, %bb.c ], [ -20, %.thread11 ], [ -48, %bb.x ], [ -20, %bb.y ]
  ret i64 %.1130.i
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm(ptr noundef writeonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, -9223372036854775808) i64 @_ZN11duckdb_zstd13HUF_readStatsEPhmPjS1_S1_PKvm(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [219 x i32], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call noundef i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.a, i64 noundef 876, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, -9223372036854775808) i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef %0, i64 noundef %1, ptr noundef captures(none) %2, ptr noundef writeonly captures(none) %3, ptr noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %9, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr %5, align 1, !tbaa !14      ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %i.e = icmp slt i8 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i64 %i.d, -127                   ; 6 uses
  %i.g = add nsw i64 %i.d, -126
  %i.h = lshr i64 %i.g, 1                         ; 2 uses
  %.not88.i.i = icmp ult i64 %i.h, %6
  br i1 %.not88.i.i, label %bb.f, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.f:                                             ; preds = %bb.e
  %.not89.i.i = icmp ult i64 %i.f, %1
  br i1 %.not89.i.i, label %iter.check, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

iter.check:                                       ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax29 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.j = add nsw i64 %umax29, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add nsw i64 %i.d, -128
  %i.n = lshr i64 %i.m, 1
  %i.o = and i64 %i.d, 126
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.p, i64 2
  %i.q = getelementptr i8, ptr %5, i64 %i.n
  %scevgep28 = getelementptr i8, ptr %i.q, i64 2
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.f, 31
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 4 uses
  %i.r = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 1                        ; 2 uses
  %i.t = and i64 %index, 9223372036854775792
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.u, align 1, !tbaa !14, !alias.scope !15
  %wide.load31 = load <8 x i8>, ptr %i.v, align 1, !tbaa !14, !alias.scope !15
  %i.w = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.x = lshr <8 x i8> %wide.load31, splat (i8 4)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load32 = load <8 x i8>, ptr %i.u, align 1, !tbaa !14, !alias.scope !15
  %wide.load33 = load <8 x i8>, ptr %i.v, align 1, !tbaa !14, !alias.scope !15
  %i.ab = and <8 x i8> %wide.load32, splat (i8 15)
  %i.ac = and <8 x i8> %wide.load33, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.w, <8 x i8> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.y, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %interleaved.vec34 = shufflevector <8 x i8> %i.x, <8 x i8> %i.ac, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34, ptr %i.aa, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !20

end_hunk_0
