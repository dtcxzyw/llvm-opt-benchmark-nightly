inline.NumInlined: 199
inline.NumDeleted: 47
begin_hunk_0
%struct.Dl_info = type { ptr, ptr, ptr, ptr }
%struct.DIE = type { i64, i32, i32 }
%struct.DebugInfoValue = type { %union.anon, i64, i64, i64, i64, i32 }
%union.anon = type { ptr }
%struct.line_info = type { ptr, ptr, ptr, i32, i64, i64, ptr, ptr }
%struct.LineNumberProgramHeader = type { i64, i16, i8, i64, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.addr_header = type { ptr, i64, i8, i8 }
%struct.DebugInfoReader = type { ptr, ptr, i8, ptr, i64, i64, i64, i64, ptr, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, [256 x ptr] }

@binary_filename = internal global [4097 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"lseek: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mmap: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c".note.gnu.build-id\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c".gnu_debuglink\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c".debug_abbrev\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c".debug_line\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c".debug_ranges\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c".debug_str_offsets\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c".debug_addr\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c".debug_rnglists\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c".debug_str\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c".debug_line_str\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"unknown address_size:%d\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"unknown format:%d\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"%d: unsupported form: %#lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"%d: Abbrev Number %ld not found\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Unexpected file number %d in %s at %tx\0A\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Unexpected directory number %lu in %s\0A\00", align 1
@follow_debuglink.global_debug_dir = internal unnamed_addr constant [15 x i8] c"/usr/lib/debug\00", align 1
@follow_debuglink_build_id.global_debug_dir = internal unnamed_addr constant [26 x i8] c"/usr/lib/debug/.build-id/\00", align 16
@follow_debuglink_build_id.debug_suffix = internal constant [7 x i8] c".debug\00", align 1
@follow_debuglink_build_id.tbl = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.25 = private unnamed_addr constant [38 x i8] c"Unexpected size of .debug_line in %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Unsupported operation in %s\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"Unknown extended opcode: %d in %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"%s(%s) %s/%s:%d\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"%s(%s) %s:%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"[0x%lx]\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"%s(0x%lx) [0x%lx]\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"%s(%s) [0x%lx]\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"%s(%s+0x%lx) [0x%lx]\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"%s(%s+0x%lx) [0x%lx] ???:%d\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"%s(%s+0x%lx) [0x%lx] %s/%s:%d\0A\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"%s(%s+0x%lx) [0x%lx] %s:%d\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_dump_backtrace_with_lines(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %struct.Dl_info, align 8            ; 9 uses
  %i.b = sext i32 %0 to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 64) #14 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.d = add i32 %0, 2
  %i.e = sext i32 %i.d to i64
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.e, i64 noundef 8) #14 ; 5 uses
  %i.g = tail call i64 @readlink(ptr noundef nonnull @.str.1, ptr noundef nonnull @binary_filename, i64 noundef 4096) #15 ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %main_exe_path.exit.thread, label %main_exe_path.exit

main_exe_path.exit:                               ; preds = %bb.a
  %i.i = getelementptr i8, ptr @binary_filename, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !14
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %main_exe_path.exit.thread, label %append_obj.exit

append_obj.exit:                                  ; preds = %main_exe_path.exit
  %i.j = add nuw i64 %i.g, 1                      ; 2 uses
  %i.k = alloca i8, i64 %i.j, align 16            ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.k, ptr noundef nonnull align 16 dereferenceable(1) @binary_filename, i64 noundef range(i64 2, -9223372036854775807) %i.j, i1 noundef false) #15
  %i.l = tail call noalias dereferenceable_or_null(272) ptr @calloc(i64 noundef 1, i64 noundef 272) #14 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !11
  store ptr %i.k, ptr %i.l, align 8, !tbaa !15
  %i.m = call fastcc i64 @fill_lines(i32 noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %i.a, ptr noundef %i.c, i32 noundef 0, ptr noundef %2) ; 2 uses
  %.not92 = icmp eq i64 %i.m, -1
  br i1 %.not92, label %main_exe_path.exit.thread, label %bb.b

bb.b:                                             ; preds = %append_obj.exit
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8, !tbaa !20
  br label %main_exe_path.exit.thread

main_exe_path.exit.thread:                        ; preds = %bb.a, %append_obj.exit, %bb.b, %main_exe_path.exit
  %i.o = icmp sgt i32 %0, 0                       ; 2 uses
  br i1 %i.o, label %.lr.ph120, label %._crit_edge124

.lr.ph120:                                        ; preds = %main_exe_path.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph120, %.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next, %.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.s = getelementptr [64 x i8], ptr %i.c, i64 %indvars.iv ; 6 uses
  %i.t = getelementptr i8, ptr %i.s, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !21
  %.not93 = icmp eq i32 %i.u, 0
  br i1 %.not93, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  %i.x = call i32 @dladdr(ptr noundef %i.w, ptr noundef nonnull %3) #15
  %.not94 = icmp eq i32 %i.x, 0
  br i1 %.not94, label %.thread, label %.preheader115

.preheader115:                                    ; preds = %bb.d
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not95117 = icmp eq ptr %i.y, null
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !24  ; 3 uses
  br i1 %.not95117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader115, %bb.i
  %i.z = phi ptr [ %i.ag, %bb.i ], [ %i.y, %.preheader115 ]
  %.080118 = phi ptr [ %i.af, %bb.i ], [ %i.f, %.preheader115 ]
  %i.aa = icmp eq ptr %i.z, %.pre
  br i1 %i.aa, label %bb.e, label %bb.i

bb.e:                                             ; preds = %.lr.ph
  %i.ab = load ptr, ptr %3, align 8, !tbaa !26    ; 2 uses
  %.not98 = icmp eq ptr %i.ab, null
  br i1 %.not98, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %.not99 = icmp eq ptr %i.ad, null
  br i1 %.not99, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %i.s, i64 48
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !29
  br label %.thread

bb.i:                                             ; preds = %.lr.ph
  %i.af = getelementptr i8, ptr %.080118, i64 8   ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20 ; 2 uses
  %.not95 = icmp eq ptr %i.ag, null
  br i1 %.not95, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.i, %.preheader115
  %.080.lcssa = phi ptr [ %i.f, %.preheader115 ], [ %i.af, %bb.i ]
  store ptr %.pre, ptr %.080.lcssa, align 8, !tbaa !20
  %i.ah = call noalias dereferenceable_or_null(272) ptr @calloc(i64 noundef 1, i64 noundef 272) #14 ; 4 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !11  ; 2 uses
  %.not.i105 = icmp eq ptr %i.ai, null
  br i1 %.not.i105, label %append_obj.exit106, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.aj = getelementptr i8, ptr %i.ai, i64 264
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !32
  br label %append_obj.exit106

