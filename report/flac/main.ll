Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/main?download=true
inline.NumInlined: 66
inline.NumDeleted: 16
begin_hunk_0_@decode_file:bb.a
  store ptr %.2, ptr %i.ew, align 8, !tbaa !28
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 60), align 4, !tbaa !44
  %.not159 = icmp eq i32 %i.ex, 0
  %i.ey = select i1 %.not159, ptr %i.b, ptr null
  %i.ez = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 64), align 8, !tbaa !47
  %i.fa = load i64, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 168), align 8
  %i.fb = call i32 @flac__decode_file(ptr noundef nonnull %0, ptr noundef %i.ey, i32 noundef %i.ez, i64 %i.fa, ptr noundef nonnull byval(%struct.decode_options_t) align 8 %1) #18 ; 2 uses
  br i1 %.not147181, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @flac__foreign_metadata_delete(ptr noundef %.2) #18
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %sub_0201, label %bb.bs

sub_0201:                                         ; preds = %bb.bp
  %i.fd = load i8, ptr %0, align 1
  %.not211 = icmp eq i8 %i.fd, 45
  br i1 %.not211, label %.tail200, label %.tail200.thread

.tail200:                                         ; preds = %sub_0201
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = icmp eq i8 %i.ff, 0
  br i1 %i.fg, label %bb.bs, label %.tail200.thread

.tail200.thread:                                  ; preds = %sub_0201, %.tail200
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 128), align 8, !tbaa !21
  %.not162 = icmp eq i32 %i.fh, 0
  br i1 %.not162, label %bb.bq, label %sub_0205

sub_0205:                                         ; preds = %.tail200.thread
  %i.fi = load i8, ptr %i.b, align 1
  %.not212 = icmp eq i8 %i.fi, 45
  br i1 %.not212, label %.tail204, label %.tail204.thread

.tail204:                                         ; preds = %sub_0205
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = icmp eq i8 %i.fk, 0
  br i1 %i.fl, label %bb.bq, label %.tail204.thread

.tail204.thread:                                  ; preds = %sub_0205, %.tail204
  call void @grabbag__file_copy_metadata(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #18
  br label %bb.bq

bb.bq:                                            ; preds = %.tail204.thread, %.tail204, %.tail200.thread
  %i.fm = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 124), align 4, !tbaa !79
  %i.fn = icmp eq i32 %i.fm, 0
  %i.fo = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 60), align 4
  %i.fp = icmp ne i32 %i.fo, 0
  %or.cond19 = select i1 %i.fn, i1 true, i1 %i.fp
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 64), align 8
  %i.fr = icmp ne i32 %i.fq, 0
  %or.cond21 = select i1 %or.cond19, i1 true, i1 %i.fr
  br i1 %or.cond21, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fs = call i32 @unlink(ptr noundef nonnull %0) #18 ; 0 uses
  br label %bb.bs

.critedge:                                        ; preds = %bb.i, %bb.f, %bb.j, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %.tail200, %bb.br, %bb.bq, %.critedge, %bb.bj, %bb.be, %bb.bc, %bb.aw, %bb.at, %bb.ap, %bb.an, %bb.ak, %bb.b
  %.1118 = phi i32 [ 1, %bb.b ], [ 1, %bb.ak ], [ 1, %bb.an ], [ 1, %bb.ap ], [ 1, %bb.aw ], [ 1, %bb.bc ], [ 1, %.critedge ], [ 1, %bb.bj ], [ 1, %bb.be ], [ 1, %bb.at ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %.tail200 ], [ %i.fb, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret i32 %.1118
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @encode_file(ptr noundef %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 20 uses
  %3 = alloca %struct.encode_options_t, align 8   ; 34 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 68), align 4, !tbaa !74
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 160), align 8, !tbaa !73
  %.not4.i = icmp eq ptr %i.e, null
  br i1 %.not4.i, label %get_encoded_outfilename.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @grabbag__file_get_basename(ptr noundef %0) #18
  br label %get_encoded_outfilename.exit

