inline.NumInlined: 449
inline.NumDeleted: 121
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@apply_all_patches:bb.a
  %i.cm = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i106 = icmp eq i32 %i.cm, 0
  br i1 %.not4.i106, label %_.exit108, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cn = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #21
  br label %_.exit108

_.exit108:                                        ; preds = %bb.ae, %bb.af
  %.0.i107 = phi ptr [ %i.cn, %bb.af ], [ @.str.39, %bb.ae ]
  %i.co = tail call i32 (ptr, ...) @error(ptr noundef %.0.i107) #21 ; 0 uses
  br label %.thread

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = icmp ne i32 %.2, 0
  %i.cq = zext i1 %i.cp to i32
  br label %.thread

.thread:                                          ; preds = %set_default_whitespace_mode.exit, %bb.b, %_.exit, %bb.i, %bb.ag, %_.exit108, %Q_.exit99
  %.170 = phi i32 [ %i.cq, %bb.ag ], [ %i.ao, %bb.i ], [ -128, %Q_.exit99 ], [ -128, %_.exit108 ], [ -128, %_.exit ], [ %i.ac, %set_default_whitespace_mode.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = tail call i32 @rollback_lock_file(ptr noundef nonnull %i.cr) #21 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !49
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !57
  tail call void @set_error_routine(ptr noundef %i.cx) #21
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !58
  tail call void @set_warn_routine(ptr noundef %i.cz) #21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.thread
  %i.da = icmp eq i32 %.170, -1
  %i.db = select i1 %i.da, i32 1, i32 128
  %i.dc = icmp slt i32 %.170, 0
  %.0 = select i1 %i.dc, i32 %i.db, i32 %.170
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -128, 2) i32 @apply_patch(ptr noundef initializes((128, 136), (228, 232)) %0, i32 noundef range(i32 0, -2147483648) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.index_state, align 8        ; 9 uses
  %5 = alloca %struct.lock_file, align 8          ; 6 uses
  %6 = alloca %struct.object_id, align 4          ; 9 uses
  %7 = alloca %struct.strbuf, align 8             ; 6 uses
  %8 = alloca %struct.string_list, align 8        ; 13 uses
  %9 = alloca %struct.object_id, align 4          ; 9 uses
  %10 = alloca %struct.object_id, align 4         ; 7 uses
  %11 = alloca %struct.object_id, align 4         ; 7 uses
  %12 = alloca %struct.strbuf, align 8            ; 6 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %13 = alloca %struct.image, align 8             ; 19 uses
  %14 = alloca %struct.image, align 8             ; 10 uses
  %15 = alloca %struct.stat, align 8              ; 8 uses
  %16 = alloca %struct.checkout, align 8          ; 7 uses
  %17 = alloca %struct.stat, align 8              ; 9 uses
  %i.b = alloca [65 x i8], align 16               ; 4 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %18 = alloca %struct.fragment, align 8          ; 7 uses
  %19 = alloca %struct.strbuf, align 8            ; 8 uses
  %i.h = alloca ptr, align 8                      ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) @__const.show_stats.qname, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr null, ptr %i.h, align 8, !tbaa !118
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  store ptr %2, ptr %i.i, align 8, !tbaa !119
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 23 uses
  store i32 1, ptr %i.j, align 4, !tbaa !36
  %i.k = call i64 @strbuf_read(ptr noundef nonnull %19, i32 noundef range(i32 0, -2147483648) %1, i64 noundef 0) #21
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.145, i32 noundef 5) #21
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.c, %bb.b
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ @.str.145, %bb.b ]
  %i.o = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i.i) #21 ; 0 uses
  br label %read_patch_file.exit.thread

bb.d:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = icmp ugt i64 %i.q, 1072693247
  br i1 %i.r, label %bb.e, label %read_patch_file.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i6.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i6.i, label %_.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.146, i32 noundef 5) #21
  br label %_.exit8.i

_.exit8.i:                                        ; preds = %bb.f, %bb.e
  %.0.i7.i = phi ptr [ %i.t, %bb.f ], [ @.str.146, %bb.e ]
  %i.u = call i32 (ptr, ...) @error(ptr noundef %.0.i7.i) #21 ; 0 uses
  br label %read_patch_file.exit.thread

read_patch_file.exit:                             ; preds = %bb.d
  call void @strbuf_grow(ptr noundef nonnull %19, i64 noundef 16) #21
  %i.v = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.x = load i64, ptr %i.p, align 8, !tbaa !76
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.z = load i64, ptr %i.p, align 8, !tbaa !76
  %.not390 = icmp eq i64 %i.z, 0
  br i1 %.not390, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %read_patch_file.exit
  %i.aa = trunc i32 %3 to i16                     ; 2 uses
  %i.ab = shl i16 %i.aa, 1
  %i.ac = and i16 %i.ab, 2
  %i.ad = shl i16 %i.aa, 4
  %i.ae = and i16 %i.ad, 32
  %i.af = or disjoint i16 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %18, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.go
  %.085386 = phi i32 [ 0, %.lr.ph ], [ %.186, %bb.go ] ; 4 uses
  %.092385 = phi i32 [ 0, %.lr.ph ], [ %.193, %bb.go ] ; 5 uses
  %.096384 = phi ptr [ %i.h, %.lr.ph ], [ %.298, %bb.go ] ; 3 uses
  %.0100383 = phi i64 [ 0, %.lr.ph ], [ %i.abm, %bb.go ] ; 3 uses
  %i.ba = call ptr @xcalloc(i64 noundef 1, i64 noundef 352) #21 ; 46 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 16 uses
  %i.bc = load i16, ptr %i.bb, align 8
  %i.bd = and i16 %i.bc, -60
  %i.be = or disjoint i16 %i.af, %i.bd
  %i.bf = load ptr, ptr %i.v, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.0100383 ; 3 uses
  %i.bh = load i64, ptr %i.p, align 8, !tbaa !76
  %i.bi = sub i64 %i.bh, %.0100383                ; 4 uses
  store i16 %i.be, ptr %i.bb, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 36 ; 8 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 28 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 3 uses
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 -1>, ptr %i.bm, align 8, !tbaa !40
  %.not123.i.i = icmp eq i64 %i.bi, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  br i1 %.not123.i.i, label %parse_chunk.exit.thread, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.thread.i.i
  %.068127.i.i = phi i64 [ %i.hj, %.thread.i.i ], [ 0, %bb.g ] ; 3 uses
  %.072125.i.i = phi ptr [ %i.hl, %.thread.i.i ], [ %i.bg, %bb.g ] ; 22 uses
  %.073124.i.i = phi i64 [ %i.hk, %.thread.i.i ], [ %i.bi, %bb.g ] ; 7 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.bn = add i64 %.03.i.i.i760, -1               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.04.i.i.i759, i64 1
  %.not.i.i.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i, label %linelen.exit.i.i, label %bb.i, !llvm.loop !86

bb.i:                                             ; preds = %.preheader.i.i, %bb.h
  %.0.i.i.i761 = phi i64 [ 0, %.preheader.i.i ], [ %i.bp, %bb.h ]
  %.03.i.i.i760 = phi i64 [ %.073124.i.i, %.preheader.i.i ], [ %i.bn, %bb.h ]
  %.04.i.i.i759 = phi ptr [ %.072125.i.i, %.preheader.i.i ], [ %i.bo, %bb.h ] ; 2 uses
  %i.bp = add nuw i64 %.0.i.i.i761, 1             ; 2 uses
  %i.bq = load i8, ptr %.04.i.i.i759, align 1, !tbaa !59
  %i.br = icmp eq i8 %i.bq, 10
  br i1 %i.br, label %linelen.exit.i.i, label %bb.h, !llvm.loop !86

linelen.exit.i.i:                                 ; preds = %bb.i, %bb.h
  %.1.i.i.i = phi i64 [ %i.bp, %bb.i ], [ %.073124.i.i, %bb.h ] ; 12 uses
  %20 = icmp ult i64 %.1.i.i.i, 6
  br i1 %20, label %.thread.i.i, label %bb.j

bb.j:                                             ; preds = %linelen.exit.i.i
  %i.bs = load i32, ptr %.072125.i.i, align 1
  %i.bt = icmp ne i32 757088320, %i.bs
  %i.bu = zext i1 %i.bt to i32
  %.not77.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not77.i.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.bv = trunc i64 %.1.i.i.i to i32              ; 4 uses
  %.not.i88.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not.i88.i.i, label %.thread110.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %sext.i.i = shl i64 %.1.i.i.i, 32
  %i.bw = ashr exact i64 %sext.i.i, 32
  %i.bx = getelementptr i8, ptr %.072125.i.i, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !59
  %.not14.i.i.i = icmp eq i8 %i.bz, 10
  br i1 %.not14.i.i.i, label %parse_fragment_header.exit.i.i, label %.thread110.i.i

parse_fragment_header.exit.i.i:                   ; preds = %bb.l
  %i.ca = call fastcc i32 @parse_range(ptr noundef nonnull %.072125.i.i, i32 noundef %i.bv, i32 noundef 4, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj)
  %i.cb = call fastcc i32 @parse_range(ptr noundef nonnull %.072125.i.i, i32 noundef %i.bv, i32 noundef %i.ca, ptr noundef nonnull @.str.154, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al)
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %.thread110.i.i, label %bb.m

bb.m:                                             ; preds = %parse_fragment_header.exit.i.i
  %i.cd = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not4.i.i.i, label %bb.bc, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.151, i32 noundef 5) #21
  br label %bb.bc

bb.o:                                             ; preds = %bb.j
  %i.cf = add i64 %.1.i.i.i, 6
  %i.cg = icmp ult i64 %.073124.i.i, %i.cf
  br i1 %i.cg, label %parse_chunk.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = load i64, ptr %.072125.i.i, align 1
  %i.ci = xor i64 7434648177038748004, %i.ch
  %i.cj = getelementptr i8, ptr %.072125.i.i, i64 3
  %i.ck = load i64, ptr %i.cj, align 1
  %i.cl = xor i64 2338609998372610150, %i.ck
  %i.cm = or i64 %i.ci, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %.not79.i.i = icmp eq i32 %i.co, 0
  br i1 %.not79.i.i, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.cr = trunc i64 %.1.i.i.i to i32
  %i.cs = trunc i64 %.073124.i.i to i32
  %i.ct = call i32 @parse_git_diff_header(ptr noundef nonnull %i.ag, ptr noundef %i.cp, ptr noundef nonnull %i.j, i32 noundef %i.cq, ptr noundef nonnull %.072125.i.i, i32 noundef %i.cr, i32 noundef %i.cs, ptr noundef nonnull %i.ba) ; 3 uses
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %parse_chunk.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = zext nneg i32 %i.ct to i64
  %.not80.i.i = icmp ult i64 %.1.i.i.i, %i.cv
  br i1 %.not80.i.i, label %find_header.exit.i, label %.thread.i.i

bb.s:                                             ; preds = %bb.p
  %i.cw = load i32, ptr %.072125.i.i, align 1
  %i.cx = icmp ne i32 539831597, %i.cw
  %i.cy = zext i1 %i.cx to i32
  %.not82.i.i = icmp eq i32 %i.cy, 0
  br i1 %.not82.i.i, label %bb.t, label %.thread.i.i

bb.t:                                             ; preds = %bb.s
  %i.cz = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 %.1.i.i.i ; 13 uses
  %i.da = load i32, ptr %i.cz, align 1
  %i.db = icmp ne i32 539700011, %i.da
  %i.dc = zext i1 %i.db to i32
  %.not84.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not84.i.i, label %bb.u, label %.thread.i.i

bb.u:                                             ; preds = %bb.t
  %i.dd = sub i64 %.073124.i.i, %.1.i.i.i         ; 4 uses
  %.not.i94.i.i762 = icmp eq i64 %i.dd, 0
  br i1 %.not.i94.i.i762, label %linelen.exit96.i.i, label %.lr.ph766

bb.v:                                             ; preds = %.lr.ph766
  %i.de = add i64 %.03.i92.i.i764, -1             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.04.i91.i.i763, i64 1
  %.not.i94.i.i = icmp eq i64 %i.de, 0
  br i1 %.not.i94.i.i, label %linelen.exit96.i.i, label %.lr.ph766, !llvm.loop !86

.lr.ph766:                                        ; preds = %bb.u, %bb.v
  %.0.i93.i.i765 = phi i64 [ %i.dg, %bb.v ], [ 0, %bb.u ]
  %.03.i92.i.i764 = phi i64 [ %i.de, %bb.v ], [ %i.dd, %bb.u ]
  %.04.i91.i.i763 = phi ptr [ %i.df, %bb.v ], [ %i.cz, %bb.u ] ; 2 uses
  %i.dg = add nuw i64 %.0.i93.i.i765, 1           ; 2 uses
  %i.dh = load i8, ptr %.04.i91.i.i763, align 1, !tbaa !59
  %i.di = icmp eq i8 %i.dh, 10
  br i1 %i.di, label %.linelen.exit96.i.i_crit_edge, label %bb.v, !llvm.loop !86

.linelen.exit96.i.i_crit_edge:                    ; preds = %.lr.ph766
  br label %linelen.exit96.i.i, !llvm.loop !86

linelen.exit96.i.i:                               ; preds = %bb.v, %.linelen.exit96.i.i_crit_edge, %bb.u
  %.1.i95.i.i = phi i64 [ %i.dg, %.linelen.exit96.i.i_crit_edge ], [ %i.dd, %bb.u ], [ %i.dd, %bb.v ] ; 3 uses
  %i.dj = add i64 %.1.i95.i.i, 14
  %i.dk = icmp ult i64 %.073124.i.i, %i.dj
  br i1 %i.dk, label %.thread.i.i, label %bb.w

bb.w:                                             ; preds = %linelen.exit96.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.1.i95.i.i
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = icmp ne i32 757088320, %i.dm
  %i.do = zext i1 %i.dn to i32
  %.not86.i.i = icmp eq i32 %i.do, 0
  br i1 %.not86.i.i, label %bb.x, label %.thread.i.i

bb.x:                                             ; preds = %bb.w
  %i.dp = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 4 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 5 uses
  %i.dr = load i32, ptr %i.am, align 4, !tbaa !120
  %.not.i233 = icmp eq i32 %i.dr, 0
  br i1 %.not.i233, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ds = call fastcc i32 @guess_p_value(ptr noundef nonnull %0, ptr noundef nonnull %i.dp) ; 2 uses
  %i.dt = call fastcc i32 @guess_p_value(ptr noundef nonnull %0, ptr noundef nonnull %i.dq) ; 3 uses
  %i.du = icmp slt i32 %i.ds, 0
  %spec.select.i = select i1 %i.du, i32 %i.dt, i32 %i.ds ; 2 uses
  %i.dv = icmp sgt i32 %spec.select.i, -1
  %i.dw = icmp eq i32 %spec.select.i, %i.dt
  %or.cond.i241 = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond.i241, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 %i.dt, ptr %i.ah, align 8, !tbaa !32
  store i32 1, ptr %i.am, align 4, !tbaa !120
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %scevgep.i.i = getelementptr i8, ptr %.072125.i.i, i64 13
  %i.dx = load i8, ptr %i.dp, align 1, !tbaa !59
  %i.dy = icmp eq i8 %i.dx, 47
  br i1 %i.dy, label %bb.ab, label %is_dev_null.exit.thread.i

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 5
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !59
  %i.eb = icmp eq i8 %i.ea, 100
  br i1 %i.eb, label %bb.ac, label %is_dev_null.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !59
  %i.ee = icmp eq i8 %i.ed, 101
  br i1 %i.ee, label %bb.ad, label %is_dev_null.exit.thread.i

bb.ad:                                            ; preds = %bb.ac
  %i.ef = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 7
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !59
  %i.eh = icmp eq i8 %i.eg, 118
  br i1 %i.eh, label %bb.ae, label %is_dev_null.exit.thread.i

bb.ae:                                            ; preds = %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 8
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !59
  %i.ek = icmp eq i8 %i.ej, 47
  br i1 %i.ek, label %bb.af, label %is_dev_null.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.el = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 9
  %i.em = load i8, ptr %i.el, align 1, !tbaa !59
  %i.en = icmp eq i8 %i.em, 110
  br i1 %i.en, label %bb.ag, label %is_dev_null.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 10
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !59
  %i.eq = icmp eq i8 %i.ep, 117
  br i1 %i.eq, label %bb.ah, label %is_dev_null.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 11
  %i.es = load i8, ptr %i.er, align 1, !tbaa !59
  %i.et = icmp eq i8 %i.es, 108
  br i1 %i.et, label %bb.ai, label %is_dev_null.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.eu = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 12
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !59
  %i.ew = icmp eq i8 %i.ev, 108
  br i1 %i.ew, label %is_dev_null.exit.i, label %is_dev_null.exit.thread.i

is_dev_null.exit.i:                               ; preds = %bb.ai
  %i.ex = load i8, ptr %scevgep.i.i, align 1, !tbaa !59
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !59
  %i.fb = and i8 %i.fa, 1
  %.not59.i = icmp eq i8 %i.fb, 0
  br i1 %.not59.i, label %is_dev_null.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %is_dev_null.exit.i
  store i32 1, ptr %i.bk, align 8, !tbaa !73
  store i32 0, ptr %i.bj, align 4, !tbaa !74
  %i.fc = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.fd = call fastcc ptr @find_name_traditional(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.dq, ptr noundef null, i32 noundef %i.fc) ; 2 uses
  store ptr %i.fd, ptr %i.ba, align 8, !tbaa !71
  br label %bb.ay

is_dev_null.exit.thread.i:                        ; preds = %is_dev_null.exit.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %scevgep.i64.i = getelementptr i8, ptr %i.cz, i64 13
  %i.fe = load i8, ptr %i.dq, align 1, !tbaa !59
  %i.ff = icmp eq i8 %i.fe, 47
  br i1 %i.ff, label %bb.ak, label %is_dev_null.exit65.thread.i

bb.ak:                                            ; preds = %is_dev_null.exit.thread.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.cz, i64 5
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !59
  %i.fi = icmp eq i8 %i.fh, 100
  br i1 %i.fi, label %bb.al, label %is_dev_null.exit65.thread.i

bb.al:                                            ; preds = %bb.ak
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cz, i64 6
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !59
  %i.fl = icmp eq i8 %i.fk, 101
  br i1 %i.fl, label %bb.am, label %is_dev_null.exit65.thread.i

bb.am:                                            ; preds = %bb.al
  %i.fm = getelementptr inbounds nuw i8, ptr %i.cz, i64 7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !59
  %i.fo = icmp eq i8 %i.fn, 118
  br i1 %i.fo, label %bb.an, label %is_dev_null.exit65.thread.i

bb.an:                                            ; preds = %bb.am
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !59
  %i.fr = icmp eq i8 %i.fq, 47
  br i1 %i.fr, label %bb.ao, label %is_dev_null.exit65.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cz, i64 9
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !59
  %i.fu = icmp eq i8 %i.ft, 110
  br i1 %i.fu, label %bb.ap, label %is_dev_null.exit65.thread.i

bb.ap:                                            ; preds = %bb.ao
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cz, i64 10
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !59
  %i.fx = icmp eq i8 %i.fw, 117
  br i1 %i.fx, label %bb.aq, label %is_dev_null.exit65.thread.i

bb.aq:                                            ; preds = %bb.ap
  %i.fy = getelementptr inbounds nuw i8, ptr %i.cz, i64 11
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !59
  %i.ga = icmp eq i8 %i.fz, 108
  br i1 %i.ga, label %bb.ar, label %is_dev_null.exit65.thread.i

bb.ar:                                            ; preds = %bb.aq
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !59
  %i.gd = icmp eq i8 %i.gc, 108
  br i1 %i.gd, label %is_dev_null.exit65.i, label %is_dev_null.exit65.thread.i

is_dev_null.exit65.i:                             ; preds = %bb.ar
  %i.ge = load i8, ptr %scevgep.i64.i, align 1, !tbaa !59
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !59
  %i.gi = and i8 %i.gh, 1
  %.not60.i = icmp eq i8 %i.gi, 0
  br i1 %.not60.i, label %is_dev_null.exit65.thread.i, label %bb.as

bb.as:                                            ; preds = %is_dev_null.exit65.i
  store i32 0, ptr %i.bk, align 8, !tbaa !73
  store i32 1, ptr %i.bj, align 4, !tbaa !74
  %i.gj = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.gk = call fastcc ptr @find_name_traditional(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.dp, ptr noundef null, i32 noundef %i.gj) ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !70
  br label %bb.ay

is_dev_null.exit65.thread.i:                      ; preds = %is_dev_null.exit65.i, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %is_dev_null.exit.thread.i
  %i.gm = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.gn = call fastcc ptr @find_name_traditional(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.dp, ptr noundef null, i32 noundef %i.gm) ; 2 uses
  %i.go = load i32, ptr %i.ah, align 8, !tbaa !32
  %i.gp = call fastcc ptr @find_name_traditional(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.dq, ptr noundef %i.gn, i32 noundef %i.go) ; 8 uses
  call void @free(ptr noundef %i.gn) #21
  %i.gq = call fastcc i32 @has_epoch_timestamp(ptr noundef nonnull %i.dp)
  %.not61.i234 = icmp eq i32 %i.gq, 0
  br i1 %.not61.i234, label %bb.au, label %bb.at

bb.at:                                            ; preds = %is_dev_null.exit65.thread.i
  store i32 1, ptr %i.bk, align 8, !tbaa !73
  store i32 0, ptr %i.bj, align 4, !tbaa !74
  store ptr %i.gp, ptr %i.ba, align 8, !tbaa !71
  br label %bb.ay

bb.au:                                            ; preds = %is_dev_null.exit65.thread.i
  %i.gr = call fastcc i32 @has_epoch_timestamp(ptr noundef nonnull %i.dq)
  %.not62.i239 = icmp eq i32 %i.gr, 0
  br i1 %.not62.i239, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.bk, align 8, !tbaa !73
  store i32 1, ptr %i.bj, align 4, !tbaa !74
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.gp, ptr %i.gs, align 8, !tbaa !70
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !70
  %.not.i.i240 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i240, label %xstrdup_or_null.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gu = call ptr @xstrdup(ptr noundef nonnull %i.gp) #21
  br label %xstrdup_or_null.exit.i

xstrdup_or_null.exit.i:                           ; preds = %bb.ax, %bb.aw
  %i.gv = phi ptr [ %i.gu, %bb.ax ], [ null, %bb.aw ]
  store ptr %i.gv, ptr %i.ba, align 8, !tbaa !71
  br label %bb.ay

bb.ay:                                            ; preds = %xstrdup_or_null.exit.i, %bb.av, %bb.at, %bb.as, %bb.aj
  %.056.i = phi ptr [ %i.fd, %bb.aj ], [ %i.gk, %bb.as ], [ %i.gp, %bb.av ], [ %i.gp, %xstrdup_or_null.exit.i ], [ %i.gp, %bb.at ]
  %.not63.i235 = icmp eq ptr %.056.i, null
  br i1 %.not63.i235, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.gw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i236 = icmp eq i32 %i.gw, 0
  br i1 %.not4.i.i236, label %parse_traditional_patch.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.155, i32 noundef 5) #21
  br label %parse_traditional_patch.exit

parse_traditional_patch.exit:                     ; preds = %bb.az, %bb.ba
  %.0.i.i238 = phi ptr [ %i.gx, %bb.ba ], [ @.str.155, %bb.az ]
  %i.gy = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.gz = load i32, ptr %i.j, align 4, !tbaa !36
  %i.ha = call i32 (ptr, ...) @error(ptr noundef %.0.i.i238, ptr noundef %i.gy, i32 noundef %i.gz) #21 ; 0 uses
  br label %parse_chunk.exit.thread

bb.bb:                                            ; preds = %bb.ay
  %i.hb = add i64 %.1.i95.i.i, %.1.i.i.i
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = load i32, ptr %i.j, align 4, !tbaa !36
  %i.he = add nsw i32 %i.hd, 2
  store i32 %i.he, ptr %i.j, align 4, !tbaa !36
  br label %find_header.exit.i

.thread110.i.i:                                   ; preds = %parse_fragment_header.exit.i.i, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %.thread.i.i

bb.bc:                                            ; preds = %bb.n, %bb.m
  %.0.i90.i.i = phi ptr [ %i.ce, %bb.n ], [ @.str.151, %bb.m ]
  %i.hf = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.hg = load i32, ptr %i.j, align 4, !tbaa !36
  %i.hh = add nsw i32 %i.bv, -1
  %i.hi = call i32 (ptr, ...) @error(ptr noundef %.0.i90.i.i, ptr noundef %i.hf, i32 noundef %i.hg, i32 noundef %i.hh, ptr noundef nonnull %.072125.i.i) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %parse_chunk.exit.thread

.thread.i.i:                                      ; preds = %.thread110.i.i, %bb.w, %linelen.exit96.i.i, %bb.t, %bb.s, %bb.r, %linelen.exit.i.i
  %i.hj = add i64 %.1.i.i.i, %.068127.i.i
  %i.hk = sub i64 %.073124.i.i, %.1.i.i.i         ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.072125.i.i, i64 %.1.i.i.i
  %i.hm = load i32, ptr %i.j, align 4, !tbaa !36
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.j, align 4, !tbaa !36
  %.not.i.i = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i, label %parse_chunk.exit.thread, label %.preheader.i.i, !llvm.loop !121

find_header.exit.i:                               ; preds = %bb.r, %bb.bb
  %.0138.i = phi i32 [ %i.hc, %bb.bb ], [ %i.ct, %bb.r ] ; 3 uses
  %.4.i.i = trunc i64 %.068127.i.i to i32         ; 4 uses
  %i.ho = icmp slt i32 %.4.i.i, 0
  br i1 %i.ho, label %parse_chunk.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %find_header.exit.i
  %i.hp = load ptr, ptr %0, align 8, !tbaa !12    ; 2 uses
  %.not.i105.i = icmp eq ptr %i.hp, null
  br i1 %.not.i105.i, label %prefix_patch.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hq = load i16, ptr %i.bb, align 8
  %i.hr = and i16 %i.hq, 1
  %.not6.i.i = icmp eq i16 %i.hr, 0
  br i1 %.not6.i.i, label %bb.bf, label %prefix_patch.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.hs = load ptr, ptr %i.ba, align 8, !tbaa !38 ; 3 uses
  %.not.i.i106.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i106.i, label %prefix_one.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ht = call ptr @prefix_filename(ptr noundef nonnull %i.hp, ptr noundef nonnull %i.hs) #21
  store ptr %i.ht, ptr %i.ba, align 8, !tbaa !38
  call void @free(ptr noundef nonnull %i.hs) #21
  br label %prefix_one.exit.i.i

prefix_one.exit.i.i:                              ; preds = %bb.bg, %bb.bf
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !38 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.hv, null
  br i1 %.not.i7.i.i, label %prefix_patch.exit.i, label %bb.bh

bb.bh:                                            ; preds = %prefix_one.exit.i.i
  %i.hw = load ptr, ptr %0, align 8, !tbaa !12
  %i.hx = call ptr @prefix_filename(ptr noundef %i.hw, ptr noundef nonnull %i.hv) #21
  store ptr %i.hx, ptr %i.hu, align 8, !tbaa !38
  call void @free(ptr noundef nonnull %i.hv) #21
  br label %prefix_patch.exit.i

prefix_patch.exit.i:                              ; preds = %bb.bh, %prefix_one.exit.i.i, %bb.be, %bb.bd
  %i.hy = load ptr, ptr %i.ba, align 8, !tbaa !71 ; 2 uses
  %.not.i107.i = icmp eq ptr %i.hy, null
  br i1 %.not.i107.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %prefix_patch.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !70
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %prefix_patch.exit.i
  %i.ib = phi ptr [ %i.ia, %bb.bi ], [ %i.hy, %prefix_patch.exit.i ] ; 2 uses
  %i.ic = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %.not25.i.i = icmp eq ptr %i.ic, null
  br i1 %.not25.i.i, label %.critedge.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !59  ; 2 uses
  %.not26.i.i = icmp eq i8 %i.id, 0
  br i1 %.not26.i.i, label %.critedge.i.i, label %.preheader.i108.i

thread-pre-split.i.i:                             ; preds = %.preheader.i108.i
  %i.ie = getelementptr inbounds nuw i8, ptr %.06.i35.i.i, i64 1 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.07.i34.i.i, i64 1 ; 2 uses
  %.pr.i.i = load i8, ptr %i.ie, align 1, !tbaa !59 ; 2 uses
  %.not.i.i110.i = icmp eq i8 %.pr.i.i, 0
  br i1 %.not.i.i110.i, label %bb.bl, label %.preheader.i108.i

.preheader.i108.i:                                ; preds = %bb.bk, %thread-pre-split.i.i
  %.06.i35.i.i = phi ptr [ %i.ie, %thread-pre-split.i.i ], [ %i.ic, %bb.bk ]
  %.07.i34.i.i = phi ptr [ %i.if, %thread-pre-split.i.i ], [ %i.ib, %bb.bk ] ; 2 uses
  %i.ig = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.id, %bb.bk ]
  %i.ih = load i8, ptr %.07.i34.i.i, align 1, !tbaa !59
  %i.ii = icmp eq i8 %i.ih, %i.ig
  br i1 %i.ii, label %thread-pre-split.i.i, label %use_patch.exit.thread.i, !llvm.loop !122