append_obj.exit106:                               ; preds = %._crit_edge, %bb.j
  store ptr %i.ah, ptr %i.a, align 8, !tbaa !11
  %i.ak = ptrtoint ptr %.pre to i64
  %i.al = getelementptr i8, ptr %i.ah, i64 32
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !33
  %i.am = load ptr, ptr %3, align 8, !tbaa !26    ; 4 uses
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !15
  %.not96 = icmp eq ptr %i.am, null
  br i1 %.not96, label %bb.l, label %bb.k

bb.k:                                             ; preds = %append_obj.exit106
  %i.an = getelementptr i8, ptr %i.s, i64 16
  store ptr %i.am, ptr %i.an, align 8, !tbaa !27
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %append_obj.exit106
  %i.ao = load ptr, ptr %i.q, align 8, !tbaa !28  ; 2 uses
  %.not97 = icmp eq ptr %i.ao, null
  br i1 %.not97, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.s, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !29
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !34
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr i8, ptr %i.s, i64 40
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !35
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) @binary_filename, ptr noundef nonnull dereferenceable(1) %i.am, i64 noundef 4096) #15 ; 0 uses
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = call fastcc i64 @fill_lines(i32 noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %i.a, ptr noundef %i.c, i32 noundef %i.au, ptr noundef %2)
  %.fr = freeze i64 %i.av
  %i.aw = icmp eq i64 %.fr, -1
  br i1 %i.aw, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %.lr.ph123.preheader

.thread:                                          ; preds = %bb.h, %bb.n, %bb.g, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph123.preheader, label %bb.c, !llvm.loop !36

.lr.ph123.preheader:                              ; preds = %.thread, %bb.o
  br label %.lr.ph123

.lr.ph123:                                        ; preds = %.lr.ph123.backedge, %.lr.ph123.preheader
  %.1121 = phi i32 [ 0, %.lr.ph123.preheader ], [ %.1121.be, %.lr.ph123.backedge ] ; 3 uses
  %i.ax = sext i32 %.1121 to i64                  ; 2 uses
  %i.ay = getelementptr [64 x i8], ptr %i.c, i64 %i.ax ; 18 uses
  %i.az = getelementptr [8 x i8], ptr %1, i64 %i.ax
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 9 uses
  %i.bc = getelementptr i8, ptr %i.ay, i64 40
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !35 ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd                    ; 4 uses
  %.not.i.peel.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.peel.i, label %bb.ad, label %bb.p

bb.p:                                             ; preds = %.lr.ph123
  %i.bf = getelementptr i8, ptr %i.ay, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27 ; 7 uses
  %.not67.i.peel.i = icmp eq ptr %i.bg, null
  br i1 %.not67.i.peel.i, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr i8, ptr %i.ay, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !29 ; 6 uses
  %.not68.i.peel.i = icmp eq ptr %i.bi, null
  br i1 %.not68.i.peel.i, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not69.i.peel.i = icmp eq i64 %i.bd, 0
  br i1 %.not69.i.peel.i, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr i8, ptr %i.ay, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !21 ; 4 uses
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr i8, ptr %i.ay, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !37 ; 3 uses
  %.not70.i.peel.i = icmp eq ptr %i.bn, null
  br i1 %.not70.i.peel.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.ay, align 8, !tbaa !38 ; 3 uses
  %.not71.i.peel.i = icmp eq ptr %i.bo, null
  br i1 %.not71.i.peel.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %.not72.i.peel.i = icmp eq i8 %i.bp, 0
  br i1 %.not72.i.peel.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.35, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bi, i64 noundef %i.be, i64 noundef %i.bb, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bn, i32 noundef %i.bk) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.br = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bi, i64 noundef %i.be, i64 noundef %i.bb, ptr noundef nonnull %i.bn, i32 noundef %i.bk) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.y:                                             ; preds = %bb.t
  %i.bs = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bi, i64 noundef %i.be, i64 noundef %i.bb, i32 noundef %i.bk) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.z:                                             ; preds = %bb.s
  %i.bt = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bi, i64 noundef %i.be, i64 noundef %i.bb) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.aa:                                            ; preds = %bb.r
  %i.bu = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bi, i64 noundef %i.bb) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.ab:                                            ; preds = %bb.q
  %i.bv = getelementptr i8, ptr %i.ay, i64 32
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !40
  %i.bx = sub i64 %i.bb, %i.bw
  %i.by = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.bg, i64 noundef %i.bx, i64 noundef %i.bb) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.ac:                                            ; preds = %bb.p
  %i.bz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.30, i64 noundef %i.bb) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.ad:                                            ; preds = %.lr.ph123
  %i.ca = load ptr, ptr %i.ay, align 8, !tbaa !38 ; 3 uses
  %.not65.i.peel.i = icmp eq ptr %i.ca, null
  br i1 %.not65.i.peel.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %.not66.i.peel.i = icmp eq i8 %i.cb, 0
  br i1 %.not66.i.peel.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cc = getelementptr i8, ptr %i.ay, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !27
  %i.ce = getelementptr i8, ptr %i.ay, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  %i.cg = getelementptr i8, ptr %i.ay, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !37
  %i.ci = getelementptr i8, ptr %i.ay, i64 24
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !21
  %i.ck = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %i.cd, ptr noundef %i.cf, ptr noundef nonnull %i.ca, ptr noundef %i.ch, i32 noundef %i.cj) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  %i.cl = getelementptr i8, ptr %i.ay, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !27
  %i.cn = getelementptr i8, ptr %i.ay, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !29
  %i.cp = getelementptr i8, ptr %i.ay, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !37
  %i.cr = getelementptr i8, ptr %i.ay, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !21
  %i.ct = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %i.cm, ptr noundef %i.co, ptr noundef %i.cq, i32 noundef %i.cs) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.peel.i

print_line0.exit.peel.i:                          ; preds = %bb.ag, %bb.af, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w
  %i.cu = getelementptr i8, ptr %i.ay, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !41 ; 2 uses
  %.not.peel.i = icmp eq ptr %i.cv, null
  br i1 %.not.peel.i, label %print_line.exit, label %tailrecurse.peel.next.i