get_encoded_outfilename.exit:                     ; preds = %bb.a, %bb.b
  %.0.i319 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]
  %.not.i320 = icmp eq i32 %i.d, 0
  %i.g = select i1 %.not.i320, ptr @.str.222, ptr @.str.203
  %i.h = tail call fastcc ptr @get_outfilename(ptr noundef %.0.i319, ptr noundef nonnull %i.g) ; 18 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %sub_0

bb.c:                                             ; preds = %get_encoded_outfilename.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.45, ptr noundef %0) #18
  br label %conditional_fclose.exit

sub_0:                                            ; preds = %get_encoded_outfilename.exit
  %i.k = load i8, ptr %0, align 1
  %.not457 = icmp eq i8 %i.k, 45
  br i1 %.not457, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.d, label %.tail.thread

bb.d:                                             ; preds = %.tail
  %i.o = tail call ptr @grabbag__file_get_binary_stdin() #18
  br label %bb.f

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.p = tail call i64 @grabbag__file_get_filesize(ptr noundef nonnull %0) #18
  %i.q = tail call noalias ptr @fopen64(ptr noundef nonnull %0, ptr noundef nonnull @.str.220) ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.tail.thread
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.t = tail call ptr @__errno_location() #21
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10
  %i.v = tail call ptr @strerror(i32 noundef %i.u) #18
  tail call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @.str.221, ptr noundef nonnull %0, ptr noundef %i.v) #18
  br label %conditional_fclose.exit

bb.f:                                             ; preds = %.tail.thread, %bb.d
  %.0239 = phi ptr [ %i.o, %bb.d ], [ %i.q, %.tail.thread ] ; 65 uses
  %.0233 = phi i64 [ -1, %bb.d ], [ %i.p, %.tail.thread ] ; 5 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 92), align 4, !tbaa !65
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.g, label %.thread402

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20 ; 3 uses
  %i.y = icmp ugt i64 %i.x, 3
  br i1 %i.y, label %bb.h, label %.critedge310.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %0, i64 %i.x       ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -4      ; 5 uses
  %i.ab = tail call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.219) #20
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.critedge310, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not437 = icmp eq i64 %i.x, 4                  ; 2 uses
  br i1 %.not437, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.z, i64 -5
  %i.ae = tail call i32 @strcasecmp(ptr noundef %i.ad, ptr noundef nonnull @.str.196) #20
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.critedge310, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = tail call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.197) #20
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.critedge310, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.194) #20
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.critedge310, label %.critedge

.critedge:                                        ; preds = %bb.l
  br i1 %.not437, label %.critedge308.thread, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.ak = getelementptr i8, ptr %i.z, i64 -5      ; 2 uses
  %i.al = tail call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.195) #20
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.critedge310, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call i32 @strcasecmp(ptr noundef %i.ak, ptr noundef nonnull @.str.222) #20
  %.not438 = icmp eq i32 %i.an, 0
  br i1 %.not438, label %.critedge310, label %.critedge308.thread

.critedge308.thread:                              ; preds = %.critedge, %bb.n
  %i.ao = tail call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.203) #20
  %.not439 = icmp eq i32 %i.ao, 0
  br i1 %.not439, label %.critedge310, label %bb.o

bb.o:                                             ; preds = %.critedge308.thread
  %i.ap = tail call i32 @strcasecmp(ptr noundef %i.aa, ptr noundef nonnull @.str.204) #20
  %i.aq = icmp ne i32 %i.ap, 0                    ; 2 uses
  %spec.select313 = select i1 %i.aq, i32 0, i32 7
  br label %.critedge310

