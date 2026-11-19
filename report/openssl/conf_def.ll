Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/conf_def?download=true
inline.NumInlined: 62
inline.NumDeleted: 12
begin_hunk_0_@BUF_MEM_grow
declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @get_next_file(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  %i.b = add i64 %i.a, 2
  %i.c = tail call ptr @OPENSSL_DIR_read(ptr noundef nonnull %1, ptr noundef nonnull %0) #13 ; 2 uses
  %.not53 = icmp eq ptr %i.c, null
  br i1 %.not53, label %.thread46, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.d = phi ptr [ %i.y, %.backedge ], [ %i.c, %bb.a ] ; 4 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #14 ; 5 uses
  %i.f = icmp ugt i64 %i.e, 5
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -5
  %i.i = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.13) #13
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.e, 5
  br i1 %i.k, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.b, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.14) #13
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %.backedge

bb.d:                                             ; preds = %.thread, %bb.b
  %i.p = add i64 %i.b, %i.e                       ; 4 uses
  %i.q = tail call noalias ptr @CRYPTO_zalloc(i64 noundef %i.p, ptr noundef nonnull @.str.1, i32 noundef 851) #13 ; 7 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.thread46, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !tbaa !23
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.f, label %.split

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.q, ptr noundef nonnull %0, i64 noundef %i.p) #13 ; 0 uses
  %i.v = tail call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.9, i64 noundef %i.p) #13 ; 0 uses
  br label %.split

.split:                                           ; preds = %bb.e, %bb.f
  %i.w = tail call i64 @OPENSSL_strlcat(ptr noundef nonnull %i.q, ptr noundef nonnull %i.d, i64 noundef %i.p) #13 ; 0 uses
  %i.x = tail call ptr @BIO_new_file(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.15) #13
  %.fr = freeze ptr %i.x                          ; 2 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.1, i32 noundef 873) #13
  %.not38.not = icmp eq ptr %.fr, null
  br i1 %.not38.not, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %.thread, %bb.c, %.split
  %i.y = tail call ptr @OPENSSL_DIR_read(ptr noundef nonnull %1, ptr noundef nonnull %0) #13 ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %.thread46, label %.lr.ph

.thread46:                                        ; preds = %.backedge, %bb.d, %bb.a
  %i.z = tail call i32 @OPENSSL_DIR_end(ptr noundef nonnull %1) #13 ; 0 uses
  store ptr null, ptr %1, align 8, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.split, %.thread46
  %.4 = phi ptr [ null, %.thread46 ], [ %.fr, %.split ]
  ret ptr %.4
}

declare void @BIO_vfree(ptr noundef) local_unnamed_addr #5