tailrecurse.peel.next.i:                          ; preds = %print_line0.exit.peel.i, %print_line0.exit.i
  %.tr.i = phi ptr [ %i.dr, %print_line0.exit.i ], [ %i.cv, %print_line0.exit.peel.i ] ; 10 uses
  %i.cw = load ptr, ptr %.tr.i, align 8, !tbaa !38 ; 3 uses
  %.not65.i.i = icmp eq ptr %i.cw, null
  br i1 %.not65.i.i, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %tailrecurse.peel.next.i
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %.not66.i.i = icmp eq i8 %i.cx, 0
  br i1 %.not66.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cy = getelementptr i8, ptr %.tr.i, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !27
  %i.da = getelementptr i8, ptr %.tr.i, i64 48
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !29
  %i.dc = getelementptr i8, ptr %.tr.i, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !37
  %i.de = getelementptr i8, ptr %.tr.i, i64 24
  %i.df = load i32, ptr %i.de, align 8, !tbaa !21
  %i.dg = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef %i.cz, ptr noundef %i.db, ptr noundef nonnull %i.cw, ptr noundef %i.dd, i32 noundef %i.df) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.i

bb.aj:                                            ; preds = %bb.ah, %tailrecurse.peel.next.i
  %i.dh = getelementptr i8, ptr %.tr.i, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr i8, ptr %.tr.i, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.dl = getelementptr i8, ptr %.tr.i, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37
  %i.dn = getelementptr i8, ptr %.tr.i, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !21
  %i.dp = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %2, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef %i.di, ptr noundef %i.dk, ptr noundef %i.dm, i32 noundef %i.do) #15, !inline_history !39 ; 0 uses
  br label %print_line0.exit.i

print_line0.exit.i:                               ; preds = %bb.aj, %bb.ai
  %i.dq = getelementptr i8, ptr %.tr.i, i64 56
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !41 ; 2 uses
  %.not.i107 = icmp eq ptr %i.dr, null
  br i1 %.not.i107, label %print_line.exit, label %tailrecurse.peel.next.i, !llvm.loop !42

print_line.exit:                                  ; preds = %print_line0.exit.i, %print_line0.exit.peel.i
  %i.ds = getelementptr i8, ptr %i.ay, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !29 ; 2 uses
  %.not100 = icmp eq ptr %i.dt, null
  br i1 %.not100, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %print_line.exit
  %i.du = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str, ptr noundef nonnull dereferenceable(1) %i.dt) #16
  %i.dv = icmp ne i32 %i.du, 0
  %i.dw = add i32 %.1121, 1                       ; 2 uses
  %i.dx = icmp slt i32 %i.dw, %0
  %or.cond = and i1 %i.dv, %i.dx
  br i1 %or.cond, label %.lr.ph123.backedge, label %._crit_edge124

bb.al:                                            ; preds = %print_line.exit
  %.old = add i32 %.1121, 1                       ; 2 uses
  %.old137 = icmp slt i32 %.old, %0
  br i1 %.old137, label %.lr.ph123.backedge, label %._crit_edge124

.lr.ph123.backedge:                               ; preds = %bb.al, %bb.ak
  %.1121.be = phi i32 [ %.old, %bb.al ], [ %i.dw, %bb.ak ]
  br label %.lr.ph123, !llvm.loop !44
end_hunk_0
begin_hunk_1_@fill_lines:bb.a
  br i1 %i.vp, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i114.i.i

.lr.ph.i114.i.i:                                  ; preds = %uleb128.exit112.i.i, %.lr.ph.i114.i.i
  %i.vq = phi ptr [ %i.vr, %.lr.ph.i114.i.i ], [ %i.vn, %uleb128.exit112.i.i ] ; 2 uses
  %i.vr = getelementptr i8, ptr %i.vq, i64 1      ; 2 uses
  %i.vs = load i8, ptr %i.vq, align 1, !tbaa !14
  %i.vt = icmp sgt i8 %i.vs, -1
  br i1 %i.vt, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i114.i.i

bb.cx:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.vu = getelementptr i8, ptr %.07.i.i285, i64 2 ; 2 uses
  %i.vv = load i8, ptr %i.ux, align 1, !tbaa !14
  %i.vw = icmp sgt i8 %i.vv, -1
  br i1 %i.vw, label %uleb128.exit134.i.i, label %.lr.ph.i125.i.i

.lr.ph.i125.i.i:                                  ; preds = %bb.cx, %.lr.ph.i125.i.i
  %i.vx = phi ptr [ %i.vy, %.lr.ph.i125.i.i ], [ %i.vu, %bb.cx ] ; 2 uses
  %i.vy = getelementptr i8, ptr %i.vx, i64 1      ; 2 uses
  %i.vz = load i8, ptr %i.vx, align 1, !tbaa !14
  %i.wa = icmp sgt i8 %i.vz, -1
  br i1 %i.wa, label %uleb128.exit134.i.i, label %.lr.ph.i125.i.i

uleb128.exit134.i.i:                              ; preds = %.lr.ph.i125.i.i, %bb.cx
  %.411.i.i = phi ptr [ %i.vu, %bb.cx ], [ %i.vy, %.lr.ph.i125.i.i ] ; 2 uses
  %i.wb = getelementptr i8, ptr %.411.i.i, i64 1  ; 2 uses
  %i.wc = load i8, ptr %.411.i.i, align 1, !tbaa !14
  %i.wd = icmp sgt i8 %i.wc, -1
  br i1 %i.wd, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i136.i.i

.lr.ph.i136.i.i:                                  ; preds = %uleb128.exit134.i.i, %.lr.ph.i136.i.i
  %i.we = phi ptr [ %i.wf, %.lr.ph.i136.i.i ], [ %i.wb, %uleb128.exit134.i.i ] ; 2 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 1      ; 2 uses
  %i.wg = load i8, ptr %i.we, align 1, !tbaa !14
  %i.wh = icmp sgt i8 %i.wg, -1
  br i1 %i.wh, label %read_dw_form_addr.exit.thread.i.i.backedge, label %.lr.ph.i136.i.i

bb.cy:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  br i1 %.078.i.i, label %bb.cz, label %read_dw_form_addr.exit.thread.i.i.backedge