.critedge310:                                     ; preds = %bb.o, %bb.n, %.critedge308.thread, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.not279 = phi i1 [ %i.aq, %bb.o ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.l ], [ false, %bb.m ], [ false, %bb.n ], [ false, %.critedge308.thread ] ; 2 uses
  %.0236 = phi i32 [ %spec.select313, %bb.o ], [ 1, %bb.h ], [ 3, %bb.j ], [ 2, %bb.k ], [ 4, %bb.l ], [ 4, %bb.m ], [ 6, %bb.n ], [ 7, %.critedge308.thread ] ; 2 uses
  %i.ar = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %.0239)
  %i.as = trunc i64 %i.ar to i32                  ; 4 uses
  %i.at = icmp ult i32 %i.as, 12
  br i1 %i.at, label %bb.p, label %bb.t

.critedge310.thread:                              ; preds = %bb.g
  %i.au = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef nonnull %.0239)
  %i.av = trunc i64 %i.au to i32                  ; 3 uses
  %i.aw = icmp ult i32 %i.av, 12
  br i1 %i.aw, label %.thread402, label %bb.t

bb.p:                                             ; preds = %.critedge310
  br i1 %.not279, label %.thread402, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr @stderr, align 8, !tbaa !36
  %4 = zext nneg i32 %.0236 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @FileFormatString, i64 %4
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ax, i32 noundef 1, ptr noundef nonnull @.str.249, ptr noundef nonnull %0, ptr noundef %i.az, ptr noundef nonnull @.str.208) #18
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 16), align 8, !tbaa !64
  %.not282 = icmp eq i32 %i.ba, 0
  br i1 %.not282, label %.thread402, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = load ptr, ptr @stdin, align 8
  %i.bc = icmp eq ptr %.0239, %i.bb
  %i.bd = load ptr, ptr @stdout, align 8
  %i.be = icmp eq ptr %.0239, %i.bd
  %or.cond7.i = select i1 %i.bc, i1 true, i1 %i.be
  br i1 %or.cond7.i, label %conditional_fclose.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit

bb.t:                                             ; preds = %.critedge310.thread, %.critedge310
  %i.bg = phi i32 [ %i.av, %.critedge310.thread ], [ %i.as, %.critedge310 ] ; 9 uses
  %.0236480 = phi i32 [ 0, %.critedge310.thread ], [ %.0236, %.critedge310 ]
  %.not279477 = phi i1 [ true, %.critedge310.thread ], [ %.not279, %.critedge310 ]
  %i.bh = load i16, ptr %i.a, align 1
  %i.bi = xor i16 %i.bh, 17481
  %i.bj = getelementptr i8, ptr %i.a, i64 2
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i16
  %i.bm = xor i16 %i.bl, 51
  %i.bn = or i16 %i.bi, %i.bm
  %i.bo = icmp ne i16 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %.not256 = icmp eq i32 %i.bp, 0
  br i1 %.not256, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bq = load ptr, ptr @stderr, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.bq, i32 noundef 1, ptr noundef nonnull @.str.224, ptr noundef nonnull %0) #18
  %i.br = load ptr, ptr @stdin, align 8
  %i.bs = icmp eq ptr %.0239, %i.br
  %i.bt = load ptr, ptr @stdout, align 8
  %i.bu = icmp eq ptr %.0239, %i.bt
  %or.cond7.i324 = select i1 %i.bs, i1 true, i1 %i.bu
  br i1 %or.cond7.i324, label %conditional_fclose.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bv = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit

