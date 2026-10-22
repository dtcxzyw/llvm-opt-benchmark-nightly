Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xutils?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xdl_hash_record_with_whitespace:bb.a
  %i.dn = load i8, ptr %i.ef, align 1, !tbaa !21  ; 2 uses
  %.not = icmp eq i8 %i.dn, 10
  br i1 %.not, label %.critedge, label %.lr.ph92.split, !llvm.loop !53

.lr.ph92.split:                                   ; preds = %.lr.ph92, %bb.n
  %i.do = phi i8 [ %i.dn, %bb.n ], [ %i.l, %.lr.ph92 ]
  %.0517491 = phi i64 [ %.3, %bb.n ], [ 5381, %.lr.ph92 ] ; 4 uses
  %.0507590 = phi ptr [ %i.ef, %bb.n ], [ %i.b, %.lr.ph92 ] ; 4 uses
  %i.dp = zext i8 %i.do to i64                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !21
  %i.ds = and i8 %i.dr, 1
  %.not59 = icmp eq i8 %i.ds, 0
  br i1 %.not59, label %bb.o, label %.preheader66.preheader

.preheader66.preheader:                           ; preds = %.lr.ph92.split
  %i.dt = getelementptr inbounds nuw i8, ptr %.0507590, i64 1 ; 2 uses
  %i.du = icmp ult ptr %i.dt, %1
  br i1 %i.du, label %.lr.ph182, label %.critedge2

.preheader66:                                     ; preds = %.lr.ph182
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dx, i64 1 ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %1
  br i1 %i.dw, label %.lr.ph182, label %.critedge2, !llvm.loop !54

.lr.ph182:                                        ; preds = %.preheader66.preheader, %.preheader66
  %i.dx = phi ptr [ %i.dv, %.preheader66 ], [ %i.dt, %.preheader66.preheader ] ; 4 uses
  %.1181 = phi ptr [ %i.dx, %.preheader66 ], [ %.0507590, %.preheader66.preheader ]
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !21  ; 2 uses
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !21
  %i.ec = and i8 %i.eb, 1
  %.not60 = icmp eq i8 %i.ec, 0
  %.not61 = icmp eq i8 %i.dy, 10
  %or.cond65 = or i1 %.not61, %.not60
  br i1 %or.cond65, label %..critedge2.loopexit_crit_edge, label %.preheader66, !llvm.loop !54

bb.o:                                             ; preds = %.lr.ph92.split
  %i.ed = mul i64 %.0517491, 33
  %i.ee = xor i64 %i.ed, %i.dp
  br label %.critedge2

..critedge2.loopexit_crit_edge:                   ; preds = %.lr.ph182
  br label %.critedge2, !llvm.loop !54

.critedge2:                                       ; preds = %.preheader66, %.preheader66.preheader, %..critedge2.loopexit_crit_edge, %bb.o
  %.3 = phi i64 [ %i.ee, %bb.o ], [ %.0517491, %.preheader66.preheader ], [ %.0517491, %..critedge2.loopexit_crit_edge ], [ %.0517491, %.preheader66 ] ; 3 uses
  %.2 = phi ptr [ %.0507590, %bb.o ], [ %.0507590, %.preheader66.preheader ], [ %.1181, %..critedge2.loopexit_crit_edge ], [ %i.dx, %.preheader66 ]
  %i.ef = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 5 uses
  %i.eg = icmp ult ptr %i.ef, %1
  br i1 %i.eg, label %bb.n, label %.critedge, !llvm.loop !53