bb.cz:                                            ; preds = %bb.cy
  %i.wi = getelementptr i8, ptr %.07.i.i285, i64 2 ; 2 uses
  %i.wj = load i8, ptr %i.ux, align 1, !tbaa !14  ; 3 uses
  %i.wk = icmp sgt i8 %i.wj, -1
  br i1 %i.wk, label %uleb128.exit156.i.i, label %.lr.ph.i147.i.i

.lr.ph.i147.i.i:                                  ; preds = %bb.cz, %.lr.ph.i147.i.i
  %i.wl = phi i8 [ %i.wt, %.lr.ph.i147.i.i ], [ %i.wj, %bb.cz ]
  %i.wm = phi ptr [ %i.ws, %.lr.ph.i147.i.i ], [ %i.wi, %bb.cz ] ; 2 uses
  %.01020.i148.i.i = phi i64 [ %.1.i150.i.i, %.lr.ph.i147.i.i ], [ 0, %bb.cz ]
  %.01119.i149.i.i = phi i32 [ %i.wr, %.lr.ph.i147.i.i ], [ 0, %bb.cz ] ; 2 uses
  %i.wn = and i8 %i.wl, 127
  %i.wo = zext nneg i8 %i.wn to i32
  %i.wp = shl i32 %i.wo, %.01119.i149.i.i
  %i.wq = sext i32 %i.wp to i64
  %i.wr = add i32 %.01119.i149.i.i, 7             ; 2 uses
  %.1.i150.i.i = add i64 %.01020.i148.i.i, %i.wq  ; 2 uses
  %i.ws = getelementptr i8, ptr %i.wm, i64 1      ; 2 uses
  %i.wt = load i8, ptr %i.wm, align 1, !tbaa !14  ; 3 uses
  %i.wu = icmp sgt i8 %i.wt, -1
  br i1 %i.wu, label %._crit_edge.loopexit.i151.i.i, label %.lr.ph.i147.i.i

._crit_edge.loopexit.i151.i.i:                    ; preds = %.lr.ph.i147.i.i
  %i.wv = zext nneg i32 %i.wr to i64
  br label %uleb128.exit156.i.i

uleb128.exit156.i.i:                              ; preds = %._crit_edge.loopexit.i151.i.i, %bb.cz
  %.6.i.i = phi ptr [ %i.wi, %bb.cz ], [ %i.ws, %._crit_edge.loopexit.i151.i.i ] ; 2 uses
  %.011.lcssa.i152.i.i = phi i64 [ 0, %bb.cz ], [ %i.wv, %._crit_edge.loopexit.i151.i.i ]
  %.010.lcssa.i153.i.i = phi i64 [ 0, %bb.cz ], [ %.1.i150.i.i, %._crit_edge.loopexit.i151.i.i ]
  %.lcssa.i154.i.i = phi i8 [ %i.wj, %bb.cz ], [ %i.wt, %._crit_edge.loopexit.i151.i.i ]
  %i.ww = zext nneg i8 %.lcssa.i154.i.i to i64
  %i.wx = shl i64 %i.ww, %.011.lcssa.i152.i.i
  %.117.i155.i.i = add i64 %.010.lcssa.i153.i.i, %.067.i.i
  %i.wy = add i64 %.117.i155.i.i, %i.wx
  %i.wz = getelementptr i8, ptr %.6.i.i, i64 1    ; 2 uses
  %i.xa = load i8, ptr %.6.i.i, align 1, !tbaa !14 ; 3 uses
  %i.xb = icmp sgt i8 %i.xa, -1
  br i1 %i.xb, label %uleb128.exit167.i.i, label %.lr.ph.i158.i.i

.lr.ph.i158.i.i:                                  ; preds = %uleb128.exit156.i.i, %.lr.ph.i158.i.i
  %i.xc = phi i8 [ %i.xk, %.lr.ph.i158.i.i ], [ %i.xa, %uleb128.exit156.i.i ]
  %i.xd = phi ptr [ %i.xj, %.lr.ph.i158.i.i ], [ %i.wz, %uleb128.exit156.i.i ] ; 2 uses
  %.01020.i159.i.i = phi i64 [ %.1.i161.i.i, %.lr.ph.i158.i.i ], [ 0, %uleb128.exit156.i.i ]
  %.01119.i160.i.i = phi i32 [ %i.xi, %.lr.ph.i158.i.i ], [ 0, %uleb128.exit156.i.i ] ; 2 uses
  %i.xe = and i8 %i.xc, 127
  %i.xf = zext nneg i8 %i.xe to i32
  %i.xg = shl i32 %i.xf, %.01119.i160.i.i
  %i.xh = sext i32 %i.xg to i64
  %i.xi = add i32 %.01119.i160.i.i, 7             ; 2 uses
  %.1.i161.i.i = add i64 %.01020.i159.i.i, %i.xh  ; 2 uses
  %i.xj = getelementptr i8, ptr %i.xd, i64 1      ; 2 uses
  %i.xk = load i8, ptr %i.xd, align 1, !tbaa !14  ; 3 uses
  %i.xl = icmp sgt i8 %i.xk, -1
  br i1 %i.xl, label %._crit_edge.loopexit.i162.i.i, label %.lr.ph.i158.i.i

._crit_edge.loopexit.i162.i.i:                    ; preds = %.lr.ph.i158.i.i
  %i.xm = zext nneg i32 %i.xi to i64
  br label %uleb128.exit167.i.i

uleb128.exit167.i.i:                              ; preds = %._crit_edge.loopexit.i162.i.i, %uleb128.exit156.i.i
  %.7.i.i = phi ptr [ %i.wz, %uleb128.exit156.i.i ], [ %i.xj, %._crit_edge.loopexit.i162.i.i ]
  %.011.lcssa.i163.i.i = phi i64 [ 0, %uleb128.exit156.i.i ], [ %i.xm, %._crit_edge.loopexit.i162.i.i ]
  %.010.lcssa.i164.i.i = phi i64 [ 0, %uleb128.exit156.i.i ], [ %.1.i161.i.i, %._crit_edge.loopexit.i162.i.i ]
  %.lcssa.i165.i.i = phi i8 [ %i.xa, %uleb128.exit156.i.i ], [ %i.xk, %._crit_edge.loopexit.i162.i.i ]
  %i.xn = zext nneg i8 %.lcssa.i165.i.i to i64
  %i.xo = shl i64 %i.xn, %.011.lcssa.i163.i.i
  %.117.i166.i.i = add i64 %.010.lcssa.i164.i.i, %.067.i.i
  %i.xp = add i64 %.117.i166.i.i, %i.xo
  br label %read_dw_form_addr.exit.i.i