bb.w:                                             ; preds = %bb.t
  %i.bw = load i32, ptr %i.a, align 1
  %i.bx = icmp ne i32 %i.bw, 1179011410
  %i.by = zext i1 %i.bx to i32
  %.not258 = icmp eq i32 %i.by, 0
  br i1 %.not258, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ca = load i32, ptr %i.bz, align 1
  %i.cb = icmp ne i32 %i.ca, 1163280727
  %i.cc = zext i1 %i.cb to i32
  %.not260 = icmp eq i32 %i.cc, 0
  br i1 %.not260, label %bb.ak, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cd = load i32, ptr %i.a, align 1
  %i.ce = icmp ne i32 %i.cd, 875972178
  %i.cf = zext i1 %i.ce to i32
  %.not262 = icmp eq i32 %i.cf, 0
  br i1 %.not262, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ch = load i32, ptr %i.cg, align 1
  %i.ci = icmp ne i32 %i.ch, 1163280727
  %i.cj = zext i1 %i.ci to i32
  %.not264 = icmp eq i32 %i.cj, 0
  br i1 %.not264, label %.thread402, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ck = load i64, ptr %i.a, align 1
  %i.cl = xor i64 %i.ck, 1283404047296391538
  %i.cm = getelementptr i8, ptr %i.a, i64 8
  %i.cn = load i32, ptr %i.cm, align 1
  %i.co = zext i32 %i.cn to i64
  %i.cp = xor i64 %i.co, 3676886693
  %i.cq = or i64 %i.cl, %i.cp
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %.not266 = icmp eq i32 %i.cs, 0
  br i1 %.not266, label %.thread402, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load i32, ptr %i.a, align 1
  %i.cu = icmp ne i32 %i.ct, 1297239878
  %i.cv = zext i1 %i.cu to i32
  %.not268 = icmp eq i32 %i.cv, 0
  br i1 %.not268, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = icmp ne i32 %i.cx, 1179011393
  %i.cz = zext i1 %i.cy to i32
  %.not270 = icmp eq i32 %i.cz, 0
  br i1 %.not270, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = load i32, ptr %i.cw, align 1
  %i.db = icmp ne i32 %i.da, 1128679745
  %i.dc = zext i1 %i.db to i32
  %.not274 = icmp eq i32 %i.dc, 0
  br i1 %.not274, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ab, %bb.ad
  %i.dd = load i32, ptr %i.a, align 1
  %i.de = load i32, ptr @FLAC__STREAM_SYNC_STRING, align 1
  %i.df = icmp ne i32 %i.dd, %i.de
  %i.dg = zext i1 %i.df to i32
  %.not276 = icmp eq i32 %i.dg, 0
  br i1 %.not276, label %.thread402, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = load i32, ptr %i.a, align 1
  %i.di = icmp ne i32 %i.dh, 1399285583
  %i.dj = zext i1 %i.di to i32
  %.not278 = icmp eq i32 %i.dj, 0
  br i1 %.not278, label %.thread402, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %.not279477, label %.thread402, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dk = load ptr, ptr @stderr, align 8, !tbaa !36
  %5 = zext nneg i32 %.0236480 to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr @FileFormatString, i64 %5
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.dk, i32 noundef 1, ptr noundef nonnull @.str.249, ptr noundef nonnull %0, ptr noundef %i.dm, ptr noundef nonnull @.str.208) #18
  %i.dn = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 16), align 8, !tbaa !64
  %.not280 = icmp eq i32 %i.dn, 0
  br i1 %.not280, label %.thread402, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.do = load ptr, ptr @stdin, align 8
  %i.dp = icmp eq ptr %.0239, %i.do
  %i.dq = load ptr, ptr @stdout, align 8
  %i.dr = icmp eq ptr %.0239, %i.dq
  %or.cond7.i328 = select i1 %i.dp, i1 true, i1 %i.dr
  br i1 %or.cond7.i328, label %conditional_fclose.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ds = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit

bb.ak:                                            ; preds = %bb.ad, %bb.ac, %bb.x
  %i.dt = phi i1 [ true, %bb.x ], [ false, %bb.ad ], [ false, %bb.ac ] ; 5 uses
  %i.du = phi i1 [ false, %bb.x ], [ false, %bb.ad ], [ true, %bb.ac ] ; 3 uses
  %i.dv = phi i1 [ false, %bb.x ], [ true, %bb.ad ], [ false, %bb.ac ] ; 3 uses
  %.1237 = phi i32 [ 1, %bb.x ], [ 5, %bb.ad ], [ 4, %bb.ac ] ; 3 uses
  %i.dw = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 144), align 8, !tbaa !53
  %.not283 = icmp eq i32 %i.dw, 0
  %i.dx = icmp sgt i64 %.0233, 4294967294
  %or.cond314 = select i1 %.not283, i1 %i.dx, i1 false
  br i1 %or.cond314, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dy = load ptr, ptr @stdin, align 8
  %i.dz = icmp eq ptr %.0239, %i.dy
  %i.ea = load ptr, ptr @stdout, align 8
  %i.eb = icmp eq ptr %.0239, %i.ea
  %or.cond7.i332 = select i1 %i.dz, i1 true, i1 %i.eb
  br i1 %or.cond7.i332, label %conditional_fclose.exit334, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit334

