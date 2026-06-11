inline.NumInlined: 576
inline.NumDeleted: 99
begin_hunk_0_@def_ExtractDefsFromTerm:bb.a
  br i1 %.not.i86, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !4

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.l, %._crit_edge
  %.060.lcssa131 = phi ptr [ null, %bb.l ], [ %i.af, %._crit_edge ], [ %i.af, %.lr.ph.i ]
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = sext i32 %i.ar to i64
  %i.at = load i64, ptr @memory_FREEDBYTES, align 8
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr @memory_FREEDBYTES, align 8
  %i.av = load ptr, ptr %i.ap, align 8
  store ptr %i.av, ptr %i.x, align 8
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 256), align 8
  store ptr %i.x, ptr %i.aw, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ax = tail call ptr @term_Copy(ptr noundef %0) #7
  %i.ay = tail call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ax, ptr %i.az, align 8
  store ptr null, ptr %i.ay, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %list_Delete.exit
  %.161 = phi ptr [ %.060.lcssa131, %list_Delete.exit ], [ %i.ay, %bb.m ] ; 3 uses
  %.not6.i87 = icmp eq ptr %.062107, null
  br i1 %.not6.i87, label %list_Delete.exit92, label %.lr.ph.i88

.lr.ph.i88:                                       ; preds = %bb.n, %.lr.ph.i88
  %.07.i89 = phi ptr [ %.0.val.i90, %.lr.ph.i88 ], [ %.062107, %bb.n ] ; 3 uses
  %.0.val.i90 = load ptr, ptr %.07.i89, align 8   ; 2 uses
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = sext i32 %i.bc to i64
  %i.be = load i64, ptr @memory_FREEDBYTES, align 8
  %i.bf = add i64 %i.be, %i.bd
  store i64 %i.bf, ptr @memory_FREEDBYTES, align 8
  %i.bg = load ptr, ptr %i.ba, align 8
  store ptr %i.bg, ptr %.07.i89, align 8
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i89, ptr %i.bh, align 8
  %.not.i91 = icmp eq ptr %.0.val.i90, null
  br i1 %.not.i91, label %list_Delete.exit92, label %.lr.ph.i88, !llvm.loop !4

list_Delete.exit92:                               ; preds = %.lr.ph.i88, %bb.n
  %.not103113 = icmp eq ptr %.161, null
  br i1 %.not103113, label %list_Delete.exit101, label %.lr.ph116

.lr.ph116:                                        ; preds = %list_Delete.exit92, %bb.v
  %.057115 = phi ptr [ %.057.val71, %bb.v ], [ %.161, %list_Delete.exit92 ] ; 2 uses
  %.058114 = phi ptr [ %.159, %bb.v ], [ null, %list_Delete.exit92 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.bi = getelementptr i8, ptr %.057115, i64 8
  %.057.val = load ptr, ptr %i.bi, align 8        ; 4 uses
  call void @term_AddFatherLinks(ptr noundef %.057.val) #7
  %i.bj = call i32 @cnf_ContainsDefinition(ptr noundef %.057.val, ptr noundef nonnull %i.a) #7
  %.not68 = icmp eq i32 %i.bj, 0
  br i1 %.not68, label %bb.v, label %bb.o

bb.o:                                             ; preds = %.lr.ph116
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = call ptr @cnf_DefConvert(ptr noundef %.057.val, ptr noundef %i.bk, ptr noundef nonnull %i.b) #7 ; 2 uses
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %.val85 = load ptr, ptr %i.bn, align 8
  %i.bo = getelementptr i8, ptr %.val85, i64 16
  %.val79 = load ptr, ptr %i.bo, align 8
  %.val79.val = load ptr, ptr %.val79, align 8
  %i.bp = getelementptr i8, ptr %.val79.val, i64 8
  %.val79.val.val = load ptr, ptr %i.bp, align 8
  %i.bq = call ptr @term_Copy(ptr noundef %.val79.val.val) #7
  %i.br = load ptr, ptr %i.a, align 8
  %i.bs = call ptr @term_Copy(ptr noundef %i.br) #7
  %i.bt = load ptr, ptr %i.b, align 8
  %i.bu = call ptr @memory_Malloc(i32 noundef 48) #7 ; 10 uses
  store ptr %i.bq, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bs, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store ptr %i.bt, ptr %i.bw, align 8
  %i.bx = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i8 0, i64 16, i1 false)
  store ptr %i.bx, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %1, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 0, ptr %i.ca, align 8
  %i.cb = load ptr, ptr %i.a, align 8             ; 2 uses
  %.val73 = load i32, ptr %i.cb, align 8
  %i.cc = call i32 @def_PredicateOccurrences(ptr noundef %i.bl, i32 noundef %.val73)
  %i.cd = icmp sgt i32 %i.cc, 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 44 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4            ; 4 uses
  br i1 %i.cd, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cg = and i32 %i.cf, 1
  %.not.i93 = icmp eq i32 %i.cg, 0
  br i1 %.not.i93, label %def_RemoveAttribute.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = add nsw i32 %i.cf, -1
  br label %def_RemoveAttribute.exit.sink.split