bb.da:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.xq = getelementptr i8, ptr %i.ux, i64 %i.ud  ; 2 uses
  br i1 %i.ue, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %.val.i.i.i.i.i = load i32, ptr %i.ux, align 1
  %i.xr = zext i32 %.val.i.i.i.i.i to i64
  br label %read_dw_form_addr.exit.thread.i.i.backedge

bb.dc:                                            ; preds = %bb.da
  %.val.i3.i.i.i.i.i = load i64, ptr %i.ux, align 1
  br label %read_dw_form_addr.exit.thread.i.i.backedge

bb.dd:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.xs = getelementptr i8, ptr %i.ux, i64 %i.ud  ; 4 uses
  br i1 %i.ue, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %.val.i.i.i170.i.i = load i32, ptr %i.ux, align 1
  %i.xt = zext i32 %.val.i.i.i170.i.i to i64
  %i.xu = getelementptr i8, ptr %i.xs, i64 %i.ud
  %.val.i.i.i174.i.i = load i32, ptr %i.xs, align 1
  %i.xv = zext i32 %.val.i.i.i174.i.i to i64
  br label %read_dw_form_addr.exit.i.i

bb.df:                                            ; preds = %bb.dd
  %.val.i3.i.i.i168.i.i = load i64, ptr %i.ux, align 1
  %i.xw = getelementptr i8, ptr %i.xs, i64 %i.ud
  %.val.i3.i.i.i172.i.i = load i64, ptr %i.xs, align 1
  br label %read_dw_form_addr.exit.i.i

bb.dg:                                            ; preds = %read_dw_form_addr.exit.thread.i.i
  %i.xx = getelementptr i8, ptr %i.ux, i64 %i.ud  ; 2 uses
  br i1 %i.ue, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %.val.i.i.i178.i.i = load i32, ptr %i.ux, align 1
  %i.xy = zext i32 %.val.i.i.i178.i.i to i64
  br label %read_dw_form_addr.exit179.i.i

bb.di:                                            ; preds = %bb.dg
  %.val.i3.i.i.i176.i.i = load i64, ptr %i.ux, align 1
  br label %read_dw_form_addr.exit179.i.i

read_dw_form_addr.exit179.i.i:                    ; preds = %bb.di, %bb.dh
  %.0.i177.i.i = phi i64 [ %i.xy, %bb.dh ], [ %.val.i3.i.i.i176.i.i, %bb.di ] ; 2 uses
  %i.xz = getelementptr i8, ptr %i.xx, i64 1      ; 2 uses
  %i.ya = load i8, ptr %i.xx, align 1, !tbaa !14  ; 3 uses
  %i.yb = icmp sgt i8 %i.ya, -1
  br i1 %i.yb, label %uleb128.exit190.i.i, label %.lr.ph.i181.i.i

.lr.ph.i181.i.i:                                  ; preds = %read_dw_form_addr.exit179.i.i, %.lr.ph.i181.i.i
  %i.yc = phi i8 [ %i.yk, %.lr.ph.i181.i.i ], [ %i.ya, %read_dw_form_addr.exit179.i.i ]
  %i.yd = phi ptr [ %i.yj, %.lr.ph.i181.i.i ], [ %i.xz, %read_dw_form_addr.exit179.i.i ] ; 2 uses
  %.01020.i182.i.i = phi i64 [ %.1.i184.i.i, %.lr.ph.i181.i.i ], [ 0, %read_dw_form_addr.exit179.i.i ]
  %.01119.i183.i.i = phi i32 [ %i.yi, %.lr.ph.i181.i.i ], [ 0, %read_dw_form_addr.exit179.i.i ] ; 2 uses
  %i.ye = and i8 %i.yc, 127
  %i.yf = zext nneg i8 %i.ye to i32
  %i.yg = shl i32 %i.yf, %.01119.i183.i.i
  %i.yh = sext i32 %i.yg to i64
  %i.yi = add i32 %.01119.i183.i.i, 7             ; 2 uses
  %.1.i184.i.i = add i64 %.01020.i182.i.i, %i.yh  ; 2 uses
  %i.yj = getelementptr i8, ptr %i.yd, i64 1      ; 2 uses
  %i.yk = load i8, ptr %i.yd, align 1, !tbaa !14  ; 3 uses
  %i.yl = icmp sgt i8 %i.yk, -1
  br i1 %i.yl, label %._crit_edge.loopexit.i185.i.i, label %.lr.ph.i181.i.i

._crit_edge.loopexit.i185.i.i:                    ; preds = %.lr.ph.i181.i.i
  %i.ym = zext nneg i32 %i.yi to i64
  br label %uleb128.exit190.i.i

uleb128.exit190.i.i:                              ; preds = %._crit_edge.loopexit.i185.i.i, %read_dw_form_addr.exit179.i.i
  %.8.i.i = phi ptr [ %i.xz, %read_dw_form_addr.exit179.i.i ], [ %i.yj, %._crit_edge.loopexit.i185.i.i ]
  %.011.lcssa.i186.i.i = phi i64 [ 0, %read_dw_form_addr.exit179.i.i ], [ %i.ym, %._crit_edge.loopexit.i185.i.i ]
  %.010.lcssa.i187.i.i = phi i64 [ 0, %read_dw_form_addr.exit179.i.i ], [ %.1.i184.i.i, %._crit_edge.loopexit.i185.i.i ]
  %.lcssa.i188.i.i = phi i8 [ %i.ya, %read_dw_form_addr.exit179.i.i ], [ %i.yk, %._crit_edge.loopexit.i185.i.i ]
  %i.yn = zext nneg i8 %.lcssa.i188.i.i to i64
  %i.yo = shl i64 %i.yn, %.011.lcssa.i186.i.i
  %.117.i189.i.i = add i64 %.010.lcssa.i187.i.i, %.0.i177.i.i
  %i.yp = add i64 %.117.i189.i.i, %i.yo
  br label %read_dw_form_addr.exit.i.i