bb.bl:                                            ; preds = %thread-pre-split.i.i
  %i.ij = load i8, ptr %i.if, align 1, !tbaa !59
  %.not27.i.i = icmp eq i8 %i.ij, 0
  br i1 %.not27.i.i, label %use_patch.exit.thread.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.ik = load i64, ptr %i.an, align 8, !tbaa !123
  %.not37.i.i = icmp eq i64 %i.ik, 0
  br i1 %.not37.i.i, label %use_patch.exit.i, label %.lr.ph.i.i

bb.bm:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.il = load i64, ptr %i.an, align 8, !tbaa !123
  %i.im = icmp ugt i64 %i.il, %indvars.iv.next.i.i
  br i1 %i.im, label %.lr.ph.i.i, label %use_patch.exit.i, !llvm.loop !124

.lr.ph.i.i:                                       ; preds = %.critedge.i.i, %bb.bm
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.bm ], [ 0, %.critedge.i.i ] ; 2 uses
  %i.in = load ptr, ptr %i.ao, align 8, !tbaa !125
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %indvars.iv.i.i ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !126
  %i.iq = call i32 @wildmatch(ptr noundef %i.ip, ptr noundef %i.ib, i32 noundef 0) #21
  %.not29.not.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not29.not.i.i, label %.thread.i111.i, label %bb.bm

.thread.i111.i:                                   ; preds = %.lr.ph.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !128
  %.not320.i = icmp eq ptr %i.is, null
  br i1 %.not320.i, label %use_patch.exit.thread.i, label %bb.bn

use_patch.exit.i:                                 ; preds = %bb.bm, %.critedge.i.i
  %i.it = load i32, ptr %i.ap, align 8, !tbaa !129
  %.not28.i.i = icmp eq i32 %i.it, 0
  br i1 %.not28.i.i, label %bb.bn, label %use_patch.exit.thread.i

bb.bn:                                            ; preds = %use_patch.exit.i, %.thread.i111.i
  %i.iu = load ptr, ptr %i.ba, align 8, !tbaa !71 ; 2 uses
  %.not92.i = icmp eq ptr %i.iu, null
  %i.iv = load ptr, ptr %i.aq, align 8, !tbaa !29
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 432
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !117
  br i1 %.not92.i, label %bb.bo, label %use_patch.exit.thread.sink.split.i

bb.bo:                                            ; preds = %bb.bn
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !70
  br label %use_patch.exit.thread.sink.split.i

use_patch.exit.thread.sink.split.i:               ; preds = %bb.bo, %bb.bn
  %.sink319.i = phi ptr [ %i.iz, %bb.bo ], [ %i.iu, %bb.bn ]
  %i.ja = call i32 @whitespace_rule(ptr noundef %i.ix, ptr noundef %.sink319.i) #21
  br label %use_patch.exit.thread.i

use_patch.exit.thread.i:                          ; preds = %.preheader.i108.i, %use_patch.exit.thread.sink.split.i, %use_patch.exit.i, %.thread.i111.i, %bb.bl
  %.sink.i = phi i32 [ 0, %bb.bl ], [ 0, %use_patch.exit.i ], [ %i.ja, %use_patch.exit.thread.sink.split.i ], [ 0, %.thread.i111.i ], [ 0, %.preheader.i108.i ]
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ba, i64 44 ; 12 uses
  store i32 %.sink.i, ptr %i.jb, align 4, !tbaa !130
  %i.jc = and i64 %.068127.i.i, 2147483647        ; 2 uses
  %i.jd = sext i32 %.0138.i to i64                ; 2 uses
  %i.je = add nsw i64 %i.jc, %i.jd
  %i.jf = sub i64 %i.bi, %i.je                    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ba, i64 72 ; 4 uses
  %i.jh = icmp ugt i64 %i.jf, 4
  br i1 %i.jh, label %.lr.ph.i117.i, label %.critedge.thread.i.i

.lr.ph.i117.i:                                    ; preds = %use_patch.exit.thread.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.jc
  %i.jj = getelementptr inbounds i8, ptr %i.ji, i64 %i.jd
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ba, i64 52 ; 2 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.dw, %.lr.ph.i117.i
  %.064139.i.i = phi ptr [ %i.jg, %.lr.ph.i117.i ], [ %i.ss, %bb.dw ]
  %.065138.i.i = phi i64 [ 0, %.lr.ph.i117.i ], [ %i.sr, %bb.dw ] ; 2 uses
  %.067137.i.i = phi i64 [ 0, %.lr.ph.i117.i ], [ %i.sp, %bb.dw ] ; 2 uses
  %.069136.i.i = phi i64 [ 0, %.lr.ph.i117.i ], [ %i.sn, %bb.dw ] ; 2 uses
  %.071135.i.i = phi i32 [ 0, %.lr.ph.i117.i ], [ %i.su, %bb.dw ] ; 2 uses
  %.075134.i.i = phi i64 [ %i.jf, %.lr.ph.i117.i ], [ %i.sw, %bb.dw ] ; 5 uses
  %.077133.i.i = phi ptr [ %i.jj, %.lr.ph.i117.i ], [ %i.sv, %bb.dw ] ; 8 uses
  %i.jm = load i32, ptr %.077133.i.i, align 1
  %i.jn = icmp ne i32 %i.jm, 757088320
  %i.jo = zext i1 %i.jn to i32
  %.not.i119.i = icmp eq i32 %i.jo, 0
  br i1 %.not.i119.i, label %bb.bq, label %.critedge.i120.i

bb.bq:                                            ; preds = %bb.bp
  %i.jp = call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #21 ; 12 uses
  %i.jq = load i32, ptr %i.j, align 4, !tbaa !36
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 64
  store i32 %i.jq, ptr %i.jr, align 8, !tbaa !131
  br label %bb.bs

bb.br:                                            ; preds = %bb.bs
  %i.js = add i64 %.03.i.i.i.i770, -1             ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i769, i64 1
  %.not.i.i.i.i = icmp eq i64 %i.js, 0
  br i1 %.not.i.i.i.i, label %linelen.exit.i.i.i, label %bb.bs, !llvm.loop !86

bb.bs:                                            ; preds = %bb.bq, %bb.br
  %.0.i.i.i.i771 = phi i64 [ 0, %bb.bq ], [ %i.ju, %bb.br ]
  %.03.i.i.i.i770 = phi i64 [ %.075134.i.i, %bb.bq ], [ %i.js, %bb.br ]
  %.04.i.i.i.i769 = phi ptr [ %.077133.i.i, %bb.bq ], [ %i.jt, %bb.br ] ; 2 uses
  %i.ju = add nuw i64 %.0.i.i.i.i771, 1           ; 2 uses
  %i.jv = load i8, ptr %.04.i.i.i.i769, align 1, !tbaa !59
  %i.jw = icmp eq i8 %i.jv, 10
  br i1 %i.jw, label %linelen.exit.i.i.i, label %bb.br, !llvm.loop !86

linelen.exit.i.i.i:                               ; preds = %bb.bs, %bb.br
  %.1.i.i.i.i = phi i64 [ %i.ju, %bb.bs ], [ %.075134.i.i, %bb.br ] ; 2 uses
  %i.jx = trunc i64 %.1.i.i.i.i to i32            ; 5 uses
  %i.jy = load i32, ptr %i.jb, align 4, !tbaa !130 ; 2 uses
  %i.jz = and i32 %i.jy, 4096
  %.not.i.i122.i = icmp eq i32 %i.jz, 0
  br i1 %.not.i.i122.i, label %bb.bx, label %bb.bt

bb.bt:                                            ; preds = %linelen.exit.i.i.i
  %i.ka = load i32, ptr %i.ar, align 8, !tbaa !132
  %.not154.i.i.i = icmp eq i32 %i.ka, 0
  br i1 %.not154.i.i.i, label %bb.bu, label %.sink.split.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.kb = load i32, ptr %i.bl, align 4, !tbaa !133 ; 2 uses
  %.not155.i.i.i = icmp eq i32 %i.kb, 0
  br i1 %.not155.i.i.i, label %.sink.split.i.i.i, label %bb.bv

.sink.split.i.i.i:                                ; preds = %bb.bu, %bb.bt
  %i.kc = load i32, ptr %i.bm, align 8, !tbaa !134
  br label %bb.bv

bb.bv:                                            ; preds = %.sink.split.i.i.i, %bb.bu
  %i.kd = phi i32 [ %i.kb, %bb.bu ], [ %i.kc, %.sink.split.i.i.i ]
  %i.ke = and i32 %i.kd, 61440
  %i.kf = icmp eq i32 %i.ke, 40960
  br i1 %i.kf, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.kg = and i32 %i.jy, -4097
  store i32 %i.kg, ptr %i.jb, align 4, !tbaa !130
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %linelen.exit.i.i.i
  %.not.i176.i.i.i = icmp eq i32 %i.jx, 0
  br i1 %.not.i176.i.i.i, label %parse_fragment.exit.thread.i.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %sext216.i.i.i = shl i64 %.1.i.i.i.i, 32
  %i.kh = ashr exact i64 %sext216.i.i.i, 32       ; 2 uses
  %i.ki = getelementptr i8, ptr %.077133.i.i, i64 %i.kh ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !59
  %.not14.i.i.i.i = icmp eq i8 %i.kk, 10
  br i1 %.not14.i.i.i.i, label %parse_fragment_header.exit.i.i.i, label %parse_fragment.exit.thread.i.i

parse_fragment_header.exit.i.i.i:                 ; preds = %bb.by
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.km = getelementptr inbounds nuw i8, ptr %i.jp, i64 24 ; 4 uses
  %i.kn = call fastcc i32 @parse_range(ptr noundef nonnull %.077133.i.i, i32 noundef %i.jx, i32 noundef 4, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.kl, ptr noundef nonnull %i.km)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jp, i64 40 ; 4 uses
  %i.kq = call fastcc i32 @parse_range(ptr noundef nonnull %.077133.i.i, i32 noundef %i.jx, i32 noundef %i.kn, ptr noundef nonnull @.str.154, ptr noundef nonnull %i.ko, ptr noundef nonnull %i.kp) ; 4 uses
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %parse_fragment.exit.thread.i.i, label %bb.bz

bb.bz:                                            ; preds = %parse_fragment_header.exit.i.i.i
  %.not157.i.i.i = icmp eq i32 %i.kq, 0
  br i1 %.not157.i.i.i, label %recount_diff.exit.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ks = load i16, ptr %i.bb, align 8
  %i.kt = and i16 %i.ks, 32
  %.not158.i.i.i = icmp eq i16 %i.kt, 0
  br i1 %.not158.i.i.i, label %recount_diff.exit.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ku = trunc i64 %.075134.i.i to i32
  %i.kv = sub i32 %i.ku, %i.kq                    ; 2 uses
  %i.kw = icmp slt i32 %i.kv, 1
  br i1 %i.kw, label %bb.cc, label %.preheader.i.preheader.i.i.i

.preheader.i.preheader.i.i.i:                     ; preds = %bb.cb
  %i.kx = zext nneg i32 %i.kq to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %.077133.i.i, i64 %i.kx
  br label %.preheader.i.i.i.i.outer

bb.cc:                                            ; preds = %bb.cb
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.167) #21
  br label %recount_diff.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.outer808, %bb.cf
  %.029.i.i.i.i = phi i32 [ %i.lg, %bb.cf ], [ %.029.i.i.i.i.ph809, %.preheader.i.i.i.i.outer808 ] ; 2 uses
  %.028.i.i.i.i = phi ptr [ %i.lj, %bb.cf ], [ %.028.i.i.i.i.ph810, %.preheader.i.i.i.i.outer808 ] ; 2 uses
  %i.kz = zext nneg i32 %.029.i.i.i.i to i64      ; 2 uses
  br label %bb.ce

bb.cd:                                            ; preds = %bb.ce
  %i.la = add nsw i64 %.03.i.i.i.i.i773, -1       ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i772, i64 1
  %.not.i.i.i.i.i = icmp eq i64 %i.la, 0
  br i1 %.not.i.i.i.i.i, label %linelen.exit.i.i.i.i, label %bb.ce, !llvm.loop !86

bb.ce:                                            ; preds = %.preheader.i.i.i.i, %bb.cd
  %.0.i.i.i.i.i774 = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.lc, %bb.cd ]
  %.03.i.i.i.i.i773 = phi i64 [ %i.kz, %.preheader.i.i.i.i ], [ %i.la, %bb.cd ]
  %.04.i.i.i.i.i772 = phi ptr [ %.028.i.i.i.i, %.preheader.i.i.i.i ], [ %i.lb, %bb.cd ] ; 2 uses
  %i.lc = add nuw nsw i64 %.0.i.i.i.i.i774, 1     ; 2 uses
  %i.ld = load i8, ptr %.04.i.i.i.i.i772, align 1, !tbaa !59
  %i.le = icmp eq i8 %i.ld, 10
  br i1 %i.le, label %linelen.exit.i.i.i.i, label %bb.cd, !llvm.loop !86

linelen.exit.i.i.i.i:                             ; preds = %bb.ce, %bb.cd
  %.1.i.i.i.i.i = phi i64 [ %i.lc, %bb.ce ], [ %i.kz, %bb.cd ] ; 2 uses
  %i.lf = trunc i64 %.1.i.i.i.i.i to i32
  %i.lg = sub nsw i32 %.029.i.i.i.i, %i.lf        ; 8 uses
  %i.lh = icmp slt i32 %i.lg, 1
  br i1 %i.lh, label %.loopexit.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %linelen.exit.i.i.i.i
  %sext.i.i.i.i = shl i64 %.1.i.i.i.i.i, 32
  %i.li = ashr exact i64 %sext.i.i.i.i, 32
  %i.lj = getelementptr inbounds i8, ptr %.028.i.i.i.i, i64 %i.li ; 8 uses
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !59
  switch i8 %i.lk, label %.thread.i.i.i.i [
    i8 32, label %bb.cg
    i8 10, label %bb.cg
    i8 45, label %.loopexit
    i8 43, label %bb.ch
    i8 92, label %.preheader.i.i.i.i
    i8 64, label %bb.ci
    i8 100, label %bb.cj
  ]

bb.cg:                                            ; preds = %bb.cf, %bb.cf
  %i.ll = add nsw i32 %.025.i.i.i.i.ph811, 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cf, %bb.cg
  %.1.i178.i.i.i = phi i32 [ %i.ll, %bb.cg ], [ %.025.i.i.i.i.ph811, %bb.cf ]
  %i.lm = add nuw nsw i32 %.026.i.i.i.i.ph, 1
  br label %.preheader.i.i.i.i.outer

.preheader.i.i.i.i.outer:                         ; preds = %.loopexit, %.preheader.i.preheader.i.i.i
  %.029.i.i.i.i.ph = phi i32 [ %i.lg, %.loopexit ], [ %i.kv, %.preheader.i.preheader.i.i.i ]
  %.028.i.i.i.i.ph = phi ptr [ %i.lj, %.loopexit ], [ %i.ky, %.preheader.i.preheader.i.i.i ]
  %.026.i.i.i.i.ph = phi i32 [ %i.lm, %.loopexit ], [ 0, %.preheader.i.preheader.i.i.i ] ; 2 uses
  %.025.i.i.i.i.ph = phi i32 [ %.1.i178.i.i.i, %.loopexit ], [ 0, %.preheader.i.preheader.i.i.i ]
  br label %.preheader.i.i.i.i.outer808

.preheader.i.i.i.i.outer808:                      ; preds = %.preheader.i.i.i.i.outer, %bb.ch
  %.029.i.i.i.i.ph809 = phi i32 [ %.029.i.i.i.i.ph, %.preheader.i.i.i.i.outer ], [ %i.lg, %bb.ch ]
  %.028.i.i.i.i.ph810 = phi ptr [ %.028.i.i.i.i.ph, %.preheader.i.i.i.i.outer ], [ %i.lj, %bb.ch ]
  %.025.i.i.i.i.ph811 = phi i32 [ %.025.i.i.i.i.ph, %.preheader.i.i.i.i.outer ], [ %i.ln, %bb.ch ] ; 4 uses
  br label %.preheader.i.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.ln = add nsw i32 %.025.i.i.i.i.ph811, 1
  br label %.preheader.i.i.i.i.outer808

bb.ci:                                            ; preds = %bb.cf
  %i.lo = icmp samesign ult i32 %i.lg, 3
  br i1 %i.lo, label %.thread.i.i.i.i, label %bb.ck

bb.cj:                                            ; preds = %bb.cf
  %i.lp = icmp samesign ult i32 %i.lg, 5
  br i1 %i.lp, label %.thread.i.i.i.i, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.cj
  %i.lq = call zeroext i1 @starts_with(ptr noundef nonnull %i.lj, ptr noundef nonnull @.str.169) #21
  br i1 %i.lq, label %.loopexit.i.i.i.i, label %.thread.i.i.i.i

bb.ck:                                            ; preds = %bb.ci
  %i.lr = call zeroext i1 @starts_with(ptr noundef nonnull %i.lj, ptr noundef nonnull @.str.168) #21
  br i1 %i.lr, label %.loopexit.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.cf, %bb.ck, %.split.i.i.i.i, %bb.cj, %bb.ci
  %i.ls = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i.i.i.i = icmp eq i32 %i.ls, 0
  br i1 %.not4.i.i.i.i.i, label %_.exit.i.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.thread.i.i.i.i
  %i.lt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.170, i32 noundef 5) #21
  br label %_.exit.i.i.i.i

_.exit.i.i.i.i:                                   ; preds = %bb.cl, %.thread.i.i.i.i
  %.0.i32.i.i.i.i = phi ptr [ %i.lt, %bb.cl ], [ @.str.170, %.thread.i.i.i.i ]
  %i.lu = zext nneg i32 %i.lg to i64
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cn
  %i.lv = add nsw i64 %.03.i34.i.i.i.i776, -1     ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.04.i33.i.i.i.i775, i64 1
  %.not.i36.i.i.i.i = icmp eq i64 %i.lv, 0
  br i1 %.not.i36.i.i.i.i, label %.thread48.i.i.i.i, label %bb.cn, !llvm.loop !86

bb.cn:                                            ; preds = %_.exit.i.i.i.i, %bb.cm
  %.0.i35.i.i.i.i777 = phi i32 [ 0, %_.exit.i.i.i.i ], [ %i.lx, %bb.cm ]
  %.03.i34.i.i.i.i776 = phi i64 [ %i.lu, %_.exit.i.i.i.i ], [ %i.lv, %bb.cm ]
  %.04.i33.i.i.i.i775 = phi ptr [ %i.lj, %_.exit.i.i.i.i ], [ %i.lw, %bb.cm ] ; 2 uses
  %i.lx = add nuw i32 %.0.i35.i.i.i.i777, 1       ; 2 uses
  %i.ly = load i8, ptr %.04.i33.i.i.i.i775, align 1, !tbaa !59
  %i.lz = icmp eq i8 %i.ly, 10
  br i1 %i.lz, label %.thread48.i.i.i.i, label %bb.cm, !llvm.loop !86

.thread48.i.i.i.i:                                ; preds = %bb.cn, %bb.cm
  %.1.i37.i.i.i.i = phi i32 [ %i.lx, %bb.cn ], [ %i.lg, %bb.cm ]
  call void (ptr, ...) @warning(ptr noundef %.0.i32.i.i.i.i, i32 noundef %.1.i37.i.i.i.i, ptr noundef nonnull %i.lj) #21
  br label %recount_diff.exit.i.i.i

.loopexit.i.i.i.i:                                ; preds = %linelen.exit.i.i.i.i, %bb.ck, %.split.i.i.i.i
  %i.ma = zext nneg i32 %.026.i.i.i.i.ph to i64
  store i64 %i.ma, ptr %i.km, align 8, !tbaa !135
  %i.mb = sext i32 %.025.i.i.i.i.ph811 to i64
  store i64 %i.mb, ptr %i.kp, align 8, !tbaa !136
  br label %recount_diff.exit.i.i.i

recount_diff.exit.i.i.i:                          ; preds = %.loopexit.i.i.i.i, %.thread48.i.i.i.i, %bb.cc, %bb.ca, %bb.bz
  %i.mc = load i64, ptr %i.km, align 8, !tbaa !135 ; 2 uses
  %i.md = load i64, ptr %i.kp, align 8, !tbaa !136 ; 2 uses
  %i.me = sub i64 %.075134.i.i, %i.kh             ; 2 uses
  %storemerge.in242.i.i.i = load i32, ptr %i.j, align 4, !tbaa !36
  %storemerge243.i.i.i = add nsw i32 %storemerge.in242.i.i.i, 1
  store i32 %storemerge243.i.i.i, ptr %i.j, align 4, !tbaa !36
  %.not159244.i.i.i = icmp eq i64 %i.me, 0
  br i1 %.not159244.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %recount_diff.exit.i.i.i, %check_whitespace.exit.i.i.i
  %.0130254.i.i.i = phi i64 [ %.1.i.i126.i, %check_whitespace.exit.i.i.i ], [ 0, %recount_diff.exit.i.i.i ] ; 2 uses
  %.0131253.i.i.i = phi i64 [ %.2.i.i.i, %check_whitespace.exit.i.i.i ], [ 0, %recount_diff.exit.i.i.i ] ; 4 uses
  %.0133252.i.i.i = phi i64 [ %.1134.i.i.i, %check_whitespace.exit.i.i.i ], [ %i.md, %recount_diff.exit.i.i.i ] ; 4 uses
  %.0135251.i.i.i = phi i64 [ %.1136.i.i.i, %check_whitespace.exit.i.i.i ], [ %i.mc, %recount_diff.exit.i.i.i ] ; 4 uses
  %.0138250.i.i.i = phi i32 [ %i.rm, %check_whitespace.exit.i.i.i ], [ %i.jx, %recount_diff.exit.i.i.i ] ; 2 uses
  %.0141249.i.i.i = phi i32 [ %.1142.i.i.i, %check_whitespace.exit.i.i.i ], [ 0, %recount_diff.exit.i.i.i ] ; 9 uses
  %.0143248.i.i.i = phi i32 [ %.1144.i.i.i, %check_whitespace.exit.i.i.i ], [ 0, %recount_diff.exit.i.i.i ] ; 9 uses
  %.0146246.i.i.i = phi ptr [ %i.rp, %check_whitespace.exit.i.i.i ], [ %i.ki, %recount_diff.exit.i.i.i ] ; 12 uses
  %.0147245.i.i.i = phi i64 [ %i.ro, %check_whitespace.exit.i.i.i ], [ %i.me, %recount_diff.exit.i.i.i ] ; 4 uses
  %i.mf = icmp ne i64 %.0135251.i.i.i, 0
  %i.mg = icmp ne i64 %.0133252.i.i.i, 0
  %or.cond.i.i.i = select i1 %i.mf, i1 true, i1 %i.mg
  br i1 %or.cond.i.i.i, label %.preheader.i.i.i.preheader, label %._crit_edge.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader
  %i.mh = add i64 %.03.i180.i.i.i779, -1          ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.04.i179.i.i.i778, i64 1
  %.not.i182.i.i.i = icmp eq i64 %i.mh, 0
  br i1 %.not.i182.i.i.i, label %linelen.exit184.i.i.i, label %.preheader.i.i.i.preheader, !llvm.loop !86