bb.r:                                             ; preds = %bb.o
  %i.ci = or i32 %i.cf, 1
  br label %def_RemoveAttribute.exit.sink.split

def_RemoveAttribute.exit.sink.split:              ; preds = %bb.r, %bb.q
  %.sink = phi i32 [ %i.ch, %bb.q ], [ %i.ci, %bb.r ] ; 2 uses
  store i32 %.sink, ptr %i.ce, align 4
  br label %def_RemoveAttribute.exit

def_RemoveAttribute.exit:                         ; preds = %def_RemoveAttribute.exit.sink.split, %bb.p
  %i.cj = phi i32 [ %i.cf, %bb.p ], [ %.sink, %def_RemoveAttribute.exit.sink.split ] ; 3 uses
  %.val = load i32, ptr %i.cb, align 8
  %i.ck = load i32, ptr @fol_EQUALITY, align 4
  %.not104 = icmp eq i32 %.val, %i.ck
  br i1 %.not104, label %bb.s, label %bb.t

bb.s:                                             ; preds = %def_RemoveAttribute.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %i.cm = or i32 %i.cj, 2
  store i32 %i.cm, ptr %i.cl, align 4
  br label %def_RemoveAttribute.exit95

bb.t:                                             ; preds = %def_RemoveAttribute.exit
  %i.cn = and i32 %i.cj, 2
  %.not.i94 = icmp eq i32 %i.cn, 0
  br i1 %.not.i94, label %def_RemoveAttribute.exit95, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 44
  %i.cp = add nsw i32 %i.cj, -2
  store i32 %i.cp, ptr %i.co, align 4
  br label %def_RemoveAttribute.exit95

def_RemoveAttribute.exit95:                       ; preds = %bb.u, %bb.t, %bb.s
  %i.cq = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.bu, ptr %i.cr, align 8
  store ptr %.058114, ptr %i.cq, align 8
  br label %bb.v

bb.v:                                             ; preds = %def_RemoveAttribute.exit95, %.lr.ph116
  %.159 = phi ptr [ %i.cq, %def_RemoveAttribute.exit95 ], [ %.058114, %.lr.ph116 ] ; 2 uses
  %.053 = phi ptr [ %i.bl, %def_RemoveAttribute.exit95 ], [ %.057.val, %.lr.ph116 ]
  call void @term_Delete(ptr noundef %.053) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.057.val71 = load ptr, ptr %.057115, align 8   ; 2 uses
  %.not103 = icmp eq ptr %.057.val71, null
  br i1 %.not103, label %.lr.ph.i97, label %.lr.ph116, !llvm.loop !10

.lr.ph.i97:                                       ; preds = %bb.v, %.lr.ph.i97
  %.07.i98 = phi ptr [ %.0.val.i99, %.lr.ph.i97 ], [ %.161, %bb.v ] ; 3 uses
  %.0.val.i99 = load ptr, ptr %.07.i98, align 8   ; 2 uses
  %i.cs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cx = add i64 %i.cw, %i.cv
  store i64 %i.cx, ptr @memory_FREEDBYTES, align 8
  %i.cy = load ptr, ptr %i.cs, align 8
  store ptr %i.cy, ptr %.07.i98, align 8
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i98, ptr %i.cz, align 8
  %.not.i100 = icmp eq ptr %.0.val.i99, null
  br i1 %.not.i100, label %list_Delete.exit101, label %.lr.ph.i97, !llvm.loop !4