read_dw_form_addr.exit.i.i:                       ; preds = %uleb128.exit190.i.i, %bb.df, %bb.de, %uleb128.exit167.i.i
  %.9.i.i = phi ptr [ %.7.i.i, %uleb128.exit167.i.i ], [ %i.xw, %bb.df ], [ %.8.i.i, %uleb128.exit190.i.i ], [ %i.xu, %bb.de ]
  %.179.i.i = phi i1 [ true, %uleb128.exit167.i.i ], [ %.078.i.i, %bb.df ], [ %.078.i.i, %uleb128.exit190.i.i ], [ %.078.i.i, %bb.de ]
  %.077.i.i = phi i64 [ %i.wy, %uleb128.exit167.i.i ], [ %.val.i3.i.i.i168.i.i, %bb.df ], [ %.0.i177.i.i, %uleb128.exit190.i.i ], [ %i.xt, %bb.de ] ; 2 uses
  %.076.i.i = phi i64 [ %i.xp, %uleb128.exit167.i.i ], [ %.val.i3.i.i.i172.i.i, %bb.df ], [ %i.yp, %uleb128.exit190.i.i ], [ %i.xv, %bb.de ]
  %.not90.i.i = icmp ule i64 %.077.i.i, %i.un
  %i.yq = icmp ult i64 %i.un, %.076.i.i
  %or.cond93.i.i = select i1 %.not90.i.i, i1 %i.yq, i1 false
  %cond.fr.i.i = freeze i1 %or.cond93.i.i
  br i1 %cond.fr.i.i, label %ranges_include.exit.i, label %read_dw_form_addr.exit.thread.i.i.backedge

read_dw_form_addr.exit.thread.i.i.backedge:       ; preds = %.lr.ph.i136.i.i, %.lr.ph.i114.i.i, %.lr.ph.i.i103.i, %read_dw_form_addr.exit.i.i, %bb.dc, %bb.db, %bb.cy, %uleb128.exit134.i.i, %uleb128.exit112.i.i, %bb.cv, %read_dw_form_addr.exit.thread.i.i
  %.07.i.i285.be = phi ptr [ %i.wb, %uleb128.exit134.i.i ], [ %i.vr, %.lr.ph.i114.i.i ], [ %.9.i.i, %read_dw_form_addr.exit.i.i ], [ %i.xq, %bb.db ], [ %i.xq, %bb.dc ], [ %i.ux, %bb.cy ], [ %i.vn, %uleb128.exit112.i.i ], [ %i.vd, %.lr.ph.i.i103.i ], [ %i.ux, %read_dw_form_addr.exit.thread.i.i ], [ %i.uz, %bb.cv ], [ %i.wf, %.lr.ph.i136.i.i ]
  %.078.i.i.be = phi i1 [ %.078.i.i, %uleb128.exit134.i.i ], [ %.078.i.i, %.lr.ph.i114.i.i ], [ %.179.i.i, %read_dw_form_addr.exit.i.i ], [ true, %bb.db ], [ true, %bb.dc ], [ false, %bb.cy ], [ %.078.i.i, %uleb128.exit112.i.i ], [ false, %.lr.ph.i.i103.i ], [ %.078.i.i, %read_dw_form_addr.exit.thread.i.i ], [ false, %bb.cv ], [ %.078.i.i, %.lr.ph.i136.i.i ]
  %.067.i.i.be = phi i64 [ %.067.i.i, %uleb128.exit134.i.i ], [ %.067.i.i, %.lr.ph.i114.i.i ], [ %.067.i.i, %read_dw_form_addr.exit.i.i ], [ %i.xr, %bb.db ], [ %.val.i3.i.i.i.i.i, %bb.dc ], [ %.067.i.i, %bb.cy ], [ %.067.i.i, %uleb128.exit112.i.i ], [ %.067.i.i, %.lr.ph.i.i103.i ], [ %.067.i.i, %read_dw_form_addr.exit.thread.i.i ], [ %.067.i.i, %bb.cv ], [ %.067.i.i, %.lr.ph.i136.i.i ]
  br label %read_dw_form_addr.exit.thread.i.i

bb.dj:                                            ; preds = %.cont.i
  %i.yr = load ptr, ptr %i.tu, align 8, !tbaa !119
  %i.ys = getelementptr i8, ptr %i.yr, i64 %.sroa.10.0.i ; 3 uses
  %i.yt = getelementptr i8, ptr %i.ys, i64 8
  %.val.i3.i.i66.i.i = load i64, ptr %i.ys, align 1 ; 2 uses
  %.val.i3.i.i19167.i.i = load i64, ptr %i.yt, align 1 ; 2 uses
  %i.yu = icmp ne i64 %.val.i3.i.i66.i.i, 0
  %i.yv = icmp ne i64 %.val.i3.i.i19167.i.i, 0
  %or.cond68.i.i = select i1 %i.yu, i1 true, i1 %i.yv
  br i1 %or.cond68.i.i, label %.lr.ph.i.i, label %.thread143.i

.lr.ph.i.i:                                       ; preds = %bb.dj, %bb.dl
  %.val.i3.i.i19172.i.i = phi i64 [ %.val.i3.i.i191.i.i, %bb.dl ], [ %.val.i3.i.i19167.i.i, %bb.dj ] ; 2 uses
  %.pn73.i.i = phi ptr [ %i.yw, %bb.dl ], [ %i.ys, %bb.dj ] ; 2 uses
  %.val.i3.i.i71.i.i = phi i64 [ %.val.i3.i.i.i.i283, %bb.dl ], [ %.val.i3.i.i66.i.i, %bb.dj ] ; 2 uses
  %.37069.i.i = phi i64 [ %.572.i.i, %bb.dl ], [ %spec.select358, %bb.dj ] ; 3 uses
  %i.yw = getelementptr i8, ptr %.pn73.i.i, i64 16 ; 2 uses
  %i.yx = icmp eq i64 %.val.i3.i.i71.i.i, -1
  br i1 %i.yx, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.lr.ph.i.i
  %i.yy = add i64 %.37069.i.i, %.val.i3.i.i71.i.i ; 2 uses
  %.not.i100.i = icmp ule i64 %i.yy, %i.un
  %i.yz = add i64 %.37069.i.i, %.val.i3.i.i19172.i.i
  %i.za = icmp ult i64 %i.un, %i.yz
  %or.cond95.i.i = select i1 %.not.i100.i, i1 %i.za, i1 false
  %cond.fr28.i.i = freeze i1 %or.cond95.i.i
  br i1 %cond.fr28.i.i, label %ranges_include.exit.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.lr.ph.i.i
  %.572.i.i = phi i64 [ %.37069.i.i, %bb.dk ], [ %.val.i3.i.i19172.i.i, %.lr.ph.i.i ]
  %i.zb = getelementptr i8, ptr %.pn73.i.i, i64 24
  %.val.i3.i.i.i.i283 = load i64, ptr %i.yw, align 1 ; 2 uses
  %.val.i3.i.i191.i.i = load i64, ptr %i.zb, align 1 ; 2 uses
  %i.zc = icmp ne i64 %.val.i3.i.i.i.i283, 0
  %i.zd = icmp ne i64 %.val.i3.i.i191.i.i, 0
  %or.cond.i101.i = select i1 %i.zc, i1 true, i1 %i.zd
  br i1 %or.cond.i101.i, label %.lr.ph.i.i, label %.thread143.i