.preheader.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i, %.preheader.i.i.i
  %.0.i181.i.i.i780 = phi i64 [ %i.mj, %.preheader.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  %.03.i180.i.i.i779 = phi i64 [ %i.mh, %.preheader.i.i.i ], [ %.0147245.i.i.i, %.lr.ph.i.i.i ]
  %.04.i179.i.i.i778 = phi ptr [ %i.mi, %.preheader.i.i.i ], [ %.0146246.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.mj = add nuw i64 %.0.i181.i.i.i780, 1        ; 2 uses
  %i.mk = load i8, ptr %.04.i179.i.i.i778, align 1, !tbaa !59
  %i.ml = icmp eq i8 %i.mk, 10
  br i1 %i.ml, label %linelen.exit184.i.i.i, label %.preheader.i.i.i, !llvm.loop !86

linelen.exit184.i.i.i:                            ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i
  %.1.i183.i.i.i = phi i64 [ %i.mj, %.preheader.i.i.i.preheader ], [ %.0147245.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %i.mm = trunc i64 %.1.i183.i.i.i to i32         ; 3 uses
  %.not160.i.i.i = icmp eq i32 %i.mm, 0
  br i1 %.not160.i.i.i, label %parse_fragment.exit.thread.i.i, label %bb.co

bb.co:                                            ; preds = %linelen.exit184.i.i.i
  %i.mn = shl i64 %.1.i183.i.i.i, 32              ; 2 uses
  %sext161.i.i.i = add i64 %i.mn, -4294967296
  %i.mo = ashr exact i64 %sext161.i.i.i, 32
  %i.mp = getelementptr inbounds i8, ptr %.0146246.i.i.i, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !59
  %.not162.i.i.i = icmp eq i8 %i.mq, 10
  br i1 %.not162.i.i.i, label %bb.cp, label %parse_fragment.exit.thread.i.i

bb.cp:                                            ; preds = %bb.co
  %i.mr = load i8, ptr %.0146246.i.i.i, align 1, !tbaa !59 ; 2 uses
  switch i8 %i.mr, label %adjust_incomplete.exit.i.i.i [
    i8 10, label %bb.cq
    i8 32, label %bb.cq
    i8 43, label %bb.cq
    i8 45, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp, %bb.cp, %bb.cp, %bb.cp
  %i.ms = ashr exact i64 %i.mn, 32                ; 2 uses
  %i.mt = sub i64 %.0147245.i.i.i, %i.ms          ; 3 uses
  %i.mu = icmp ult i64 %i.mt, 12
  br i1 %i.mu, label %adjust_incomplete.exit.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mv = getelementptr inbounds i8, ptr %.0146246.i.i.i, i64 %i.ms ; 2 uses
  %i.mw = load i16, ptr %i.mv, align 1
  %i.mx = icmp ne i16 %i.mw, 8284
  %i.my = zext i1 %i.mx to i32
  %.not20.i.i.i.i = icmp eq i32 %i.my, 0
  br i1 %.not20.i.i.i.i, label %.preheader.i186.i.i.i.preheader, label %adjust_incomplete.exit.i.i.i

.preheader.i186.i.i.i:                            ; preds = %.preheader.i186.i.i.i.preheader
  %i.mz = add i64 %.03.i.i188.i.i.i782, -1        ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.04.i.i187.i.i.i781, i64 1
  %.not.i.i190.i.i.i = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i190.i.i.i, label %linelen.exit.i191.i.i.i, label %.preheader.i186.i.i.i.preheader, !llvm.loop !86

.preheader.i186.i.i.i.preheader:                  ; preds = %bb.cr, %.preheader.i186.i.i.i
  %.0.i.i189.i.i.i783 = phi i64 [ %i.nb, %.preheader.i186.i.i.i ], [ 0, %bb.cr ]
  %.03.i.i188.i.i.i782 = phi i64 [ %i.mz, %.preheader.i186.i.i.i ], [ %i.mt, %bb.cr ]
  %.04.i.i187.i.i.i781 = phi ptr [ %i.na, %.preheader.i186.i.i.i ], [ %i.mv, %bb.cr ] ; 2 uses
  %i.nb = add nuw i64 %.0.i.i189.i.i.i783, 1      ; 2 uses
  %i.nc = load i8, ptr %.04.i.i187.i.i.i781, align 1, !tbaa !59
  %i.nd = icmp eq i8 %i.nc, 10
  br i1 %i.nd, label %linelen.exit.i191.i.i.i, label %.preheader.i186.i.i.i, !llvm.loop !86

linelen.exit.i191.i.i.i:                          ; preds = %.preheader.i186.i.i.i.preheader, %.preheader.i186.i.i.i
  %.1.i.i192.i.i.i = phi i64 [ %i.nb, %.preheader.i186.i.i.i.preheader ], [ %i.mt, %.preheader.i186.i.i.i ]
  %i.ne = trunc i64 %.1.i.i192.i.i.i to i32       ; 2 uses
  %i.nf = icmp slt i32 %i.ne, 12
  %..i.i.i.i = select i1 %i.nf, i32 0, i32 %i.ne
  br label %adjust_incomplete.exit.i.i.i

adjust_incomplete.exit.i.i.i:                     ; preds = %linelen.exit.i191.i.i.i, %bb.cr, %bb.cq, %bb.cp
  %.0.i185.i.i.i = phi i32 [ 0, %bb.cq ], [ 0, %bb.cp ], [ %..i.i.i.i, %linelen.exit.i191.i.i.i ], [ 0, %bb.cr ] ; 2 uses
  %.not163.i.i.i = icmp ne i32 %.0.i185.i.i.i, 0  ; 2 uses
  %i.ng = sext i1 %.not163.i.i.i to i32
  %.0139.i.i.i = add nsw i32 %i.ng, %i.mm         ; 11 uses
  switch i8 %i.mr, label %parse_fragment.exit.thread.i.i [
    i8 10, label %bb.cs
    i8 32, label %bb.cs
    i8 45, label %bb.dc
    i8 43, label %bb.dl
  ]

bb.cs:                                            ; preds = %adjust_incomplete.exit.i.i.i, %adjust_incomplete.exit.i.i.i
  %i.nh = add i64 %.0135251.i.i.i, -1             ; 5 uses
  %i.ni = add i64 %.0133252.i.i.i, -1             ; 5 uses
  %i.nj = icmp eq i32 %.0141249.i.i.i, 0
  %i.nk = icmp eq i32 %.0143248.i.i.i, 0
  %or.cond3.not.i.i.i = select i1 %i.nj, i1 %i.nk, i1 false
  %i.nl = zext i1 %or.cond3.not.i.i.i to i64
  %spec.select.i.i.i = add i64 %.0131253.i.i.i, %i.nl ; 5 uses
  %i.nm = add i64 %.0130254.i.i.i, 1              ; 5 uses
  %i.nn = icmp sgt i32 %.0139.i.i.i, 1
  br i1 %i.nn, label %bb.ct, label %check_old_for_crlf.exit.i.i.i

bb.ct:                                            ; preds = %bb.cs
  %i.no = zext nneg i32 %.0139.i.i.i to i64
  %i.np = getelementptr i8, ptr %.0146246.i.i.i, i64 %i.no ; 2 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 -1
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !59
  %i.ns = icmp eq i8 %i.nr, 10
  br i1 %i.ns, label %bb.cu, label %check_old_for_crlf.exit.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.nt = getelementptr i8, ptr %i.np, i64 -2
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !59
  %i.nv = icmp eq i8 %i.nu, 13
  br i1 %i.nv, label %bb.cv, label %check_old_for_crlf.exit.i.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.nw = load i32, ptr %i.jb, align 4, !tbaa !130
  %i.nx = or i32 %i.nw, 512
  store i32 %i.nx, ptr %i.jb, align 4, !tbaa !130
  %i.ny = load i16, ptr %i.bb, align 8
  %i.nz = or i16 %i.ny, 256
  store i16 %i.nz, ptr %i.bb, align 8
  br label %check_old_for_crlf.exit.i.i.i

check_old_for_crlf.exit.i.i.i:                    ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs
  %i.oa = load i32, ptr %i.ar, align 8, !tbaa !132
  %.not170.i.i.i = icmp eq i32 %i.oa, 0
  br i1 %.not170.i.i.i, label %bb.cw, label %check_whitespace.exit.i.i.i

bb.cw:                                            ; preds = %check_old_for_crlf.exit.i.i.i
  %i.ob = load i32, ptr %i.as, align 8, !tbaa !35
  %i.oc = icmp eq i32 %i.ob, 3
  br i1 %i.oc, label %bb.cx, label %check_whitespace.exit.i.i.i

bb.cx:                                            ; preds = %bb.cw
  %i.od = load i8, ptr %.0146246.i.i.i, align 1, !tbaa !59
  %i.oe = icmp eq i8 %i.od, 10                    ; 2 uses
  %spec.select174.i.i.i = select i1 %i.oe, ptr @.str.164, ptr %.0146246.i.i.i
  %spec.select175.i.i.i = select i1 %i.oe, i32 2, i32 %.0139.i.i.i ; 2 uses
  %i.of = load i32, ptr %i.jb, align 4, !tbaa !130
  %i.og = getelementptr inbounds nuw i8, ptr %spec.select174.i.i.i, i64 1 ; 2 uses
  %i.oh = add nsw i32 %spec.select175.i.i.i, -1
  %i.oi = call i32 @ws_check(ptr noundef nonnull %i.og, i32 noundef %i.oh, i32 noundef %i.of) #21 ; 3 uses
  %i.oj = load i32, ptr %i.j, align 4, !tbaa !36
  %.not.i.i193.i.i.i = icmp eq i32 %i.oi, 0
  br i1 %.not.i.i193.i.i.i, label %check_whitespace.exit.i.i.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ok = load i32, ptr %i.at, align 8, !tbaa !114 ; 2 uses
  %i.ol = add nsw i32 %i.ok, 1
  store i32 %i.ol, ptr %i.at, align 8, !tbaa !114
  %i.om = load i32, ptr %i.au, align 4, !tbaa !34 ; 2 uses
  %.not16.i.i.i.i.i = icmp eq i32 %i.om, 0
  %.not17.i.i.i.i.i = icmp sgt i32 %i.om, %i.ok
  %or.cond.i.i.i.i.i = select i1 %.not16.i.i.i.i.i, i1 true, i1 %.not17.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.cz, label %check_whitespace.exit.i.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.on = call ptr @whitespace_error_string(i32 noundef %i.oi) #21 ; 2 uses
  %i.oo = load i32, ptr %i.av, align 8, !tbaa !49
  %i.op = icmp sgt i32 %i.oo, -1
  br i1 %i.op, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.oq = lshr i32 %i.oi, 12
  %i.or = or i32 %i.oq, -2
  %spec.select.i.i.i.i.i = add nsw i32 %i.or, %spec.select175.i.i.i
  %i.os = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.ot = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.ou = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.os, ptr noundef nonnull @.str.172, ptr noundef %i.ot, i32 noundef %i.oj, ptr noundef %i.on, i32 noundef %spec.select.i.i.i.i.i, ptr noundef nonnull %i.og) #24 ; 0 uses
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  call void @free(ptr noundef %i.on) #21
  br label %check_whitespace.exit.i.i.i

bb.dc:                                            ; preds = %adjust_incomplete.exit.i.i.i
  %i.ov = load i32, ptr %i.ar, align 8, !tbaa !132
  %.not167.i.i.i = icmp eq i32 %i.ov, 0
  br i1 %.not167.i.i.i, label %bb.dd, label %check_old_for_crlf.exit194.thread210.i.i.i

bb.dd:                                            ; preds = %bb.dc
  %i.ow = icmp sgt i32 %.0139.i.i.i, 1
  br i1 %i.ow, label %bb.de, label %check_whitespace.exit200.i.i.i

bb.de:                                            ; preds = %bb.dd
  %i.ox = zext nneg i32 %.0139.i.i.i to i64
  %i.oy = getelementptr i8, ptr %.0146246.i.i.i, i64 %i.ox ; 2 uses
  %i.oz = getelementptr i8, ptr %i.oy, i64 -1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !59
  %i.pb = icmp eq i8 %i.pa, 10
  br i1 %i.pb, label %bb.df, label %check_whitespace.exit200.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.pc = getelementptr i8, ptr %i.oy, i64 -2
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !59
  %i.pe = icmp eq i8 %i.pd, 13
  br i1 %i.pe, label %check_old_for_crlf.exit194.i.i.i, label %check_whitespace.exit200.i.i.i

check_old_for_crlf.exit194.i.i.i:                 ; preds = %bb.df
  %i.pf = load i32, ptr %i.jb, align 4, !tbaa !130
  %i.pg = or i32 %i.pf, 512
  store i32 %i.pg, ptr %i.jb, align 4, !tbaa !130
  %i.ph = load i16, ptr %i.bb, align 8
  %i.pi = or i16 %i.ph, 256
  store i16 %i.pi, ptr %i.bb, align 8
  %.pr.pre.i.i.i = load i32, ptr %i.ar, align 8, !tbaa !132
  %i.pj = icmp eq i32 %.pr.pre.i.i.i, 0
  br i1 %i.pj, label %check_whitespace.exit200.i.i.i, label %check_old_for_crlf.exit194.thread210.i.i.i

check_old_for_crlf.exit194.thread210.i.i.i:       ; preds = %check_old_for_crlf.exit194.i.i.i, %bb.dc
  %i.pk = load i32, ptr %i.as, align 8, !tbaa !35
  %.not169.i.i.i = icmp eq i32 %i.pk, 0
  br i1 %.not169.i.i.i, label %check_whitespace.exit200.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %check_old_for_crlf.exit194.thread210.i.i.i
  %i.pl = load i32, ptr %i.jb, align 4, !tbaa !130
  %i.pm = getelementptr inbounds nuw i8, ptr %.0146246.i.i.i, i64 1 ; 2 uses
  %i.pn = add nsw i32 %.0139.i.i.i, -1
  %i.po = call i32 @ws_check(ptr noundef nonnull %i.pm, i32 noundef %i.pn, i32 noundef %i.pl) #21 ; 3 uses
  %i.pp = load i32, ptr %i.j, align 4, !tbaa !36
  %.not.i.i195.i.i.i = icmp eq i32 %i.po, 0
  br i1 %.not.i.i195.i.i.i, label %check_whitespace.exit200.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.pq = load i32, ptr %i.at, align 8, !tbaa !114 ; 2 uses
  %i.pr = add nsw i32 %i.pq, 1
  store i32 %i.pr, ptr %i.at, align 8, !tbaa !114
  %i.ps = load i32, ptr %i.au, align 4, !tbaa !34 ; 2 uses
  %.not16.i.i196.i.i.i = icmp eq i32 %i.ps, 0
  %.not17.i.i197.i.i.i = icmp sgt i32 %i.ps, %i.pq
  %or.cond.i.i198.i.i.i = select i1 %.not16.i.i196.i.i.i, i1 true, i1 %.not17.i.i197.i.i.i
  br i1 %or.cond.i.i198.i.i.i, label %bb.di, label %check_whitespace.exit200.i.i.i

bb.di:                                            ; preds = %bb.dh
  %i.pt = call ptr @whitespace_error_string(i32 noundef %i.po) #21 ; 2 uses
  %i.pu = load i32, ptr %i.av, align 8, !tbaa !49
  %i.pv = icmp sgt i32 %i.pu, -1
  br i1 %i.pv, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.pw = lshr i32 %i.po, 12
  %i.px = or i32 %i.pw, -2
  %spec.select.i.i199.i.i.i = add nsw i32 %i.px, %.0139.i.i.i
  %i.py = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.pz = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.qa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.py, ptr noundef nonnull @.str.172, ptr noundef %i.pz, i32 noundef %i.pp, ptr noundef %i.pt, i32 noundef %spec.select.i.i199.i.i.i, ptr noundef nonnull %i.pm) #24 ; 0 uses
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  call void @free(ptr noundef %i.pt) #21
  br label %check_whitespace.exit200.i.i.i

check_whitespace.exit200.i.i.i:                   ; preds = %bb.dk, %bb.dh, %bb.dg, %check_old_for_crlf.exit194.thread210.i.i.i, %check_old_for_crlf.exit194.i.i.i, %bb.df, %bb.de, %bb.dd
  %i.qb = add nsw i32 %.0141249.i.i.i, 1
  %i.qc = add i64 %.0135251.i.i.i, -1
  br label %check_whitespace.exit.i.i.i

bb.dl:                                            ; preds = %adjust_incomplete.exit.i.i.i
  %i.qd = load i32, ptr %i.ar, align 8, !tbaa !132
  %.not164.i.i.i = icmp eq i32 %i.qd, 0
  br i1 %.not164.i.i.i, label %check_old_for_crlf.exit201.thread.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qe = icmp sgt i32 %.0139.i.i.i, 1
  br i1 %i.qe, label %bb.dn, label %check_whitespace.exit207.i.i.i
end_hunk_0
begin_hunk_1_@apply_patch:bb.a
  %i.ss = getelementptr inbounds nuw i8, ptr %i.jp, i64 72
  %i.st = zext nneg i32 %.0138.lcssa.i.i.i to i64 ; 2 uses
  %i.su = add i32 %.0138.lcssa.i.i.i, %.071135.i.i ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %.077133.i.i, i64 %i.st
  %i.sw = sub i64 %.075134.i.i, %i.st             ; 2 uses
  %i.sx = icmp ugt i64 %i.sw, 4
  br i1 %i.sx, label %bb.bp, label %.critedge.i120.i, !llvm.loop !146

.critedge.i120.i:                                 ; preds = %bb.dw, %bb.bp
  %.071.lcssa.ph.i.i = phi i32 [ %.071135.i.i, %bb.bp ], [ %i.su, %bb.dw ] ; 3 uses
  %.069.lcssa.ph.i.i = phi i64 [ %.069136.i.i, %bb.bp ], [ %i.sn, %bb.dw ] ; 3 uses
  %.067.lcssa.ph.i.i = phi i64 [ %.067137.i.i, %bb.bp ], [ %i.sp, %bb.dw ] ; 3 uses
  %.065.lcssa.ph.i.i = phi i64 [ %.065138.i.i, %bb.bp ], [ %i.sr, %bb.dw ]
  %i.sy = icmp eq i64 %.065.lcssa.ph.i.i, 0       ; 3 uses
  %i.sz = load i32, ptr %i.bk, align 8, !tbaa !73 ; 3 uses
  %i.ta = icmp slt i32 %i.sz, 0
  br i1 %i.ta, label %bb.dx, label %bb.ea

.critedge.thread.i.i:                             ; preds = %use_patch.exit.thread.i
  %i.tb = load i32, ptr %i.bk, align 8, !tbaa !73 ; 3 uses
  %i.tc = icmp slt i32 %i.tb, 0
  br i1 %i.tc, label %.thread195.i.i, label %.thread209.i.i

bb.dx:                                            ; preds = %.critedge.i120.i
  %.not82.i121.i = icmp eq i64 %.069.lcssa.ph.i.i, 0
  br i1 %.not82.i121.i, label %.thread195.i.i, label %bb.dz

.thread195.i.i:                                   ; preds = %bb.dx, %.critedge.thread.i.i
  %.071.lcssa188208.i.i = phi i32 [ %.071.lcssa.ph.i.i, %bb.dx ], [ 0, %.critedge.thread.i.i ] ; 3 uses
  %.067.lcssa192204.i.i = phi i64 [ %.067.lcssa.ph.i.i, %bb.dx ], [ 0, %.critedge.thread.i.i ] ; 3 uses
  %.065.lcssa194202.i.i = phi i1 [ %i.sy, %bb.dx ], [ true, %.critedge.thread.i.i ] ; 3 uses
  %i.td = phi i32 [ %i.sz, %bb.dx ], [ %i.tb, %.critedge.thread.i.i ] ; 2 uses
  %i.te = load ptr, ptr %i.jg, align 8, !tbaa !60 ; 2 uses
  %.not83.i.i = icmp eq ptr %i.te, null
  br i1 %.not83.i.i, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %.thread195.i.i
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 72
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !64
  %.not84.i116.i = icmp eq ptr %i.tg, null
  br i1 %.not84.i116.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.071.lcssa188207.i.i = phi i32 [ %.071.lcssa188208.i.i, %bb.dy ], [ %.071.lcssa.ph.i.i, %bb.dx ]
  %.069.lcssa190205.i.i = phi i64 [ 0, %bb.dy ], [ %.069.lcssa.ph.i.i, %bb.dx ]
  %.067.lcssa192203.i.i = phi i64 [ %.067.lcssa192204.i.i, %bb.dy ], [ %.067.lcssa.ph.i.i, %bb.dx ]
  %.065.lcssa194201.i.i = phi i1 [ %.065.lcssa194202.i.i, %bb.dy ], [ %i.sy, %bb.dx ]
  store i32 0, ptr %i.bk, align 8, !tbaa !73
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %.thread195.i.i, %.critedge.i120.i
  %.065.lcssa193.i.i = phi i1 [ %.065.lcssa194201.i.i, %bb.dz ], [ %.065.lcssa194202.i.i, %bb.dy ], [ %.065.lcssa194202.i.i, %.thread195.i.i ], [ %i.sy, %.critedge.i120.i ] ; 3 uses
  %.067.lcssa191.i.i = phi i64 [ %.067.lcssa192203.i.i, %bb.dz ], [ %.067.lcssa192204.i.i, %bb.dy ], [ %.067.lcssa192204.i.i, %.thread195.i.i ], [ %.067.lcssa.ph.i.i, %.critedge.i120.i ] ; 3 uses
  %.069.lcssa189.i.i = phi i64 [ %.069.lcssa190205.i.i, %bb.dz ], [ 0, %bb.dy ], [ 0, %.thread195.i.i ], [ %.069.lcssa.ph.i.i, %.critedge.i120.i ] ; 3 uses
  %.071.lcssa187.i.i = phi i32 [ %.071.lcssa188207.i.i, %bb.dz ], [ %.071.lcssa188208.i.i, %bb.dy ], [ %.071.lcssa188208.i.i, %.thread195.i.i ], [ %.071.lcssa.ph.i.i, %.critedge.i120.i ] ; 3 uses
  %i.th = phi i32 [ 0, %bb.dz ], [ %i.td, %bb.dy ], [ %i.td, %.thread195.i.i ], [ %i.sz, %.critedge.i120.i ] ; 3 uses
  %i.ti = load i32, ptr %i.bj, align 4, !tbaa !74 ; 3 uses
  %i.tj = icmp slt i32 %i.ti, 0
  br i1 %i.tj, label %bb.eb, label %bb.ee

.thread209.i.i:                                   ; preds = %.critedge.thread.i.i
  %i.tk = load i32, ptr %i.bj, align 4, !tbaa !74 ; 2 uses
  %i.tl = icmp slt i32 %i.tk, 0
  br i1 %i.tl, label %.thread222.i.i, label %.thread.i

bb.eb:                                            ; preds = %bb.ea
  %.not85.i.i = icmp eq i64 %.067.lcssa191.i.i, 0
  br i1 %.not85.i.i, label %.thread222.i.i, label %bb.ed

.thread222.i.i:                                   ; preds = %bb.eb, %.thread209.i.i
  %.065.lcssa193215235.i.i = phi i1 [ %.065.lcssa193.i.i, %bb.eb ], [ true, %.thread209.i.i ] ; 3 uses
  %.069.lcssa189219231.i.i = phi i64 [ %.069.lcssa189.i.i, %bb.eb ], [ 0, %.thread209.i.i ] ; 3 uses
  %.071.lcssa187221229.i.i = phi i32 [ %.071.lcssa187.i.i, %bb.eb ], [ 0, %.thread209.i.i ] ; 3 uses
  %i.tm = phi i32 [ %i.th, %bb.eb ], [ %i.tb, %.thread209.i.i ] ; 3 uses
  %i.tn = phi i32 [ %i.ti, %bb.eb ], [ %i.tk, %.thread209.i.i ] ; 2 uses
  %i.to = load ptr, ptr %i.jg, align 8, !tbaa !60 ; 2 uses
  %.not86.i112.i = icmp eq ptr %i.to, null
  br i1 %.not86.i112.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %.thread222.i.i
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 72
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !64
  %.not87.i113.i = icmp eq ptr %i.tq, null
  br i1 %.not87.i113.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %.065.lcssa193215234.i.i = phi i1 [ %.065.lcssa193215235.i.i, %bb.ec ], [ %.065.lcssa193.i.i, %bb.eb ]
  %.067.lcssa191217232.i.i = phi i64 [ 0, %bb.ec ], [ %.067.lcssa191.i.i, %bb.eb ]
  %.069.lcssa189219230.i.i = phi i64 [ %.069.lcssa189219231.i.i, %bb.ec ], [ %.069.lcssa189.i.i, %bb.eb ]
  %.071.lcssa187221228.i.i = phi i32 [ %.071.lcssa187221229.i.i, %bb.ec ], [ %.071.lcssa187.i.i, %bb.eb ]
  %i.tr = phi i32 [ %i.tm, %bb.ec ], [ %i.th, %bb.eb ]
  store i32 0, ptr %i.bj, align 4, !tbaa !74
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %.thread222.i.i, %bb.ea
  %i.ts = phi i32 [ %i.tr, %bb.ed ], [ %i.tm, %bb.ec ], [ %i.tm, %.thread222.i.i ], [ %i.th, %bb.ea ]
  %.071.lcssa187220.i.i = phi i32 [ %.071.lcssa187221228.i.i, %bb.ed ], [ %.071.lcssa187221229.i.i, %bb.ec ], [ %.071.lcssa187221229.i.i, %.thread222.i.i ], [ %.071.lcssa187.i.i, %bb.ea ] ; 3 uses
  %.069.lcssa189218.i.i = phi i64 [ %.069.lcssa189219230.i.i, %bb.ed ], [ %.069.lcssa189219231.i.i, %bb.ec ], [ %.069.lcssa189219231.i.i, %.thread222.i.i ], [ %.069.lcssa189.i.i, %bb.ea ]
  %.067.lcssa191216.i.i = phi i64 [ %.067.lcssa191217232.i.i, %bb.ed ], [ 0, %bb.ec ], [ 0, %.thread222.i.i ], [ %.067.lcssa191.i.i, %bb.ea ]
  %.065.lcssa193214.i.i = phi i1 [ %.065.lcssa193215234.i.i, %bb.ed ], [ %.065.lcssa193215235.i.i, %bb.ec ], [ %.065.lcssa193215235.i.i, %.thread222.i.i ], [ %.065.lcssa193.i.i, %bb.ea ]
  %i.tt = phi i32 [ 0, %bb.ed ], [ %i.tn, %bb.ec ], [ %i.tn, %.thread222.i.i ], [ %i.ti, %bb.ea ] ; 2 uses
  %i.tu = icmp sgt i32 %i.ts, 0
  %i.tv = icmp ne i64 %.069.lcssa189218.i.i, 0
  %or.cond.i.i = select i1 %i.tu, i1 %i.tv, i1 false
  br i1 %or.cond.i.i, label %bb.ef, label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.tw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i89.i.i = icmp eq i32 %i.tw, 0
  br i1 %.not4.i89.i.i, label %_.exit91.i.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.tx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.161, i32 noundef 5) #21
  br label %_.exit91.i.i

_.exit91.i.i:                                     ; preds = %bb.eg, %bb.ef
  %.0.i90.i115.i = phi ptr [ %i.tx, %bb.eg ], [ @.str.161, %bb.ef ]
  %i.ty = load ptr, ptr %i.ba, align 8, !tbaa !71
  %i.tz = call i32 (ptr, ...) @error(ptr noundef %.0.i90.i115.i, ptr noundef %i.ty) #21 ; 0 uses
  br label %parse_chunk.exit.thread

bb.eh:                                            ; preds = %bb.ee
  %i.ua = icmp sgt i32 %i.tt, 0
  %i.ub = icmp ne i64 %.067.lcssa191216.i.i, 0    ; 2 uses
  %or.cond3.i.i = select i1 %i.ua, i1 %i.ub, i1 false
  br i1 %or.cond3.i.i, label %bb.ei, label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.uc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i92.i.i = icmp eq i32 %i.uc, 0
  br i1 %.not4.i92.i.i, label %_.exit94.i.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ud = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.162, i32 noundef 5) #21
  br label %_.exit94.i.i

_.exit94.i.i:                                     ; preds = %bb.ej, %bb.ei
  %.0.i93.i114.i = phi ptr [ %i.ud, %bb.ej ], [ @.str.162, %bb.ei ]
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !70
  %i.ug = call i32 (ptr, ...) @error(ptr noundef %.0.i93.i114.i, ptr noundef %i.uf) #21 ; 0 uses
  br label %parse_chunk.exit.thread

bb.ek:                                            ; preds = %bb.eh
  %i.uh = icmp ne i32 %i.tt, 0
  %or.cond5.i.i = select i1 %i.uh, i1 true, i1 %i.ub
  %or.cond7.not.i.i = select i1 %or.cond5.i.i, i1 true, i1 %.065.lcssa193214.i.i
  br i1 %or.cond7.not.i.i, label %parse_single_patch.exit.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ui = load i32, ptr %i.av, align 8, !tbaa !49
  %i.uj = icmp sgt i32 %i.ui, -1
  br i1 %i.uj, label %bb.em, label %parse_single_patch.exit.i

bb.em:                                            ; preds = %bb.el
  %i.uk = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.ul = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i95.i.i = icmp eq i32 %i.ul, 0
  br i1 %.not4.i95.i.i, label %_.exit97.i.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.um = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.163, i32 noundef 5) #21
  br label %_.exit97.i.i

_.exit97.i.i:                                     ; preds = %bb.en, %bb.em
  %.0.i96.i.i = phi ptr [ %i.um, %bb.en ], [ @.str.163, %bb.em ]
  %i.un = load ptr, ptr %i.ba, align 8, !tbaa !71
  %i.uo = call i32 (ptr, ptr, ...) @fprintf_ln(ptr noundef %i.uk, ptr noundef %.0.i96.i.i, ptr noundef %i.un) #21 ; 0 uses
  br label %parse_single_patch.exit.i

parse_single_patch.exit.i:                        ; preds = %_.exit97.i.i, %bb.el, %bb.ek
  %i.up = icmp slt i32 %.071.lcssa187220.i.i, 0
  br i1 %i.up, label %parse_chunk.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %parse_single_patch.exit.i
  %.not93.i = icmp eq i32 %.071.lcssa187220.i.i, 0
  br i1 %.not93.i, label %.thread.i, label %..thread167_crit_edge.i

..thread167_crit_edge.i:                          ; preds = %bb.eo
  %.pre.i = add nsw i32 %.0138.i, %.4.i.i
  br label %parse_chunk.exit

.thread.i:                                        ; preds = %bb.eo, %.thread209.i.i
  %i.uq = add nsw i32 %.0138.i, %.4.i.i           ; 6 uses
  %i.ur = sext i32 %i.uq to i64                   ; 2 uses
  %i.us = getelementptr inbounds i8, ptr %i.bg, i64 %i.ur ; 9 uses
  %i.ut = sub i64 %i.bi, %i.ur                    ; 7 uses
  %.not.i127.i784 = icmp eq i64 %i.ut, 0
  br i1 %.not.i127.i784, label %linelen.exit.i, label %.lr.ph788

bb.ep:                                            ; preds = %.lr.ph788
  %i.uu = add i64 %.03.i.i786, -1                 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.04.i.i785, i64 1
  %.not.i127.i = icmp eq i64 %i.uu, 0
  br i1 %.not.i127.i, label %linelen.exit.i, label %.lr.ph788, !llvm.loop !86

.lr.ph788:                                        ; preds = %.thread.i, %bb.ep
  %.0.i.i148787 = phi i64 [ %i.uw, %bb.ep ], [ 0, %.thread.i ]
  %.03.i.i786 = phi i64 [ %i.uu, %bb.ep ], [ %i.ut, %.thread.i ]
  %.04.i.i785 = phi ptr [ %i.uv, %bb.ep ], [ %i.us, %.thread.i ] ; 2 uses
  %i.uw = add nuw i64 %.0.i.i148787, 1            ; 2 uses
  %i.ux = load i8, ptr %.04.i.i785, align 1, !tbaa !59
  %i.uy = icmp eq i8 %i.ux, 10
  br i1 %i.uy, label %.linelen.exit.i_crit_edge, label %bb.ep, !llvm.loop !86

.linelen.exit.i_crit_edge:                        ; preds = %.lr.ph788
  br label %linelen.exit.i, !llvm.loop !86

linelen.exit.i:                                   ; preds = %bb.ep, %.linelen.exit.i_crit_edge, %.thread.i
  %.1.i.i = phi i64 [ %i.uw, %.linelen.exit.i_crit_edge ], [ %i.ut, %.thread.i ], [ %i.ut, %bb.ep ] ; 3 uses
  %i.uz = icmp eq i64 %.1.i.i, 17
  br i1 %i.uz, label %bb.eq, label %bb.fa

bb.eq:                                            ; preds = %linelen.exit.i
  %i.va = load i128, ptr %i.us, align 1
  %i.vb = xor i128 138756109429973566437142610060674091335, %i.va
  %i.vc = getelementptr i8, ptr %i.us, i64 16
  %i.vd = load i8, ptr %i.vc, align 1
  %i.ve = zext i8 %i.vd to i128
  %i.vf = xor i128 10, %i.ve
  %i.vg = or i128 %i.vb, %i.vf
  %i.vh = icmp ne i128 %i.vg, 0
  %i.vi = zext i1 %i.vh to i32
  %.not94.i = icmp eq i32 %i.vi, 0
  br i1 %.not94.i, label %bb.er, label %bb.fa

bb.er:                                            ; preds = %bb.eq
  %i.vj = load i32, ptr %i.j, align 4, !tbaa !36
  %i.vk = add nsw i32 %i.vj, 1
  store i32 %i.vk, ptr %i.j, align 4, !tbaa !36
  %i.vl = getelementptr inbounds nuw i8, ptr %i.us, i64 17
  %i.vm = add i64 %i.ut, -17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.vl, ptr %i.c, align 8, !tbaa !38
  store i64 %i.vm, ptr %i.d, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  %i.vn = call fastcc ptr @parse_binary_hunk(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f) ; 5 uses
  %i.vo = icmp ne ptr %i.vn, null
  %i.vp = load i32, ptr %i.e, align 4             ; 2 uses
  %i.vq = icmp ne i32 %i.vp, 0                    ; 2 uses
  %or.cond.i128.i = select i1 %i.vo, i1 true, i1 %i.vq
  br i1 %or.cond.i128.i, label %bb.eu, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.vr = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i129.i = icmp eq i32 %i.vr, 0
  br i1 %.not4.i.i129.i, label %parse_binary.exit.thread.thread.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.vs = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.173, i32 noundef 5) #21
  br label %parse_binary.exit.thread.thread.i