list_Delete.exit101:                              ; preds = %.lr.ph.i97, %list_Delete.exit92
  %.058.lcssa133 = phi ptr [ null, %list_Delete.exit92 ], [ %.159, %.lr.ph.i97 ]
  ret ptr %.058.lcssa133
}

declare ptr @list_Copy(ptr noundef) local_unnamed_addr #2

declare ptr @cnf_Flatten(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @term_Copy(ptr noundef) #2

declare ptr @fol_CreateQuantifierAddFather(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @term_AddFatherLinks(ptr noundef) local_unnamed_addr #2

declare i32 @cnf_ContainsDefinition(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cnf_DefConvert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @term_Delete(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @def_ExtractDefsFromClauselist(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 112
  %.val108 = load ptr, ptr %i.d, align 8          ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 104
  %.val109 = load ptr, ptr %i.e, align 8
  %.not169 = icmp eq ptr %1, null
  br i1 %.not169, label %._crit_edge181.thread, label %.lr.ph173

.lr.ph173:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.val108, i64 148
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph173, %bb.l
  %.063171 = phi ptr [ %1, %.lr.ph173 ], [ %.063.val102, %bb.l ] ; 2 uses
  %.065170 = phi ptr [ null, %.lr.ph173 ], [ %.267, %bb.l ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.g = getelementptr i8, ptr %.063171, i64 8
  %.063.val = load ptr, ptr %i.g, align 8         ; 8 uses
  %i.h = call i32 @clause_ContainsPotPredDef(ptr noundef %.063.val, ptr noundef %.val108, ptr noundef %.val109, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #7
  %.not84 = icmp eq i32 %i.h, 0
  br i1 %.not84, label %bb.l, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.063.val, i64 56
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.069150 = phi ptr [ %1, %.lr.ph ], [ %.069.val104, %bb.f ] ; 2 uses
  %.076148 = phi ptr [ null, %.lr.ph ], [ %.177, %bb.f ] ; 2 uses
  %.078147 = phi ptr [ null, %.lr.ph ], [ %.179, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.j = getelementptr i8, ptr %.069150, i64 8    ; 2 uses
  %.069.val97 = load ptr, ptr %i.j, align 8
  %i.k = load i32, ptr %i.a, align 4
  %.val112 = load ptr, ptr %i.i, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val112, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val1.i = load ptr, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.b, align 8
  %i.q = call i32 @clause_IsPartOfDefinition(ptr noundef %.069.val97, ptr noundef %.val1.i, ptr noundef nonnull %i.c, ptr noundef %i.p) #7
  %.not87 = icmp eq i32 %i.q, 0
  br i1 %.not87, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.069.val = load ptr, ptr %i.j, align 8
  %i.r = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.069.val, ptr %i.s, align 8
  store ptr %.078147, ptr %i.r, align 8
  %i.t = load i32, ptr %i.c, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.v, ptr %i.x, align 8
  store ptr %.076148, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val98 = load ptr, ptr %i.z, align 8
  %.not144 = icmp eq ptr %.val98, null
  br i1 %.not144, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.val106 = load ptr, ptr %i.y, align 8
  %.not145 = icmp ne ptr %.val106, null
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.179 = phi ptr [ %.078147, %bb.c ], [ %i.r, %bb.e ], [ %i.r, %bb.d ] ; 5 uses
  %.177 = phi ptr [ %.076148, %bb.c ], [ %i.w, %bb.e ], [ %i.w, %bb.d ] ; 4 uses
  %.175 = phi i1 [ true, %bb.c ], [ %.not145, %bb.e ], [ true, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %.069.val104 = load ptr, ptr %.069150, align 8  ; 2 uses
  %i.aa = icmp ne ptr %.069.val104, null
  %or.cond = select i1 %i.aa, i1 %.175, i1 false
  br i1 %or.cond, label %bb.c, label %.critedge, !llvm.loop !11

.critedge:                                        ; preds = %bb.f
  br i1 %.175, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.ab = getelementptr i8, ptr %.063.val, i64 48
  %.val114 = load i32, ptr %i.ab, align 8
  %i.ac = lshr i32 %.val114, 3
  %.lobit.i = and i32 %i.ac, 1                    ; 2 uses
  %.not143153 = icmp eq ptr %.179, null
  br i1 %.not143153, label %._crit_edge, label %.lr.ph157

.lr.ph157:                                        ; preds = %bb.g, %.lr.ph157
  %.0156 = phi i32 [ %spec.select95, %.lr.ph157 ], [ %.lobit.i, %bb.g ]
  %.072155 = phi ptr [ %i.ag, %.lr.ph157 ], [ null, %bb.g ]
  %.073154 = phi ptr [ %.073.val103, %.lr.ph157 ], [ %.179, %bb.g ] ; 2 uses
  %i.ad = getelementptr i8, ptr %.073154, i64 8   ; 2 uses
  %.073.val96 = load ptr, ptr %i.ad, align 8
  %.val116 = load i32, ptr %.073.val96, align 8
  %i.ae = sext i32 %.val116 to i64
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.af, ptr %i.ah, align 8
  store ptr %.072155, ptr %i.ag, align 8
  %.073.val = load ptr, ptr %i.ad, align 8
  %i.ai = getelementptr i8, ptr %.073.val, i64 48
  %.val113 = load i32, ptr %i.ai, align 8
  %i.aj = and i32 %.val113, 8
  %.not94 = icmp eq i32 %i.aj, 0
  %spec.select95 = select i1 %.not94, i32 %.0156, i32 1 ; 2 uses
  %.073.val103 = load ptr, ptr %.073154, align 8  ; 2 uses
  %.not143 = icmp eq ptr %.073.val103, null
  br i1 %.not143, label %._crit_edge, label %.lr.ph157, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph157, %bb.g
  %.072.lcssa = phi ptr [ null, %bb.g ], [ %i.ag, %.lr.ph157 ]
  %.0.lcssa = phi i32 [ %.lobit.i, %bb.g ], [ %spec.select95, %.lr.ph157 ]
  %.val115 = load i32, ptr %.063.val, align 8
  %i.ak = sext i32 %.val115 to i64
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.al, ptr %i.an, align 8
  store ptr %.072.lcssa, ptr %i.am, align 8
  %i.ao = load i32, ptr %i.a, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.aq, ptr %i.as, align 8
  store ptr %.177, ptr %i.ar, align 8
  %i.at = load i32, ptr %i.a, align 4
  %i.au = getelementptr i8, ptr %.063.val, i64 56 ; 2 uses
  %.val111 = load ptr, ptr %i.au, align 8
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %.val111, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 24
  %.val1.i119 = load ptr, ptr %i.ay, align 8
  %i.az = call ptr @term_Copy(ptr noundef %.val1.i119) #7
  %i.ba = getelementptr i8, ptr %.063.val, i64 64 ; 2 uses
  %i.bb = getelementptr i8, ptr %.063.val, i64 68 ; 2 uses
  %i.bc = getelementptr i8, ptr %.063.val, i64 72 ; 2 uses
  %.val.i160 = load i32, ptr %i.ba, align 8       ; 2 uses
  %.val3.i161 = load i32, ptr %i.bb, align 4      ; 2 uses
  %i.bd = add nsw i32 %.val3.i161, %.val.i160
  %.val4.i162 = load i32, ptr %i.bc, align 8      ; 2 uses
  %i.be = sub i32 0, %.val4.i162
  %.not182 = icmp eq i32 %i.bd, %i.be
  br i1 %.not182, label %._crit_edge167, label %.lr.ph166.preheader

.lr.ph166.preheader:                              ; preds = %._crit_edge
  %.pre184 = load i32, ptr %i.a, align 4
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph166.preheader, %bb.i
  %.val4.i188 = phi i32 [ %.val4.i, %bb.i ], [ %.val4.i162, %.lr.ph166.preheader ]
  %.val3.i186 = phi i32 [ %.val3.i, %bb.i ], [ %.val3.i161, %.lr.ph166.preheader ]
  %.val.i184 = phi i32 [ %.val.i, %bb.i ], [ %.val.i160, %.lr.ph166.preheader ]
  %.068164.a = phi i32 [ %2, %bb.i ], [ %.pre184, %.lr.ph166.preheader ] ; 2 uses
  %.068164 = phi i32 [ %i.bm, %bb.i ], [ 0, %.lr.ph166.preheader ] ; 3 uses
  %.070163 = phi ptr [ %.171, %bb.i ], [ null, %.lr.ph166.preheader ] ; 2 uses
  %.not93 = icmp eq i32 %.068164, %.068164.a
  br i1 %.not93, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph166
  %.val110 = load ptr, ptr %i.au, align 8
  %i.bf = sext i32 %.068164 to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.val110, i64 %i.bf
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr i8, ptr %i.bh, i64 24
  %.val1.i120 = load ptr, ptr %i.bi, align 8
  %i.bj = call ptr @term_Copy(ptr noundef %.val1.i120) #7
  %i.bk = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  store ptr %.070163, ptr %i.bk, align 8
  %.pre = load i32, ptr %i.a, align 4
  %.val.i.pre = load i32, ptr %i.ba, align 8
  %.val3.i.pre = load i32, ptr %i.bb, align 4
  %.val4.i.pre = load i32, ptr %i.bc, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph166, %bb.h
  %.val4.i = phi i32 [ %.val4.i.pre, %bb.h ], [ %.val4.i188, %.lr.ph166 ] ; 2 uses
  %.val3.i = phi i32 [ %.val3.i.pre, %bb.h ], [ %.val3.i186, %.lr.ph166 ] ; 2 uses
  %.val.i = phi i32 [ %.val.i.pre, %bb.h ], [ %.val.i184, %.lr.ph166 ] ; 2 uses
  %2 = phi i32 [ %.pre, %bb.h ], [ %.068164.a, %.lr.ph166 ]
  %.171 = phi ptr [ %i.bk, %bb.h ], [ %.070163, %.lr.ph166 ] ; 2 uses
  %i.bm = add nuw i32 %.068164, 1                 ; 2 uses
  %i.bn = add nsw i32 %.val3.i, %.val.i
  %i.bo = add nsw i32 %i.bn, %.val4.i
  %i.bp = icmp ult i32 %i.bm, %i.bo
  br i1 %i.bp, label %.lr.ph166, label %._crit_edge167, !llvm.loop !13

._crit_edge167:                                   ; preds = %bb.i, %._crit_edge
  %.070.lcssa = phi ptr [ null, %._crit_edge ], [ %.171, %bb.i ]
  %i.bq = load i32, ptr @fol_OR, align 4
  %i.br = call ptr @term_CreateAddFather(i32 noundef %i.bq, ptr noundef %.070.lcssa) #7
  %i.bs = load i32, ptr @fol_NOT, align 4
  %i.bt = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.br, ptr %i.bu, align 8
  store ptr null, ptr %i.bt, align 8
  %i.bv = call ptr @term_Create(i32 noundef %i.bs, ptr noundef nonnull %i.bt) #7
  %i.bw = call ptr @cnf_NegationNormalFormula(ptr noundef %i.bv) #7
  %i.bx = call ptr @memory_Malloc(i32 noundef 48) #7 ; 8 uses
  store ptr %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.az, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr null, ptr %i.bz, align 8
  %i.ca = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.am, ptr %i.cb, align 8
  store ptr %i.ar, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %i.ca, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr null, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i32 %.0.lcssa, ptr %i.ce, align 8
  %i.cf = call noundef ptr @memory_Malloc(i32 noundef 16) #7 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.bx, ptr %i.cg, align 8
  store ptr %.065170, ptr %i.cf, align 8
  %i.ch = load i32, ptr %i.f, align 4
  %.not92 = icmp eq i32 %i.ch, 0
  br i1 %.not92, label %list_Delete.exit132, label %bb.j

bb.j:                                             ; preds = %._crit_edge167
  %i.ci = load ptr, ptr @stdout, align 8
  %i.cj = call i64 @fwrite(ptr nonnull @.str, i64 23, i64 1, ptr %i.ci) ; 0 uses
  call void @def_Print(ptr noundef nonnull %i.bx)
  br label %list_Delete.exit132

bb.k:                                             ; preds = %.critedge
  %.not6.i = icmp eq ptr %.177, null
  br i1 %.not6.i, label %list_Delete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.07.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.177, %bb.k ] ; 3 uses
  %.0.val.i = load ptr, ptr %.07.i, align 8       ; 2 uses
  %i.ck = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = sext i32 %i.cm to i64
  %i.co = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cp = add i64 %i.co, %i.cn
  store i64 %i.cp, ptr @memory_FREEDBYTES, align 8
  %i.cq = load ptr, ptr %i.ck, align 8
  store ptr %i.cq, ptr %.07.i, align 8
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i, ptr %i.cr, align 8
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %list_Delete.exit, label %.lr.ph.i, !llvm.loop !4

list_Delete.exit:                                 ; preds = %.lr.ph.i, %bb.k
  %i.cs = load ptr, ptr %i.b, align 8             ; 2 uses
  %.val105 = load ptr, ptr %i.cs, align 8         ; 2 uses
  %.not6.i121 = icmp eq ptr %.val105, null
  br i1 %.not6.i121, label %list_Delete.exit126, label %.lr.ph.i122

.lr.ph.i122:                                      ; preds = %list_Delete.exit, %.lr.ph.i122
  %.07.i123 = phi ptr [ %.0.val.i124, %.lr.ph.i122 ], [ %.val105, %list_Delete.exit ] ; 3 uses
  %.0.val.i124 = load ptr, ptr %.07.i123, align 8 ; 2 uses
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load i64, ptr @memory_FREEDBYTES, align 8
  %i.cy = add i64 %i.cx, %i.cw
  store i64 %i.cy, ptr @memory_FREEDBYTES, align 8
  %i.cz = load ptr, ptr %i.ct, align 8
  store ptr %i.cz, ptr %.07.i123, align 8
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i123, ptr %i.da, align 8
  %.not.i125 = icmp eq ptr %.0.val.i124, null
  br i1 %.not.i125, label %list_Delete.exit126.loopexit, label %.lr.ph.i122, !llvm.loop !4

list_Delete.exit126.loopexit:                     ; preds = %.lr.ph.i122
  %.pre.a = load ptr, ptr %i.b, align 8
  br label %list_Delete.exit126

list_Delete.exit126:                              ; preds = %list_Delete.exit126.loopexit, %list_Delete.exit
  %i.db = phi ptr [ %.pre.a, %list_Delete.exit126.loopexit ], [ %i.cs, %list_Delete.exit ]
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %.val = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not6.i127 = icmp eq ptr %.val, null
  br i1 %.not6.i127, label %list_Delete.exit132, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %list_Delete.exit126, %.lr.ph.i128
  %.07.i129 = phi ptr [ %.0.val.i130, %.lr.ph.i128 ], [ %.val, %list_Delete.exit126 ] ; 3 uses
  %.0.val.i130 = load ptr, ptr %.07.i129, align 8 ; 2 uses
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = sext i32 %i.df to i64
  %i.dh = load i64, ptr @memory_FREEDBYTES, align 8
  %i.di = add i64 %i.dh, %i.dg
  store i64 %i.di, ptr @memory_FREEDBYTES, align 8
  %i.dj = load ptr, ptr %i.dd, align 8
  store ptr %i.dj, ptr %.07.i129, align 8
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i129, ptr %i.dk, align 8
  %.not.i131 = icmp eq ptr %.0.val.i130, null
  br i1 %.not.i131, label %list_Delete.exit132, label %.lr.ph.i128, !llvm.loop !4

list_Delete.exit132:                              ; preds = %.lr.ph.i128, %list_Delete.exit126, %._crit_edge167, %bb.j
  %.166 = phi ptr [ %i.cf, %._crit_edge167 ], [ %i.cf, %bb.j ], [ %.065170, %list_Delete.exit126 ], [ %.065170, %.lr.ph.i128 ]
  %.not6.i133 = icmp eq ptr %.179, null
  br i1 %.not6.i133, label %list_Delete.exit138, label %.lr.ph.i134

.lr.ph.i134:                                      ; preds = %list_Delete.exit132, %.lr.ph.i134
  %.07.i135 = phi ptr [ %.0.val.i136, %.lr.ph.i134 ], [ %.179, %list_Delete.exit132 ] ; 3 uses
  %.0.val.i136 = load ptr, ptr %.07.i135, align 8 ; 2 uses
  %i.dl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = sext i32 %i.dn to i64
  %i.dp = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dq = add i64 %i.dp, %i.do
  store i64 %i.dq, ptr @memory_FREEDBYTES, align 8
  %i.dr = load ptr, ptr %i.dl, align 8
  store ptr %i.dr, ptr %.07.i135, align 8
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %.07.i135, ptr %i.ds, align 8
  %.not.i137 = icmp eq ptr %.0.val.i136, null
  br i1 %.not.i137, label %list_Delete.exit138, label %.lr.ph.i134, !llvm.loop !4

list_Delete.exit138:                              ; preds = %.lr.ph.i134, %list_Delete.exit132
  %i.dt = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load i32, ptr %i.dv, align 8
  %i.dx = sext i32 %i.dw to i64
  %i.dy = load i64, ptr @memory_FREEDBYTES, align 8
  %i.dz = add i64 %i.dy, %i.dx
  store i64 %i.dz, ptr @memory_FREEDBYTES, align 8
  %i.ea = load ptr, ptr %i.du, align 8
  store ptr %i.ea, ptr %i.dt, align 8
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @memory_ARRAY, i64 128), align 8
  store ptr %i.dt, ptr %i.eb, align 8
  br label %bb.l

bb.l:                                             ; preds = %list_Delete.exit138, %bb.b
  %.267 = phi ptr [ %.166, %list_Delete.exit138 ], [ %.065170, %bb.b ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %.063.val102 = load ptr, ptr %.063171, align 8  ; 2 uses
  %.not = icmp eq ptr %.063.val102, null
  br i1 %.not, label %._crit_edge174, label %bb.b, !llvm.loop !14

._crit_edge174:                                   ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %.val108, i64 148
  %i.ed = load i32, ptr %i.ec, align 4
  %.not80 = icmp eq i32 %i.ed, 0
  %.not140 = icmp eq ptr %.267, null              ; 3 uses
  %or.cond146 = select i1 %.not80, i1 true, i1 %.not140
  br i1 %or.cond146, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %._crit_edge174
  %i.ee = load ptr, ptr @stdout, align 8
  %i.ef = call i64 @fwrite(ptr nonnull @.str.1, i64 21, i64 1, ptr %i.ee) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %.164176 = phi ptr [ %.267, %bb.m ], [ %.164.val101, %bb.n ] ; 2 uses
  %i.eg = getelementptr i8, ptr %.164176, i64 8
  %.164.val = load ptr, ptr %i.eg, align 8
  call void @def_Print(ptr noundef %.164.val)
  %i.eh = load ptr, ptr @stdout, align 8
  %i.ei = call i64 @fwrite(ptr nonnull @.str.2, i64 5, i64 1, ptr %i.eh) ; 0 uses
  %.164.val101 = load ptr, ptr %.164176, align 8  ; 2 uses
  %.not141 = icmp eq ptr %.164.val101, null
  br i1 %.not141, label %.loopexit, label %bb.n, !llvm.loop !15

.loopexit:                                        ; preds = %bb.n, %._crit_edge174
  br i1 %.not140, label %._crit_edge181, label %.lr.ph180

.lr.ph180:                                        ; preds = %.loopexit
  %i.ej = load i32, ptr @symbol_TYPESTATBITS, align 4
  %i.ek = load ptr, ptr @symbol_SIGNATURE, align 8
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph180, %bb.o
  %.2178 = phi ptr [ %.267, %.lr.ph180 ], [ %.2.val100, %bb.o ] ; 2 uses
  %i.el = getelementptr i8, ptr %.2178, i64 8
  %.2.val = load ptr, ptr %i.el, align 8
  %i.em = getelementptr i8, ptr %.2.val, i64 8
end_hunk_0