bb.dm:                                            ; preds = %bb.co
  %i.ze = icmp eq i64 %.sroa.0.0.i269, %i.un
  %or.cond153.i = select i1 %.sroa.14.0.i, i1 %i.ze, i1 false
  br i1 %or.cond153.i, label %ranges_include.exit.i, label %.thread143.i

ranges_include.exit.i:                            ; preds = %bb.dk, %read_dw_form_addr.exit.i.i, %bb.dm, %bb.cn
  %.5.i.i = phi i64 [ %.sroa.0.0.i269, %bb.cn ], [ %.077.i.i, %read_dw_form_addr.exit.i.i ], [ %.sroa.0.0.i269, %bb.dm ], [ %i.yy, %bb.dk ] ; 2 uses
  switch i64 %.5.i.i, label %bb.dn [
    i64 -1, label %.critedge.thread.i
    i64 0, label %.thread143.i
  ]

bb.dn:                                            ; preds = %ranges_include.exit.i
  %i.zf = getelementptr [64 x i8], ptr %4, i64 %indvars.iv.i ; 6 uses
  %i.zg = getelementptr i8, ptr %i.zf, i64 48     ; 2 uses
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !29
  %.not74.i = icmp eq ptr %i.zh, null
  br i1 %.not74.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.zi = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.zi, ptr noundef nonnull align 1 dereferenceable(64) %i.zf, i64 noundef 64, i1 noundef false) #15
  %i.zj = getelementptr i8, ptr %i.zf, i64 56
  store ptr %i.zi, ptr %i.zj, align 8, !tbaa !41
  store <2 x ptr> %i.tw, ptr %i.zi, align 8, !tbaa !64
  %i.zk = getelementptr i8, ptr %i.zi, i64 24
  store i32 %i.tx, ptr %i.zk, align 8, !tbaa !21
  %i.zl = getelementptr i8, ptr %i.zi, i64 40
  store i64 0, ptr %i.zl, align 8, !tbaa !35
  %.pre226.i = load i64, ptr %i.ts, align 8, !tbaa !33
  %.pre227.i = load i64, ptr %i.tt, align 8, !tbaa !118
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.zm = phi i64 [ %.pre227.i, %bb.do ], [ %i.uf, %bb.dn ] ; 3 uses
  %i.zn = phi i64 [ %.pre226.i, %bb.do ], [ %i.ug, %bb.dn ] ; 3 uses
  %i.zo = load ptr, ptr %i.tr, align 8, !tbaa !15
  %i.zp = getelementptr i8, ptr %i.zf, i64 16
  store ptr %i.zo, ptr %i.zp, align 8, !tbaa !27
  %i.zq = getelementptr i8, ptr %i.zf, i64 32
  store i64 %i.ty, ptr %i.zq, align 8, !tbaa !40
  store ptr %i.tz, ptr %i.zg, align 8, !tbaa !29
  %i.zr = sub i64 %.5.i.i, %i.zm
  %i.zs = add i64 %i.zr, %i.zn
  %i.zt = getelementptr i8, ptr %i.zf, i64 40
  store i64 %i.zs, ptr %i.zt, align 8, !tbaa !35
  br label %.thread143.i