parse_binary.exit.thread.thread.i:                ; preds = %bb.et, %bb.es
  %.0.i.i130.i = phi ptr [ %i.vs, %bb.et ], [ @.str.173, %bb.es ]
  %i.vt = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.vu = load i32, ptr %i.j, align 4, !tbaa !36
  %i.vv = add nsw i32 %i.vu, -1
  %i.vw = call i32 (ptr, ...) @error(ptr noundef %.0.i.i130.i, ptr noundef %i.vt, i32 noundef %i.vv) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %parse_chunk.exit.thread

bb.eu:                                            ; preds = %bb.er
  br i1 %i.vq, label %parse_binary.exit.thread.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.vx = call fastcc ptr @parse_binary_hunk(ptr noundef nonnull %0, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.g) ; 2 uses
  %.not.i132.i = icmp eq ptr %i.vx, null
  br i1 %.not.i132.i, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.vy = load i32, ptr %i.g, align 4, !tbaa !40
  %i.vz = load i32, ptr %i.f, align 4, !tbaa !40
  %i.wa = add nsw i32 %i.vz, %i.vy
  br label %parse_binary.exit.i

bb.ex:                                            ; preds = %bb.ev
  %i.wb = load i32, ptr %i.e, align 4, !tbaa !40  ; 2 uses
  %.not15.i.i = icmp eq i32 %i.wb, 0
  br i1 %.not15.i.i, label %._crit_edge.i133.i, label %bb.ey

._crit_edge.i133.i:                               ; preds = %bb.ex
  %.pre.i.i = load i32, ptr %i.f, align 4, !tbaa !40
  br label %parse_binary.exit.i

bb.ey:                                            ; preds = %bb.ex
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vn, i64 48
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !66
  call void @free(ptr noundef %i.wd) #21
  call void @free(ptr noundef %i.vn) #21
  br label %parse_binary.exit.thread.i

parse_binary.exit.thread.i:                       ; preds = %bb.ey, %bb.eu
  %.0.i131.ph.i = phi i32 [ %i.vp, %bb.eu ], [ %i.wb, %bb.ey ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.we = icmp sgt i32 %.0.i131.ph.i, -1
  %narrow152.i = add nuw i32 %.0.i131.ph.i, 17
  br i1 %i.we, label %.split.i, label %parse_chunk.exit.thread

parse_binary.exit.i:                              ; preds = %._crit_edge.i133.i, %bb.ew
  %i.wf = phi i32 [ %.pre.i.i, %._crit_edge.i133.i ], [ %i.wa, %bb.ew ]
  %.fr.i = freeze i32 %i.wf                       ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vn, i64 72
  store ptr %i.vx, ptr %i.wg, align 8, !tbaa !64
  store ptr %i.vn, ptr %i.jg, align 8, !tbaa !60
  %i.wh = load i16, ptr %i.bb, align 8
  %i.wi = or i16 %i.wh, 4
  store i16 %i.wi, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not95.i = icmp eq i32 %.fr.i, 0
  br i1 %.not95.i, label %.split.i, label %bb.ez

bb.ez:                                            ; preds = %parse_binary.exit.i
  %i.wj = icmp sgt i32 %.fr.i, -1
  %narrow.i = add nuw i32 %.fr.i, 17
  br i1 %i.wj, label %.split.i, label %parse_chunk.exit.thread

bb.fa:                                            ; preds = %bb.eq, %linelen.exit.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.us, i64 %.1.i.i
  %i.wl = getelementptr inbounds i8, ptr %i.wk, i64 -8
  %i.wm = load i64, ptr %i.wl, align 1
  %i.wn = icmp ne i64 752775578203546656, %i.wm
  %i.wo = zext i1 %i.wn to i32
  %.not97.i = icmp eq i32 %i.wo, 0
  br i1 %.not97.i, label %.preheader.preheader.i, label %.split.i

.preheader.preheader.i:                           ; preds = %bb.fa
  %i.wp = icmp ugt i64 %i.ut, 13
  br i1 %i.wp, label %bb.fb, label %.preheader.1.i

bb.fb:                                            ; preds = %.preheader.preheader.i
  %i.wq = load i64, ptr %i.us, align 1
  %i.wr = xor i64 7359015323291248962, %i.wq
  %i.ws = getelementptr i8, ptr %i.us, i64 5
  %i.wt = load i64, ptr %i.ws, align 1
  %i.wu = xor i64 2338324147834593401, %i.wt
  %i.wv = or i64 %i.wr, %i.wu
  %i.ww = icmp ne i64 %i.wv, 0
  %i.wx = zext i1 %i.ww to i32
  %.not100.i = icmp eq i32 %i.wx, 0
  br i1 %.not100.i, label %bb.fc, label %.preheader.1.thread.i

bb.fc:                                            ; preds = %.preheader.1.thread.i, %bb.fb
  %i.wy = load i32, ptr %i.j, align 4, !tbaa !36
  %i.wz = add nsw i32 %i.wy, 1
  store i32 %i.wz, ptr %i.j, align 4, !tbaa !36
  %i.xa = load i16, ptr %i.bb, align 8
  %i.xb = or i16 %i.xa, 4
  store i16 %i.xb, ptr %i.bb, align 8
  %i.xc = trunc i64 %.1.i.i to i32
  br label %.split.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.xd = icmp samesign ugt i64 %i.ut, 6
  br i1 %i.xd, label %.preheader.1.thread.i, label %.split.i

.preheader.1.thread.i:                            ; preds = %.preheader.1.i, %bb.fb
  %i.xe = load i32, ptr %i.us, align 1
  %i.xf = xor i32 1701603654, %i.xe
  %i.xg = getelementptr i8, ptr %i.us, i64 4
  %i.xh = load i16, ptr %i.xg, align 1
  %i.xi = zext i16 %i.xh to i32
  %i.xj = xor i32 8307, %i.xi
  %i.xk = or i32 %i.xf, %i.xj
  %i.xl = icmp ne i32 %i.xk, 0
  %i.xm = zext i1 %i.xl to i32
  %.not100.1.i = icmp eq i32 %i.xm, 0
  br i1 %.not100.1.i, label %bb.fc, label %.split.i

.split.i:                                         ; preds = %.preheader.1.thread.i, %.preheader.1.i, %bb.fc, %bb.fa, %bb.ez, %parse_binary.exit.i, %parse_binary.exit.thread.i
  %.5.i = phi i32 [ 0, %bb.fa ], [ %narrow.i, %bb.ez ], [ %i.xc, %bb.fc ], [ 0, %parse_binary.exit.i ], [ %narrow152.i, %parse_binary.exit.thread.i ], [ 0, %.preheader.1.thread.i ], [ 0, %.preheader.1.i ] ; 5 uses
  %i.xn = load i32, ptr %i.aw, align 8, !tbaa !30
  %.not101.i = icmp eq i32 %i.xn, 0
  br i1 %.not101.i, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %.split.i
  %i.xo = load i32, ptr %i.ax, align 8, !tbaa !53
  %.not102.i = icmp eq i32 %i.xo, 0
  br i1 %.not102.i, label %parse_chunk.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %.split.i
  %i.xp = load i16, ptr %i.bb, align 8
  %i.xq = and i16 %i.xp, 28
  %or.cond.i = icmp eq i16 %i.xq, 0
  br i1 %or.cond.i, label %bb.ff, label %parse_chunk.exit

bb.ff:                                            ; preds = %bb.fe
  %i.xr = load i32, ptr %i.bk, align 8, !tbaa !73
  %i.xs = icmp sgt i32 %i.xr, 0
  br i1 %i.xs, label %parse_chunk.exit, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.xt = load i32, ptr %i.bj, align 4, !tbaa !74
  %.not10.i.i = icmp eq i32 %i.xt, 0
  br i1 %.not10.i.i, label %bb.fh, label %parse_chunk.exit

bb.fh:                                            ; preds = %bb.fg
  %i.xu = load i32, ptr %i.bm, align 8, !tbaa !134 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.xu, 0
  br i1 %.not11.i.i, label %metadata_changes.exit.thread164.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.xv = load i32, ptr %i.bl, align 4, !tbaa !133 ; 2 uses
  %.not12.i.i = icmp eq i32 %i.xv, 0
  %.not.i = icmp eq i32 %i.xu, %i.xv
  %or.cond174.i = or i1 %.not12.i.i, %.not.i
  br i1 %or.cond174.i, label %metadata_changes.exit.thread164.i, label %parse_chunk.exit

metadata_changes.exit.thread164.i:                ; preds = %bb.fi, %bb.fh
  %i.xw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i149 = icmp eq i32 %i.xw, 0
  br i1 %.not4.i.i149, label %_.exit.i150, label %bb.fj

bb.fj:                                            ; preds = %metadata_changes.exit.thread164.i
  %i.xx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.150, i32 noundef 5) #21
  br label %_.exit.i150

_.exit.i150:                                      ; preds = %bb.fj, %metadata_changes.exit.thread164.i
  %.0.i135.i = phi ptr [ %i.xx, %bb.fj ], [ @.str.150, %metadata_changes.exit.thread164.i ]
  %i.xy = load ptr, ptr %i.i, align 8, !tbaa !119
  %i.xz = load i32, ptr %i.j, align 4, !tbaa !36
  %i.ya = call i32 (ptr, ...) @error(ptr noundef %.0.i135.i, ptr noundef %i.xy, i32 noundef %i.xz) #21 ; 0 uses
  br label %parse_chunk.exit.thread

parse_chunk.exit:                                 ; preds = %..thread167_crit_edge.i, %bb.fd, %bb.fe, %bb.ff, %bb.fg, %bb.fi
  %.pre-phi.i = phi i32 [ %.pre.i, %..thread167_crit_edge.i ], [ %i.uq, %bb.fi ], [ %i.uq, %bb.ff ], [ %i.uq, %bb.fg ], [ %i.uq, %bb.fd ], [ %i.uq, %bb.fe ]
  %.7.i = phi i32 [ %.071.lcssa187220.i.i, %..thread167_crit_edge.i ], [ %.5.i, %bb.fi ], [ %.5.i, %bb.ff ], [ %.5.i, %bb.fg ], [ %.5.i, %bb.fd ], [ %.5.i, %bb.fe ]
  %i.yb = add nsw i32 %.7.i, %.pre-phi.i          ; 3 uses
  %i.yc = icmp slt i32 %i.yb, 0
  br i1 %i.yc, label %parse_chunk.exit.thread, label %bb.fk

parse_chunk.exit.thread:                          ; preds = %bb.g, %parse_binary.exit.thread.i, %bb.ez, %parse_single_patch.exit.i, %find_header.exit.i, %parse_chunk.exit, %bb.q, %.thread.i.i, %bb.o, %parse_traditional_patch.exit, %_.exit94.i.i, %_.exit91.i.i, %.thread.i124.i, %_.exit.i150, %parse_binary.exit.thread.thread.i, %bb.bc
  %.383.i246 = phi i32 [ -128, %.thread.i124.i ], [ -1, %parse_binary.exit.thread.thread.i ], [ -128, %_.exit.i150 ], [ -128, %bb.bc ], [ -128, %parse_traditional_patch.exit ], [ -128, %bb.q ], [ -128, %_.exit94.i.i ], [ -128, %_.exit91.i.i ], [ -1, %bb.o ], [ -1, %.thread.i.i ], [ -1, %bb.ez ], [ -1, %parse_binary.exit.thread.i ], [ -1, %bb.g ], [ %.4.i.i, %find_header.exit.i ], [ -128, %parse_single_patch.exit.i ], [ %i.yb, %parse_chunk.exit ]
  call void @release_patch(ptr noundef %i.ba)
  call void @free(ptr noundef %i.ba) #21
  %i.yd = icmp eq i32 %.383.i246, -128
  br i1 %i.yd, label %read_patch_file.exit.thread, label %.thread

bb.fk:                                            ; preds = %parse_chunk.exit
  %i.ye = load i32, ptr %i.ar, align 8, !tbaa !132
  %.not = icmp eq i32 %i.ye, 0
  %.not66.i = icmp eq ptr %i.ba, null
  %or.cond288 = or i1 %.not66.i, %.not
  br i1 %or.cond288, label %reverse_patches.exit, label %.lr.ph69.i

.lr.ph69.i:                                       ; preds = %bb.fk, %._crit_edge.i
  %.067.i = phi ptr [ %i.zd, %._crit_edge.i ], [ %i.ba, %bb.fk ] ; 11 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %.067.i, i64 72
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !60 ; 2 uses
  %i.yh = load <2 x i64>, ptr %.067.i, align 8
  %i.yi = shufflevector <2 x i64> %i.yh, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.yi, ptr %.067.i, align 8
  %i.yj = getelementptr inbounds nuw i8, ptr %.067.i, i64 28 ; 2 uses
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !133 ; 2 uses
  %.not61.i = icmp eq i32 %i.yk, 0
  %i.yl = getelementptr inbounds nuw i8, ptr %.067.i, i64 36 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4            ; 2 uses
  %.not62.i = icmp eq i32 %i.ym, 0
  %or.cond792 = select i1 %.not61.i, i1 %.not62.i, i1 false
  br i1 %or.cond792, label %bb.fl, label %.lr.ph69._crit_edge.i

.lr.ph69._crit_edge.i:                            ; preds = %.lr.ph69.i
  %i.yn = getelementptr inbounds nuw i8, ptr %.067.i, i64 24 ; 2 uses
  %i.yo = load i32, ptr %i.yn, align 8
  store i32 %i.yo, ptr %i.yj, align 4
  store i32 %i.yk, ptr %i.yn, align 8
  br label %bb.fl

bb.fl:                                            ; preds = %.lr.ph69.i, %.lr.ph69._crit_edge.i
  %i.yp = phi i32 [ 0, %.lr.ph69.i ], [ %i.ym, %.lr.ph69._crit_edge.i ]
  %i.yq = getelementptr inbounds nuw i8, ptr %.067.i, i64 32 ; 2 uses
  %.sroa.021.0.copyload.i = load i32, ptr %i.yq, align 8
  store i32 %i.yp, ptr %i.yq, align 8
  store i32 %.sroa.021.0.copyload.i, ptr %i.yl, align 4
  %i.yr = getelementptr inbounds nuw i8, ptr %.067.i, i64 48 ; 2 uses
  %i.ys = load <2 x i32>, ptr %i.yr, align 8
  %i.yt = shufflevector <2 x i32> %i.ys, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.yt, ptr %i.yr, align 8
  %i.yu = getelementptr inbounds nuw i8, ptr %.067.i, i64 96 ; 2 uses
  %i.yv = getelementptr inbounds nuw i8, ptr %.067.i, i64 161 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(65) %i.b, ptr noundef nonnull align 1 dereferenceable(65) %i.yu, i64 65, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.yu, ptr noundef nonnull align 1 dereferenceable(65) %i.yv, i64 65, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.yv, ptr noundef nonnull align 16 dereferenceable(65) %i.b, i64 65, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not6364.i = icmp eq ptr %i.yg, null
  br i1 %.not6364.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.fl, %.lr.ph.i
  %.06065.i = phi ptr [ %i.zb, %.lr.ph.i ], [ %i.yg, %bb.fl ] ; 3 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.06065.i, i64 32 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.06065.i, i64 16 ; 2 uses
  %i.yy = load <2 x i64>, ptr %i.yw, align 1
  %i.yz = load <2 x i64>, ptr %i.yx, align 1
  store <2 x i64> %i.yz, ptr %i.yw, align 1
  store <2 x i64> %i.yy, ptr %i.yx, align 1
  %i.za = getelementptr inbounds nuw i8, ptr %.06065.i, i64 72
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !64 ; 2 uses
  %.not63.i = icmp eq ptr %i.zb, null
  br i1 %.not63.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.fl
  %i.zc = getelementptr inbounds nuw i8, ptr %.067.i, i64 232
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !149 ; 2 uses
  %.not.i152 = icmp eq ptr %i.zd, null
  br i1 %.not.i152, label %reverse_patches.exit, label %.lr.ph69.i, !llvm.loop !150

reverse_patches.exit:                             ; preds = %._crit_edge.i, %bb.fk
  %i.ze = load ptr, ptr %i.ba, align 8, !tbaa !71 ; 2 uses
  %.not.i153 = icmp eq ptr %i.ze, null
  br i1 %.not.i153, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %reverse_patches.exit
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !70
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %reverse_patches.exit
  %i.zh = phi ptr [ %i.zg, %bb.fm ], [ %i.ze, %reverse_patches.exit ] ; 2 uses
  %i.zi = load ptr, ptr %0, align 8, !tbaa !12    ; 3 uses
  %.not25.i = icmp eq ptr %i.zi, null
  br i1 %.not25.i, label %.critedge.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !59  ; 2 uses
  %.not26.i = icmp eq i8 %i.zj, 0
  br i1 %.not26.i, label %.critedge.i, label %.preheader.i

thread-pre-split.i:                               ; preds = %.preheader.i
  %i.zk = getelementptr inbounds nuw i8, ptr %.06.i35.i, i64 1 ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.07.i34.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.zk, align 1, !tbaa !59 ; 2 uses
  %.not.i.i154 = icmp eq i8 %.pr.i, 0
  br i1 %.not.i.i154, label %bb.fp, label %.preheader.i

.preheader.i:                                     ; preds = %bb.fo, %thread-pre-split.i
  %.06.i35.i = phi ptr [ %i.zk, %thread-pre-split.i ], [ %i.zi, %bb.fo ]
  %.07.i34.i = phi ptr [ %i.zl, %thread-pre-split.i ], [ %i.zh, %bb.fo ] ; 2 uses
  %i.zm = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.zj, %bb.fo ]
  %i.zn = load i8, ptr %.07.i34.i, align 1, !tbaa !59
  %i.zo = icmp eq i8 %i.zn, %i.zm
  br i1 %i.zo, label %thread-pre-split.i, label %use_patch.exit.thread, !llvm.loop !122

bb.fp:                                            ; preds = %thread-pre-split.i
  %i.zp = load i8, ptr %i.zl, align 1, !tbaa !59
  %.not27.i = icmp eq i8 %i.zp, 0
  br i1 %.not27.i, label %use_patch.exit.thread, label %.critedge.i

.critedge.i:                                      ; preds = %bb.fp, %bb.fo, %bb.fn
  %i.zq = load i64, ptr %i.an, align 8, !tbaa !123
  %.not37.i = icmp eq i64 %i.zq, 0
  br i1 %.not37.i, label %use_patch.exit, label %.lr.ph.i155

bb.fq:                                            ; preds = %.lr.ph.i155
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.zr = load i64, ptr %i.an, align 8, !tbaa !123
  %i.zs = icmp ugt i64 %i.zr, %indvars.iv.next.i
  br i1 %i.zs, label %.lr.ph.i155, label %use_patch.exit, !llvm.loop !124

.lr.ph.i155:                                      ; preds = %.critedge.i, %bb.fq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.fq ], [ 0, %.critedge.i ] ; 2 uses
  %i.zt = load ptr, ptr %i.ao, align 8, !tbaa !125
  %i.zu = getelementptr inbounds nuw [16 x i8], ptr %i.zt, i64 %indvars.iv.i ; 2 uses
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !126
  %i.zw = call i32 @wildmatch(ptr noundef %i.zv, ptr noundef %i.zh, i32 noundef 0) #21
  %.not29.not.i = icmp eq i32 %i.zw, 0
  br i1 %.not29.not.i, label %.thread.i157, label %bb.fq

.thread.i157:                                     ; preds = %.lr.ph.i155
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !128
  %.not669 = icmp eq ptr %i.zy, null
  br i1 %.not669, label %use_patch.exit.thread, label %bb.fr

use_patch.exit:                                   ; preds = %bb.fq, %.critedge.i
  %i.zz = load i32, ptr %i.ap, align 8, !tbaa !129
  %.not28.i = icmp eq i32 %i.zz, 0
  br i1 %.not28.i, label %bb.fr, label %use_patch.exit.thread

bb.fr:                                            ; preds = %.thread.i157, %use_patch.exit
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %i.aab = load i32, ptr %i.aaa, align 8, !tbaa !142
  %i.aac = getelementptr inbounds nuw i8, ptr %i.ba, i64 52
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !143
  %i.aae = add nsw i32 %i.aad, %i.aab             ; 2 uses
  %i.aaf = load i32, ptr %i.ay, align 8, !tbaa !151
  %i.aag = icmp sgt i32 %i.aae, %i.aaf
  br i1 %i.aag, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  store i32 %i.aae, ptr %i.ay, align 8, !tbaa !151
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !70 ; 2 uses
  %.not.i158 = icmp eq ptr %i.aai, null
  br i1 %.not.i158, label %bb.fy, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.aaj = call i64 @quote_c_style(ptr noundef nonnull %i.aai, ptr noundef null, ptr noundef null, i32 noundef 0) #21
  %i.aak = trunc i64 %i.aaj to i32                ; 2 uses
  %.not27.i159 = icmp eq i32 %i.aak, 0
  br i1 %.not27.i159, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.aal = load ptr, ptr %i.aah, align 8, !tbaa !70
  %i.aam = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aal) #22
  %i.aan = trunc i64 %i.aam to i32
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.021.i = phi i32 [ %i.aak, %bb.fu ], [ %i.aan, %bb.fv ] ; 2 uses
  %i.aao = load i32, ptr %i.az, align 4, !tbaa !152
  %i.aap = icmp sgt i32 %.021.i, %i.aao
  br i1 %i.aap, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  store i32 %.021.i, ptr %i.az, align 4, !tbaa !152
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw, %bb.ft
  %i.aaq = load ptr, ptr %i.ba, align 8, !tbaa !71 ; 2 uses
  %.not28.i160 = icmp eq ptr %i.aaq, null
  br i1 %.not28.i160, label %patch_stats.exit, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.aar = call i64 @quote_c_style(ptr noundef nonnull %i.aaq, ptr noundef null, ptr noundef null, i32 noundef 0) #21
  %i.aas = trunc i64 %i.aar to i32                ; 2 uses
  %.not29.i = icmp eq i32 %i.aas, 0
  br i1 %.not29.i, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
end_hunk_1
begin_hunk_2_@apply_patch:bb.a
  %.not44.i.i.i.i = icmp eq i16 %i.apc, 0
  %or.cond.i.i125.i.i = select i1 %.not43.i.i.i.i, i1 %.not44.i.i.i.i, i1 false
  br i1 %or.cond.i.i125.i.i, label %try_threeway.exit.thread.i.i.i, label %._crit_edge.i.i126.i.i

._crit_edge.i.i126.i.i:                           ; preds = %bb.ma
  %i.apd = and i16 %.pre.i.i.i.i, 16
  %.not45.i.i.i.i = icmp eq i16 %i.apd, 0
  br i1 %.not45.i.i.i.i, label %bb.md, label %bb.mb

bb.mb:                                            ; preds = %._crit_edge.i.i126.i.i
  %i.ape = getelementptr inbounds nuw i8, ptr %.01641.i, i64 48
  %i.apf = load i32, ptr %i.ape, align 8, !tbaa !142
  %.not46.i.i.i.i = icmp eq i32 %i.apf, 0
  br i1 %.not46.i.i.i.i, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.apg = getelementptr inbounds nuw i8, ptr %.01641.i, i64 52
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !143
  %.not47.i.i.i.i = icmp eq i32 %i.aph, 0
  br i1 %.not47.i.i.i.i, label %try_threeway.exit.thread.i.i.i, label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb, %._crit_edge.i.i126.i.i
  %i.api = load ptr, ptr @the_repository, align 8, !tbaa !37 ; 2 uses
  br i1 %.not43.i.i.i.i, label %bb.me, label %bb.mf

bb.me:                                            ; preds = %bb.md
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 16
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !180
  %i.apl = call i32 @odb_write_object_ext(ptr noundef %i.apk, ptr noundef nonnull @.str.23, i64 noundef 0, i32 noundef 3, ptr noundef nonnull %9, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  br label %bb.mj

bb.mf:                                            ; preds = %bb.md
  %i.apm = getelementptr inbounds nuw i8, ptr %.01641.i, i64 96
  %i.apn = call i32 @repo_get_oid(ptr noundef %i.api, ptr noundef nonnull %i.apm, ptr noundef nonnull %9) #21
  %.not49.i.i.i.i = icmp eq i32 %i.apn, 0
  br i1 %.not49.i.i.i.i, label %bb.mg, label %bb.mh

bb.mg:                                            ; preds = %bb.mf
  %i.apo = load i32, ptr %i.aos, align 8, !tbaa !134
  %i.app = call fastcc i32 @read_blob_object(ptr noundef %12, ptr noundef %9, i32 noundef %i.apo)
  %.not50.i.i.i.i = icmp eq i32 %i.app, 0
  br i1 %.not50.i.i.i.i, label %bb.mj, label %bb.mh

bb.mh:                                            ; preds = %bb.mg, %bb.mf
  %i.apq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i.i127.i.i = icmp eq i32 %i.apq, 0
  br i1 %.not4.i.i.i127.i.i, label %_.exit.i.i.i.i182, label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.apr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.205, i32 noundef 5) #21
  br label %_.exit.i.i.i.i182

_.exit.i.i.i.i182:                                ; preds = %bb.mi, %bb.mh
  %.0.i.i.i128.i.i = phi ptr [ %i.apr, %bb.mi ], [ @.str.205, %bb.mh ]
  %i.aps = call i32 (ptr, ...) @error(ptr noundef %.0.i.i.i128.i.i) #21 ; 0 uses
  br label %try_threeway.exit.thread.i.i.i

bb.mj:                                            ; preds = %bb.mg, %bb.me
  %i.apt = load i32, ptr %i.aew, align 8, !tbaa !49
  %i.apu = icmp sgt i32 %i.apt, -1
  br i1 %i.apu, label %bb.mk, label %bb.mn

bb.mk:                                            ; preds = %bb.mj
  %i.apv = load i16, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.apw = and i16 %i.apv, 128
  %.not51.i.i.i.i = icmp eq i16 %i.apw, 0
  br i1 %.not51.i.i.i.i, label %bb.mn, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.apx = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.apy = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i57.i.i.i.i = icmp eq i32 %i.apy, 0
  br i1 %.not4.i57.i.i.i.i, label %_.exit59.i.i.i.i, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.apz = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.206, i32 noundef 5) #21
  br label %_.exit59.i.i.i.i

_.exit59.i.i.i.i:                                 ; preds = %bb.mm, %bb.ml
  %.0.i58.i.i.i.i = phi ptr [ %i.apz, %bb.mm ], [ @.str.206, %bb.ml ]
  %i.aqa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apx, ptr noundef %.0.i58.i.i.i.i) #24 ; 0 uses
  br label %bb.mn

bb.mn:                                            ; preds = %_.exit59.i.i.i.i, %bb.mk, %bb.mj
  %i.aqb = call ptr @strbuf_detach(ptr noundef nonnull %12, ptr noundef nonnull %i.a) #21
  %i.aqc = load i64, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  call void @strbuf_release(ptr noundef nonnull %13) #21
  %i.aqd = load ptr, ptr %i.afe, align 8, !tbaa !181
  call void @free(ptr noundef %i.aqd) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  %i.aqe = add i64 %i.aqc, 1
  call void @strbuf_attach(ptr noundef nonnull %13, ptr noundef %i.aqb, i64 noundef %i.aqc, i64 noundef %i.aqe) #21
  %i.aqf = load ptr, ptr %i.aff, align 8, !tbaa !184 ; 2 uses
  %i.aqg = load i64, ptr %i.afg, align 8, !tbaa !185 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqf, i64 %i.aqg ; 2 uses
  %.not28.i.i.i.i.i = icmp eq i64 %i.aqg, 0
  br i1 %.not28.i.i.i.i.i, label %image_prepare.exit.i.i.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.mn, %image_add_line.exit.i.i.i.i
  %.02327.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i183, %image_add_line.exit.i.i.i.i ], [ %i.aqf, %bb.mn ] ; 6 uses
  br label %bb.mo

bb.mo:                                            ; preds = %bb.mp, %.preheader.i.i.i.i.i
  %.026.i.i.i.i.i = phi ptr [ %.02327.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.aqj, %bb.mp ] ; 3 uses
  %i.aqi = load i8, ptr %.026.i.i.i.i.i, align 1, !tbaa !59
  %.not25.i.i.i.i.i = icmp eq i8 %i.aqi, 10       ; 3 uses
  br i1 %.not25.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.aqj = getelementptr inbounds nuw i8, ptr %.026.i.i.i.i.i, i64 1 ; 3 uses
  %i.aqk = icmp ult ptr %i.aqj, %i.aqh
  br i1 %i.aqk, label %bb.mo, label %.critedge.i.i.i.i.i, !llvm.loop !186