.critedge:                                        ; preds = %bb.n, %.critedge2, %bb.j, %.loopexit.us, %bb.i, %.critedge2.us.us.thread, %bb.b, %bb.f, %.lr.ph76.split.us, %.lr.ph76.split, %bb.a
  %.051.lcssa = phi i64 [ 5381, %bb.a ], [ 5381, %.lr.ph76.split.us ], [ 5381, %.lr.ph76.split ], [ %.3.us99, %bb.j ], [ %.3.us99.us, %bb.i ], [ %.3.us, %bb.b ], [ %.3.us, %bb.f ], [ %.3.us99.us, %.critedge2.us.us.thread ], [ %.3.us99, %.loopexit.us ], [ %.3, %.critedge2 ], [ %.3, %bb.n ]
  %.050.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.b, %.lr.ph76.split.us ], [ %i.b, %.lr.ph76.split ], [ %i.dl, %bb.j ], [ %i.at, %bb.i ], [ %i.x, %bb.b ], [ %scevgep, %bb.f ], [ %i.at, %.critedge2.us.us.thread ], [ %i.dl, %.loopexit.us ], [ %i.ef, %.critedge2 ], [ %i.ef, %bb.n ]
  %.lcssa70 = phi i64 [ 0, %bb.a ], [ 1, %.lr.ph76.split.us ], [ 1, %.lr.ph76.split ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.b ], [ 0, %bb.f ], [ 0, %.critedge2.us.us.thread ], [ 0, %.loopexit.us ], [ 1, %bb.n ], [ 0, %.critedge2 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.050.lcssa, i64 %.lcssa70
  store ptr %i.eh, ptr %0, align 8, !tbaa !36
  ret i64 %.051.lcssa
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @xdl_hash_record_verbatim(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp sgt i64 %i.d, 1
  br i1 %i.e, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %1, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.f
  %.043 = phi i64 [ %i.ae, %bb.f ], [ 5381, %.preheader ] ; 4 uses
  %.0 = phi ptr [ %i.af, %bb.f ], [ %i.a, %.preheader ] ; 4 uses
  %i.g = load i8, ptr %.0, align 1, !tbaa !21     ; 2 uses
  %i.h = zext i8 %i.g to i64                      ; 3 uses
  %i.i = icmp eq i8 %i.g, 10
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.j, ptr %0, align 8, !tbaa !36
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21    ; 2 uses
  %i.l = icmp eq i8 %i.k, 10
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.0, i64 2
  store ptr %i.m, ptr %0, align 8, !tbaa !36
  %i.n = add i64 %.043, %i.h
  %i.o = tail call { i64, i64 } asm "", "=r,=r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 %i.n, i64 %.043) #20, !srcloc !59 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  %i.r = shl i64 %i.q, 5
  %i.s = add i64 %i.r, %i.p
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.t = zext i8 %i.k to i64
  %i.u = mul i64 %.043, 1089
  %i.v = add nuw nsw i64 %i.t, %i.h
  %i.w = tail call { i64, i64 } asm "", "=r,=r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 %i.v, i64 %i.h) #20, !srcloc !60 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0
  %i.y = extractvalue { i64, i64 } %i.w, 1
  %i.z = shl i64 %i.y, 5
  %i.aa = add i64 %i.z, %i.x
  %i.ab = tail call { i64, i64 } asm "", "=r,=r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa, i64 %i.u) #20, !srcloc !61 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 3 uses
  %i.ag = icmp ult ptr %i.af, %i.f
  br i1 %i.ag, label %bb.b, label %.loopexit, !llvm.loop !58

.loopexit:                                        ; preds = %bb.f, %bb.a
  %.144 = phi i64 [ 5381, %bb.a ], [ %i.ae, %bb.f ] ; 4 uses
  %.1 = phi ptr [ %i.a, %bb.a ], [ %i.af, %bb.f ] ; 2 uses
  store ptr %1, ptr %0, align 8, !tbaa !36
  %i.ah = icmp ult ptr %.1, %1
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.ai = load i8, ptr %.1, align 1, !tbaa !21    ; 2 uses
  %.not = icmp eq i8 %i.ai, 10
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext i8 %i.ai to i64
  %i.ak = add i64 %.144, %i.aj
  %i.al = tail call { i64, i64 } asm "", "=r,=r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 %i.ak, i64 %.144) #20, !srcloc !62 ; 2 uses
  %i.am = extractvalue { i64, i64 } %i.al, 0
  %i.an = extractvalue { i64, i64 } %i.al, 1
  %i.ao = shl i64 %i.an, 5
  %i.ap = add i64 %i.ao, %i.am
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.g, %bb.h, %bb.e, %bb.c
  %.045 = phi i64 [ %.043, %bb.c ], [ %i.s, %bb.e ], [ %i.ap, %bb.h ], [ %.144, %bb.g ], [ %.144, %.loopexit ]
  ret i64 %.045
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local range(i32 1, 33) i32 @xdl_hashbits(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 1
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi i32 [ %i.c, %.lr.ph ], [ 0, %bb.a ]  ; 2 uses
  %.078 = phi i32 [ %i.b, %.lr.ph ], [ 1, %bb.a ]
  %i.b = shl i32 %.078, 1                         ; 2 uses
  %i.c = add nuw nsw i32 %.09, 1                  ; 2 uses
  %i.d = icmp ult i32 %i.b, %0
  %i.e = icmp samesign ult i32 %.09, 31
  %i.f = select i1 %i.d, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph, label %._crit_edge, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.c, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define dso_local noundef i32 @xdl_num_out(ptr noundef %0, i64 noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !21
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  store i8 45, ptr %i.d, align 2, !tbaa !21
  %i.e = sub nsw i64 0, %1
  br label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %.not31 = icmp eq i64 %1, 0
  br i1 %.not31, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.b
  %.12028.ph = phi ptr [ %i.b, %bb.b ], [ %i.d, %.thread ]
  %.12227.ph = phi i64 [ %1, %bb.b ], [ %i.e, %.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.12028 = phi ptr [ %i.i, %.lr.ph ], [ %.12028.ph, %.lr.ph.preheader ]
  %.12227 = phi i64 [ %i.j, %.lr.ph ], [ %.12227.ph, %.lr.ph.preheader ] ; 3 uses
  %i.f = urem i64 %.12227, 10
  %i.g = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !21    ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.12028, i64 -1 ; 4 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !21
  %i.j = udiv i64 %.12227, 10
  %i.k = icmp samesign ugt i64 %.12227, 9
  %i.l = icmp ugt ptr %i.i, %i.a
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader
  %.030 = phi ptr [ %i.p, %.preheader ], [ %0, %._crit_edge ] ; 2 uses
  %.229 = phi ptr [ %i.o, %.preheader ], [ %i.i, %._crit_edge ]
  %i.n = phi i8 [ %.pr, %.preheader ], [ %i.h, %._crit_edge ]
  store i8 %i.n, ptr %.030, align 1, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %.229, i64 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.030, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.o, align 1, !tbaa !21    ; 2 uses
  %.not26 = icmp eq i8 %.pr, 0
  br i1 %.not26, label %.loopexit, label %.preheader, !llvm.loop !1

._crit_edge.thread:                               ; preds = %bb.b, %._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 48, ptr %0, align 1, !tbaa !21
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %._crit_edge.thread
  %.1 = phi ptr [ %i.q, %._crit_edge.thread ], [ %i.p, %.preheader ] ; 2 uses
  store i8 0, ptr %.1, align 1, !tbaa !21
  %i.r = ptrtoint ptr %.1 to i64
  %i.s = ptrtoint ptr %0 to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.u
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xdl_emit_hunk_hdr(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %7 = alloca %struct.s_mmbuffer, align 8         ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 757088320, ptr %i.e, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 3 uses
  %.not.i = icmp eq i64 %1, 0                     ; 2 uses
  %i.i = sext i1 %.not.i to i64
  %i.j = add nsw i64 %0, %i.i                     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 31 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !21
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %.thread.i.i, label %bb.c

.thread.i.i:                                      ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 30 ; 2 uses
  store i8 45, ptr %i.m, align 2, !tbaa !21
  %i.n = sub nsw i64 0, %i.j
  br label %.lr.ph.i.i.preheader

bb.c:                                             ; preds = %bb.b
  %.not31.i.i = icmp eq i64 %i.j, 0
  br i1 %.not31.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.c, %.thread.i.i
  %.12028.i.i.ph = phi ptr [ %i.k, %bb.c ], [ %i.m, %.thread.i.i ]
  %.12227.i.i.ph = phi i64 [ %i.j, %bb.c ], [ %i.n, %.thread.i.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.12028.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %.12028.i.i.ph, %.lr.ph.i.i.preheader ]
  %.12227.i.i = phi i64 [ %i.s, %.lr.ph.i.i ], [ %.12227.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.o = urem i64 %.12227.i.i, 10
  %i.p = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !21    ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.12028.i.i, i64 -1 ; 4 uses
  store i8 %i.q, ptr %i.r, align 1, !tbaa !21
  %i.s = udiv i64 %.12227.i.i, 10
  %i.t = icmp samesign ugt i64 %.12227.i.i, 9
  %i.u = icmp ugt ptr %i.r, %i.d
  %i.v = and i1 %i.t, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i, label %._crit_edge.thread.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %.preheader.i.i
  %.030.i.i = phi ptr [ %i.y, %.preheader.i.i ], [ %i.h, %._crit_edge.i.i ] ; 2 uses
  %.229.i.i = phi ptr [ %i.x, %.preheader.i.i ], [ %i.r, %._crit_edge.i.i ]
  %i.w = phi i8 [ %.pr.i.i, %.preheader.i.i ], [ %i.q, %._crit_edge.i.i ]
  store i8 %i.w, ptr %.030.i.i, align 1, !tbaa !21
  %i.x = getelementptr inbounds nuw i8, ptr %.229.i.i, i64 1 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.030.i.i, i64 1 ; 2 uses
  %.pr.i.i = load i8, ptr %i.x, align 1, !tbaa !21 ; 2 uses
  %.not26.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %.not26.i.i, label %xdl_num_out.exit.i, label %.preheader.i.i, !llvm.loop !1

._crit_edge.thread.i.i:                           ; preds = %._crit_edge.i.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  store i8 48, ptr %i.h, align 4, !tbaa !21
  br label %xdl_num_out.exit.i

xdl_num_out.exit.i:                               ; preds = %.preheader.i.i, %._crit_edge.thread.i.i
  %.1.i.i = phi ptr [ %i.z, %._crit_edge.thread.i.i ], [ %i.y, %.preheader.i.i ] ; 2 uses
  store i8 0, ptr %.1.i.i, align 1, !tbaa !21
  %i.aa = ptrtoint ptr %.1.i.i to i64
  %i.ab = ptrtoint ptr %i.h to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ae = add nsw i32 %i.ad, 4                    ; 2 uses
  %.not50.i = icmp eq i64 %1, 1
  br i1 %.not50.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %xdl_num_out.exit.i
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.e, i64 %i.af
  store i8 44, ptr %i.ag, align 1
  %i.ah = add nsw i32 %i.ad, 5                    ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.e, i64 %i.ai ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 31 ; 2 uses
  store i8 0, ptr %i.ak, align 1, !tbaa !21
  %i.al = icmp slt i64 %1, 0
  br i1 %i.al, label %.thread.i69.i, label %bb.e

.thread.i69.i:                                    ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 30 ; 2 uses
  store i8 45, ptr %i.am, align 2, !tbaa !21
  %i.an = sub nsw i64 0, %1
  br label %.lr.ph.i57.i.preheader

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i, label %._crit_edge.thread.i68.i, label %.lr.ph.i57.i.preheader

.lr.ph.i57.i.preheader:                           ; preds = %bb.e, %.thread.i69.i
  %.12028.i58.i.ph = phi ptr [ %i.ak, %bb.e ], [ %i.am, %.thread.i69.i ]
  %.12227.i59.i.ph = phi i64 [ %1, %bb.e ], [ %i.an, %.thread.i69.i ]
  br label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.lr.ph.i57.i.preheader, %.lr.ph.i57.i
  %.12028.i58.i = phi ptr [ %i.ar, %.lr.ph.i57.i ], [ %.12028.i58.i.ph, %.lr.ph.i57.i.preheader ]
  %.12227.i59.i = phi i64 [ %i.as, %.lr.ph.i57.i ], [ %.12227.i59.i.ph, %.lr.ph.i57.i.preheader ] ; 3 uses
  %i.ao = urem i64 %.12227.i59.i, 10
  %i.ap = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !21  ; 3 uses
  %i.ar = getelementptr inbounds i8, ptr %.12028.i58.i, i64 -1 ; 4 uses
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !21
  %i.as = udiv i64 %.12227.i59.i, 10
  %i.at = icmp samesign ugt i64 %.12227.i59.i, 9
  %i.au = icmp ugt ptr %i.ar, %i.c
  %i.av = and i1 %i.at, %i.au
  br i1 %i.av, label %.lr.ph.i57.i, label %._crit_edge.i60.i, !llvm.loop !0

._crit_edge.i60.i:                                ; preds = %.lr.ph.i57.i
  %.not.i61.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i61.i, label %._crit_edge.thread.i68.i, label %.preheader.i62.i

.preheader.i62.i:                                 ; preds = %._crit_edge.i60.i, %.preheader.i62.i
  %.030.i63.i = phi ptr [ %i.ay, %.preheader.i62.i ], [ %i.aj, %._crit_edge.i60.i ] ; 2 uses
  %.229.i64.i = phi ptr [ %i.ax, %.preheader.i62.i ], [ %i.ar, %._crit_edge.i60.i ]
  %i.aw = phi i8 [ %.pr.i65.i, %.preheader.i62.i ], [ %i.aq, %._crit_edge.i60.i ]
  store i8 %i.aw, ptr %.030.i63.i, align 1, !tbaa !21
  %i.ax = getelementptr inbounds nuw i8, ptr %.229.i64.i, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.030.i63.i, i64 1 ; 2 uses
  %.pr.i65.i = load i8, ptr %i.ax, align 1, !tbaa !21 ; 2 uses
  %.not26.i66.i = icmp eq i8 %.pr.i65.i, 0
  br i1 %.not26.i66.i, label %xdl_num_out.exit70.i, label %.preheader.i62.i, !llvm.loop !1

._crit_edge.thread.i68.i:                         ; preds = %._crit_edge.i60.i, %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store i8 48, ptr %i.aj, align 1, !tbaa !21
  br label %xdl_num_out.exit70.i

xdl_num_out.exit70.i:                             ; preds = %.preheader.i62.i, %._crit_edge.thread.i68.i
  %.1.i67.i = phi ptr [ %i.az, %._crit_edge.thread.i68.i ], [ %i.ay, %.preheader.i62.i ] ; 2 uses
  store i8 0, ptr %.1.i67.i, align 1, !tbaa !21
  %i.ba = ptrtoint ptr %.1.i67.i to i64
  %i.bb = ptrtoint ptr %i.aj to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.be = add nsw i32 %i.ah, %i.bd
  br label %bb.f

bb.f:                                             ; preds = %xdl_num_out.exit70.i, %xdl_num_out.exit.i
  %.0.i = phi i32 [ %i.be, %xdl_num_out.exit70.i ], [ %i.ae, %xdl_num_out.exit.i ] ; 2 uses
  %i.bf = sext i32 %.0.i to i64
  %i.bg = getelementptr inbounds i8, ptr %i.e, i64 %i.bf
  store i16 11040, ptr %i.bg, align 1
  %i.bh = add nsw i32 %.0.i, 2                    ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds i8, ptr %i.e, i64 %i.bi ; 4 uses
  %.not51.i = icmp eq i64 %3, 0                   ; 2 uses
  %i.bk = sext i1 %.not51.i to i64
  %i.bl = add nsw i64 %2, %i.bk                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 31 ; 2 uses
  store i8 0, ptr %i.bm, align 1, !tbaa !21
  %i.bn = icmp slt i64 %i.bl, 0
  br i1 %i.bn, label %.thread.i87.i, label %bb.g

.thread.i87.i:                                    ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 30 ; 2 uses
  store i8 45, ptr %i.bo, align 2, !tbaa !21
  %i.bp = sub nsw i64 0, %i.bl
  br label %.lr.ph.i75.i.preheader

bb.g:                                             ; preds = %bb.f
  %.not31.i71.i = icmp eq i64 %i.bl, 0
  br i1 %.not31.i71.i, label %._crit_edge.thread.i86.i, label %.lr.ph.i75.i.preheader

.lr.ph.i75.i.preheader:                           ; preds = %bb.g, %.thread.i87.i
  %.12028.i76.i.ph = phi ptr [ %i.bm, %bb.g ], [ %i.bo, %.thread.i87.i ]
  %.12227.i77.i.ph = phi i64 [ %i.bl, %bb.g ], [ %i.bp, %.thread.i87.i ]
  br label %.lr.ph.i75.i

.lr.ph.i75.i:                                     ; preds = %.lr.ph.i75.i.preheader, %.lr.ph.i75.i
  %.12028.i76.i = phi ptr [ %i.bt, %.lr.ph.i75.i ], [ %.12028.i76.i.ph, %.lr.ph.i75.i.preheader ]
  %.12227.i77.i = phi i64 [ %i.bu, %.lr.ph.i75.i ], [ %.12227.i77.i.ph, %.lr.ph.i75.i.preheader ] ; 3 uses
  %i.bq = urem i64 %.12227.i77.i, 10
  %i.br = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !21  ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %.12028.i76.i, i64 -1 ; 4 uses
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !21
  %i.bu = udiv i64 %.12227.i77.i, 10
  %i.bv = icmp samesign ugt i64 %.12227.i77.i, 9
  %i.bw = icmp ugt ptr %i.bt, %i.b
  %i.bx = and i1 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.i75.i, label %._crit_edge.i78.i, !llvm.loop !0

._crit_edge.i78.i:                                ; preds = %.lr.ph.i75.i
  %.not.i79.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i79.i, label %._crit_edge.thread.i86.i, label %.preheader.i80.i

.preheader.i80.i:                                 ; preds = %._crit_edge.i78.i, %.preheader.i80.i
  %.030.i81.i = phi ptr [ %i.ca, %.preheader.i80.i ], [ %i.bj, %._crit_edge.i78.i ] ; 2 uses
  %.229.i82.i = phi ptr [ %i.bz, %.preheader.i80.i ], [ %i.bt, %._crit_edge.i78.i ]
  %i.by = phi i8 [ %.pr.i83.i, %.preheader.i80.i ], [ %i.bs, %._crit_edge.i78.i ]
  store i8 %i.by, ptr %.030.i81.i, align 1, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.229.i82.i, i64 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.030.i81.i, i64 1 ; 2 uses
  %.pr.i83.i = load i8, ptr %i.bz, align 1, !tbaa !21 ; 2 uses
  %.not26.i84.i = icmp eq i8 %.pr.i83.i, 0
  br i1 %.not26.i84.i, label %xdl_num_out.exit88.i, label %.preheader.i80.i, !llvm.loop !1

._crit_edge.thread.i86.i:                         ; preds = %._crit_edge.i78.i, %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 48, ptr %i.bj, align 1, !tbaa !21
  br label %xdl_num_out.exit88.i

xdl_num_out.exit88.i:                             ; preds = %.preheader.i80.i, %._crit_edge.thread.i86.i
  %.1.i85.i = phi ptr [ %i.cb, %._crit_edge.thread.i86.i ], [ %i.ca, %.preheader.i80.i ] ; 2 uses
  store i8 0, ptr %.1.i85.i, align 1, !tbaa !21
  %i.cc = ptrtoint ptr %.1.i85.i to i64
  %i.cd = ptrtoint ptr %i.bj to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = trunc i64 %i.ce to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cg = add nsw i32 %i.bh, %i.cf                ; 3 uses
  %.not52.i = icmp eq i64 %3, 1
  br i1 %.not52.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %xdl_num_out.exit88.i
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.e, i64 %i.ch
  store i8 44, ptr %i.ci, align 1
  %i.cj = add nsw i32 %i.cg, 1                    ; 2 uses
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds i8, ptr %i.e, i64 %i.ck ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 2 uses
  store i8 0, ptr %i.cm, align 1, !tbaa !21
  %i.cn = icmp slt i64 %3, 0
  br i1 %i.cn, label %.thread.i105.i, label %bb.i

.thread.i105.i:                                   ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 30 ; 2 uses
  store i8 45, ptr %i.co, align 2, !tbaa !21
  %i.cp = sub nsw i64 0, %3
  br label %.lr.ph.i93.i.preheader

bb.i:                                             ; preds = %bb.h
  br i1 %.not51.i, label %._crit_edge.thread.i104.i, label %.lr.ph.i93.i.preheader

.lr.ph.i93.i.preheader:                           ; preds = %bb.i, %.thread.i105.i
  %.12028.i94.i.ph = phi ptr [ %i.cm, %bb.i ], [ %i.co, %.thread.i105.i ]
  %.12227.i95.i.ph = phi i64 [ %3, %bb.i ], [ %i.cp, %.thread.i105.i ]
  br label %.lr.ph.i93.i

.lr.ph.i93.i:                                     ; preds = %.lr.ph.i93.i.preheader, %.lr.ph.i93.i
  %.12028.i94.i = phi ptr [ %i.ct, %.lr.ph.i93.i ], [ %.12028.i94.i.ph, %.lr.ph.i93.i.preheader ]
  %.12227.i95.i = phi i64 [ %i.cu, %.lr.ph.i93.i ], [ %.12227.i95.i.ph, %.lr.ph.i93.i.preheader ] ; 3 uses
  %i.cq = urem i64 %.12227.i95.i, 10
  %i.cr = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !21  ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %.12028.i94.i, i64 -1 ; 4 uses
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !21
  %i.cu = udiv i64 %.12227.i95.i, 10
  %i.cv = icmp samesign ugt i64 %.12227.i95.i, 9
  %i.cw = icmp ugt ptr %i.ct, %i.a
  %i.cx = and i1 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph.i93.i, label %._crit_edge.i96.i, !llvm.loop !0

._crit_edge.i96.i:                                ; preds = %.lr.ph.i93.i
  %.not.i97.i = icmp eq i8 %i.cs, 0
  br i1 %.not.i97.i, label %._crit_edge.thread.i104.i, label %.preheader.i98.i

.preheader.i98.i:                                 ; preds = %._crit_edge.i96.i, %.preheader.i98.i
  %.030.i99.i = phi ptr [ %i.da, %.preheader.i98.i ], [ %i.cl, %._crit_edge.i96.i ] ; 2 uses
  %.229.i100.i = phi ptr [ %i.cz, %.preheader.i98.i ], [ %i.ct, %._crit_edge.i96.i ]
  %i.cy = phi i8 [ %.pr.i101.i, %.preheader.i98.i ], [ %i.cs, %._crit_edge.i96.i ]
  store i8 %i.cy, ptr %.030.i99.i, align 1, !tbaa !21
  %i.cz = getelementptr inbounds nuw i8, ptr %.229.i100.i, i64 1 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.030.i99.i, i64 1 ; 2 uses
  %.pr.i101.i = load i8, ptr %i.cz, align 1, !tbaa !21 ; 2 uses
  %.not26.i102.i = icmp eq i8 %.pr.i101.i, 0
  br i1 %.not26.i102.i, label %xdl_num_out.exit106.i, label %.preheader.i98.i, !llvm.loop !1

._crit_edge.thread.i104.i:                        ; preds = %._crit_edge.i96.i, %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store i8 48, ptr %i.cl, align 1, !tbaa !21
  br label %xdl_num_out.exit106.i

xdl_num_out.exit106.i:                            ; preds = %.preheader.i98.i, %._crit_edge.thread.i104.i
  %.1.i103.i = phi ptr [ %i.db, %._crit_edge.thread.i104.i ], [ %i.da, %.preheader.i98.i ] ; 2 uses
  store i8 0, ptr %.1.i103.i, align 1, !tbaa !21
  %i.dc = ptrtoint ptr %.1.i103.i to i64
  %i.dd = ptrtoint ptr %i.cl to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.dg = add nsw i32 %i.cj, %i.df
  br label %bb.j

bb.j:                                             ; preds = %xdl_num_out.exit106.i, %xdl_num_out.exit88.i
  %.1.i = phi i32 [ %i.dg, %xdl_num_out.exit106.i ], [ %i.cg, %xdl_num_out.exit88.i ] ; 3 uses
  %i.dh = sext i32 %.1.i to i64
  %i.di = getelementptr inbounds i8, ptr %i.e, i64 %i.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.di, ptr noundef nonnull align 1 dereferenceable(3) @.str.5, i64 3, i1 false)
  %i.dj = add nsw i32 %.1.i, 3                    ; 2 uses
  %i.dk = icmp ne ptr %4, null
  %i.dl = icmp ne i64 %5, 0
  %or.cond.i = and i1 %i.dk, %i.dl
  br i1 %or.cond.i, label %bb.k, label %xdl_format_hunk_hdr.exit

bb.k:                                             ; preds = %bb.j
  %i.dm = add nsw i32 %.1.i, 4                    ; 2 uses
  %i.dn = sext i32 %i.dj to i64
  %i.do = getelementptr inbounds i8, ptr %i.e, i64 %i.dn
  store i8 32, ptr %i.do, align 1, !tbaa !21
  %i.dp = sext i32 %i.dm to i64                   ; 2 uses
  %i.dq = sub nsw i64 127, %i.dp
  %spec.select.i = call i64 @llvm.umin.i64(i64 %5, i64 %i.dq) ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.e, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull readonly align 1 %4, i64 %spec.select.i, i1 false)
  %i.ds = trunc i64 %spec.select.i to i32
  %i.dt = add i32 %i.dm, %i.ds
  br label %xdl_format_hunk_hdr.exit

xdl_format_hunk_hdr.exit:                         ; preds = %bb.j, %bb.k
  %.2.i = phi i32 [ %i.dt, %bb.k ], [ %i.dj, %bb.j ] ; 2 uses
  %i.du = add nsw i32 %.2.i, 1
  %i.dv = sext i32 %.2.i to i64
  %i.dw = getelementptr inbounds i8, ptr %i.e, i64 %i.dv
  store i8 10, ptr %i.dw, align 1, !tbaa !21
  store ptr %i.e, ptr %7, align 8, !tbaa !19
  %i.dx = sext i32 %i.du to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !20
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !23
  %i.eb = load ptr, ptr %6, align 8, !tbaa !24
  %i.ec = call i32 %i.ea(ptr noundef %i.eb, ptr noundef nonnull %7, i32 noundef 1) #18, !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.ed = load ptr, ptr %6, align 8, !tbaa !24
  %.not21 = icmp eq i64 %1, 0
  %i.ee = sext i1 %.not21 to i64
  %i.ef = add nsw i64 %0, %i.ee
  %.not22 = icmp eq i64 %3, 0
  %i.eg = sext i1 %.not22 to i64
  %i.eh = add nsw i64 %2, %i.eg
  %i.ei = tail call i32 %i.g(ptr noundef %i.ed, i64 noundef %i.ef, i64 noundef %1, i64 noundef %i.eh, i64 noundef %3, ptr noundef %4, i64 noundef %5) #18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %xdl_format_hunk_hdr.exit
  %.0.in = phi i32 [ %i.ei, %bb.l ], [ %i.ec, %xdl_format_hunk_hdr.exit ]
  %.0 = ashr i32 %.0.in, 31
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @xdl_fall_back_diff(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.s_mmfile, align 8           ; 5 uses
  %7 = alloca %struct.s_mmfile, align 8           ; 5 uses
  %8 = alloca %struct.s_xdfenv, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.a = load ptr, ptr %0, align 8, !tbaa !71     ; 2 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = getelementptr [24 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73   ; 2 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !28
  %i.f = add nsw i32 %3, %2
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [24 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.k = getelementptr i8, ptr %i.h, i64 -40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.e to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.p, ptr %i.q, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 2 uses
  %i.t = sext i32 %4 to i64                       ; 2 uses
  %i.u = getelementptr [24 x i8], ptr %i.s, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73   ; 2 uses
  store ptr %i.w, ptr %7, align 8, !tbaa !28
  %i.x = add nsw i32 %5, %4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [24 x i8], ptr %i.s, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr i8, ptr %i.z, i64 -40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !26
  %i.aj = call i32 @xdl_do_diff(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %8) #18
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !76
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.b
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -1
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !76
  %i.ar = sext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.aq, i64 %i.ar, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.t
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -1
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !77
  %i.ay = sext i32 %5 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.av, ptr align 1 %i.ax, i64 %i.ay, i1 false)
  call void @xdl_free_env(ptr noundef nonnull %8) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.0
}

declare i32 @xdl_do_diff(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @xdl_free_env(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local ptr @xdl_alloc_grow_helper(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !27     ; 2 uses
  %i.b = icmp slt i64 %i.a, 4611686018427387896
  %i.c = shl nsw i64 %i.a, 1
  %i.d = add nsw i64 %i.c, 16
  %i.e = select i1 %i.b, i64 %i.d, i64 9223372036854775807
  %.0 = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.e) ; 3 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %.0)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul i64 %.0, %3
  %i.g = tail call ptr @xrealloc(ptr noundef %0, i64 noundef %i.f) #18 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef %0) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %.01521 = phi ptr [ null, %.thread ], [ %i.g, %bb.b ]
  %storemerge = phi i64 [ 0, %.thread ], [ %.0, %bb.b ]
  store i64 %storemerge, ptr %2, align 8, !tbaa !27
  ret ptr %.01521
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #16

end_hunk_0