conditional_fclose.exit334:                       ; preds = %bb.al, %bb.am
  call void (ptr, ...) @usage_error(ptr noundef nonnull @.str.233, ptr noundef nonnull %0)
  br label %conditional_fclose.exit

bb.an:                                            ; preds = %bb.ak
  %or.cond7 = or i1 %i.dt, %i.du
  %or.cond9 = or i1 %or.cond7, %i.dv
  br i1 %or.cond9, label %bb.ao, label %.thread402

bb.ao:                                            ; preds = %bb.an
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ee = load i32, ptr %i.ed, align 1            ; 2 uses
  %i.ef = call i32 @llvm.bswap.i32(i32 %i.ee)
  %spec.select = select i1 %i.dt, i32 %i.ee, i32 %i.ef
  %i.eg = icmp slt i64 %.0233, 9
  %i.eh = add nsw i64 %.0233, -8
  %i.ei = zext i32 %spec.select to i64
  %.not285 = icmp eq i64 %i.eh, %i.ei
  %or.cond = select i1 %i.eg, i1 true, i1 %.not285
  br i1 %or.cond, label %.thread402, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ej = load ptr, ptr @stderr, align 8, !tbaa !36
  %i.ek = select i1 %i.dt, ptr @.str.225, ptr @.str.229
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ej, i32 noundef 1, ptr noundef nonnull @.str.234, ptr noundef nonnull %i.ek, ptr noundef nonnull %0) #18
  %i.el = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 16), align 8, !tbaa !64
  %.not286 = icmp eq i32 %i.el, 0
  br i1 %.not286, label %.thread402, label %conditional_fclose.exit