.thread143.i:                                     ; preds = %bb.dl, %read_dw_form_addr.exit.thread.i.i, %bb.dp, %ranges_include.exit.i, %bb.dm, %bb.dj, %bb.cn
  %i.zu = phi i64 [ %i.uf, %read_dw_form_addr.exit.thread.i.i ], [ %i.zm, %bb.dp ], [ %i.uf, %ranges_include.exit.i ], [ %i.uf, %bb.dm ], [ %i.uf, %bb.dj ], [ %i.uf, %bb.cn ], [ %i.uf, %bb.dl ]
  %i.zv = phi i64 [ %i.ug, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ug, %ranges_include.exit.i ], [ %i.ug, %bb.dm ], [ %i.ug, %bb.dj ], [ %i.ug, %bb.cn ], [ %i.ug, %bb.dl ]
  %i.zw = phi i64 [ %i.uh, %read_dw_form_addr.exit.thread.i.i ], [ %i.zm, %bb.dp ], [ %i.uh, %ranges_include.exit.i ], [ %i.uh, %bb.dm ], [ %i.uh, %bb.dj ], [ %i.uh, %bb.cn ], [ %i.uh, %bb.dl ]
  %i.zx = phi i64 [ %i.ui, %read_dw_form_addr.exit.thread.i.i ], [ %i.zn, %bb.dp ], [ %i.ui, %ranges_include.exit.i ], [ %i.ui, %bb.dm ], [ %i.ui, %bb.dj ], [ %i.ui, %bb.cn ], [ %i.ui, %bb.dl ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.i282, label %bb.cl, !llvm.loop !120

select.unfold146.i:                               ; preds = %uleb128.exit21.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %.critedge.i282, !llvm.loop !113

.critedge.thread.i:                               ; preds = %ranges_include.exit.i, %bb.cm, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.thread356

.critedge.i282:                                   ; preds = %.thread143.i, %select.unfold146.i, %.preheader.i, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.zy = load ptr, ptr %i.ec, align 8, !tbaa !81 ; 2 uses
  %i.zz = load ptr, ptr %i.eo, align 8, !tbaa !88
  %i.aaa = icmp ult ptr %i.zy, %i.zz
  br i1 %i.aaa, label %bb.bq, label %debug_info_read.exit

debug_info_read.exit:                             ; preds = %.critedge.i282, %rnglists_header_init.exit.i
  %i.aab = phi ptr [ %i.oc, %rnglists_header_init.exit.i ], [ %i.zy, %.critedge.i282 ] ; 2 uses
  %i.aac = load ptr, ptr %i.eg, align 8, !tbaa !83
  %i.aad = icmp ult ptr %i.aab, %i.aac
  br i1 %i.aad, label %bb.ad, label %._crit_edge476, !llvm.loop !121

.thread356:                                       ; preds = %bb.af, %di_read_debug_line_cu.exit.i, %bb.an, %di_skip_records.exit.i, %addr_header_init.exit.i, %.critedge.thread.i, %rnglists_header_init.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %bb.dq

._crit_edge476:                                   ; preds = %debug_info_read.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  br label %.loopexit359

bb.dq:                                            ; preds = %.thread356, %bb.aa, %bb.ab
  %.not249 = icmp eq ptr %.0214.lcssa, null       ; 2 uses
  %spec.select263 = select i1 %.not249, ptr %.0224.lcssa, ptr %.0217.lcssa ; 2 uses
  %spec.select264 = select i1 %.not249, ptr %.0221.lcssa, ptr %.0214.lcssa ; 3 uses
  %i.aae = icmp ne ptr %spec.select264, null
  %i.aaf = icmp ne ptr %spec.select263, null
  %or.cond5 = select i1 %i.aae, i1 %i.aaf, i1 false
  br i1 %or.cond5, label %bb.dr, label %.loopexit359

bb.dr:                                            ; preds = %bb.dq
  %i.aag = getelementptr i8, ptr %spec.select263, i64 24
  %i.aah = load i64, ptr %i.aag, align 8, !tbaa !56
  %i.aai = getelementptr i8, ptr %i.n, i64 %i.aah
  %i.aaj = getelementptr i8, ptr %spec.select264, i64 24
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !56
  %i.aal = getelementptr i8, ptr %i.n, i64 %i.aak
  %i.aam = getelementptr i8, ptr %spec.select264, i64 32
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !61
  %i.aao = udiv i64 %i.aan, 24                    ; 2 uses
  %i.aap = trunc i64 %i.aao to i32
  %i.aaq = icmp sgt i32 %i.aap, 0
  br i1 %i.aaq, label %.lr.ph481, label %.loopexit359

.lr.ph481:                                        ; preds = %bb.dr
  %i.aar = getelementptr i8, ptr %i.c, i64 32
  %i.aas = load i64, ptr %i.aar, align 8, !tbaa !33 ; 2 uses
  %i.aat = icmp slt i32 %5, %0
  br i1 %i.aat, label %.lr.ph481.split.us.preheader, label %.loopexit359

.lr.ph481.split.us.preheader:                     ; preds = %.lr.ph481
  %i.aau = sext i32 %5 to i64
  %wide.trip.count576 = and i64 %i.aao, 2147483647
  %wide.trip.count571 = sext i32 %0 to i64
  br label %.lr.ph481.split.us

.lr.ph481.split.us:                               ; preds = %.lr.ph481.split.us.preheader, %..loopexit_crit_edge.us
  %indvars.iv573 = phi i64 [ 0, %.lr.ph481.split.us.preheader ], [ %indvars.iv.next574, %..loopexit_crit_edge.us ] ; 2 uses
  %i.aav = getelementptr [24 x i8], ptr %i.aal, i64 %indvars.iv573 ; 4 uses
  %i.aaw = getelementptr i8, ptr %i.aav, i64 8
  %i.aax = load i64, ptr %i.aaw, align 8, !tbaa !122
  %i.aay = add i64 %i.aas, %i.aax                 ; 2 uses
  %i.aaz = getelementptr i8, ptr %i.aav, i64 4
  %i.aba = load i8, ptr %i.aaz, align 4, !tbaa !70
  %i.abb = and i8 %i.aba, 15
  %.not250.us = icmp eq i8 %i.abb, 2
  br i1 %.not250.us, label %.preheader.us, label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %bb.dx, %.lr.ph481.split.us
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 2 uses
  %exitcond577.not = icmp eq i64 %indvars.iv.next574, %wide.trip.count576
  br i1 %exitcond577.not, label %.loopexit359, label %.lr.ph481.split.us, !llvm.loop !123

bb.ds:                                            ; preds = %.preheader.us, %bb.dx
  %indvars.iv568 = phi i64 [ %i.aau, %.preheader.us ], [ %indvars.iv.next569, %bb.dx ] ; 3 uses
  %i.abc = getelementptr [64 x i8], ptr %4, i64 %indvars.iv568 ; 5 uses
  %i.abd = getelementptr i8, ptr %i.abc, i64 24
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !21
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.abg = getelementptr [8 x i8], ptr %1, i64 %indvars.iv568
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !20
  %i.abi = ptrtoint ptr %i.abh to i64
  %i.abj = sub i64 %i.abi, %i.aay
  %i.abk = load i64, ptr %i.abv, align 8, !tbaa !72
  %i.abl = icmp ugt i64 %i.abj, %i.abk
  br i1 %i.abl, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.abm = getelementptr i8, ptr %i.abc, i64 48   ; 2 uses
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !29
  %.not251.us = icmp eq ptr %i.abn, null
  br i1 %.not251.us, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.abo = load i32, ptr %i.aav, align 8, !tbaa !73
  %i.abp = zext i32 %i.abo to i64
  %i.abq = getelementptr i8, ptr %i.aai, i64 %i.abp
  store ptr %i.abq, ptr %i.abm, align 8, !tbaa !29
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.abr = getelementptr i8, ptr %i.abc, i64 40
  store i64 %i.aay, ptr %i.abr, align 8, !tbaa !35
  %i.abs = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.abt = getelementptr i8, ptr %i.abc, i64 16
  store ptr %i.abs, ptr %i.abt, align 8, !tbaa !27
  %i.abu = getelementptr i8, ptr %i.abc, i64 32
  store i64 %i.aas, ptr %i.abu, align 8, !tbaa !40
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dt, %bb.ds
  %indvars.iv.next569 = add nsw i64 %indvars.iv568, 1 ; 2 uses
  %exitcond572.not = icmp eq i64 %indvars.iv.next569, %wide.trip.count571
  br i1 %exitcond572.not, label %..loopexit_crit_edge.us, label %bb.ds, !llvm.loop !124

.preheader.us:                                    ; preds = %.lr.ph481.split.us
  %i.abv = getelementptr i8, ptr %i.aav, i64 16
  br label %bb.ds

end_hunk_1