.critedge.i.i.i.i.i:                              ; preds = %bb.mp, %bb.mo
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.aqj, %bb.mp ], [ %.026.i.i.i.i.i, %bb.mo ] ; 2 uses
  %.0.lcssa.i.i.i.i.i898 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i to i64
  %spec.select.idx.i.i.i.i.i.neg = sext i1 %.not25.i.i.i.i.i to i64
  %spec.select.idx.i.i.i.i.i = zext i1 %.not25.i.i.i.i.i to i64
  %spec.select.i.i.i.i.i183 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 4 uses
  %i.aql = ptrtoint ptr %spec.select.i.i.i.i.i183 to i64
  %i.aqm = ptrtoint ptr %.02327.i.i.i.i.i to i64  ; 2 uses
  %i.aqn = sub i64 %i.aql, %i.aqm                 ; 4 uses
  %i.aqo = load i64, ptr %i.afh, align 8, !tbaa !187 ; 2 uses
  %i.aqp = add i64 %i.aqo, 1                      ; 2 uses
  %i.aqq = load i64, ptr %i.afi, align 8, !tbaa !188 ; 2 uses
  %i.aqr = icmp ugt i64 %i.aqp, %i.aqq
  br i1 %i.aqr, label %bb.mq, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i
  %.pre.i.i.i.i.i = load ptr, ptr %i.afe, align 8, !tbaa !181
  br label %bb.ms

bb.mq:                                            ; preds = %.critedge.i.i.i.i.i
  %i.aqs = mul i64 %i.aqq, 3
  %i.aqt = add i64 %i.aqs, 48
  %i.aqu = lshr i64 %i.aqt, 1
  %..i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aqu, i64 %i.aqp) ; 4 uses
  store i64 %..i.i.i.i.i, ptr %i.afi, align 8, !tbaa !188
  %i.aqv = icmp ugt i64 %..i.i.i.i.i, 1152921504606846975
  br i1 %i.aqv, label %bb.mr, label %st_mult.exit.i.i.i.i.i

bb.mr:                                            ; preds = %bb.mq
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i.i.i.i.i) #25
  unreachable

st_mult.exit.i.i.i.i.i:                           ; preds = %bb.mq
  %i.aqw = load ptr, ptr %i.afe, align 8, !tbaa !181
  %i.aqx = shl nuw i64 %..i.i.i.i.i, 4
  %i.aqy = call ptr @xrealloc(ptr noundef %i.aqw, i64 noundef %i.aqx) #21 ; 2 uses
  store ptr %i.aqy, ptr %i.afe, align 8, !tbaa !181
  %.pre23.i.i.i.i.i = load i64, ptr %i.afh, align 8, !tbaa !187
  br label %bb.ms

bb.ms:                                            ; preds = %st_mult.exit.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.aqz = phi i64 [ %i.aqo, %._crit_edge.i.i.i.i.i ], [ %.pre23.i.i.i.i.i, %st_mult.exit.i.i.i.i.i ]
  %i.ara = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.aqy, %st_mult.exit.i.i.i.i.i ]
  %i.arb = getelementptr inbounds nuw [16 x i8], ptr %i.ara, i64 %i.aqz ; 2 uses
  store i64 %i.aqn, ptr %i.arb, align 8, !tbaa !189
  %.not11.i.i.i.i.i.i = icmp eq ptr %spec.select.i.i.i.i.i183, %.02327.i.i.i.i.i
  br i1 %.not11.i.i.i.i.i.i, label %image_add_line.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ms
  %i.arc = xor i64 %i.aqm, -1
  %i.ard = add i64 %i.arc, %.0.lcssa.i.i.i.i.i898
  %xtraiter = and i64 %i.aqn, 1
  %i.are = icmp eq i64 %i.ard, %spec.select.idx.i.i.i.i.i.neg
  br i1 %i.are, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.aqn, -2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.010.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %.1.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.089.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ary, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.arf = getelementptr inbounds nuw i8, ptr %.02327.i.i.i.i.i, i64 %.089.i.i.i.i.i.i
  %i.arg = load i8, ptr %i.arf, align 1, !tbaa !59 ; 2 uses
  %i.arh = zext i8 %i.arg to i64
  %i.ari = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.arh
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !59
  %i.ark = and i8 %i.arj, 1
  %.not.i.i75.i.i.i.i = icmp eq i8 %i.ark, 0
  %i.arl = mul i32 %.010.i.i.i.i.i.i, 3
  %i.arm = zext i8 %i.arg to i32
  %i.arn = add i32 %i.arl, %i.arm
  %.1.i.i.i.i.i.i = select i1 %.not.i.i75.i.i.i.i, i32 %i.arn, i32 %.010.i.i.i.i.i.i ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %.02327.i.i.i.i.i, i64 %.089.i.i.i.i.i.i
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 1
  %i.arq = load i8, ptr %i.arp, align 1, !tbaa !59 ; 2 uses
  %i.arr = zext i8 %i.arq to i64
  %i.ars = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.arr
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !59
  %i.aru = and i8 %i.art, 1
  %.not.i.i75.i.i.i.i.1 = icmp eq i8 %i.aru, 0
  %i.arv = mul i32 %.1.i.i.i.i.i.i, 3
  %i.arw = zext i8 %i.arq to i32
  %i.arx = add i32 %i.arv, %i.arw
  %.1.i.i.i.i.i.i.1 = select i1 %.not.i.i75.i.i.i.i.1, i32 %i.arx, i32 %.1.i.i.i.i.i.i ; 3 uses
  %i.ary = add nuw i64 %.089.i.i.i.i.i.i, 2       ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash_line.exit.loopexit.i.i.i.i.i.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !191

hash_line.exit.loopexit.i.i.i.i.i.unr-lcssa:      ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %hash_line.exit.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %hash_line.exit.loopexit.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.010.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.1.i.i.i.i.i.i.1, %hash_line.exit.loopexit.i.i.i.i.i.unr-lcssa ] ; 2 uses
  %.089.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ary, %hash_line.exit.loopexit.i.i.i.i.i.unr-lcssa ]
  %lcmp.mod900 = trunc i64 %i.aqn to i1
  call void @llvm.assume(i1 %lcmp.mod900)
  %i.arz = getelementptr inbounds nuw i8, ptr %.02327.i.i.i.i.i, i64 %.089.i.i.i.i.i.i.epil.init
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !59 ; 2 uses
  %i.asb = zext i8 %i.asa to i64
  %i.asc = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.asb
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !59
  %i.ase = and i8 %i.asd, 1
  %.not.i.i75.i.i.i.i.epil = icmp eq i8 %i.ase, 0
  %i.asf = mul i32 %.010.i.i.i.i.i.i.epil.init, 3
  %i.asg = zext i8 %i.asa to i32
  %i.ash = add i32 %i.asf, %i.asg
  %.1.i.i.i.i.i.i.epil = select i1 %.not.i.i75.i.i.i.i.epil, i32 %i.ash, i32 %.010.i.i.i.i.i.i.epil.init
  br label %hash_line.exit.loopexit.i.i.i.i.i

hash_line.exit.loopexit.i.i.i.i.i:                ; preds = %hash_line.exit.loopexit.i.i.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.1.i.i.i.i.i.i.lcssa = phi i32 [ %.1.i.i.i.i.i.i.1, %hash_line.exit.loopexit.i.i.i.i.i.unr-lcssa ], [ %.1.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.asi = and i32 %.1.i.i.i.i.i.i.lcssa, 16777215
  br label %image_add_line.exit.i.i.i.i

image_add_line.exit.i.i.i.i:                      ; preds = %hash_line.exit.loopexit.i.i.i.i.i, %bb.ms
  %.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %bb.ms ], [ %i.asi, %hash_line.exit.loopexit.i.i.i.i.i ]
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arb, i64 8 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 8
  %i.asl = and i32 %i.ask, -16777216
  %i.asm = or disjoint i32 %i.asl, %.0.lcssa.i.i.i.i.i.i
  store i32 %i.asm, ptr %i.asj, align 8
  %i.asn = load ptr, ptr %i.afe, align 8, !tbaa !181
  %i.aso = load i64, ptr %i.afh, align 8, !tbaa !187
  %i.asp = getelementptr inbounds nuw [16 x i8], ptr %i.asn, i64 %i.aso
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asp, i64 8 ; 2 uses
  %i.asr = load i32, ptr %i.asq, align 8
  %i.ass = and i32 %i.asr, 16777215
  store i32 %i.ass, ptr %i.asq, align 8
  %i.ast = load i64, ptr %i.afh, align 8, !tbaa !187
  %i.asu = add i64 %i.ast, 1
  store i64 %i.asu, ptr %i.afh, align 8, !tbaa !187
  %i.asv = icmp ult ptr %spec.select.i.i.i.i.i183, %i.aqh
  br i1 %i.asv, label %.preheader.i.i.i.i.i, label %image_prepare.exit.i.i.i.i, !llvm.loop !192

image_prepare.exit.i.i.i.i:                       ; preds = %image_add_line.exit.i.i.i.i, %bb.mn
  %i.asw = call fastcc i32 @apply_fragments(ptr noundef nonnull %0, ptr noundef %13, ptr noundef nonnull %.01641.i)
  %i.asx = icmp slt i32 %i.asw, 0
  br i1 %i.asx, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %image_prepare.exit.i.i.i.i
  call fastcc void @image_clear(ptr noundef %13)
  br label %try_threeway.exit.thread.i.i.i

bb.mu:                                            ; preds = %image_prepare.exit.i.i.i.i
  %i.asy = load ptr, ptr @the_repository, align 8, !tbaa !37
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asy, i64 16
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !180
  %i.atb = load ptr, ptr %i.aff, align 8, !tbaa !184
  %i.atc = load i64, ptr %i.afg, align 8, !tbaa !185
  %i.atd = call i32 @odb_write_object_ext(ptr noundef %i.ata, ptr noundef %i.atb, i64 noundef %i.atc, i32 noundef 3, ptr noundef nonnull %10, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %13) #21
  %i.ate = load ptr, ptr %i.afe, align 8, !tbaa !181
  call void @free(ptr noundef %i.ate) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  %i.atf = load i32, ptr %i.apa, align 8, !tbaa !73
  %.not52.i.i.i.i = icmp eq i32 %i.atf, 0
  br i1 %.not52.i.i.i.i, label %bb.my, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.atg = call fastcc i32 @load_current(ptr noundef nonnull %0, ptr noundef %13, ptr noundef nonnull %.01641.i)
  %.not54.i.i.i.i = icmp eq i32 %i.atg, 0
  br i1 %.not54.i.i.i.i, label %bb.nb, label %bb.mw

bb.mw:                                            ; preds = %bb.mv
  %i.ath = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i60.i.i.i.i = icmp eq i32 %i.ath, 0
  br i1 %.not4.i60.i.i.i.i, label %_.exit62.i.i.i.i, label %bb.mx

bb.mx:                                            ; preds = %bb.mw
  %i.ati = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.207, i32 noundef 5) #21
  br label %_.exit62.i.i.i.i

_.exit62.i.i.i.i:                                 ; preds = %bb.mx, %bb.mw
  %.0.i61.i.i.i.i = phi ptr [ %i.ati, %bb.mx ], [ @.str.207, %bb.mw ]
  %i.atj = load ptr, ptr %.01641.i, align 8, !tbaa !71
  %i.atk = call i32 (ptr, ...) @error(ptr noundef %.0.i61.i.i.i.i, ptr noundef %i.atj) #21 ; 0 uses
  br label %try_threeway.exit.thread.i.i.i

bb.my:                                            ; preds = %bb.mu
  %i.atl = call fastcc i32 @load_preimage(ptr noundef nonnull %0, ptr noundef %13, ptr noundef nonnull %.01641.i, ptr noundef nonnull readonly %17, ptr noundef %.2133.i.i)
  %.not53.i.i.i.i = icmp eq i32 %i.atl, 0
  br i1 %.not53.i.i.i.i, label %bb.nb, label %bb.mz

bb.mz:                                            ; preds = %bb.my
  %i.atm = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i63.i.i.i.i = icmp eq i32 %i.atm, 0
  br i1 %.not4.i63.i.i.i.i, label %_.exit65.i.i.i.i, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.atn = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.207, i32 noundef 5) #21
  br label %_.exit65.i.i.i.i

_.exit65.i.i.i.i:                                 ; preds = %bb.na, %bb.mz
  %.0.i64.i.i.i.i = phi ptr [ %i.atn, %bb.na ], [ @.str.207, %bb.mz ]
  %i.ato = load ptr, ptr %i.afs, align 8, !tbaa !70
  %i.atp = call i32 (ptr, ...) @error(ptr noundef %.0.i64.i.i.i.i, ptr noundef %i.ato) #21 ; 0 uses
  br label %try_threeway.exit.thread.i.i.i

bb.nb:                                            ; preds = %bb.my, %bb.mv
  %i.atq = load ptr, ptr @the_repository, align 8, !tbaa !37
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atq, i64 16
  %i.ats = load ptr, ptr %i.atr, align 8, !tbaa !180
  %i.att = load ptr, ptr %i.aff, align 8, !tbaa !184
  %i.atu = load i64, ptr %i.afg, align 8, !tbaa !185
  %i.atv = call i32 @odb_write_object_ext(ptr noundef %i.ats, ptr noundef %i.att, i64 noundef %i.atu, i32 noundef 3, ptr noundef nonnull %11, ptr noundef null, i32 noundef 0) #21 ; 0 uses
  call fastcc void @image_clear(ptr noundef %13)
  %i.atw = load ptr, ptr %.01641.i, align 8, !tbaa !71
  %i.atx = call fastcc i32 @three_way_merge(ptr noundef nonnull %0, ptr noundef nonnull %14, ptr noundef %i.atw, ptr noundef %9, ptr noundef %11, ptr noundef %10) ; 2 uses
  %i.aty = icmp slt i32 %i.atx, 0
  br i1 %i.aty, label %bb.nc, label %bb.nf

bb.nc:                                            ; preds = %bb.nb
  %i.atz = load i32, ptr %i.aew, align 8, !tbaa !49
  %i.aua = icmp sgt i32 %i.atz, -1
  br i1 %i.aua, label %bb.nd, label %try_threeway.exit.thread.i.i.i

bb.nd:                                            ; preds = %bb.nc
  %i.aub = load ptr, ptr @stderr, align 8, !tbaa !137
  %i.auc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i66.i.i.i.i = icmp eq i32 %i.auc, 0
  br i1 %.not4.i66.i.i.i.i, label %_.exit68.i.i.i.i, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.aud = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.208, i32 noundef 5) #21
  br label %_.exit68.i.i.i.i

_.exit68.i.i.i.i:                                 ; preds = %bb.ne, %bb.nd
  %.0.i67.i.i.i.i = phi ptr [ %i.aud, %bb.ne ], [ @.str.208, %bb.nd ]
  %i.aue = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aub, ptr noundef %.0.i67.i.i.i.i) #24 ; 0 uses
  br label %try_threeway.exit.thread.i.i.i

bb.nf:                                            ; preds = %bb.nb
  %.not55.i.i.i.i = icmp eq i32 %i.atx, 0
  br i1 %.not55.i.i.i.i, label %bb.nn, label %bb.ng

bb.ng:                                            ; preds = %bb.nf
  %i.auf = load i16, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.aug = or i16 %i.auf, 64
  store i16 %i.aug, ptr %.phi.trans.insert.i.i.i.i, align 8
  %i.auh = load i32, ptr %i.apa, align 8, !tbaa !73
  %.not56.i.i.i.i = icmp eq i32 %i.auh, 0
  %i.aui = getelementptr inbounds nuw i8, ptr %.01641.i, i64 240 ; 2 uses
  br i1 %.not56.i.i.i.i, label %bb.nk, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.auj = load ptr, ptr @the_repository, align 8, !tbaa !37
  %i.auk = getelementptr inbounds nuw i8, ptr %i.auj, i64 448
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !92 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aui, i8 0, i64 32, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aul, @hash_algos
  br i1 %.not.i.i.i.i.i.i, label %oidclr.exit.i.i.i.i, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %.not.1.i.i.i.i.i.i = icmp eq ptr %i.aul, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 112)
  br i1 %.not.1.i.i.i.i.i.i, label %oidclr.exit.i.i.i.i, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %.not.2.i.i.i.i.i.i = icmp eq ptr %i.aul, getelementptr inbounds nuw (i8, ptr @hash_algos, i64 224)
  %spec.select.i.i.i.i.i.i = select i1 %.not.2.i.i.i.i.i.i, i32 2, i32 0
  br label %oidclr.exit.i.i.i.i

bb.nk:                                            ; preds = %bb.ng
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aui, ptr noundef nonnull readonly align 4 dereferenceable(32) %9, i64 32, i1 false)
  %i.aum = load i32, ptr %i.afj, align 4, !tbaa !193
  br label %oidclr.exit.i.i.i.i

oidclr.exit.i.i.i.i:                              ; preds = %bb.nk, %bb.nj, %bb.ni, %bb.nh
  %.sink.i.i.i.i = phi i32 [ %i.aum, %bb.nk ], [ %spec.select.i.i.i.i.i.i, %bb.nj ], [ 0, %bb.nh ], [ 1, %bb.ni ]
  %i.aun = getelementptr inbounds nuw i8, ptr %.01641.i, i64 272
  store i32 %.sink.i.i.i.i, ptr %i.aun, align 8, !tbaa !193
  %i.auo = getelementptr inbounds nuw i8, ptr %.01641.i, i64 276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.auo, ptr noundef nonnull readonly align 4 dereferenceable(32) %11, i64 32, i1 false)
  %i.aup = load i32, ptr %i.afk, align 4, !tbaa !193
  %i.auq = getelementptr inbounds nuw i8, ptr %.01641.i, i64 308
  store i32 %i.aup, ptr %i.auq, align 4, !tbaa !193
  %i.aur = getelementptr inbounds nuw i8, ptr %.01641.i, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aur, ptr noundef nonnull readonly align 4 dereferenceable(32) %10, i64 32, i1 false)
  %i.aus = load i32, ptr %i.afl, align 4, !tbaa !193
  %i.aut = getelementptr inbounds nuw i8, ptr %.01641.i, i64 344
  store i32 %i.aus, ptr %i.aut, align 8, !tbaa !193
  %i.auu = load i32, ptr %i.aew, align 8, !tbaa !49
  %i.auv = icmp sgt i32 %i.auu, -1
  br i1 %i.auv, label %bb.nl, label %try_threeway.exit.i.i.i

end_hunk_2
begin_hunk_3_@has_epoch_timestamp:bb.a
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !59
  %i.ar = icmp eq i8 %i.aq, 48
  br i1 %i.ar, label %skip_prefix_impl.exit.4, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.4:                          ; preds = %skip_prefix_impl.exit.3
  %i.as = getelementptr inbounds nuw i8, ptr %.041, i64 4
  %i.at = load i8, ptr %i.as, align 1, !tbaa !59
  %i.au = icmp eq i8 %i.at, 45
  br i1 %i.au, label %skip_prefix_impl.exit.5, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.5:                          ; preds = %skip_prefix_impl.exit.4
  %i.av = getelementptr inbounds nuw i8, ptr %.041, i64 5
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !59
  %i.ax = icmp eq i8 %i.aw, 48
  br i1 %i.ax, label %skip_prefix_impl.exit.6, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.6:                          ; preds = %skip_prefix_impl.exit.5
  %i.ay = getelementptr inbounds nuw i8, ptr %.041, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !59
  %i.ba = icmp eq i8 %i.az, 49
  br i1 %i.ba, label %skip_prefix_impl.exit.7, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.7:                          ; preds = %skip_prefix_impl.exit.6
  %i.bb = getelementptr inbounds nuw i8, ptr %.041, i64 7
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !59
  %i.bd = icmp eq i8 %i.bc, 45
  br i1 %i.bd, label %skip_prefix_impl.exit.8, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.8:                          ; preds = %skip_prefix_impl.exit.7
  %i.be = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !59
  %i.bg = icmp eq i8 %i.bf, 48
  br i1 %i.bg, label %skip_prefix_impl.exit.9, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.9:                          ; preds = %skip_prefix_impl.exit.8
  %i.bh = getelementptr inbounds nuw i8, ptr %.041, i64 9
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !59
  %i.bj = icmp eq i8 %i.bi, 49
  br i1 %i.bj, label %skip_prefix_impl.exit.10, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.10:                         ; preds = %skip_prefix_impl.exit.9
  %i.bk = getelementptr inbounds nuw i8, ptr %.041, i64 10
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !59
  %i.bm = icmp eq i8 %i.bl, 32
  br i1 %i.bm, label %skip_prefix_impl.exit.thread, label %skip_prefix_impl.exit30

skip_prefix_impl.exit.thread:                     ; preds = %.preheader.10, %skip_prefix_impl.exit.10
  %.0 = phi i32 [ 0, %skip_prefix_impl.exit.10 ], [ 1440, %.preheader.10 ]
  %i.bn = load ptr, ptr @has_epoch_timestamp.stamp, align 8, !tbaa !228 ; 2 uses
  %.not23 = icmp eq ptr %i.bn, null
  br i1 %.not23, label %bb.f, label %bb.i

bb.f:                                             ; preds = %skip_prefix_impl.exit.thread
  %i.bo = tail call ptr @xmalloc(i64 noundef 64) #21 ; 2 uses
  store ptr %i.bo, ptr @has_epoch_timestamp.stamp, align 8, !tbaa !228
  %i.bp = call i32 @regcomp(ptr noundef %i.bo, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %.not24 = icmp eq i32 %i.bp, 0
  br i1 %.not24, label %._crit_edge, label %bb.g

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr @has_epoch_timestamp.stamp, align 8, !tbaa !228
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i = icmp eq i32 %i.bq, 0
  br i1 %.not4.i, label %_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.158, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.br, %bb.h ], [ @.str.158, %bb.g ]
  call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef nonnull %i.a) #21
  br label %skip_prefix_impl.exit30

bb.i:                                             ; preds = %._crit_edge, %skip_prefix_impl.exit.thread
  %i.bs = phi ptr [ %.pre, %._crit_edge ], [ %i.bn, %skip_prefix_impl.exit.thread ]
  %i.bt = call i32 @regexec(ptr noundef %i.bs, ptr noundef %scevgep, i64 noundef 10, ptr noundef nonnull %1, i32 noundef 0) #21 ; 2 uses
  switch i32 %i.bt, label %bb.j [
    i32 0, label %bb.l
    i32 1, label %skip_prefix_impl.exit30
  ]

bb.j:                                             ; preds = %bb.i
  %i.bu = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i31 = icmp eq i32 %i.bu, 0
  br i1 %.not4.i31, label %_.exit33, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.159, i32 noundef 5) #21
  br label %_.exit33

_.exit33:                                         ; preds = %bb.j, %bb.k
  %.0.i32 = phi ptr [ %i.bv, %bb.k ], [ @.str.159, %bb.j ]
  call void (ptr, ...) @warning(ptr noundef %.0.i32, i32 noundef %i.bt, ptr noundef %scevgep) #21
  br label %skip_prefix_impl.exit30

bb.l:                                             ; preds = %bb.i
  %i.bw = call i64 @__isoc23_strtol(ptr noundef %scevgep, ptr noundef null, i32 noundef 10) #21
  %i.bx = trunc i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !230
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %scevgep, i64 %i.ca
  %i.cc = call i64 @__isoc23_strtol(ptr noundef %i.cb, ptr noundef null, i32 noundef 10) #21
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !230
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %scevgep, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.cj = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ci, ptr noundef nonnull %i.b, i32 noundef 10) #21 ; 2 uses
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !59
  %i.cm = icmp eq i8 %i.cl, 58
  br i1 %i.cm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cn = mul i64 %i.cj, 60
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cp = call i64 @__isoc23_strtol(ptr noundef nonnull %i.co, ptr noundef null, i32 noundef 10) #21
  %i.cq = add i64 %i.cp, %i.cn
  %i.cr = trunc i64 %i.cq to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cs = trunc i64 %i.cj to i32                  ; 2 uses
  %i.ct = sdiv i32 %i.cs, 100
  %i.cu = mul nsw i32 %i.ct, 60
  %i.cv = srem i32 %i.cs, 100
  %i.cw = add nsw i32 %i.cu, %i.cv
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.016 = phi i32 [ %i.cr, %bb.m ], [ %i.cw, %bb.n ] ; 2 uses
  %i.cx = load i32, ptr %i.ce, align 8, !tbaa !230
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds i8, ptr %scevgep, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !59
  %i.db = icmp eq i8 %i.da, 45
  %i.dc = sub i32 0, %.016
  %i.dd = select i1 %i.db, i32 %.016, i32 %i.dc
  %i.de = mul nsw i32 %i.bx, 60
  %i.df = add nsw i32 %i.de, %i.cd
  %i.dg = add i32 %i.df, %i.dd
  %i.dh = icmp eq i32 %i.dg, %.0
  %i.di = zext i1 %i.dh to i32
  br label %skip_prefix_impl.exit30

skip_prefix_impl.exit30:                          ; preds = %.preheader.1, %skip_prefix_impl.exit.1, %skip_prefix_impl.exit.2, %skip_prefix_impl.exit.3, %skip_prefix_impl.exit.4, %skip_prefix_impl.exit.5, %skip_prefix_impl.exit.6, %skip_prefix_impl.exit.7, %skip_prefix_impl.exit.8, %skip_prefix_impl.exit.9, %skip_prefix_impl.exit.10, %.preheader.preheader, %_.exit33, %bb.i, %bb.e, %bb.o, %_.exit
  %.018 = phi i32 [ 0, %_.exit33 ], [ %i.di, %bb.o ], [ 0, %_.exit ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %skip_prefix_impl.exit.1 ], [ 0, %.preheader.preheader ], [ 0, %skip_prefix_impl.exit.10 ], [ 0, %skip_prefix_impl.exit.9 ], [ 0, %skip_prefix_impl.exit.8 ], [ 0, %skip_prefix_impl.exit.7 ], [ 0, %skip_prefix_impl.exit.6 ], [ 0, %skip_prefix_impl.exit.5 ], [ 0, %skip_prefix_impl.exit.4 ], [ 0, %skip_prefix_impl.exit.3 ], [ 0, %skip_prefix_impl.exit.2 ], [ 0, %.preheader.1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.018
}