.thread402:                                       ; preds = %.critedge310.thread, %bb.f, %bb.p, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.q, %bb.ah, %bb.ag, %bb.ao, %bb.ap, %bb.an
  %.0238399412 = phi i32 [ %i.bg, %bb.an ], [ %i.bg, %bb.ao ], [ %i.av, %.critedge310.thread ], [ %i.bg, %bb.ap ], [ %i.bg, %bb.ag ], [ %i.bg, %bb.ah ], [ %i.as, %bb.q ], [ %i.bg, %bb.z ], [ %i.bg, %bb.aa ], [ %i.bg, %bb.ae ], [ %i.bg, %bb.af ], [ %i.as, %bb.p ], [ 0, %bb.f ] ; 3 uses
  %i.em = phi i1 [ false, %bb.an ], [ %i.dt, %bb.ao ], [ false, %.critedge310.thread ], [ %i.dt, %bb.ap ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.q ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.p ], [ false, %bb.f ] ; 2 uses
  %i.en = phi i1 [ false, %bb.an ], [ %i.du, %bb.ao ], [ false, %.critedge310.thread ], [ %i.du, %bb.ap ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.q ], [ false, %bb.z ], [ true, %bb.aa ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.p ], [ false, %bb.f ]
  %i.eo = phi i1 [ false, %bb.an ], [ %i.dv, %bb.ao ], [ false, %.critedge310.thread ], [ %i.dv, %bb.ap ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.q ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.p ], [ false, %bb.f ]
  %or.cond17400410 = phi i1 [ false, %bb.an ], [ false, %bb.ao ], [ true, %.critedge310.thread ], [ false, %bb.ap ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.q ], [ false, %bb.z ], [ false, %bb.aa ], [ true, %bb.ae ], [ true, %bb.af ], [ true, %bb.p ], [ true, %bb.f ]
  %i.ep = phi i1 [ false, %bb.an ], [ false, %bb.ao ], [ false, %.critedge310.thread ], [ false, %bb.ap ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.q ], [ false, %bb.z ], [ false, %bb.aa ], [ true, %bb.ae ], [ false, %bb.af ], [ false, %bb.p ], [ false, %bb.f ] ; 2 uses
  %i.eq = phi i1 [ false, %bb.an ], [ false, %bb.ao ], [ false, %.critedge310.thread ], [ false, %bb.ap ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.q ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ae ], [ true, %bb.af ], [ false, %bb.p ], [ false, %bb.f ] ; 2 uses
  %i.er = phi i1 [ true, %bb.an ], [ true, %bb.ao ], [ false, %.critedge310.thread ], [ true, %bb.ap ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.q ], [ true, %bb.z ], [ true, %bb.aa ], [ true, %bb.ae ], [ true, %bb.af ], [ false, %bb.p ], [ false, %bb.f ]
  %i.es = phi i1 [ false, %bb.an ], [ false, %bb.ao ], [ true, %.critedge310.thread ], [ false, %bb.ap ], [ true, %bb.ag ], [ true, %bb.ah ], [ true, %bb.q ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %bb.ae ], [ false, %bb.af ], [ true, %bb.p ], [ true, %bb.f ] ; 2 uses
  %i.et = phi i32 [ 0, %bb.an ], [ 0, %bb.ao ], [ 0, %.critedge310.thread ], [ 0, %bb.ap ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.q ], [ 0, %bb.z ], [ 2, %bb.aa ], [ 0, %bb.ae ], [ 0, %bb.af ], [ 0, %bb.p ], [ 0, %bb.f ]
  %i.eu = phi i1 [ false, %bb.an ], [ false, %bb.ao ], [ false, %.critedge310.thread ], [ false, %bb.ap ], [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.q ], [ true, %bb.z ], [ false, %bb.aa ], [ false, %bb.ae ], [ false, %bb.af ], [ false, %bb.p ], [ false, %bb.f ] ; 2 uses
  %.1237401408 = phi i32 [ %.1237, %bb.an ], [ %.1237, %bb.ao ], [ 0, %.critedge310.thread ], [ %.1237, %bb.ap ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.q ], [ 3, %bb.z ], [ 2, %bb.aa ], [ 6, %bb.ae ], [ 7, %bb.af ], [ 0, %bb.p ], [ 0, %bb.f ]
  %i.ev = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 132), align 4, !tbaa !56
  %i.ew = icmp ne i32 %i.ev, 0
  %i.ex = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 136), align 8
  %i.ey = icmp ne i32 %i.ex, 0
  %or.cond13 = select i1 %i.ew, i1 true, i1 %i.ey
  br i1 %or.cond13, label %bb.aq, label %bb.aw

bb.aq:                                            ; preds = %.thread402
  %i.ez = load ptr, ptr @stdin, align 8, !tbaa !36
  %i.fa = icmp eq ptr %.0239, %i.ez               ; 2 uses
  %i.fb = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 88), align 8
  %i.fc = icmp ne i32 %i.fb, 0
  %or.cond15 = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond15, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.fd = icmp eq ptr %.0239, null
  %or.cond.i335 = or i1 %i.fd, %i.fa
  %i.fe = load ptr, ptr @stdout, align 8
  %i.ff = icmp eq ptr %.0239, %i.fe
  %or.cond7.i336 = select i1 %or.cond.i335, i1 true, i1 %i.ff
  br i1 %or.cond7.i336, label %conditional_fclose.exit338, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fg = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit338

conditional_fclose.exit338:                       ; preds = %bb.ar, %bb.as
  call void (ptr, ...) @usage_error(ptr noundef nonnull @.str.235)
  br label %conditional_fclose.exit

