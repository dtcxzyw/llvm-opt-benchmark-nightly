inline.NumInlined: 290
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@estimate_hash_bucket_stats:bb.a
  %i.am = load double, ptr %3, align 8            ; 2 uses
  %i.an = fcmp ogt double %.022, %i.am
  %i.ao = select i1 %i.an, double %.022, double %i.am
  store double %i.ao, ptr %4, align 8
  %i.ap = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not34 = icmp eq ptr %i.ap, null
  br i1 %.not34, label %bb.o, label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.aa, %bb.j ], [ %i.ap, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull %.sink) #12
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local double @estimate_hashagg_tablesize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, double noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %list_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load i32, ptr %i.h, align 8
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i64 @hash_agg_entry_size(i32 noundef %i.e, i64 noundef %i.j, i64 noundef %i.l) #12
  %i.n = uitofp i64 %i.m to double
  %i.o = fmul double %3, %i.n
  ret double %i.o
}

declare i64 @hash_agg_entry_size(i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare zeroext i1 @bms_is_subset(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_base_rel(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @has_unique_index(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare ptr @pull_varnos(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bms_difference(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @find_join_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_is_member(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @bms_free(ptr noundef) local_unnamed_addr #2

declare i32 @exprTypmod(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @bms_overlap(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @SearchSysCache3(i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @all_rows_selectable(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @find_base_rel_noerr(ptr noundef %0, i32 noundef %1) #12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.d
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = add i32 %1, -1
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val121 = load ptr, ptr %i.k, align 8
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val121, i64 %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.in = phi ptr [ %i.e, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load ptr, ptr %.in, align 8              ; 2 uses
  %.not106 = icmp eq ptr %i.a, null
  br i1 %.not106, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @getRTEPermissionInfo(ptr noundef %i.s, ptr noundef %i.n) #12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.088.in = phi ptr [ %i.o, %bb.e ], [ %i.u, %bb.f ]
  %.088 = load i32, ptr %.088.in, align 4         ; 2 uses
  %.not107 = icmp eq i32 %.088, 0
  br i1 %.not107, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i32 @GetUserId() #12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.189 = phi i32 [ %.088, %bb.g ], [ %i.v, %bb.h ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not108 = icmp eq ptr %i.x, null
  br i1 %.not108, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = zext i32 %1 to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.082191 = load ptr, ptr %i.z, align 8          ; 2 uses
  %.not109192 = icmp eq ptr %.082191, null
  %.pre193 = load ptr, ptr %i.b, align 8          ; 2 uses
  br i1 %.not109192, label %.critedge, label %.lr.ph198

.lr.ph198:                                        ; preds = %bb.j, %.thread
  %.pre197 = phi ptr [ %.pre, %.thread ], [ %.pre193, %bb.j ] ; 3 uses
  %.082196 = phi ptr [ %.082, %.thread ], [ %.082191, %bb.j ] ; 5 uses
  %.084195 = phi i32 [ %i.cb, %.thread ], [ %1, %bb.j ]
  %.092194 = phi ptr [ %.078.lcssa, %.thread ], [ %2, %bb.j ] ; 3 uses
  %.not110 = icmp eq ptr %.pre197, null
  br i1 %.not110, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph198
  %i.ab = getelementptr inbounds nuw i8, ptr %.082196, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.pre197, i64 %i.ad
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph198
  %i.af = load ptr, ptr %i.aa, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.082196, i64 4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = add i32 %i.aj, -1
  %i.al = getelementptr i8, ptr %i.ah, i64 16
  %.val120 = load ptr, ptr %i.al, align 8
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val120, i64 %i.am
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.in127 = phi ptr [ %i.ae, %bb.k ], [ %i.an, %bb.l ]
  %i.ao = load ptr, ptr %.in127, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load i32, ptr %i.ap, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.preheader129, label %.critedge

.preheader129:                                    ; preds = %bb.m
  %i.as = tail call i32 @bms_next_member(ptr noundef %.092194, i32 noundef -1) #12 ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %.thread, label %.lr.ph145

.lr.ph145:                                        ; preds = %.preheader129
  %i.au = getelementptr inbounds nuw i8, ptr %.082196, i64 32 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.082196, i64 40 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph145, %.loopexit
  %i.aw = phi i32 [ %i.as, %.lr.ph145 ], [ %i.by, %.loopexit ] ; 2 uses
  %.078144 = phi ptr [ null, %.lr.ph145 ], [ %.381, %.loopexit ] ; 3 uses
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = add i16 %i.ax, -7                       ; 5 uses
  %3 = zext nneg i16 %i.ay to i32
  %i.az = icmp eq i16 %i.ay, 0
  br i1 %i.az, label %.preheader128, label %bb.p

.preheader128:                                    ; preds = %bb.n
  %i.ba = load i32, ptr %i.au, align 8
  %.not112141 = icmp slt i32 %i.ba, 1
  br i1 %.not112141, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader128, %bb.o
  %.077143 = phi i16 [ %i.bk, %bb.o ], [ 1, %.preheader128 ] ; 2 uses
  %.179142 = phi ptr [ %i.bj, %bb.o ], [ %.078144, %.preheader128 ]
  %i.bb = load ptr, ptr %i.av, align 8
  %i.bc = sext i16 %.077143 to i64
  %i.bd = getelementptr [2 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  %i.bf = load i16, ptr %i.be, align 2            ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %.critedge117, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.bh = sext i16 %i.bf to i32
  %i.bi = add nsw i32 %i.bh, 7
  %i.bj = tail call ptr @bms_add_member(ptr noundef %.179142, i32 noundef %i.bi) #12 ; 2 uses
  %i.bk = add i16 %.077143, 1                     ; 2 uses
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i32, ptr %i.au, align 8
  %.not112 = icmp slt i32 %i.bm, %i.bl
  br i1 %.not112, label %.loopexit, label %.lr.ph, !llvm.loop !45

bb.p:                                             ; preds = %bb.n
  %i.bn = icmp slt i16 %i.ay, 0
  br i1 %i.bn, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load i32, ptr %i.au, align 8
  %i.bp = icmp slt i32 %i.bo, %3
  br i1 %i.bp, label %.critedge117, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.av, align 8
  %i.br = zext nneg i16 %i.ay to i64
  %i.bs = getelementptr [2 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -2
  %i.bu = load i16, ptr %i.bt, align 2            ; 2 uses
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %.critedge117, label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  %.076 = phi i16 [ %i.bu, %bb.r ], [ %i.ay, %bb.p ]
  %4 = sext i16 %.076 to i32
  %i.bw = add nsw i32 %4, 7
  %i.bx = tail call ptr @bms_add_member(ptr noundef %.078144, i32 noundef %i.bw) #12
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %.preheader128, %bb.s
  %.381 = phi ptr [ %i.bx, %bb.s ], [ %.078144, %.preheader128 ], [ %i.bj, %bb.o ] ; 2 uses
  %i.by = tail call i32 @bms_next_member(ptr noundef %.092194, i32 noundef %i.aw) #12 ; 2 uses
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %.thread, label %bb.n, !llvm.loop !46

.thread:                                          ; preds = %.loopexit, %.preheader129
  %.078.lcssa = phi ptr [ null, %.preheader129 ], [ %.381, %.loopexit ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.082196, i64 4
  %i.cb = load i32, ptr %i.ca, align 4            ; 3 uses
  %i.cc = load ptr, ptr %i.w, align 8
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cd
  %.082 = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not109 = icmp eq ptr %.082, null
  %.pre = load ptr, ptr %i.b, align 8             ; 2 uses
  br i1 %.not109, label %.critedge, label %.lr.ph198, !llvm.loop !47

.critedge:                                        ; preds = %bb.m, %.thread, %bb.j
  %.092.lcssa = phi ptr [ %2, %bb.j ], [ %.092194, %bb.m ], [ %.078.lcssa, %.thread ] ; 2 uses
  %.084.lcssa = phi i32 [ %1, %bb.j ], [ %.084195, %bb.m ], [ %i.cb, %.thread ] ; 2 uses
  %.pre.lcssa = phi ptr [ %.pre193, %bb.j ], [ %.pre197, %bb.m ], [ %.pre, %.thread ] ; 2 uses
  %.not111 = icmp eq ptr %.pre.lcssa, null
  br i1 %.not111, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.cf = zext i32 %.084.lcssa to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.pre.lcssa, i64 %i.cf
  %i.ch = load ptr, ptr %i.cg, align 8
  br label %bb.v

bb.u:                                             ; preds = %.critedge
  %i.ci = load ptr, ptr %i.aa, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = add i32 %.084.lcssa, -1
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  %.val = load ptr, ptr %i.cm, align 8
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.i
  %.395 = phi ptr [ %2, %bb.i ], [ %.092.lcssa, %bb.t ], [ %.092.lcssa, %bb.u ] ; 3 uses
  %.191 = phi ptr [ %i.n, %bb.i ], [ %i.ch, %bb.t ], [ %i.cp, %bb.u ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.191, i64 232
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not113 = icmp eq ptr %i.cr, null
  br i1 %.not113, label %bb.w, label %.critedge117

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %.191, i64 28 ; 2 uses
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = tail call i32 @pg_class_aclcheck(i32 noundef %i.ct, i32 noundef %.189, i64 noundef 2) #12
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.critedge117, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cw = icmp eq ptr %.395, null
  br i1 %i.cw, label %.critedge117, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.cx = tail call i32 @bms_next_member(ptr noundef nonnull %.395, i32 noundef -1) #12 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, -1
  br i1 %i.cy, label %.lr.ph148, label %.critedge117

.lr.ph148:                                        ; preds = %.preheader, %bb.aa
  %i.cz = phi i32 [ %i.dg, %bb.aa ], [ %i.cx, %.preheader ] ; 2 uses
  %i.da = trunc i32 %i.cz to i16
  %i.db = add i16 %i.da, -7                       ; 2 uses
  %i.dc = icmp eq i16 %i.db, 0
  %i.dd = load i32, ptr %i.cs, align 4            ; 2 uses
  br i1 %i.dc, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph148
  %i.de = tail call i32 @pg_attribute_aclcheck_all(i32 noundef %i.dd, i32 noundef %.189, i64 noundef 2, i32 noundef 0) #12
  %.not115 = icmp eq i32 %i.de, 0
  br i1 %.not115, label %bb.aa, label %.critedge117

bb.z:                                             ; preds = %.lr.ph148
  %i.df = tail call i32 @pg_attribute_aclcheck(i32 noundef %i.dd, i16 noundef signext %i.db, i32 noundef %.189, i64 noundef 2) #12
  %.not114 = icmp eq i32 %i.df, 0
  br i1 %.not114, label %bb.aa, label %.critedge117

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dg = tail call i32 @bms_next_member(ptr noundef nonnull %.395, i32 noundef %i.cz) #12 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, -1
  br i1 %i.dh, label %.lr.ph148, label %.critedge117, !llvm.loop !48

.critedge117:                                     ; preds = %bb.q, %bb.r, %.lr.ph, %bb.aa, %bb.z, %bb.y, %.preheader, %bb.x, %bb.w, %bb.v
  %.8 = phi i1 [ false, %.lr.ph ], [ false, %bb.v ], [ true, %bb.w ], [ true, %.preheader ], [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ], [ false, %bb.r ], [ false, %bb.q ]
  ret i1 %.8
}

declare ptr @statext_expressions_load(i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @ReleaseDummy(ptr noundef %0) #0 {
bb.a:
  tail call void @pfree(ptr noundef %0) #12
  ret void
}

declare ptr @find_base_rel_noerr(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @getRTEPermissionInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare i32 @bms_next_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @bms_add_member(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pg_class_aclcheck(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @pg_attribute_aclcheck_all(i32 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @pg_attribute_aclcheck(i32 noundef, i16 noundef signext, i32 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @get_func_leakproof(i32 noundef) local_unnamed_addr #2

declare ptr @get_func_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @get_quals_from_indexclauses(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph47, label %.critedge

.lr.ph47:                                         ; preds = %.lr.ph37, %.critedge26
  %i.e = phi i32 [ %i.v, %.critedge26 ], [ %i.c, %.lr.ph37 ] ; 2 uses
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %.critedge26 ], [ 0, %.lr.ph37 ] ; 2 uses
  %.03645 = phi ptr [ %.1.lcssa, %.critedge26 ], [ null, %.lr.ph37 ] ; 3 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv50
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %.critedge26, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph47
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i32, ptr %i.k, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph34, label %.critedge26

.critedge:                                        ; preds = %.critedge26, %.lr.ph37, %bb.a
  %.0.lcssa = phi ptr [ null, %.lr.ph37 ], [ null, %bb.a ], [ %.1.lcssa, %.critedge26 ]
  ret ptr %.0.lcssa

.lr.ph34:                                         ; preds = %.lr.ph, %.lr.ph34
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph34 ], [ 0, %.lr.ph ] ; 2 uses
  %.12832 = phi ptr [ %i.r, %.lr.ph34 ], [ %.03645, %.lr.ph ]
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call ptr @lappend(ptr noundef %.12832, ptr noundef %i.q) #12 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.k, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph34, label %.critedge26.loopexit

.critedge26.loopexit:                             ; preds = %.lr.ph34
  %.pre = load i32, ptr %i.a, align 4
  br label %.critedge26

.critedge26:                                      ; preds = %.critedge26.loopexit, %.lr.ph, %.lr.ph47
  %i.v = phi i32 [ %i.e, %.lr.ph47 ], [ %i.e, %.lr.ph ], [ %.pre, %.critedge26.loopexit ] ; 2 uses
  %.1.lcssa = phi ptr [ %.03645, %.lr.ph47 ], [ %.03645, %.lr.ph ], [ %i.r, %.critedge26.loopexit ] ; 2 uses
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next51, %i.w
  br i1 %i.x, label %.lr.ph47, label %.critedge
}

; Function Attrs: nounwind uwtable
define dso_local double @index_other_operands_eval_cost(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.QualCost, align 8           ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
end_hunk_0