declare zeroext i1 @starts_with(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @count_slashes(ptr noundef) local_unnamed_addr #2

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @fprintf_ln(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ws_check(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @whitespace_error_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc ptr @parse_binary_hunk(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.git_zstream, align 8        ; 12 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !147    ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 5 uses
  %.not.i155 = icmp eq i64 %i.a, 0
  br i1 %.not.i155, label %linelen.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add i64 %.03.i157, -1                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04.i156, i64 1
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %linelen.exit, label %.lr.ph, !llvm.loop !86

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0.i158 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %.03.i157 = phi i64 [ %i.c, %bb.b ], [ %i.a, %bb.a ]
  %.04.i156 = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = add nuw i64 %.0.i158, 1                  ; 2 uses
  %i.f = load i8, ptr %.04.i156, align 1, !tbaa !59
  %i.g = icmp eq i8 %i.f, 10
  br i1 %i.g, label %.linelen.exit_crit_edge159, label %bb.b, !llvm.loop !86

.linelen.exit_crit_edge159:                       ; preds = %.lr.ph
  br label %linelen.exit, !llvm.loop !86

linelen.exit:                                     ; preds = %bb.b, %.linelen.exit_crit_edge159, %bb.a
  %.1.i = phi i64 [ %i.e, %.linelen.exit_crit_edge159 ], [ %i.a, %bb.a ], [ %i.a, %bb.b ] ; 2 uses
  %i.h = trunc i64 %.1.i to i32
  store i32 0, ptr %3, align 4, !tbaa !40
  %i.i = tail call zeroext i1 @starts_with(ptr noundef %i.b, ptr noundef nonnull @.str.174) #21
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %linelen.exit
  %i.j = tail call zeroext i1 @starts_with(ptr noundef %i.b, ptr noundef nonnull @.str.175) #21
  br i1 %i.j, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c, %linelen.exit
  %.sink147 = phi i64 [ 6, %linelen.exit ], [ 8, %bb.c ]
  %.083 = phi i64 [ 1, %linelen.exit ], [ 2, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sink147
  %i.l = tail call i64 @__isoc23_strtoul(ptr noundef nonnull %i.k, ptr noundef null, i32 noundef 10) #21 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !36
  %sext = shl i64 %.1.i, 32
  %i.p = ashr exact i64 %sext, 32                 ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.b, i64 %i.p
  %i.r = sub i64 %i.a, %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.m, %bb.d
  %.088 = phi i32 [ %i.h, %bb.d ], [ %i.y, %bb.m ]
  %.086 = phi i64 [ %i.r, %bb.d ], [ %i.ax, %bb.m ] ; 6 uses
  %.084 = phi ptr [ %i.q, %bb.d ], [ %i.aw, %bb.m ] ; 6 uses
  %.080 = phi ptr [ null, %bb.d ], [ %i.aq, %bb.m ] ; 9 uses
  %.079 = phi i32 [ 0, %bb.d ], [ %i.ao, %bb.m ]  ; 3 uses
  %.not.i100161 = icmp eq i64 %.086, 0
  br i1 %.not.i100161, label %linelen.exit102, label %.lr.ph165

bb.f:                                             ; preds = %.lr.ph165
  %i.s = add i64 %.03.i98163, -1                  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04.i97162, i64 1
  %.not.i100 = icmp eq i64 %i.s, 0
  br i1 %.not.i100, label %linelen.exit102, label %.lr.ph165, !llvm.loop !86

.lr.ph165:                                        ; preds = %bb.e, %bb.f
  %.0.i99164 = phi i64 [ %i.u, %bb.f ], [ 0, %bb.e ]
  %.03.i98163 = phi i64 [ %i.s, %bb.f ], [ %.086, %bb.e ]
  %.04.i97162 = phi ptr [ %i.t, %bb.f ], [ %.084, %bb.e ] ; 2 uses
  %i.u = add nuw i64 %.0.i99164, 1                ; 2 uses
  %i.v = load i8, ptr %.04.i97162, align 1, !tbaa !59
  %i.w = icmp eq i8 %i.v, 10
  br i1 %i.w, label %.linelen.exit102_crit_edge167, label %bb.f, !llvm.loop !86

.linelen.exit102_crit_edge167:                    ; preds = %.lr.ph165
  br label %linelen.exit102, !llvm.loop !86

linelen.exit102:                                  ; preds = %bb.f, %.linelen.exit102_crit_edge167, %bb.e
  %.1.i101 = phi i64 [ %i.u, %.linelen.exit102_crit_edge167 ], [ %.086, %bb.e ], [ %.086, %bb.f ] ; 2 uses
  %i.x = trunc i64 %.1.i101 to i32                ; 5 uses
  %i.y = add nsw i32 %.088, %i.x                  ; 2 uses
  %i.z = load i32, ptr %i.m, align 4, !tbaa !36
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.m, align 4, !tbaa !36
  %i.ab = icmp eq i32 %i.x, 1
  br i1 %i.ab, label %bb.n, label %bb.g

bb.g:                                             ; preds = %linelen.exit102
  %i.ac = icmp slt i32 %i.x, 7
  br i1 %i.ac, label %.thread.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = add nsw i32 %i.x, -2                    ; 2 uses
  %i.ae = urem i32 %i.ad, 5
  %i.af = udiv i32 %i.ad, 5
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.i, label %.thread.loopexit

bb.i:                                             ; preds = %bb.h
  %i.ag = shl nuw nsw i32 %i.af, 2                ; 2 uses
  %i.ah = load i8, ptr %.084, align 1, !tbaa !59  ; 3 uses
  %i.ai = sext i8 %i.ah to i32
  %i.aj = add i8 %i.ah, -65
  %or.cond = icmp ult i8 %i.aj, 26
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add i8 %i.ah, -97
  %or.cond3 = icmp ult i8 %i.ak, 26
  br i1 %or.cond3, label %bb.k, label %.thread.loopexit

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ -64, %bb.i ], [ -70, %bb.j ]
  %i.al = add nsw i32 %.sink, %i.ai               ; 4 uses
  %i.am = icmp samesign uge i32 %i.ag, %i.al
  %i.an = add nsw i32 %i.ag, -4
  %.not93 = icmp samesign ugt i32 %i.al, %i.an
  %or.cond96 = select i1 %i.am, i1 %.not93, i1 false
  br i1 %or.cond96, label %bb.l, label %.thread.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ao = add nsw i32 %i.al, %.079                ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = tail call ptr @xrealloc(ptr noundef %.080, i64 noundef %i.ap) #21 ; 3 uses
  %i.ar = sext i32 %.079 to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %.084, i64 1
  %i.au = tail call i32 @decode_85(ptr noundef %i.as, ptr noundef nonnull %i.at, i32 noundef %i.al) #21
  %.not94 = icmp eq i32 %i.au, 0
  br i1 %.not94, label %bb.m, label %.thread.loopexit

bb.m:                                             ; preds = %bb.l
  %i.av = and i64 %.1.i101, 2147483647            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.084, i64 %i.av
  %i.ax = sub i64 %.086, %i.av
  br label %bb.e

bb.n:                                             ; preds = %linelen.exit102
  %i.ay = getelementptr inbounds nuw i8, ptr %.084, i64 1 ; 3 uses
  %i.az = add i64 %.086, -1
  %i.ba = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 80) #21 ; 7 uses
  %i.bb = sext i32 %.079 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, i8 0, i64 144, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 144
  store ptr %.080, ptr %i.bc, align 8, !tbaa !232
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 112
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !236
  %i.be = tail call ptr @xmalloc(i64 noundef %i.l) #21 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !237
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i64 %i.l, ptr %i.bg, align 8, !tbaa !238
  call void @git_inflate_init(ptr noundef nonnull %5) #21
  %i.bh = call i32 @git_inflate(ptr noundef nonnull %5, i32 noundef 4) #21
  call void @git_inflate_end(ptr noundef nonnull %5) #21
  %.not.i103 = icmp eq i32 %i.bh, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.bj = load i64, ptr %i.bi, align 8
  %.not8.i = icmp eq i64 %i.bj, %i.l
  %or.cond.i = select i1 %.not.i103, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %inflate_it.exit, label %inflate_it.exit.thread

inflate_it.exit.thread:                           ; preds = %bb.n
  call void @free(ptr noundef %i.be) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr null, ptr %i.bk, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8
  %i.bn = or i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 8
  br label %.thread

inflate_it.exit:                                  ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store ptr %i.be, ptr %i.bo, align 8, !tbaa !66
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8
  %i.br = or i8 %i.bq, 1
  store i8 %i.br, ptr %i.bp, align 8
  %.not95 = icmp eq ptr %i.be, null
  br i1 %.not95, label %.thread, label %bb.o

bb.o:                                             ; preds = %inflate_it.exit
  call void @free(ptr noundef %.080) #21
  %i.bs = trunc i64 %i.l to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 60
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !144
  store ptr %i.ay, ptr %1, align 8, !tbaa !38
  store i64 %i.az, ptr %2, align 8, !tbaa !147
  store i32 %i.y, ptr %4, align 4, !tbaa !40
  store i64 %.083, ptr %i.ba, align 8, !tbaa !140
  br label %bb.q

.thread.loopexit:                                 ; preds = %bb.g, %bb.j, %bb.k, %bb.h, %bb.l
  %.181112.ph = phi ptr [ %i.aq, %bb.l ], [ %.080, %bb.h ], [ %.080, %bb.k ], [ %.080, %bb.j ], [ %.080, %bb.g ]
  %i.bu = add nsw i32 %i.x, -1
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %inflate_it.exit.thread, %inflate_it.exit
  %i.bv = phi i32 [ 0, %inflate_it.exit.thread ], [ 0, %inflate_it.exit ], [ %i.bu, %.thread.loopexit ]
  %.181112 = phi ptr [ %.080, %inflate_it.exit.thread ], [ %.080, %inflate_it.exit ], [ %.181112.ph, %.thread.loopexit ]
  %.185111 = phi ptr [ %i.ay, %inflate_it.exit.thread ], [ %i.ay, %inflate_it.exit ], [ %.084, %.thread.loopexit ]
  call void @free(ptr noundef %.181112) #21
  store i32 -1, ptr %3, align 4, !tbaa !40
  %i.bw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i = icmp eq i32 %i.bw, 0
  br i1 %.not4.i, label %_.exit, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.bx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.176, i32 noundef 5) #21
  br label %_.exit

_.exit:                                           ; preds = %.thread, %bb.p
  %.0.i105 = phi ptr [ %i.bx, %bb.p ], [ @.str.176, %.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !119
  %i.ca = load i32, ptr %i.m, align 4, !tbaa !36
  %i.cb = add nsw i32 %i.ca, -1
  %i.cc = call i32 (ptr, ...) @error(ptr noundef %.0.i105, ptr noundef %i.bz, i32 noundef %i.cb, i32 noundef %i.bv, ptr noundef %.185111) #21 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %_.exit, %bb.o
  %.089 = phi ptr [ null, %bb.c ], [ %i.ba, %bb.o ], [ null, %_.exit ]
  ret ptr %.089
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @decode_85(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @git_inflate_init(ptr noundef) local_unnamed_addr #2

declare i32 @git_inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @git_inflate_end(ptr noundef) local_unnamed_addr #2

declare i32 @wildmatch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @quote_c_style(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #16

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @hold_lock_file_for_update_timeout_mode(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @read_index_from(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @repo_get_git_dir(ptr noundef) local_unnamed_addr #2

declare i32 @repo_read_index(ptr noundef) local_unnamed_addr #2

declare i32 @strset_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @string_list_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @path_is_beyond_symlink(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %3 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.show_stats.qname, i64 24, i1 false)
  %i.a = load i8, ptr %1, align 1, !tbaa !59
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_3
begin_hunk_4_@apply_fragments:bb.a
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  store i8 0, ptr %i.fh, align 1, !tbaa !59
  %i.fi = load i64, ptr %i.aa, align 8, !tbaa !187 ; 2 uses
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  %i.fk = load i64, ptr %i.ab, align 8, !tbaa !188 ; 2 uses
  %i.fl = icmp ugt i64 %i.fj, %i.fk
  br i1 %i.fl, label %bb.am, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %strbuf_addch.exit.i
  %.pre.i237.i = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  br label %.lr.ph.i.i.i

bb.am:                                            ; preds = %strbuf_addch.exit.i
  %i.fm = mul i64 %i.fk, 3
  %i.fn = add i64 %i.fm, 48
  %i.fo = lshr i64 %i.fn, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 %i.fj) ; 4 uses
  store i64 %..i.i, ptr %i.ab, align 8, !tbaa !188
  %i.fp = icmp ugt i64 %..i.i, 1152921504606846975
  br i1 %i.fp, label %bb.an, label %st_mult.exit.i.i

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i.i) #25
  unreachable

st_mult.exit.i.i:                                 ; preds = %bb.am
  %i.fq = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %i.fr = shl nuw i64 %..i.i, 4
  %i.fs = call ptr @xrealloc(ptr noundef %i.fq, i64 noundef %i.fr) #21 ; 2 uses
  store ptr %i.fs, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %.pre23.i.i = load i64, ptr %i.aa, align 8, !tbaa !187
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %st_mult.exit.i.i, %._crit_edge.i.i
  %i.ft = phi i64 [ %i.fi, %._crit_edge.i.i ], [ %.pre23.i.i, %st_mult.exit.i.i ]
  %i.fu = phi ptr [ %.pre.i237.i, %._crit_edge.i.i ], [ %i.fs, %st_mult.exit.i.i ]
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.fu, i64 %i.ft ; 2 uses
  store i64 1, ptr %i.fv, align 8, !tbaa !189
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 8
  %i.fy = and i32 %i.fx, -16777216
  %i.fz = or disjoint i32 %i.fy, %.1.i.i.i
  store i32 %i.fz, ptr %i.fw, align 8
  %i.ga = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %i.gb = load i64, ptr %i.aa, align 8, !tbaa !187
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.ga, i64 %i.gb
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8
  %i.gf = and i32 %i.ge, 16777215
  %i.gg = or disjoint i32 %i.gf, 16777216
  store i32 %i.gg, ptr %i.gd, align 8
  %i.gh = load i64, ptr %i.aa, align 8, !tbaa !187
  %i.gi = add i64 %i.gh, 1
  store i64 %i.gi, ptr %i.aa, align 8, !tbaa !187
  %i.gj = load i64, ptr %i.ad, align 8, !tbaa !187 ; 2 uses
  %i.gk = add i64 %i.gj, 1                        ; 2 uses
  %i.gl = load i64, ptr %i.ae, align 8, !tbaa !188 ; 2 uses
  %i.gm = icmp ugt i64 %i.gk, %i.gl
  br i1 %i.gm, label %bb.ao, label %._crit_edge.i239.i

._crit_edge.i239.i:                               ; preds = %.lr.ph.i.i.i
  %.pre.i241.i = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  br label %.lr.ph.i.i242.i

bb.ao:                                            ; preds = %.lr.ph.i.i.i
  %i.gn = mul i64 %i.gl, 3
  %i.go = add i64 %i.gn, 48
  %i.gp = lshr i64 %i.go, 1
  %..i248.i = call i64 @llvm.umax.i64(i64 %i.gp, i64 %i.gk) ; 4 uses
  store i64 %..i248.i, ptr %i.ae, align 8, !tbaa !188
  %i.gq = icmp ugt i64 %..i248.i, 1152921504606846975
  br i1 %i.gq, label %bb.ap, label %st_mult.exit.i249.i

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i248.i) #25
  unreachable

st_mult.exit.i249.i:                              ; preds = %bb.ao
  %i.gr = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %i.gs = shl nuw i64 %..i248.i, 4
  %i.gt = call ptr @xrealloc(ptr noundef %i.gr, i64 noundef %i.gs) #21 ; 2 uses
  store ptr %i.gt, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %.pre23.i250.i = load i64, ptr %i.ad, align 8, !tbaa !187
  br label %.lr.ph.i.i242.i

.lr.ph.i.i242.i:                                  ; preds = %st_mult.exit.i249.i, %._crit_edge.i239.i
  %i.gu = phi i64 [ %i.gj, %._crit_edge.i239.i ], [ %.pre23.i250.i, %st_mult.exit.i249.i ]
  %i.gv = phi ptr [ %.pre.i241.i, %._crit_edge.i239.i ], [ %i.gt, %st_mult.exit.i249.i ]
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gu ; 2 uses
  store i64 1, ptr %i.gw, align 8, !tbaa !189
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8
  %i.gz = and i32 %i.gy, -16777216
  %i.ha = or disjoint i32 %i.gz, %.1.i.i.i
  store i32 %i.ha, ptr %i.gx, align 8
  %i.hb = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %i.hc = load i64, ptr %i.ad, align 8, !tbaa !187
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8
  %i.hg = and i32 %i.hf, 16777215
  %i.hh = or disjoint i32 %i.hg, 16777216
  store i32 %i.hh, ptr %i.he, align 8
  %i.hi = load i64, ptr %i.ad, align 8, !tbaa !187
  %i.hj = add i64 %i.hi, 1
  store i64 %i.hj, ptr %i.ad, align 8, !tbaa !187
  br label %.thread357.thread.i

bb.aq:                                            ; preds = %bb.aj, %bb.ai
  %.not193.i = icmp eq i32 %.0151.i, 0
  %or.cond224.i = or i1 %.not194.i, %.not193.i
  br i1 %or.cond224.i, label %.thread.i32, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hk = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.hl = call i32 @ws_blank_line(ptr noundef nonnull %i.hk, i32 noundef %.0151.i) #21
  %.not195.i = icmp ne i32 %i.hl, 0
  %spec.select225.i = zext i1 %.not195.i to i32
  br label %.thread.i32

.thread.i32:                                      ; preds = %bb.ar, %bb.aq, %bb.aj, %bb.ai
  %i.hm = phi i32 [ 16777216, %bb.aq ], [ 16777216, %bb.ar ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %cond.i = phi i1 [ false, %bb.aq ], [ false, %bb.ar ], [ true, %bb.aj ], [ true, %bb.ai ]
  %.0149.i = phi i32 [ 0, %bb.aq ], [ %spec.select225.i, %bb.ar ], [ 0, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.ho = sext i32 %.0151.i to i64                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0172517.i, ptr nonnull align 1 %i.hn, i64 %i.ho, i1 false)
  %i.hp = load i64, ptr %i.aa, align 8, !tbaa !187 ; 2 uses
  %i.hq = add i64 %i.hp, 1                        ; 2 uses
  %i.hr = load i64, ptr %i.ab, align 8, !tbaa !188 ; 2 uses
  %i.hs = icmp ugt i64 %i.hq, %i.hr
  br i1 %i.hs, label %bb.as, label %._crit_edge.i252.i

._crit_edge.i252.i:                               ; preds = %.thread.i32
  %.pre.i254.i = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  br label %bb.au

bb.as:                                            ; preds = %.thread.i32
  %i.ht = mul i64 %i.hr, 3
  %i.hu = add i64 %i.ht, 48
  %i.hv = lshr i64 %i.hu, 1
  %..i261.i = call i64 @llvm.umax.i64(i64 %i.hv, i64 %i.hq) ; 4 uses
  store i64 %..i261.i, ptr %i.ab, align 8, !tbaa !188
  %i.hw = icmp ugt i64 %..i261.i, 1152921504606846975
  br i1 %i.hw, label %bb.at, label %st_mult.exit.i262.i

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i261.i) #25
  unreachable

st_mult.exit.i262.i:                              ; preds = %bb.as
  %i.hx = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %i.hy = shl nuw i64 %..i261.i, 4
  %i.hz = call ptr @xrealloc(ptr noundef %i.hx, i64 noundef %i.hy) #21 ; 2 uses
  store ptr %i.hz, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %.pre23.i263.i = load i64, ptr %i.aa, align 8, !tbaa !187
  br label %bb.au

bb.au:                                            ; preds = %st_mult.exit.i262.i, %._crit_edge.i252.i
  %i.ia = phi i64 [ %i.hp, %._crit_edge.i252.i ], [ %.pre23.i263.i, %st_mult.exit.i262.i ]
  %i.ib = phi ptr [ %.pre.i254.i, %._crit_edge.i252.i ], [ %i.hz, %st_mult.exit.i262.i ]
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.ia ; 2 uses
  store i64 %i.ho, ptr %i.ic, align 8, !tbaa !189
  switch i32 %.0151.i, label %.lr.ph.i.i255.i.preheader.new [
    i32 0, label %image_add_line.exit264.i
    i32 1, label %.lr.ph.i.i255.i.epil.preheader
  ]

.lr.ph.i.i255.i.preheader.new:                    ; preds = %bb.au
  %unroll_iter = and i64 %i.ho, -2
  br label %.lr.ph.i.i255.i

.lr.ph.i.i255.i:                                  ; preds = %.lr.ph.i.i255.i, %.lr.ph.i.i255.i.preheader.new
  %.010.i.i256.i = phi i32 [ 0, %.lr.ph.i.i255.i.preheader.new ], [ %.1.i.i259.i.1, %.lr.ph.i.i255.i ] ; 2 uses
  %.089.i.i257.i = phi i64 [ 0, %.lr.ph.i.i255.i.preheader.new ], [ %i.iw, %.lr.ph.i.i255.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i255.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i255.i ]
  %i.id = getelementptr inbounds nuw i8, ptr %.0172517.i, i64 %.089.i.i257.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !59  ; 2 uses
  %i.if = zext i8 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.if
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !59
  %i.ii = and i8 %i.ih, 1
  %.not.i.i258.i = icmp eq i8 %i.ii, 0
  %i.ij = mul i32 %.010.i.i256.i, 3
  %i.ik = zext i8 %i.ie to i32
  %i.il = add i32 %i.ij, %i.ik
  %.1.i.i259.i = select i1 %.not.i.i258.i, i32 %i.il, i32 %.010.i.i256.i ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.0172517.i, i64 %.089.i.i257.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.io = load i8, ptr %i.in, align 1, !tbaa !59  ; 2 uses
  %i.ip = zext i8 %i.io to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !59
  %i.is = and i8 %i.ir, 1
  %.not.i.i258.i.1 = icmp eq i8 %i.is, 0
  %i.it = mul i32 %.1.i.i259.i, 3
  %i.iu = zext i8 %i.io to i32
  %i.iv = add i32 %i.it, %i.iu
  %.1.i.i259.i.1 = select i1 %.not.i.i258.i.1, i32 %i.iv, i32 %.1.i.i259.i ; 3 uses
  %i.iw = add nuw i64 %.089.i.i257.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash_line.exit.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i255.i, !llvm.loop !191

hash_line.exit.loopexit.i.i.unr-lcssa:            ; preds = %.lr.ph.i.i255.i
  %i.ix = and i32 %.0151.i, 1
  %lcmp.mod.not = icmp eq i32 %i.ix, 0
  br i1 %lcmp.mod.not, label %hash_line.exit.loopexit.i.i, label %.lr.ph.i.i255.i.epil.preheader

.lr.ph.i.i255.i.epil.preheader:                   ; preds = %bb.au, %hash_line.exit.loopexit.i.i.unr-lcssa
  %.010.i.i256.i.epil.init = phi i32 [ 0, %bb.au ], [ %.1.i.i259.i.1, %hash_line.exit.loopexit.i.i.unr-lcssa ] ; 2 uses
  %.089.i.i257.i.epil.init = phi i64 [ 0, %bb.au ], [ %i.iw, %hash_line.exit.loopexit.i.i.unr-lcssa ]
  %lcmp.mod569 = trunc i32 %.0151.i to i1
  call void @llvm.assume(i1 %lcmp.mod569)
  %i.iy = getelementptr inbounds nuw i8, ptr %.0172517.i, i64 %.089.i.i257.i.epil.init
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !59  ; 2 uses
  %i.ja = zext i8 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !59
  %i.jd = and i8 %i.jc, 1
  %.not.i.i258.i.epil = icmp eq i8 %i.jd, 0
  %i.je = mul i32 %.010.i.i256.i.epil.init, 3
  %i.jf = zext i8 %i.iz to i32
  %i.jg = add i32 %i.je, %i.jf
  %.1.i.i259.i.epil = select i1 %.not.i.i258.i.epil, i32 %i.jg, i32 %.010.i.i256.i.epil.init
  br label %hash_line.exit.loopexit.i.i

hash_line.exit.loopexit.i.i:                      ; preds = %hash_line.exit.loopexit.i.i.unr-lcssa, %.lr.ph.i.i255.i.epil.preheader
  %.1.i.i259.i.lcssa = phi i32 [ %.1.i.i259.i.1, %hash_line.exit.loopexit.i.i.unr-lcssa ], [ %.1.i.i259.i.epil, %.lr.ph.i.i255.i.epil.preheader ]
  %i.jh = and i32 %.1.i.i259.i.lcssa, 16777215
  br label %image_add_line.exit264.i

image_add_line.exit264.i:                         ; preds = %bb.au, %hash_line.exit.loopexit.i.i
  %.0.lcssa.i.i.i = phi i32 [ 0, %bb.au ], [ %i.jh, %hash_line.exit.loopexit.i.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ic, i64 8 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 8
  %i.jk = and i32 %i.jj, -16777216
  %i.jl = or disjoint i32 %i.jk, %.0.lcssa.i.i.i
  store i32 %i.jl, ptr %i.ji, align 8
  %i.jm = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %i.jn = load i64, ptr %i.aa, align 8, !tbaa !187
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %i.jn
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 8
  %i.jr = and i32 %i.jq, 16777215
  %i.js = or disjoint i32 %i.jr, %i.hm
  store i32 %i.js, ptr %i.jp, align 8
  %i.jt = load i64, ptr %i.aa, align 8, !tbaa !187
  %i.ju = add i64 %i.jt, 1
  store i64 %i.ju, ptr %i.aa, align 8, !tbaa !187
  %i.jv = getelementptr inbounds i8, ptr %.0172517.i, i64 %i.ho ; 2 uses
  br i1 %cond.i, label %.thread357.i, label %bb.av

.thread335.i:                                     ; preds = %bb.aj, %bb.ai
  %i.jw = load i32, ptr %i.u, align 8, !tbaa !240
  %.not196.i = icmp eq i32 %i.jw, 0
  br i1 %.not196.i, label %.thread345.i, label %.thread357.i

.thread345.i:                                     ; preds = %.thread335.i
  %i.jx = load i64, ptr %i.v, align 8, !tbaa !76  ; 3 uses
  %i.jy = load i32, ptr %i.w, align 8, !tbaa !114
  %.not198.i = icmp eq i32 %i.jy, 0
  br i1 %.not198.i, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %image_add_line.exit264.i
  %i.jz = load i64, ptr %i.v, align 8, !tbaa !76
  br label %bb.ax

bb.aw:                                            ; preds = %.thread345.i
  %i.ka = load i32, ptr %i.x, align 8, !tbaa !35
  %.not199.i = icmp eq i32 %i.ka, 3
  br i1 %.not199.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %.thread345.i
  %i.kb = phi i64 [ %i.jx, %bb.aw ], [ %i.jx, %.thread345.i ], [ %i.jz, %bb.av ]
  %.1173342354.i = phi ptr [ %.0172517.i, %bb.aw ], [ %.0172517.i, %.thread345.i ], [ %i.jv, %bb.av ]
  %.1344351.i = phi i32 [ 0, %bb.aw ], [ 0, %.thread345.i ], [ %.0149.i, %bb.av ]
  %i.kc = phi i1 [ false, %bb.aw ], [ false, %.thread345.i ], [ true, %bb.av ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.ke = sext i32 %.0151.i to i64
  call void @strbuf_add(ptr noundef nonnull %6, ptr noundef nonnull %i.kd, i64 noundef %i.ke) #21
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.kf = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  call void @ws_fix_copy(ptr noundef nonnull %6, ptr noundef nonnull %i.kf, i32 noundef %.0151.i, i32 noundef %i.s, ptr noundef nonnull %i.y) #21
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kg = phi i64 [ %i.jx, %bb.ay ], [ %i.kb, %bb.ax ] ; 4 uses
  %.1173342353.i = phi ptr [ %.0172517.i, %bb.ay ], [ %.1173342354.i, %bb.ax ] ; 3 uses
  %.1344350.i = phi i32 [ 0, %bb.ay ], [ %.1344351.i, %bb.ax ] ; 2 uses
  %i.kh = phi i1 [ false, %bb.ay ], [ %i.kc, %bb.ax ] ; 2 uses
  %i.ki = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg ; 3 uses
  %i.kk = load i64, ptr %i.v, align 8, !tbaa !76  ; 3 uses
  %i.kl = sub i64 %i.kk, %i.kg                    ; 4 uses
  %i.km = load i64, ptr %i.ad, align 8, !tbaa !187 ; 2 uses
  %i.kn = add i64 %i.km, 1                        ; 2 uses
  %i.ko = load i64, ptr %i.ae, align 8, !tbaa !188 ; 2 uses
  %i.kp = icmp ugt i64 %i.kn, %i.ko
  br i1 %i.kp, label %bb.ba, label %._crit_edge.i265.i

._crit_edge.i265.i:                               ; preds = %bb.az
  %.pre.i267.i = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  br label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.kq = mul i64 %i.ko, 3
  %i.kr = add i64 %i.kq, 48
  %i.ks = lshr i64 %i.kr, 1
  %..i277.i = call i64 @llvm.umax.i64(i64 %i.ks, i64 %i.kn) ; 4 uses
  store i64 %..i277.i, ptr %i.ae, align 8, !tbaa !188
  %i.kt = icmp ugt i64 %..i277.i, 1152921504606846975
  br i1 %i.kt, label %bb.bb, label %st_mult.exit.i278.i

bb.bb:                                            ; preds = %bb.ba
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i277.i) #25
  unreachable

st_mult.exit.i278.i:                              ; preds = %bb.ba
  %i.ku = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %i.kv = shl nuw i64 %..i277.i, 4
  %i.kw = call ptr @xrealloc(ptr noundef %i.ku, i64 noundef %i.kv) #21 ; 2 uses
  store ptr %i.kw, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %.pre23.i279.i = load i64, ptr %i.ad, align 8, !tbaa !187
  br label %bb.bc

bb.bc:                                            ; preds = %st_mult.exit.i278.i, %._crit_edge.i265.i
  %i.kx = phi i64 [ %i.km, %._crit_edge.i265.i ], [ %.pre23.i279.i, %st_mult.exit.i278.i ]
  %i.ky = phi ptr [ %.pre.i267.i, %._crit_edge.i265.i ], [ %i.kw, %st_mult.exit.i278.i ]
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.ky, i64 %i.kx ; 2 uses
  store i64 %i.kl, ptr %i.kz, align 8, !tbaa !189
  %.not11.i.i268.i = icmp eq i64 %i.kk, %i.kg
  br i1 %.not11.i.i268.i, label %image_add_line.exit280.i, label %.lr.ph.i.i269.i.preheader

.lr.ph.i.i269.i.preheader:                        ; preds = %bb.bc
  %.neg = add i64 %i.kg, 1
  %xtraiter570 = and i64 %i.kl, 1
  %i.la = icmp eq i64 %i.kk, %.neg
  br i1 %i.la, label %.lr.ph.i.i269.i.epil.preheader, label %.lr.ph.i.i269.i.preheader.new

.lr.ph.i.i269.i.preheader.new:                    ; preds = %.lr.ph.i.i269.i.preheader
  %unroll_iter574 = and i64 %i.kl, -2
  br label %.lr.ph.i.i269.i

.lr.ph.i.i269.i:                                  ; preds = %.lr.ph.i.i269.i, %.lr.ph.i.i269.i.preheader.new
  %.010.i.i270.i = phi i32 [ 0, %.lr.ph.i.i269.i.preheader.new ], [ %.1.i.i273.i.1, %.lr.ph.i.i269.i ] ; 2 uses
  %.089.i.i271.i = phi i64 [ 0, %.lr.ph.i.i269.i.preheader.new ], [ %i.lu, %.lr.ph.i.i269.i ] ; 3 uses
  %niter575 = phi i64 [ 0, %.lr.ph.i.i269.i.preheader.new ], [ %niter575.next.1, %.lr.ph.i.i269.i ]
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.089.i.i271.i
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !59  ; 2 uses
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !59
  %i.lg = and i8 %i.lf, 1
  %.not.i.i272.i = icmp eq i8 %i.lg, 0
  %i.lh = mul i32 %.010.i.i270.i, 3
  %i.li = zext i8 %i.lc to i32
  %i.lj = add i32 %i.lh, %i.li
  %.1.i.i273.i = select i1 %.not.i.i272.i, i32 %i.lj, i32 %.010.i.i270.i ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.089.i.i271.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !59  ; 2 uses
  %i.ln = zext i8 %i.lm to i64
  %i.lo = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !59
  %i.lq = and i8 %i.lp, 1
  %.not.i.i272.i.1 = icmp eq i8 %i.lq, 0
  %i.lr = mul i32 %.1.i.i273.i, 3
  %i.ls = zext i8 %i.lm to i32
  %i.lt = add i32 %i.lr, %i.ls
  %.1.i.i273.i.1 = select i1 %.not.i.i272.i.1, i32 %i.lt, i32 %.1.i.i273.i ; 3 uses
  %i.lu = add nuw i64 %.089.i.i271.i, 2           ; 2 uses
  %niter575.next.1 = add nuw i64 %niter575, 2     ; 2 uses
  %niter575.ncmp.1 = icmp eq i64 %niter575.next.1, %unroll_iter574
  br i1 %niter575.ncmp.1, label %hash_line.exit.loopexit.i275.i.unr-lcssa, label %.lr.ph.i.i269.i, !llvm.loop !191

hash_line.exit.loopexit.i275.i.unr-lcssa:         ; preds = %.lr.ph.i.i269.i
  %lcmp.mod571.not = icmp eq i64 %xtraiter570, 0
  br i1 %lcmp.mod571.not, label %hash_line.exit.loopexit.i275.i, label %.lr.ph.i.i269.i.epil.preheader

.lr.ph.i.i269.i.epil.preheader:                   ; preds = %hash_line.exit.loopexit.i275.i.unr-lcssa, %.lr.ph.i.i269.i.preheader
  %.010.i.i270.i.epil.init = phi i32 [ 0, %.lr.ph.i.i269.i.preheader ], [ %.1.i.i273.i.1, %hash_line.exit.loopexit.i275.i.unr-lcssa ] ; 2 uses
  %.089.i.i271.i.epil.init = phi i64 [ 0, %.lr.ph.i.i269.i.preheader ], [ %i.lu, %hash_line.exit.loopexit.i275.i.unr-lcssa ]
  %lcmp.mod573 = trunc i64 %i.kl to i1
  call void @llvm.assume(i1 %lcmp.mod573)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kj, i64 %.089.i.i271.i.epil.init
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !59  ; 2 uses
  %i.lx = zext i8 %i.lw to i64
  %i.ly = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !59
  %i.ma = and i8 %i.lz, 1
  %.not.i.i272.i.epil = icmp eq i8 %i.ma, 0
  %i.mb = mul i32 %.010.i.i270.i.epil.init, 3
  %i.mc = zext i8 %i.lw to i32
  %i.md = add i32 %i.mb, %i.mc
  %.1.i.i273.i.epil = select i1 %.not.i.i272.i.epil, i32 %i.md, i32 %.010.i.i270.i.epil.init
  br label %hash_line.exit.loopexit.i275.i

hash_line.exit.loopexit.i275.i:                   ; preds = %hash_line.exit.loopexit.i275.i.unr-lcssa, %.lr.ph.i.i269.i.epil.preheader
  %.1.i.i273.i.lcssa = phi i32 [ %.1.i.i273.i.1, %hash_line.exit.loopexit.i275.i.unr-lcssa ], [ %.1.i.i273.i.epil, %.lr.ph.i.i269.i.epil.preheader ]
  %i.me = and i32 %.1.i.i273.i.lcssa, 16777215
  br label %image_add_line.exit280.i

image_add_line.exit280.i:                         ; preds = %hash_line.exit.loopexit.i275.i, %bb.bc
  %.0.lcssa.i.i276.i = phi i32 [ 0, %bb.bc ], [ %i.me, %hash_line.exit.loopexit.i275.i ]
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8
  %i.mh = and i32 %i.mg, -16777216
  %i.mi = or disjoint i32 %i.mh, %.0.lcssa.i.i276.i
  store i32 %i.mi, ptr %i.mf, align 8
  %i.mj = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %i.mk = load i64, ptr %i.ad, align 8, !tbaa !187
  %i.ml = getelementptr inbounds nuw [16 x i8], ptr %i.mj, i64 %i.mk
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 8
  %i.mo = select i1 %i.kh, i32 16777216, i32 0
  %i.mp = and i32 %i.mn, 16777215
  %i.mq = or disjoint i32 %i.mp, %i.mo
  store i32 %i.mq, ptr %i.mm, align 8
  %i.mr = load i64, ptr %i.ad, align 8, !tbaa !187
  %i.ms = add i64 %i.mr, 1
  store i64 %i.ms, ptr %i.ad, align 8, !tbaa !187
  %or.cond226.i = or i1 %.not194.i, %i.kh
  br i1 %or.cond226.i, label %.thread357.i, label %bb.bg

bb.bd:                                            ; preds = %bb.aj, %bb.ai
  %i.mt = sext i8 %i.ew to i32
  %i.mu = load i32, ptr %i.ah, align 8, !tbaa !49
  %i.mv = icmp sgt i32 %i.mu, 0
  br i1 %i.mv, label %bb.be, label %apply_one_fragment.exit

bb.be:                                            ; preds = %bb.bd
  %i.mw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !40
  %.not4.i.i33 = icmp eq i32 %i.mw, 0
  br i1 %.not4.i.i33, label %_.exit.i34, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.225, i32 noundef 5) #21
  br label %_.exit.i34

_.exit.i34:                                       ; preds = %bb.bf, %bb.be
  %.0.i281.i = phi ptr [ %i.mx, %bb.bf ], [ @.str.225, %bb.be ]
  %i.my = call i32 (ptr, ...) @error(ptr noundef %.0.i281.i, i32 noundef %i.mt) #21 ; 0 uses
  br label %apply_one_fragment.exit

bb.bg:                                            ; preds = %image_add_line.exit280.i
  %i.mz = getelementptr inbounds nuw i8, ptr %.0179511.i, i64 1
  %i.na = call i32 @ws_blank_line(ptr noundef nonnull %i.mz, i32 noundef %.0151.i) #21
  %.not201.i = icmp eq i32 %i.na, 0
  br i1 %.not201.i, label %.thread357.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not204.i = icmp eq i32 %.0167518.i, 0
  %spec.select228.i = select i1 %.not204.i, i32 %.0162523.i, i32 %.0164519.i
  %i.nb = add nsw i32 %.0167518.i, 1
  br label %.thread357.thread.i

.thread357.i:                                     ; preds = %bb.bg, %image_add_line.exit280.i, %.thread335.i, %image_add_line.exit264.i
  %.2363.i = phi i32 [ %.1344350.i, %bb.bg ], [ %.1344350.i, %image_add_line.exit280.i ], [ %.0149.i, %image_add_line.exit264.i ], [ 0, %.thread335.i ]
  %.2174362.i = phi ptr [ %.1173342353.i, %bb.bg ], [ %.1173342353.i, %image_add_line.exit280.i ], [ %i.jv, %image_add_line.exit264.i ], [ %.0172517.i, %.thread335.i ]
  %.2363.fr.i = freeze i32 %.2363.i
  %.not203.i = icmp eq i32 %.2363.fr.i, 0
  %spec.select395.i = select i1 %.not203.i, i32 0, i32 %.0167518.i
  br label %.thread357.thread.i

.thread357.thread.i:                              ; preds = %.thread357.i, %bb.bh, %.lr.ph.i.i242.i, %bb.ak, %bb.aj, %bb.aj, %bb.ai, %bb.ai
  %.2174361.i = phi ptr [ %.1173342353.i, %bb.bh ], [ %i.ez, %.lr.ph.i.i242.i ], [ %.2174362.i, %.thread357.i ], [ %.0172517.i, %bb.ak ], [ %.0172517.i, %bb.aj ], [ %.0172517.i, %bb.aj ], [ %.0172517.i, %bb.ai ], [ %.0172517.i, %bb.ai ] ; 2 uses
  %.1168.i = phi i32 [ %i.nb, %bb.bh ], [ %.0167518.i, %.lr.ph.i.i242.i ], [ %spec.select395.i, %.thread357.i ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.ai ] ; 2 uses
  %.2166.i = phi i32 [ %spec.select228.i, %bb.bh ], [ %.0164519.i, %.lr.ph.i.i242.i ], [ %.0164519.i, %.thread357.i ], [ %.0164519.i, %bb.ak ], [ %.0164519.i, %bb.aj ], [ %.0164519.i, %bb.aj ], [ %.0164519.i, %bb.ai ], [ %.0164519.i, %bb.ai ] ; 2 uses
  %sext205.i = shl i64 %.1.i.i, 32
  %i.nc = ashr exact i64 %sext205.i, 32
  %i.nd = getelementptr inbounds i8, ptr %.0179511.i, i64 %i.nc
  %i.ne = sub nsw i32 %.0177516.i, %i.eo          ; 2 uses
  %i.nf = add nsw i32 %.0162523.i, 1
  %i.ng = icmp sgt i32 %i.ne, 0
  br i1 %i.ng, label %.lr.ph.i, label %.thread373.i

.thread373.i:                                     ; preds = %.thread357.thread.i, %linelen.exit.i
  %.0172.lcssa.i = phi ptr [ %.0172517.i, %linelen.exit.i ], [ %.2174361.i, %.thread357.thread.i ] ; 5 uses
  %.0167.lcssa.i = phi i32 [ %.0167518.i, %linelen.exit.i ], [ %.1168.i, %.thread357.thread.i ] ; 4 uses
  %.0164.lcssa.i = phi i32 [ %.0164519.i, %linelen.exit.i ], [ %.2166.i, %.thread357.thread.i ] ; 4 uses
  %i.nh = icmp ugt ptr %.0172.lcssa.i, %i.eg
  %or.cond230.i = select i1 %.not206.i, i1 %i.nh, i1 false
  br i1 %or.cond230.i, label %bb.bi, label %.thread373.thread.i

bb.bi:                                            ; preds = %.thread373.i
  %i.ni = getelementptr inbounds i8, ptr %.0172.lcssa.i, i64 -1 ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !59
  %i.nk = icmp eq i8 %i.nj, 10
  %i.nl = load i64, ptr %i.v, align 8             ; 2 uses
  %i.nm = icmp ne i64 %i.nl, 0
  %or.cond.i = select i1 %i.nk, i1 %i.nm, i1 false
  br i1 %or.cond.i, label %bb.bj, label %.thread373.thread.i

bb.bj:                                            ; preds = %bb.bi
  %i.nn = load ptr, ptr %i.ac, align 8, !tbaa !75 ; 2 uses
  %i.no = add i64 %i.nl, -1                       ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.no ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !59
  %i.nr = icmp eq i8 %i.nq, 10
  br i1 %i.nr, label %bb.bk, label %.thread373.thread.i

bb.bk:                                            ; preds = %bb.bj
  %i.ns = load i64, ptr %6, align 8, !tbaa !218
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %i.ns, i64 1)
  %i.nt = icmp ugt i64 %i.no, %spec.select.i.i
  br i1 %i.nt, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.231, i32 noundef 167, ptr noundef nonnull @.str.232) #25
  unreachable

bb.bm:                                            ; preds = %bb.bk
  store i64 %i.no, ptr %i.v, align 8, !tbaa !76
  %.not9.i.i = icmp eq ptr %i.nn, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i8 0, ptr %i.np, align 1, !tbaa !59
  br label %strbuf_setlen.exit.i

bb.bo:                                            ; preds = %bb.bm
  %i.nu = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !59
  %.not10.i.i = icmp eq i8 %i.nu, 0
  br i1 %.not10.i.i, label %strbuf_setlen.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @__assert_fail(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.231, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #25
  unreachable

strbuf_setlen.exit.i:                             ; preds = %bb.bo, %bb.bn
  %i.nv = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %i.nw = load i64, ptr %i.aa, align 8, !tbaa !187
  %i.nx = getelementptr [16 x i8], ptr %i.nv, i64 %i.nw
  %i.ny = getelementptr i8, ptr %i.nx, i64 -16    ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !189
  %i.oa = add i64 %i.nz, -1
  store i64 %i.oa, ptr %i.ny, align 8, !tbaa !189
  %i.ob = load ptr, ptr %.phi.trans.insert.i266.i, align 8, !tbaa !181
  %i.oc = load i64, ptr %i.ad, align 8, !tbaa !187
  %i.od = getelementptr [16 x i8], ptr %i.ob, i64 %i.oc
  %i.oe = getelementptr i8, ptr %i.od, i64 -16    ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !189
  %i.og = add i64 %i.of, -1
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !189
  br label %.thread373.thread.i

.thread373.thread.i:                              ; preds = %strbuf_setlen.exit.i, %bb.bj, %bb.bi, %.thread373.i, %bb.ac
  %.0164.lcssa674.i = phi i32 [ %.0164.lcssa.i, %strbuf_setlen.exit.i ], [ %.0164.lcssa.i, %bb.bj ], [ %.0164.lcssa.i, %bb.bi ], [ %.0164.lcssa.i, %.thread373.i ], [ 0, %bb.ac ]
  %.0167.lcssa673.i = phi i32 [ %.0167.lcssa.i, %strbuf_setlen.exit.i ], [ %.0167.lcssa.i, %bb.bj ], [ %.0167.lcssa.i, %bb.bi ], [ %.0167.lcssa.i, %.thread373.i ], [ 0, %bb.ac ] ; 2 uses
  %.5.i = phi ptr [ %i.ni, %strbuf_setlen.exit.i ], [ %.0172.lcssa.i, %bb.bj ], [ %.0172.lcssa.i, %bb.bi ], [ %.0172.lcssa.i, %.thread373.i ], [ %i.eg, %bb.ac ]
  %i.oh = load i64, ptr %.023117, align 8, !tbaa !140
  %i.oi = getelementptr inbounds nuw i8, ptr %.023117, i64 8 ; 2 uses
  %i.oj = load i64, ptr %i.oi, align 8, !tbaa !141
  %.fr.i = freeze i64 %i.oj                       ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.023117, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !203
  switch i64 %i.ol, label %.fold.split.i [
    i64 0, label %bb.br
    i64 1, label %bb.bq
  ]

bb.bq:                                            ; preds = %.thread373.thread.i
  %i.om = load i32, ptr %i.aj, align 8, !tbaa !241
  %.not208.i = icmp eq i32 %i.om, 0
  %i.on = zext i1 %.not208.i to i32
  br label %bb.br

.fold.split.i:                                    ; preds = %.thread373.thread.i
  br label %bb.br

bb.br:                                            ; preds = %.fold.split.i, %bb.bq, %.thread373.thread.i
  %i.oo = phi i32 [ 1, %.thread373.thread.i ], [ %i.on, %bb.bq ], [ 0, %.fold.split.i ]
end_hunk_4
begin_hunk_5_@apply_fragments:bb.a
  %i.px = icmp ne i32 %.072.i.i, 0
  br label %bb.bx

scalar.ph468:                                     ; preds = %scalar.ph468.preheader, %scalar.ph468
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph468 ], [ %indvars.iv.i.i.ph, %scalar.ph468.preheader ] ; 2 uses
  %.062127.i.i = phi i64 [ %i.qa, %scalar.ph468 ], [ %.062127.i.i.ph, %scalar.ph468.preheader ]
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.pm, i64 %indvars.iv.i.i
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !189
  %i.qa = add i64 %i.pz, %.062127.i.i             ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.preheader92.i.i, label %scalar.ph468, !llvm.loop !247

bb.bx:                                            ; preds = %bb.de, %.preheader92.i.i
  %i.qb = phi i64 [ %.pre166.i.i, %bb.de ], [ %i.pj, %.preheader92.i.i ] ; 3 uses
  %.169.i.i = phi i32 [ %i.zd, %bb.de ], [ 0, %.preheader92.i.i ] ; 4 uses
  %.066.i.i = phi i64 [ %.167.i.i, %bb.de ], [ %.062.lcssa.i.i, %.preheader92.i.i ] ; 2 uses
  %.064.i.i = phi i64 [ %.165.i.i, %bb.de ], [ %.062.lcssa.i.i, %.preheader92.i.i ] ; 2 uses
  %.163.i.i = phi i64 [ %.2.i.i, %bb.de ], [ %.062.lcssa.i.i, %.preheader92.i.i ] ; 5 uses
  %.060.i.i = phi i32 [ %.161.i.i, %bb.de ], [ %spec.select82.i.i, %.preheader92.i.i ] ; 3 uses
  %.058.i.i = phi i32 [ %.159.i.i, %bb.de ], [ %spec.select82.i.i, %.preheader92.i.i ] ; 3 uses
  %.0.i285.i = phi i32 [ %.1.i287.i, %bb.de ], [ %spec.select82.i.i, %.preheader92.i.i ] ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.show_stats.qname, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.qc = load i64, ptr %i.aa, align 8, !tbaa !187 ; 7 uses
  %i.qd = sext i32 %.0.i285.i to i64              ; 4 uses
  %i.qe = add i64 %i.qc, %i.qd                    ; 2 uses
  %.not.i.i286.i = icmp ugt i64 %i.qe, %i.qb
  br i1 %.not.i.i286.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qf = trunc i64 %i.qc to i32
  %.not135.i.i.i = icmp eq i64 %i.qe, %i.qb
  %or.cond146.i.i.i = or i1 %.not134.i.i.i, %.not135.i.i.i
  br i1 %or.cond146.i.i.i, label %bb.cb, label %.preheader.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.qg = load i32, ptr %i.x, align 8, !tbaa !35
  %i.qh = icmp ne i32 %i.qg, 3
  %or.cond147.i.i.i = or i1 %.not194.i, %i.qh
  br i1 %or.cond147.i.i.i, label %.preheader.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qi = trunc i64 %i.qb to i32
  %i.qj = sub i32 %i.qi, %.0.i285.i
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.by
  %.0115.i.i.i = phi i32 [ %i.qj, %bb.ca ], [ %i.qf, %bb.by ] ; 6 uses
  %i.qk = icmp ne i32 %.0.i285.i, 0
  %or.cond.i.i.i = and i1 %i.px, %i.qk
  br i1 %or.cond.i.i.i, label %.preheader.i.i, label %.preheader159.i.i.i

.preheader159.i.i.i:                              ; preds = %bb.cb
  %i.ql = icmp sgt i32 %.0115.i.i.i, 0            ; 3 uses
  br i1 %i.ql, label %.lr.ph.i.i288.i, label %._crit_edge.thread.i.i.i

.lr.ph.i.i288.i:                                  ; preds = %.preheader159.i.i.i
  %i.qm = load ptr, ptr %i.am, align 8, !tbaa !181
  %wide.trip.count.i.i.i = zext nneg i32 %.0115.i.i.i to i64 ; 4 uses
  %invariant.gep.i.i.i = getelementptr [16 x i8], ptr %i.qm, i64 %i.qd
  %i.qn = load ptr, ptr %.phi.trans.insert.i253.i, align 8 ; 10 uses
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ce
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i289.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i289.i, label %._crit_edge.i.i.i, label %bb.cd, !llvm.loop !248

bb.cd:                                            ; preds = %bb.cc, %.lr.ph.i.i288.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i288.i ], [ %indvars.iv.next.i.i.i, %bb.cc ] ; 3 uses
  %gep.i.i.i = getelementptr [16 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv.i.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %gep.i.i.i, i64 8
  %i.qp = load i32, ptr %i.qo, align 8            ; 2 uses
  %i.qq = and i32 %i.qp, 33554432
  %.not144.i.i.i = icmp eq i32 %i.qq, 0
  br i1 %.not144.i.i.i, label %bb.ce, label %.preheader.i.i

bb.ce:                                            ; preds = %bb.cd
  %i.qr = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv.i.i.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.qt = load i32, ptr %i.qs, align 8
  %i.qu = xor i32 %i.qt, %i.qp
  %i.qv = and i32 %i.qu, 16777215
  %.not145.i.i.i = icmp eq i32 %i.qv, 0
  br i1 %.not145.i.i.i, label %bb.cc, label %.preheader.i.i

._crit_edge.i.i.i:                                ; preds = %bb.cc
  %i.qw = icmp eq i64 %i.qc, %wide.trip.count.i.i.i
  br i1 %i.qw, label %bb.cf, label %bb.cj

._crit_edge.thread.i.i.i:                         ; preds = %.preheader159.i.i.i
  %i.qx = sext i32 %.0115.i.i.i to i64
  %i.qy = icmp eq i64 %i.qc, %i.qx
  br i1 %i.qy, label %bb.cf, label %.preheader.i.i

bb.cf:                                            ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i
  %i.qz = load i64, ptr %i.ao, align 8, !tbaa !185 ; 2 uses
  %i.ra = add i64 %i.qz, %.163.i.i                ; 2 uses
  %i.rb = load i64, ptr %i.ap, align 8, !tbaa !185 ; 2 uses
  br i1 %.not134.i.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rc = icmp eq i64 %i.ra, %i.rb
  br i1 %i.rc, label %bb.ci, label %bb.cn

bb.ch:                                            ; preds = %bb.cf
  %.not138.i.i.i = icmp ugt i64 %i.ra, %i.rb
  br i1 %.not138.i.i.i, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.rd = load ptr, ptr %i.aq, align 8, !tbaa !184
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 %.163.i.i
  %i.rf = load ptr, ptr %i.an, align 8, !tbaa !184
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.re, ptr %i.rf, i64 %i.qz)
  %.not139.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %.not139.i.i.i, label %find_pos.exit.i, label %bb.cn

bb.cj:                                            ; preds = %._crit_edge.i.i.i
  %i.rg = load ptr, ptr %i.an, align 8, !tbaa !184 ; 7 uses
  %xtraiter576 = and i64 %wide.trip.count.i.i.i, 7 ; 3 uses
  %i.rh = icmp ult i32 %.0115.i.i.i, 8
  br i1 %i.rh, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.cj
  %unroll_iter580 = and i64 %wide.trip.count.i.i.i, 2147483640
  br label %bb.cl

.preheader158.i.i.i.unr-lcssa:                    ; preds = %bb.cl
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  br i1 %lcmp.mod577.not, label %.preheader158.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader158.i.i.i.unr-lcssa, %bb.cj
  %indvars.iv202.i.i.i.epil.init = phi i64 [ 0, %bb.cj ], [ %indvars.iv.next203.i.i.i.7, %.preheader158.i.i.i.unr-lcssa ]
  %.0110169.i.i.i.epil.init = phi ptr [ %i.rg, %bb.cj ], [ %i.ss, %.preheader158.i.i.i.unr-lcssa ]
  %lcmp.mod579 = icmp ne i64 %xtraiter576, 0
  call void @llvm.assume(i1 %lcmp.mod579)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.ck, %.epil.preheader
  %indvars.iv202.i.i.i.epil = phi i64 [ %indvars.iv202.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next203.i.i.i.epil, %bb.ck ] ; 2 uses
  %.0110169.i.i.i.epil = phi ptr [ %.0110169.i.i.i.epil.init, %.epil.preheader ], [ %i.rk, %bb.ck ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ck ]
  %i.ri = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i.epil
  %i.rj = load i64, ptr %i.ri, align 8, !tbaa !189
  %i.rk = getelementptr inbounds nuw i8, ptr %.0110169.i.i.i.epil, i64 %i.rj ; 2 uses
  %indvars.iv.next203.i.i.i.epil = add nuw nsw i64 %indvars.iv202.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter576
  br i1 %epil.iter.cmp.not, label %.preheader158.i.i.i, label %bb.ck, !llvm.loop !249

.preheader158.i.i.i:                              ; preds = %bb.ck, %.preheader158.i.i.i.unr-lcssa
  %.lcssa497 = phi ptr [ %i.ss, %.preheader158.i.i.i.unr-lcssa ], [ %i.rk, %bb.ck ] ; 4 uses
  %i.rl = icmp ult ptr %i.rg, %.lcssa497
  br i1 %i.rl, label %.lr.ph173.preheader.i.i.i, label %._crit_edge174.i.i.i

.lr.ph173.preheader.i.i.i:                        ; preds = %.preheader158.i.i.i
  %i.rm = ptrtoaddr ptr %i.rg to i64
  %.pre220.i.i.i = ptrtoaddr ptr %.lcssa497 to i64
  %i.rn = sub i64 %.pre220.i.i.i, %i.rm
  %scevgep.i.i.i = getelementptr i8, ptr %i.rg, i64 %i.rn
  br label %.lr.ph173.i.i.i

bb.cl:                                            ; preds = %bb.cl, %.new
  %indvars.iv202.i.i.i = phi i64 [ 0, %.new ], [ %indvars.iv.next203.i.i.i.7, %bb.cl ] ; 9 uses
  %.0110169.i.i.i = phi ptr [ %i.rg, %.new ], [ %i.ss, %bb.cl ]
  %niter581 = phi i64 [ 0, %.new ], [ %niter581.next.7, %bb.cl ]
  %i.ro = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !189
  %i.rq = getelementptr inbounds nuw i8, ptr %.0110169.i.i.i, i64 %i.rp
  %i.rr = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !189
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rt
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 32
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !189
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rx
  %i.rz = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !189
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.sb
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 64
  %i.sf = load i64, ptr %i.se, align 8, !tbaa !189
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sf
  %i.sh = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 80
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !189
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sj
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 96
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !189
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sn
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %indvars.iv202.i.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 112
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !189
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sr ; 3 uses
  %indvars.iv.next203.i.i.i.7 = add nuw nsw i64 %indvars.iv202.i.i.i, 8 ; 2 uses
  %niter581.next.7 = add nuw i64 %niter581, 8     ; 2 uses
  %niter581.ncmp.7 = icmp eq i64 %niter581.next.7, %unroll_iter580
  br i1 %niter581.ncmp.7, label %.preheader158.i.i.i.unr-lcssa, label %bb.cl, !llvm.loop !251

.lr.ph173.i.i.i:                                  ; preds = %bb.cm, %.lr.ph173.preheader.i.i.i
  %.0111172.i.i.i = phi ptr [ %i.sy, %bb.cm ], [ %i.rg, %.lr.ph173.preheader.i.i.i ] ; 3 uses
  %i.st = load i8, ptr %.0111172.i.i.i, align 1, !tbaa !59
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.su
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !59
  %i.sx = and i8 %i.sw, 1
  %.not136.i.i.i = icmp eq i8 %i.sx, 0
  br i1 %.not136.i.i.i, label %._crit_edge174.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph173.i.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %.0111172.i.i.i, i64 1 ; 2 uses
  %exitcond208.not.i.i.i = icmp eq ptr %i.sy, %.lcssa497
  br i1 %exitcond208.not.i.i.i, label %._crit_edge174.i.i.i, label %.lr.ph173.i.i.i, !llvm.loop !252

._crit_edge174.i.i.i:                             ; preds = %bb.cm, %.lr.ph173.i.i.i, %.preheader158.i.i.i
  %.0111.lcssa.i.i.i = phi ptr [ %i.rg, %.preheader158.i.i.i ], [ %.0111172.i.i.i, %.lr.ph173.i.i.i ], [ %scevgep.i.i.i, %bb.cm ]
  %i.sz = icmp eq ptr %.0111.lcssa.i.i.i, %.lcssa497
  br i1 %i.sz, label %.preheader.i.i, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge174.i.i.i, %bb.ci, %bb.ch, %bb.cg
  %i.ta = load i32, ptr %i.ar, align 4, !tbaa !39
  %i.tb = icmp eq i32 %i.ta, 1
  br i1 %i.tb, label %bb.co, label %bb.cw

bb.co:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br i1 %i.ql, label %.lr.ph.i.i.i.i, label %.._crit_edge_crit_edge.i.i.i.i

.._crit_edge_crit_edge.i.i.i.i:                   ; preds = %bb.co
  %.pre.i.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !184
  br label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.co
  %i.tc = load ptr, ptr %.phi.trans.insert.i253.i, align 8, !tbaa !181
  %i.td = load ptr, ptr %i.am, align 8, !tbaa !181
  %i.te = load ptr, ptr %i.aq, align 8, !tbaa !184
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 %.163.i.i
  %i.tg = load ptr, ptr %i.an, align 8, !tbaa !184 ; 2 uses
  %wide.trip.count.i.i.i.i = zext nneg i32 %.0115.i.i.i to i64 ; 2 uses
  %invariant.gep.i.i.i.i = getelementptr [16 x i8], ptr %i.td, i64 %i.qd
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cu, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.cu ] ; 3 uses
  %.04775.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.vf, %bb.cu ] ; 2 uses
  %.04874.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.vg, %bb.cu ] ; 2 uses
  %i.th = getelementptr inbounds nuw [16 x i8], ptr %i.tc, i64 %indvars.iv.i.i.i.i
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !189 ; 3 uses
  %gep.i.i.i.i = getelementptr [16 x i8], ptr %invariant.gep.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.tj = load i64, ptr %gep.i.i.i.i, align 8, !tbaa !189 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.04874.i.i.i.i ; 5 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tg, i64 %.04775.i.i.i.i ; 5 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 %i.tj ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.ti ; 2 uses
  %.not81.i.i.i.i.i = icmp eq i64 %i.tj, 0
  br i1 %.not81.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cp, %.critedge2.i.i.i.i.i
  %.04458.i.i.i.i.i = phi ptr [ %i.to, %.critedge2.i.i.i.i.i ], [ %i.tm, %bb.cp ] ; 2 uses
  %i.to = getelementptr inbounds i8, ptr %.04458.i.i.i.i.i, i64 -1 ; 4 uses
  %i.tp = load i8, ptr %i.to, align 1, !tbaa !59
  switch i8 %i.tp, label %.critedge.i.i.i.i.i [
    i8 13, label %.critedge2.i.i.i.i.i
    i8 10, label %.critedge2.i.i.i.i.i
  ]