declare ptr @OPENSSL_sk_pop(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @eat_alpha_numeric(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %1, align 1, !tbaa !23      ; 2 uses
  %i.c = icmp slt i8 %i.b, 0
  br i1 %i.c, label %is_keytype.exit25.thread, label %is_keytype.exit.lr.ph

is_keytype.exit.lr.ph:                            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 3 uses
  br label %is_keytype.exit

is_keytype.exit:                                  ; preds = %is_keytype.exit.lr.ph, %.backedge
  %i.f = phi i8 [ %i.b, %is_keytype.exit.lr.ph ], [ %i.t, %.backedge ]
  %.039 = phi ptr [ %1, %is_keytype.exit.lr.ph ], [ %.0.be, %.backedge ] ; 5 uses
  %i.g = zext nneg i8 %i.f to i64                 ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 2, !tbaa !26   ; 2 uses
  %i.j = and i16 %i.i, 32
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %is_keytype.exit22, label %bb.b

bb.b:                                             ; preds = %is_keytype.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.039, i64 1 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !23    ; 2 uses
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %is_keytype.exit19.thread, label %is_keytype.exit19

is_keytype.exit19.thread:                         ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.039, i64 2
  br label %.backedge

is_keytype.exit19:                                ; preds = %bb.b
  %i.o = zext nneg i8 %i.l to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !26
  %.fr38 = freeze i16 %i.q
  %i.r = and i16 %.fr38, 8
  %.not16 = icmp eq i16 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %.039, i64 2
  %spec.select = select i1 %.not16, ptr %i.s, ptr %i.k
  br label %.backedge

.backedge:                                        ; preds = %is_keytype.exit19.thread, %is_keytype.exit19, %bb.c
  %.0.be = phi ptr [ %i.aa, %bb.c ], [ %spec.select, %is_keytype.exit19 ], [ %i.n, %is_keytype.exit19.thread ] ; 3 uses
  %i.t = load i8, ptr %.0.be, align 1, !tbaa !23  ; 2 uses
  %i.u = icmp slt i8 %i.t, 0
  br i1 %i.u, label %is_keytype.exit25.thread, label %is_keytype.exit

is_keytype.exit22:                                ; preds = %is_keytype.exit
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.g
  %i.w = load i16, ptr %i.v, align 2, !tbaa !26
  %i.x = and i16 %i.w, 775
  %.not.i20.not = icmp eq i16 %i.x, 0
  br i1 %.not.i20.not, label %.thread33, label %bb.c

.thread33:                                        ; preds = %is_keytype.exit22
  %i.y = load i32, ptr %i.a, align 8, !tbaa !27
  %.not1434 = icmp eq i32 %i.y, 0
  %i.z = and i16 %i.i, 4096
  %.not15 = icmp eq i16 %i.z, 0
  %or.cond = or i1 %.not1434, %.not15
  br i1 %or.cond, label %is_keytype.exit25.thread, label %bb.c

is_keytype.exit25.thread:                         ; preds = %.thread33, %.backedge, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.0.be, %.backedge ], [ %.039, %.thread33 ]
  ret ptr %.0.lcssa

bb.c:                                             ; preds = %.thread33, %is_keytype.exit22
  %i.aa = getelementptr inbounds nuw i8, ptr %.039, i64 1
  br label %.backedge
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @str_copy(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @BUF_MEM_new() #13         ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #14
  %i.d = add i64 %i.c, 1
  %i.e = tail call i64 @BUF_MEM_grow(ptr noundef nonnull %i.a, i64 noundef %i.d) #13
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.thread268, label %.preheader276

.preheader276:                                    ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %._crit_edge, %.preheader276
  %.0148.ph = phi ptr [ %.3, %._crit_edge ], [ %3, %.preheader276 ]
  %.0144.ph = phi i8 [ %.1145, %._crit_edge ], [ 0, %.preheader276 ] ; 5 uses
  %.0140.ph = phi i32 [ %.3143.lcssa, %._crit_edge ], [ 0, %.preheader276 ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.0148 = phi ptr [ %.0148.ph, %.outer ], [ %.0148.be, %.backedge ] ; 10 uses
  %.0140 = phi i32 [ %.0140.ph, %.outer ], [ %.0140.be, %.backedge ] ; 9 uses
  %i.i = load i8, ptr %.0148, align 1, !tbaa !23  ; 11 uses
  %i.j = icmp slt i8 %i.i, 0
  br i1 %i.j, label %.thread248, label %is_keytype.exit

is_keytype.exit:                                  ; preds = %bb.c
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !15   ; 4 uses
  %i.l = zext nneg i8 %i.i to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !26   ; 4 uses
  %i.o = and i16 %i.n, 64
  %.not164 = icmp eq i16 %i.o, 0
  br i1 %.not164, label %is_keytype.exit200, label %.preheader275.preheader

.preheader275.preheader:                          ; preds = %is_keytype.exit
  %4 = sext i32 %.0140 to i64
  br label %.preheader275

.preheader275:                                    ; preds = %.preheader275.preheader, %is_keytype.exit194.thread
  %indvars.iv = phi i64 [ %4, %.preheader275.preheader ], [ %indvars.iv.next, %is_keytype.exit194.thread ] ; 3 uses
  %.0148.pn186 = phi ptr [ %.0148, %.preheader275.preheader ], [ %.2150, %is_keytype.exit194.thread ] ; 3 uses
  %.1149 = getelementptr inbounds nuw i8, ptr %.0148.pn186, i64 1 ; 3 uses
  %i.p = load i8, ptr %.1149, align 1, !tbaa !23  ; 6 uses
  %i.q = icmp slt i8 %i.p, 0
  br i1 %i.q, label %is_keytype.exit194.thread, label %is_keytype.exit191

is_keytype.exit191:                               ; preds = %.preheader275
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.s = zext nneg i8 %i.p to i64
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !26   ; 2 uses
  %i.v = and i16 %i.u, 8
  %.not182 = icmp ne i16 %i.v, 0
  %.not183229 = icmp eq i8 %i.p, %i.i
  %or.cond = or i1 %.not183229, %.not182
  br i1 %or.cond, label %.critedge, label %is_keytype.exit194

is_keytype.exit194:                               ; preds = %is_keytype.exit191
  %i.w = and i16 %i.u, 32
  %.not184 = icmp eq i16 %i.w, 0
  br i1 %.not184, label %is_keytype.exit194.thread, label %bb.d

bb.d:                                             ; preds = %is_keytype.exit194
  %i.x = getelementptr inbounds nuw i8, ptr %.0148.pn186, i64 2 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !23    ; 5 uses
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %is_keytype.exit194.thread, label %is_keytype.exit197

is_keytype.exit197:                               ; preds = %bb.d
  %i.aa = zext nneg i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !26
  %i.ad = and i16 %i.ac, 8
  %.not185 = icmp eq i16 %i.ad, 0
  br i1 %.not185, label %is_keytype.exit194.thread, label %.critedge

is_keytype.exit194.thread:                        ; preds = %.preheader275, %bb.d, %is_keytype.exit197, %is_keytype.exit194
  %i.ae = phi i8 [ %i.y, %is_keytype.exit197 ], [ %i.p, %is_keytype.exit194 ], [ %i.y, %bb.d ], [ %i.p, %.preheader275 ]
  %.2150 = phi ptr [ %i.x, %is_keytype.exit197 ], [ %.1149, %is_keytype.exit194 ], [ %i.x, %bb.d ], [ %.1149, %.preheader275 ]
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !22
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %indvars.iv
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !23
  br label %.preheader275, !llvm.loop !44

.critedge:                                        ; preds = %is_keytype.exit191, %is_keytype.exit197
  %i.ah = phi i8 [ %i.p, %is_keytype.exit191 ], [ %i.y, %is_keytype.exit197 ]
  %i.ai = phi i64 [ 1, %is_keytype.exit191 ], [ 2, %is_keytype.exit197 ]
  %5 = trunc nsw i64 %indvars.iv to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0148.pn186, i64 %i.ai
  %i.ak = icmp eq i8 %i.ah, %i.i
  %spec.select.idx = zext i1 %i.ak to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.aj, i64 %spec.select.idx
  br label %.backedge

is_keytype.exit200:                               ; preds = %is_keytype.exit
  %i.al = and i16 %i.n, 1024
  %.not165 = icmp eq i16 %i.al, 0
  br i1 %.not165, label %is_keytype.exit206, label %.preheader274.preheader

.preheader274.preheader:                          ; preds = %is_keytype.exit200
  %6 = sext i32 %.0140 to i64
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.preheader, %bb.f
  %indvars.iv315 = phi i64 [ %6, %.preheader274.preheader ], [ %indvars.iv.next316, %bb.f ] ; 3 uses
  %.0148.pn = phi ptr [ %.0148, %.preheader274.preheader ], [ %.5153, %bb.f ] ; 3 uses
  %.4152 = getelementptr inbounds nuw i8, ptr %.0148.pn, i64 1 ; 3 uses
  %i.am = load i8, ptr %.4152, align 1, !tbaa !23 ; 5 uses
  %i.an = icmp slt i8 %i.am, 0
  br i1 %i.an, label %is_keytype.exit203.thread, label %is_keytype.exit203

is_keytype.exit203:                               ; preds = %.preheader274
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.ap = zext nneg i8 %i.am to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !26
  %i.as = and i16 %i.ar, 8
  %.not181 = icmp eq i16 %i.as, 0
  br i1 %.not181, label %is_keytype.exit203.thread, label %bb.g

is_keytype.exit203.thread:                        ; preds = %.preheader274, %is_keytype.exit203
  %i.at = icmp eq i8 %i.am, %i.i
  br i1 %i.at, label %bb.e, label %bb.f

bb.e:                                             ; preds = %is_keytype.exit203.thread
  %i.au = getelementptr inbounds nuw i8, ptr %.0148.pn, i64 2 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !23
  %i.aw = icmp eq i8 %i.av, %i.i
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %is_keytype.exit203.thread
  %i.ax = phi i8 [ %i.am, %is_keytype.exit203.thread ], [ %i.i, %bb.e ]
  %.5153 = phi ptr [ %.4152, %is_keytype.exit203.thread ], [ %i.au, %bb.e ]
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !22
  %indvars.iv.next316 = add nsw i64 %indvars.iv315, 1
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %indvars.iv315
  store i8 %i.ax, ptr %i.az, align 1, !tbaa !23
  br label %.preheader274, !llvm.loop !45

bb.g:                                             ; preds = %bb.e, %is_keytype.exit203
  %.lcssa = phi i8 [ %i.i, %bb.e ], [ %i.am, %is_keytype.exit203 ]
  %7 = trunc nsw i64 %indvars.iv315 to i32
  %i.ba = icmp eq i8 %.lcssa, %i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0148.pn, i64 2
  %spec.select187 = select i1 %i.ba, ptr %i.bb, ptr %.4152
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %.critedge, %.thread248, %bb.i
  %.0148.be = phi ptr [ %spec.select187, %bb.g ], [ %i.eb, %.thread248 ], [ %i.be, %bb.i ], [ %spec.select, %.critedge ]
  %.0140.be = phi i32 [ %7, %bb.g ], [ %i.ed, %.thread248 ], [ %i.bo, %bb.i ], [ %5, %.critedge ]
  br label %bb.c

is_keytype.exit206:                               ; preds = %is_keytype.exit200
  %i.bc = and i16 %i.n, 32
  %.not166 = icmp eq i16 %i.bc, 0
  br i1 %.not166, label %is_keytype.exit212, label %bb.h

bb.h:                                             ; preds = %is_keytype.exit206
  %i.bd = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0148, i64 2
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !23  ; 5 uses
  %i.bg = icmp slt i8 %i.bf, 0
  br i1 %i.bg, label %is_keytype.exit209.thread, label %is_keytype.exit209

is_keytype.exit209:                               ; preds = %bb.h
  %i.bh = zext nneg i8 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !26
  %i.bk = and i16 %i.bj, 8
  %.not180 = icmp eq i16 %i.bk, 0
  br i1 %.not180, label %is_keytype.exit209.thread, label %bb.x

is_keytype.exit209.thread:                        ; preds = %bb.h, %is_keytype.exit209
  %switch.tableidx = add i8 %i.bf, -98            ; 3 uses
  %i.bl = icmp ult i8 %switch.tableidx, 19
  br i1 %i.bl, label %switch.hole_check, label %bb.i

switch.hole_check:                                ; preds = %is_keytype.exit209.thread
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 331777, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %switch.hole_check
  %i.bm = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.str_copy, i64 %i.bm
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %bb.i

bb.i:                                             ; preds = %is_keytype.exit209.thread, %switch.hole_check, %switch.lookup
  %.0133 = phi i8 [ %switch.load, %switch.lookup ], [ %i.bf, %switch.hole_check ], [ %i.bf, %is_keytype.exit209.thread ]
  %i.bn = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.bo = add nsw i32 %.0140, 1
  %i.bp = sext i32 %.0140 to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bn, i64 %i.bp
  store i8 %.0133, ptr %i.bq, align 1, !tbaa !23
  br label %.backedge

is_keytype.exit212:                               ; preds = %is_keytype.exit206
  %i.br = and i16 %i.n, 8
  %.not167 = icmp eq i16 %i.br, 0
  br i1 %.not167, label %bb.j, label %bb.x

bb.j:                                             ; preds = %is_keytype.exit212
  %i.bs = icmp eq i8 %i.i, 36
  br i1 %i.bs, label %bb.k, label %.thread248

bb.k:                                             ; preds = %bb.j
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !27
  %.not168 = icmp eq i32 %i.bt, 0                 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !23 ; 3 uses
  br i1 %.not168, label %._crit_edge320, label %bb.l

bb.l:                                             ; preds = %bb.k
  switch i8 %.pre, label %.thread248 [
    i8 123, label %._crit_edge320
    i8 40, label %._crit_edge320
  ]

._crit_edge320:                                   ; preds = %bb.k, %bb.l, %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %.0148, i64 1
  switch i8 %.pre, label %bb.n [
    i8 123, label %.thread249
    i8 40, label %bb.m
  ]

bb.m:                                             ; preds = %._crit_edge320
  br label %.thread249

.thread249:                                       ; preds = %bb.m, %._crit_edge320
  %.0147.ph = phi i32 [ 125, %._crit_edge320 ], [ 41, %bb.m ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0148, i64 2 ; 2 uses
  %.pre321 = load i8, ptr %i.bv, align 1, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge320, %.thread249
  %i.bw = phi i8 [ %.pre321, %.thread249 ], [ %.pre, %._crit_edge320 ] ; 4 uses
  %.0147253 = phi i32 [ %.0147.ph, %.thread249 ], [ 0, %._crit_edge320 ]
  %.not169252 = phi i1 [ false, %.thread249 ], [ true, %._crit_edge320 ]
  %i.bx = phi ptr [ %i.bv, %.thread249 ], [ %i.bu, %._crit_edge320 ] ; 11 uses
  %i.by = icmp slt i8 %i.bw, 0
  br i1 %i.by, label %.critedge8, label %is_keytype.exit215.lr.ph

is_keytype.exit215.lr.ph:                         ; preds = %bb.n
  br i1 %.not168, label %is_keytype.exit215.us, label %is_keytype.exit215

is_keytype.exit215.us:                            ; preds = %is_keytype.exit215.lr.ph, %.critedge2.us
  %i.bz = phi i8 [ %i.cf, %.critedge2.us ], [ %i.bw, %is_keytype.exit215.lr.ph ] ; 2 uses
  %.0138284.us = phi ptr [ %i.ce, %.critedge2.us ], [ %i.bx, %is_keytype.exit215.lr.ph ] ; 2 uses
  %i.ca = zext nneg i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !26
  %i.cd = and i16 %i.cc, 263
  %.not.i213.not.us = icmp eq i16 %i.cd, 0
  br i1 %.not.i213.not.us, label %.critedge4, label %.critedge2.us

.critedge2.us:                                    ; preds = %is_keytype.exit215.us
  %i.ce = getelementptr inbounds nuw i8, ptr %.0138284.us, i64 1 ; 3 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23  ; 3 uses
  %i.cg = icmp slt i8 %i.cf, 0
  br i1 %i.cg, label %.critedge8, label %is_keytype.exit215.us, !llvm.loop !46

is_keytype.exit215:                               ; preds = %is_keytype.exit215.lr.ph, %.critedge2
  %i.ch = phi i8 [ %i.cn, %.critedge2 ], [ %i.bw, %is_keytype.exit215.lr.ph ] ; 2 uses
  %.0138284 = phi ptr [ %i.cm, %.critedge2 ], [ %i.bx, %is_keytype.exit215.lr.ph ] ; 2 uses
  %i.ci = zext nneg i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.ci
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !26
  %i.cl = and i16 %i.ck, 4359
  %or.cond362 = icmp eq i16 %i.cl, 0
  br i1 %or.cond362, label %.critedge4, label %.critedge2

.critedge2:                                       ; preds = %is_keytype.exit215
  %i.cm = getelementptr inbounds nuw i8, ptr %.0138284, i64 1 ; 3 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23  ; 3 uses
  %i.co = icmp slt i8 %i.cn, 0
  br i1 %i.co, label %.critedge8, label %is_keytype.exit215, !llvm.loop !46

.critedge4:                                       ; preds = %is_keytype.exit215, %is_keytype.exit215.us
  %.us-phi = phi ptr [ %.0138284.us, %is_keytype.exit215.us ], [ %.0138284, %is_keytype.exit215 ] ; 8 uses
  %.us-phi285 = phi i8 [ %i.bz, %is_keytype.exit215.us ], [ %i.ch, %is_keytype.exit215 ] ; 2 uses
  %.old = icmp eq i8 %.us-phi285, 58
  br i1 %.old, label %bb.o, label %.critedge8

bb.o:                                             ; preds = %.critedge4
  %i.cp = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cr = icmp eq i8 %i.cq, 58
  br i1 %i.cr, label %bb.p, label %.critedge8

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %.us-phi, align 1, !tbaa !23
  %i.cs = getelementptr inbounds nuw i8, ptr %.us-phi, i64 2 ; 6 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !23  ; 3 uses
  %i.cu = icmp slt i8 %i.ct, 0
  br i1 %i.cu, label %.critedge8, label %is_keytype.exit221.lr.ph

is_keytype.exit221.lr.ph:                         ; preds = %bb.p
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !15
  br label %is_keytype.exit221

is_keytype.exit221:                               ; preds = %is_keytype.exit221.lr.ph, %.critedge6
  %i.cw = phi i8 [ %i.ct, %is_keytype.exit221.lr.ph ], [ %i.de, %.critedge6 ] ; 2 uses
  %.1290 = phi ptr [ %i.cs, %is_keytype.exit221.lr.ph ], [ %i.dd, %.critedge6 ] ; 2 uses
  %i.cx = zext nneg i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !26 ; 2 uses
  %i.da = and i16 %i.cz, 263
  %.not.i219.not = icmp eq i16 %i.da, 0
  br i1 %.not.i219.not, label %.thread262, label %.critedge6

.thread262:                                       ; preds = %is_keytype.exit221
  %i.db = load i32, ptr %i.h, align 8, !tbaa !27
  %.not174263 = icmp eq i32 %i.db, 0
  %i.dc = and i16 %i.cz, 4096
  %.not175 = icmp eq i16 %i.dc, 0
  %or.cond364 = or i1 %.not174263, %.not175
  br i1 %or.cond364, label %.critedge8, label %.critedge6

.critedge6:                                       ; preds = %.thread262, %is_keytype.exit221
  %i.dd = getelementptr inbounds nuw i8, ptr %.1290, i64 1 ; 3 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !23  ; 3 uses
  %i.df = icmp slt i8 %i.de, 0
  br i1 %i.df, label %.critedge8, label %is_keytype.exit221, !llvm.loop !47

.critedge8:                                       ; preds = %.critedge2, %.critedge2.us, %.thread262, %.critedge6, %bb.n, %bb.p, %bb.o, %.critedge4
  %i.dg = phi i8 [ %.us-phi285, %.critedge4 ], [ %i.ct, %bb.p ], [ 58, %bb.o ], [ %i.cf, %.critedge2.us ], [ %i.de, %.critedge6 ], [ %i.bw, %bb.n ], [ %i.cw, %.thread262 ], [ %i.cn, %.critedge2 ] ; 3 uses
  %.1145 = phi i8 [ %.0144.ph, %.critedge4 ], [ 58, %bb.p ], [ %.0144.ph, %bb.o ], [ %.0144.ph, %.critedge2.us ], [ 58, %.thread262 ], [ %.0144.ph, %bb.n ], [ 58, %.critedge6 ], [ %.0144.ph, %.critedge2 ] ; 2 uses
  %.2 = phi ptr [ %.us-phi, %.critedge4 ], [ %i.cs, %bb.p ], [ %.us-phi, %bb.o ], [ %i.ce, %.critedge2.us ], [ %i.dd, %.critedge6 ], [ %i.bx, %bb.n ], [ %.1290, %.thread262 ], [ %i.cm, %.critedge2 ] ; 5 uses
  %.0136 = phi ptr [ null, %.critedge4 ], [ %.us-phi, %bb.p ], [ null, %bb.o ], [ null, %.critedge2.us ], [ %.us-phi, %.thread262 ], [ null, %bb.n ], [ %.us-phi, %.critedge6 ], [ null, %.critedge2 ] ; 2 uses
  %.0135 = phi ptr [ %i.bx, %.critedge4 ], [ %i.cs, %bb.p ], [ %i.bx, %bb.o ], [ %i.bx, %.critedge2.us ], [ %i.cs, %.thread262 ], [ %i.bx, %bb.n ], [ %i.cs, %.critedge6 ], [ %i.bx, %.critedge2 ]
  %.0134 = phi ptr [ %1, %.critedge4 ], [ %i.bx, %bb.p ], [ %1, %bb.o ], [ %1, %.critedge2.us ], [ %i.bx, %.thread262 ], [ %1, %bb.n ], [ %i.bx, %.critedge6 ], [ %1, %.critedge2 ]
  store i8 0, ptr %.2, align 1, !tbaa !23
  br i1 %.not169252, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.critedge8
  %i.dh = sext i8 %i.dg to i32
  %.not176 = icmp eq i32 %.0147253, %i.dh
  br i1 %.not176, label %bb.r, label %.thread268.sink.split

bb.r:                                             ; preds = %bb.q
  %i.di = getelementptr inbounds nuw i8, ptr %.2, i64 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.critedge8
  %.3 = phi ptr [ %i.di, %bb.r ], [ %.2, %.critedge8 ] ; 2 uses
  %i.dj = tail call ptr @_CONF_get_string(ptr noundef %0, ptr noundef %.0134, ptr noundef nonnull %.0135) #13 ; 4 uses
  %.not177 = icmp eq ptr %.0136, null
  br i1 %.not177, label %bb.u, label %bb.t
end_hunk_0