bb.at:                                            ; preds = %bb.aq
  br i1 %or.cond17400410, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.fh = icmp eq ptr %.0239, null
  %i.fi = load ptr, ptr @stdout, align 8
  %i.fj = icmp eq ptr %.0239, %i.fi
  %or.cond7.i340 = select i1 %i.fh, i1 true, i1 %i.fj
  br i1 %or.cond7.i340, label %conditional_fclose.exit342, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fk = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit342

conditional_fclose.exit342:                       ; preds = %bb.au, %bb.av
  call void (ptr, ...) @usage_error(ptr noundef nonnull @.str.236)
  br label %conditional_fclose.exit

bb.aw:                                            ; preds = %bb.at, %.thread402
  %i.fl = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 60), align 4, !tbaa !44
  %i.fm = icmp ne i32 %i.fl, 0
  %i.fn = load i32, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 20), align 4
  %i.fo = icmp ne i32 %i.fn, 0
  %or.cond25 = select i1 %i.fm, i1 true, i1 %i.fo
  br i1 %or.cond25, label %bb.az, label %sub_0442

sub_0442:                                         ; preds = %bb.aw
  %i.fp = load i8, ptr %i.h, align 1
  %.not458 = icmp eq i8 %i.fp, 45
  br i1 %.not458, label %.tail441, label %.tail441.thread

.tail441:                                         ; preds = %sub_0442
  %i.fq = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.fr = load i8, ptr %i.fq, align 1
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.az, label %.tail441.thread

.tail441.thread:                                  ; preds = %sub_0442, %.tail441
  %i.ft = call i64 @grabbag__file_get_filesize(ptr noundef nonnull %i.h) #18
  %.not288 = icmp eq i64 %i.ft, -1
  br i1 %.not288, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.tail441.thread
  %i.fu = load ptr, ptr @stderr, align 8, !tbaa !36
  %.str.238..str.201 = select i1 %i.eq, ptr @.str.238, ptr @.str.201
  %.str.238.sink = select i1 %i.ep, ptr @.str.237, ptr %.str.238..str.201
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.fu, i32 noundef 1, ptr noundef nonnull %.str.238.sink, ptr noundef nonnull %i.h) #18
  %i.fv = icmp eq ptr %.0239, null
  %i.fw = load ptr, ptr @stdin, align 8
  %i.fx = icmp eq ptr %.0239, %i.fw
  %or.cond.i343 = select i1 %i.fv, i1 true, i1 %i.fx
  %i.fy = load ptr, ptr @stdout, align 8
  %i.fz = icmp eq ptr %.0239, %i.fy
  %or.cond7.i344 = select i1 %or.cond.i343, i1 true, i1 %i.fz
  br i1 %or.cond7.i344, label %conditional_fclose.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ga = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit

bb.az:                                            ; preds = %.tail441.thread, %.tail441, %bb.aw
  %i.gb = load i64, ptr getelementptr inbounds nuw (i8, ptr @option_values, i64 1272), align 8, !tbaa !29 ; 2 uses
  %i.gc = icmp sgt i64 %i.gb, -1
  br i1 %i.gc, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.gd = icmp sgt i64 %.0233, -1
  %or.cond27 = select i1 %i.er, i1 true, i1 %i.gd
  br i1 %or.cond27, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !36
  call void (ptr, i32, ptr, ...) @flac__utils_printf(ptr noundef %i.ge, i32 noundef 1, ptr noundef nonnull @.str.239) #18
  %i.gf = icmp eq ptr %.0239, null
  %i.gg = load ptr, ptr @stdin, align 8
  %i.gh = icmp eq ptr %.0239, %i.gg
  %or.cond.i347 = select i1 %i.gf, i1 true, i1 %i.gh
  %i.gi = load ptr, ptr @stdout, align 8
  %i.gj = icmp eq ptr %.0239, %i.gi
  %or.cond7.i348 = select i1 %or.cond.i347, i1 true, i1 %i.gj
  br i1 %or.cond7.i348, label %conditional_fclose.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gk = call i32 @fclose(ptr noundef nonnull %.0239) ; 0 uses
  br label %conditional_fclose.exit

end_hunk_0