.critedge2.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.tq = icmp ult ptr %i.tk, %i.to
  br i1 %i.tq, label %.lr.ph.i.i.i.i.i, label %.critedge.i.i.i.i.i, !llvm.loop !253

.critedge.i.i.i.i.i:                              ; preds = %.critedge2.i.i.i.i.i, %.lr.ph.i.i.i.i.i, %bb.cp
  %.044.lcssa.i.i.i.i.i = phi ptr [ %i.tm, %bb.cp ], [ %i.to, %.critedge2.i.i.i.i.i ], [ %.04458.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.044.lcssa83.i.i.i.i.i = ptrtoaddr ptr %.044.lcssa.i.i.i.i.i to i64
  %.not82.i.i.i.i.i = icmp eq i64 %i.ti, 0
  br i1 %.not82.i.i.i.i.i, label %.critedge4.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i

.lr.ph62.i.i.i.i.i:                               ; preds = %.critedge.i.i.i.i.i, %.critedge6.i.i.i.i.i
  %.061.i.i.i.i.i = phi ptr [ %i.tr, %.critedge6.i.i.i.i.i ], [ %i.tn, %.critedge.i.i.i.i.i ] ; 2 uses
  %i.tr = getelementptr inbounds i8, ptr %.061.i.i.i.i.i, i64 -1 ; 4 uses
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !59
  switch i8 %i.ts, label %.critedge4.i.i.i.i.i [
    i8 13, label %.critedge6.i.i.i.i.i
    i8 10, label %.critedge6.i.i.i.i.i
  ]

.critedge6.i.i.i.i.i:                             ; preds = %.lr.ph62.i.i.i.i.i, %.lr.ph62.i.i.i.i.i
  %i.tt = icmp ult ptr %i.tl, %i.tr
  br i1 %i.tt, label %.lr.ph62.i.i.i.i.i, label %.critedge4.i.i.i.i.i, !llvm.loop !254

.critedge4.i.i.i.i.i:                             ; preds = %.critedge6.i.i.i.i.i, %.lr.ph62.i.i.i.i.i, %.critedge.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.tn, %.critedge.i.i.i.i.i ], [ %i.tr, %.critedge6.i.i.i.i.i ], [ %.061.i.i.i.i.i, %.lr.ph62.i.i.i.i.i ] ; 5 uses
  %.0.lcssa86.i.i.i.i.i = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i to i64
  %i.tu = icmp ult ptr %i.tk, %.044.lcssa.i.i.i.i.i
  %i.tv = icmp ult ptr %i.tl, %.0.lcssa.i.i.i.i.i
  %i.tw = select i1 %i.tu, i1 %i.tv, i1 false
  br i1 %i.tw, label %.lr.ph78.i.i.i.i.i, label %fuzzy_matchlines.exit.i.i.i.i

.lr.ph78.i.i.i.i.i:                               ; preds = %.critedge4.i.i.i.i.i, %.critedge10.i.i.i.i.i
  %.04677.i.i.i.i.i = phi ptr [ %.2.i.i.i.i.i, %.critedge10.i.i.i.i.i ], [ %i.tl, %.critedge4.i.i.i.i.i ] ; 8 uses
  %.04776.i.i.i.i.i = phi ptr [ %.249.i.i.i.i.i, %.critedge10.i.i.i.i.i ], [ %i.tk, %.critedge4.i.i.i.i.i ] ; 7 uses
  %.0467788.i.i.i.i.i = ptrtoaddr ptr %.04677.i.i.i.i.i to i64
  %.0477684.i.i.i.i.i = ptrtoaddr ptr %.04776.i.i.i.i.i to i64
  %i.tx = load i8, ptr %.04776.i.i.i.i.i, align 1, !tbaa !59 ; 2 uses
  %i.ty = zext i8 %i.tx to i64
  %i.tz = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ty
  %i.ua = load i8, ptr %i.tz, align 1, !tbaa !59
  %i.ub = and i8 %i.ua, 1
  %.not.i.i.i.i.i = icmp eq i8 %i.ub, 0
  br i1 %.not.i.i.i.i.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %.lr.ph78.i.i.i.i.i
  %i.uc = load i8, ptr %.04677.i.i.i.i.i, align 1, !tbaa !59
  %i.ud = zext i8 %i.uc to i64
  %i.ue = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ud
  %i.uf = load i8, ptr %i.ue, align 1, !tbaa !59
  %i.ug = and i8 %i.uf, 1
  %.not53.i.i.i.i.i = icmp eq i8 %i.ug, 0
  br i1 %.not53.i.i.i.i.i, label %.critedge88.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.cq
  %i.uh = icmp ult ptr %.04776.i.i.i.i.i, %.044.lcssa.i.i.i.i.i
  br i1 %i.uh, label %.lr.ph67.preheader.i.i.i.i.i, label %.critedge8.i.i.i.i.i

.lr.ph67.preheader.i.i.i.i.i:                     ; preds = %.preheader.i.i.i.i.i
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.04776.i.i.i.i.i, i64 %.044.lcssa83.i.i.i.i.i
  %i.ui = sub i64 0, %.0477684.i.i.i.i.i
  %scevgep85.i.i.i.i.i = getelementptr i8, ptr %scevgep.i.i.i.i.i, i64 %i.ui ; 2 uses
  br label %.lr.ph67.i.i.i.i.i

.lr.ph67.i.i.i.i.i:                               ; preds = %bb.cr, %.lr.ph67.preheader.i.i.i.i.i
  %.14866.i.i.i.i.i = phi ptr [ %i.uo, %bb.cr ], [ %.04776.i.i.i.i.i, %.lr.ph67.preheader.i.i.i.i.i ] ; 3 uses
  %i.uj = load i8, ptr %.14866.i.i.i.i.i, align 1, !tbaa !59
  %i.uk = zext i8 %i.uj to i64
  %i.ul = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.uk
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !59
  %i.un = and i8 %i.um, 1
  %.not54.i.i.i.i.i = icmp eq i8 %i.un, 0
  br i1 %.not54.i.i.i.i.i, label %.critedge8.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph67.i.i.i.i.i
  %i.uo = getelementptr inbounds nuw i8, ptr %.14866.i.i.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq ptr %i.uo, %scevgep85.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.critedge8.i.i.i.i.i, label %.lr.ph67.i.i.i.i.i, !llvm.loop !255

.critedge8.i.i.i.i.i:                             ; preds = %bb.cr, %.lr.ph67.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.148.lcssa.i.i.i.i.i = phi ptr [ %.04776.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %.14866.i.i.i.i.i, %.lr.ph67.i.i.i.i.i ], [ %scevgep85.i.i.i.i.i, %bb.cr ] ; 3 uses
  %i.up = icmp ult ptr %.04677.i.i.i.i.i, %.0.lcssa.i.i.i.i.i
  br i1 %i.up, label %.lr.ph72.preheader.i.i.i.i.i, label %.critedge10.i.i.i.i.i

.lr.ph72.preheader.i.i.i.i.i:                     ; preds = %.critedge8.i.i.i.i.i
  %scevgep87.i.i.i.i.i = getelementptr i8, ptr %.04677.i.i.i.i.i, i64 %.0.lcssa86.i.i.i.i.i
  %i.uq = sub i64 0, %.0467788.i.i.i.i.i
  %scevgep89.i.i.i.i.i = getelementptr i8, ptr %scevgep87.i.i.i.i.i, i64 %i.uq ; 2 uses
  br label %.lr.ph72.i.i.i.i.i

.lr.ph72.i.i.i.i.i:                               ; preds = %bb.cs, %.lr.ph72.preheader.i.i.i.i.i
  %.171.i.i.i.i.i = phi ptr [ %i.uw, %bb.cs ], [ %.04677.i.i.i.i.i, %.lr.ph72.preheader.i.i.i.i.i ] ; 3 uses
  %i.ur = load i8, ptr %.171.i.i.i.i.i, align 1, !tbaa !59
  %i.us = zext i8 %i.ur to i64
  %i.ut = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.us
  %i.uu = load i8, ptr %i.ut, align 1, !tbaa !59
  %i.uv = and i8 %i.uu, 1
  %.not55.i.i.i.i.i = icmp eq i8 %i.uv, 0
  br i1 %.not55.i.i.i.i.i, label %.critedge10.i.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph72.i.i.i.i.i
  %i.uw = getelementptr inbounds nuw i8, ptr %.171.i.i.i.i.i, i64 1 ; 2 uses
  %exitcond90.not.i.i.i.i.i = icmp eq ptr %i.uw, %scevgep89.i.i.i.i.i
  br i1 %exitcond90.not.i.i.i.i.i, label %.critedge10.i.i.i.i.i, label %.lr.ph72.i.i.i.i.i, !llvm.loop !256

bb.ct:                                            ; preds = %.lr.ph78.i.i.i.i.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.04776.i.i.i.i.i, i64 1
  %i.uy = getelementptr inbounds nuw i8, ptr %.04677.i.i.i.i.i, i64 1
  %i.uz = load i8, ptr %.04677.i.i.i.i.i, align 1, !tbaa !59
  %.not52.i.i.i.i.i = icmp eq i8 %i.tx, %i.uz
  br i1 %.not52.i.i.i.i.i, label %.critedge10.i.i.i.i.i, label %.critedge88.i.i

.critedge10.i.i.i.i.i:                            ; preds = %bb.cs, %.lr.ph72.i.i.i.i.i, %bb.ct, %.critedge8.i.i.i.i.i
  %.249.i.i.i.i.i = phi ptr [ %i.ux, %bb.ct ], [ %.148.lcssa.i.i.i.i.i, %.critedge8.i.i.i.i.i ], [ %.148.lcssa.i.i.i.i.i, %.lr.ph72.i.i.i.i.i ], [ %.148.lcssa.i.i.i.i.i, %bb.cs ] ; 3 uses
  %.2.i.i.i.i.i = phi ptr [ %i.uy, %bb.ct ], [ %.04677.i.i.i.i.i, %.critedge8.i.i.i.i.i ], [ %scevgep89.i.i.i.i.i, %bb.cs ], [ %.171.i.i.i.i.i, %.lr.ph72.i.i.i.i.i ] ; 3 uses
  %i.va = icmp ult ptr %.249.i.i.i.i.i, %.044.lcssa.i.i.i.i.i
  %i.vb = icmp ult ptr %.2.i.i.i.i.i, %.0.lcssa.i.i.i.i.i
  %i.vc = select i1 %i.va, i1 %i.vb, i1 false
  br i1 %i.vc, label %.lr.ph78.i.i.i.i.i, label %fuzzy_matchlines.exit.i.i.i.i, !llvm.loop !257

fuzzy_matchlines.exit.i.i.i.i:                    ; preds = %.critedge10.i.i.i.i.i, %.critedge4.i.i.i.i.i
  %.047.lcssa.i.i.i.i.i = phi ptr [ %i.tk, %.critedge4.i.i.i.i.i ], [ %.249.i.i.i.i.i, %.critedge10.i.i.i.i.i ]
  %.046.lcssa.i.i.i.i.i = phi ptr [ %i.tl, %.critedge4.i.i.i.i.i ], [ %.2.i.i.i.i.i, %.critedge10.i.i.i.i.i ]
  %i.vd = icmp ne ptr %.047.lcssa.i.i.i.i.i, %.044.lcssa.i.i.i.i.i
  %i.ve = icmp ne ptr %.046.lcssa.i.i.i.i.i, %.0.lcssa.i.i.i.i.i
  %.not64.i.i.i.i = select i1 %i.vd, i1 true, i1 %i.ve
  br i1 %.not64.i.i.i.i, label %.critedge88.i.i, label %bb.cu

bb.cu:                                            ; preds = %fuzzy_matchlines.exit.i.i.i.i
  %i.vf = add i64 %i.ti, %.04775.i.i.i.i          ; 2 uses
end_hunk_5
begin_hunk_6_@apply_binary_fragment:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %_.exit37, %bb.j
  %i.t = phi ptr [ %i.s, %bb.j ], [ %i.q, %_.exit37 ]
  %i.u = tail call i32 (ptr, ...) @error(ptr noundef %.0.i36, ptr noundef %i.t) #21 ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.g, %bb.f
  %.0 = phi ptr [ %i.c, %bb.f ], [ %i.n, %bb.g ]  ; 5 uses
  %i.v = load i64, ptr %.0, align 8, !tbaa !140
  switch i64 %i.v, label %bb.p [
    i64 1, label %bb.m
    i64 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !184
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !185
  %i.aa = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !144
  %i.ae = sext i32 %i.ad to i64
  %i.af = call ptr @patch_delta(ptr noundef %i.x, i64 noundef %i.z, ptr noundef %i.ab, i64 noundef %i.ae, ptr noundef nonnull %i.a) #21 ; 2 uses
  %.not34 = icmp eq ptr %i.af, null
  br i1 %.not34, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @strbuf_release(ptr noundef nonnull %1) #21
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !181
  call void @free(ptr noundef %i.ah) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.aj = add i64 %i.ai, 1
  call void @strbuf_attach(ptr noundef nonnull %1, ptr noundef nonnull %i.af, i64 noundef %i.ai, i64 noundef %i.aj) #21
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  tail call void @strbuf_release(ptr noundef nonnull %1) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !181
  tail call void @free(ptr noundef %i.al) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !66
  %i.ao = getelementptr inbounds nuw i8, ptr %.0, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !144
  %i.aq = sext i32 %i.ap to i64
  tail call void @strbuf_add(ptr noundef nonnull %1, ptr noundef %i.an, i64 noundef %i.aq) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.m, %bb.o, %bb.n, %bb.k, %bb.e
  %.024 = phi i32 [ -1, %bb.m ], [ 0, %bb.n ], [ -1, %bb.e ], [ 0, %bb.o ], [ -1, %bb.k ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.024
}

declare ptr @patch_delta(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ws_blank_line(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ws_fix_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @update_pre_post_images(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.image, align 8              ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  call void @strbuf_release(ptr noundef nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  call void @free(ptr noundef %i.b) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) @__const.image_init.empty, i64 48, i1 false)
  %i.c = add i64 %3, 1
  call void @strbuf_attach(ptr noundef nonnull %4, ptr noundef %2, i64 noundef %3, i64 noundef %i.c) #21
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !184  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !185  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g ; 2 uses
  %.not28.i = icmp eq i64 %i.g, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  br i1 %.not28.i, label %.image_prepare.exit_crit_edge, label %.preheader.i.preheader

.image_prepare.exit_crit_edge:                    ; preds = %bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !187
  br label %image_prepare.exit

.preheader.i.preheader:                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %image_add_line.exit
  %.02327.i = phi ptr [ %spec.select.i, %image_add_line.exit ], [ %i.e, %.preheader.i.preheader ] ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  %.026.i = phi ptr [ %.02327.i, %.preheader.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.j = load i8, ptr %.026.i, align 1, !tbaa !59
  %.not25.i = icmp eq i8 %i.j, 10                 ; 3 uses
  br i1 %.not25.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.026.i, i64 1 ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.h
  br i1 %i.l, label %bb.b, label %.critedge.i, !llvm.loop !186

.critedge.i:                                      ; preds = %bb.c, %bb.b
  %.0.lcssa.i = phi ptr [ %i.k, %bb.c ], [ %.026.i, %bb.b ] ; 2 uses
  %.0.lcssa.i125 = ptrtoaddr ptr %.0.lcssa.i to i64
  %spec.select.idx.i.neg = sext i1 %.not25.i to i64
  %spec.select.idx.i = zext i1 %.not25.i to i64
  %spec.select.i = getelementptr i8, ptr %.0.lcssa.i, i64 %spec.select.idx.i ; 4 uses
  %i.m = ptrtoint ptr %spec.select.i to i64
  %i.n = ptrtoint ptr %.02327.i to i64            ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = load i64, ptr %.phi.trans.insert, align 8, !tbaa !187 ; 2 uses
  %i.q = add i64 %i.p, 1                          ; 2 uses
  %i.r = load i64, ptr %i.i, align 8, !tbaa !188  ; 2 uses
  %i.s = icmp ugt i64 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.critedge.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !181
  br label %bb.f

bb.d:                                             ; preds = %.critedge.i
  %i.t = mul i64 %i.r, 3
  %i.u = add i64 %i.t, 48
  %i.v = lshr i64 %i.u, 1
  %..i = call i64 @llvm.umax.i64(i64 %i.v, i64 %i.q) ; 4 uses
  store i64 %..i, ptr %i.i, align 8, !tbaa !188
  %i.w = icmp ugt i64 %..i, 1152921504606846975
  br i1 %i.w, label %bb.e, label %st_mult.exit.i

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @die(ptr noundef nonnull @.str.204, i64 noundef 16, i64 noundef %..i) #25
  unreachable

st_mult.exit.i:                                   ; preds = %bb.d
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.y = shl nuw i64 %..i, 4
  %i.z = call ptr @xrealloc(ptr noundef %i.x, i64 noundef %i.y) #21 ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !181
  %.pre23.i = load i64, ptr %.phi.trans.insert, align 8, !tbaa !187
  br label %bb.f

bb.f:                                             ; preds = %st_mult.exit.i, %._crit_edge.i
  %i.aa = phi i64 [ %i.p, %._crit_edge.i ], [ %.pre23.i, %st_mult.exit.i ]
  %i.ab = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.z, %st_mult.exit.i ]
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aa ; 2 uses
  store i64 %i.o, ptr %i.ac, align 8, !tbaa !189
  %.not11.i.i = icmp eq ptr %spec.select.i, %.02327.i
  br i1 %.not11.i.i, label %image_add_line.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.ad = xor i64 %i.n, -1
  %i.ae = add i64 %i.ad, %.0.lcssa.i125
  %xtraiter = and i64 %i.o, 1
  %i.af = icmp eq i64 %i.ae, %spec.select.idx.i.neg
  br i1 %i.af, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.o, -2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.010.i.i = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %.1.i.i.1, %.lr.ph.i.i ] ; 2 uses
  %.089.i.i = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.az, %.lr.ph.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.02327.i, i64 %.089.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !59  ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !59
  %i.al = and i8 %i.ak, 1
  %.not.i.i = icmp eq i8 %i.al, 0
  %i.am = mul i32 %.010.i.i, 3
  %i.an = zext i8 %i.ah to i32
  %i.ao = add i32 %i.am, %i.an
  %.1.i.i = select i1 %.not.i.i, i32 %i.ao, i32 %.010.i.i ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02327.i, i64 %.089.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !59  ; 2 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !59
  %i.av = and i8 %i.au, 1
  %.not.i.i.1 = icmp eq i8 %i.av, 0
  %i.aw = mul i32 %.1.i.i, 3
  %i.ax = zext i8 %i.ar to i32
  %i.ay = add i32 %i.aw, %i.ax
  %.1.i.i.1 = select i1 %.not.i.i.1, i32 %i.ay, i32 %.1.i.i ; 3 uses
  %i.az = add nuw i64 %.089.i.i, 2                ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %hash_line.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !191

hash_line.exit.loopexit.i.unr-lcssa:              ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %hash_line.exit.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %hash_line.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i.preheader
  %.010.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %.1.i.i.1, %hash_line.exit.loopexit.i.unr-lcssa ] ; 2 uses
  %.089.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.az, %hash_line.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod127 = trunc i64 %i.o to i1
  call void @llvm.assume(i1 %lcmp.mod127)
  %i.ba = getelementptr inbounds nuw i8, ptr %.02327.i, i64 %.089.i.i.epil.init
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !59  ; 2 uses
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !59
  %i.bf = and i8 %i.be, 1
  %.not.i.i.epil = icmp eq i8 %i.bf, 0
  %i.bg = mul i32 %.010.i.i.epil.init, 3
  %i.bh = zext i8 %i.bb to i32
  %i.bi = add i32 %i.bg, %i.bh
  %.1.i.i.epil = select i1 %.not.i.i.epil, i32 %i.bi, i32 %.010.i.i.epil.init
  br label %hash_line.exit.loopexit.i

hash_line.exit.loopexit.i:                        ; preds = %hash_line.exit.loopexit.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %hash_line.exit.loopexit.i.unr-lcssa ], [ %.1.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.bj = and i32 %.1.i.i.lcssa, 16777215
  br label %image_add_line.exit

image_add_line.exit:                              ; preds = %bb.f, %hash_line.exit.loopexit.i
  %.0.lcssa.i.i = phi i32 [ 0, %bb.f ], [ %i.bj, %hash_line.exit.loopexit.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = and i32 %i.bl, -16777216
  %i.bn = or disjoint i32 %i.bm, %.0.lcssa.i.i
  store i32 %i.bn, ptr %i.bk, align 8
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.bp = load i64, ptr %.phi.trans.insert, align 8, !tbaa !187
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8
  %i.bt = and i32 %i.bs, 16777215
  store i32 %i.bt, ptr %i.br, align 8
  %i.bu = load i64, ptr %.phi.trans.insert, align 8, !tbaa !187
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bv, ptr %.phi.trans.insert, align 8, !tbaa !187
  %i.bw = icmp ult ptr %spec.select.i, %i.h
  br i1 %i.bw, label %.preheader.i, label %image_prepare.exit, !llvm.loop !192

image_prepare.exit:                               ; preds = %image_add_line.exit, %.image_prepare.exit_crit_edge
  %i.bx = phi i64 [ %.pre, %.image_prepare.exit_crit_edge ], [ %i.bv, %image_add_line.exit ]
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.not82 = icmp eq i64 %i.bx, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %image_prepare.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !181
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ca, i64 %indvars.iv
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = and i32 %i.cd, -16777216
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cf, i64 %indvars.iv
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = and i32 %i.ci, 16777215
  %i.ck = or disjoint i32 %i.cj, %i.ce
  store i32 %i.ck, ptr %i.ch, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load i64, ptr %i.by, align 8, !tbaa !187
  %i.cm = icmp ugt i64 %i.cl, %indvars.iv.next
  br i1 %i.cm, label %bb.g, label %._crit_edge, !llvm.loop !278

._crit_edge:                                      ; preds = %bb.g, %image_prepare.exit
  call void @strbuf_release(ptr noundef nonnull %0) #21
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !181
  call void @free(ptr noundef %i.co) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !279
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !187 ; 2 uses
  %.not83 = icmp eq i64 %i.cq, 0
  br i1 %.not83, label %._crit_edge79, label %.lr.ph78

.lr.ph78:                                         ; preds = %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !184
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre98 = load ptr, ptr %i.ct, align 8, !tbaa !181
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph78, %bb.m
  %i.cv = phi i64 [ %i.cq, %.lr.ph78 ], [ %i.dy, %bb.m ] ; 2 uses
  %i.cw = phi ptr [ %.pre98, %.lr.ph78 ], [ %i.dz, %bb.m ] ; 3 uses
  %indvars.iv95 = phi i64 [ 0, %.lr.ph78 ], [ %indvars.iv.next96, %bb.m ] ; 3 uses
  %.076 = phi ptr [ %i.cs, %.lr.ph78 ], [ %.2, %bb.m ] ; 3 uses
  %.04775 = phi i32 [ 0, %.lr.ph78 ], [ %.148, %bb.m ] ; 3 uses
  %.04974 = phi i32 [ 0, %.lr.ph78 ], [ %.251, %bb.m ] ; 3 uses
  %.05472 = phi i64 [ 0, %.lr.ph78 ], [ %.155, %bb.m ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv95 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = and i32 %i.cz, 16777216
  %.not = icmp eq i32 %i.da, 0
  br i1 %.not, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %i.db = load i64, ptr %i.cu, align 8, !tbaa !187 ; 2 uses
  %i.dc = sext i32 %.04974 to i64                 ; 2 uses
  %i.dd = icmp ugt i64 %i.db, %i.dc
  br i1 %i.dd, label %.lr.ph70, label %.critedge

.lr.ph70:                                         ; preds = %.preheader
  %i.de = load ptr, ptr %i.cn, align 8, !tbaa !181
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.df = load i64, ptr %i.cx, align 8, !tbaa !189
  %i.dg = add i64 %i.df, %.05472
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph70, %bb.k
  %indvars.iv92 = phi i64 [ %i.dc, %.lr.ph70 ], [ %indvars.iv.next93, %bb.k ] ; 3 uses
  %.169 = phi ptr [ %.076, %.lr.ph70 ], [ %i.dm, %bb.k ] ; 3 uses
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.de, i64 %indvars.iv92 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = and i32 %i.dj, 16777216
  %.not61 = icmp eq i32 %i.dk, 0
  br i1 %.not61, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dl = load i64, ptr %i.dh, align 8, !tbaa !189
  %i.dm = getelementptr inbounds nuw i8, ptr %.169, i64 %i.dl ; 2 uses
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 3 uses
  %i.dn = icmp ugt i64 %i.db, %indvars.iv.next93
  br i1 %i.dn, label %bb.j, label %.critedge.loopexit, !llvm.loop !281

.critedge.loopexit:                               ; preds = %bb.k
  %i.do = trunc nsw i64 %indvars.iv.next93 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader
  %.150.lcssa = phi i32 [ %.04974, %.preheader ], [ %i.do, %.critedge.loopexit ]
  %.1.lcssa = phi ptr [ %.076, %.preheader ], [ %i.dm, %.critedge.loopexit ]
  %i.dp = add nsw i32 %.04775, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.dq = trunc nsw i64 %indvars.iv92 to i32
  %i.dr = load i64, ptr %i.dh, align 8, !tbaa !189 ; 4 uses
  %i.ds = load i64, ptr %i.cx, align 8, !tbaa !189
  call void @strbuf_splice(ptr noundef nonnull %1, i64 noundef %.05472, i64 noundef %i.ds, ptr noundef %.169, i64 noundef %i.dr) #21
  %i.dt = add i64 %i.dr, %.05472
  %i.du = getelementptr inbounds nuw i8, ptr %.169, i64 %i.dr
  %i.dv = load ptr, ptr %i.ct, align 8, !tbaa !181 ; 2 uses
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %indvars.iv95
  store i64 %i.dr, ptr %i.dw, align 8, !tbaa !189
  %i.dx = add nsw i32 %i.dq, 1
  %.pre99 = load i64, ptr %i.cp, align 8, !tbaa !187
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge, %bb.i
  %i.dy = phi i64 [ %i.cv, %.critedge ], [ %.pre99, %bb.l ], [ %i.cv, %bb.i ] ; 3 uses
  %i.dz = phi ptr [ %i.cw, %.critedge ], [ %i.dv, %bb.l ], [ %i.cw, %bb.i ]
  %.155 = phi i64 [ %.05472, %.critedge ], [ %i.dt, %bb.l ], [ %i.dg, %bb.i ]
  %.251 = phi i32 [ %.150.lcssa, %.critedge ], [ %i.dx, %bb.l ], [ %.04974, %bb.i ]
  %.148 = phi i32 [ %i.dp, %.critedge ], [ %.04775, %bb.l ], [ %.04775, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.1.lcssa, %.critedge ], [ %i.du, %bb.l ], [ %.076, %bb.i ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.ea = icmp ugt i64 %i.dy, %indvars.iv.next96
  br i1 %i.ea, label %bb.h, label %._crit_edge79.loopexit, !llvm.loop !282

._crit_edge79.loopexit:                           ; preds = %bb.m
  %i.eb = sext i32 %.148 to i64
  %i.ec = sub nsw i64 %i.dy, %i.eb
  br label %._crit_edge79

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit, %._crit_edge
  %i.ed = phi i64 [ 0, %._crit_edge ], [ %i.ec, %._crit_edge79.loopexit ]
  store i64 %i.ed, ptr %i.cp, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void
}

declare void @strbuf_splice(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #18

end_hunk_6
