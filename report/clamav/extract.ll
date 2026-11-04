Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/extract?download=true
inline.NumInlined: 198
inline.NumDeleted: 103
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10CmdExtract14AnalyzeArchiveEPKwbb:bb.a
bb.ax:                                            ; preds = %bb.e, %bb.f, %bb.aw
  ret void
}

declare void @_Z8wcsncpyzPwPKwm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @_Z14NextVolumeNamePwjb(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_Z21uiStartArchiveExtractbPKw(i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @_ZN7Archive4SeekEli(ptr noundef nonnull align 8 dereferenceable(57108), i64 noundef, i32 noundef) unnamed_addr #1

declare noundef i64 @_ZN7Archive10ReadHeaderEv(ptr noundef nonnull align 8 dereferenceable(57108)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN10CmdExtract18ExtractCurrentFileER7ArchivemRb(ptr noundef nonnull align 8 dereferenceable(16800) %0, ptr noundef nonnull align 8 dereferenceable(57108) %1, i64 noundef %2, ptr nofree nonnull readnone align 1 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %5 = alloca %class.uiMsgStore, align 8          ; 11 uses
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca [2048 x i32], align 16            ; 5 uses
  %i.c = alloca [2048 x i32], align 16            ; 16 uses
  %6 = alloca %struct.FindData, align 8           ; 5 uses
  %7 = alloca %class.RarCheckPassword, align 8    ; 8 uses
  %8 = alloca %class.SecPassword, align 8         ; 7 uses
  %i.d = alloca [8 x i8], align 1                 ; 5 uses
  %9 = alloca %class.File, align 8                ; 18 uses
  %i.e = alloca i8, align 1                       ; 7 uses
  %i.f = alloca [2048 x i32], align 16            ; 9 uses
  %i.g = alloca [2048 x i32], align 16            ; 8 uses
  %i.h = alloca i8, align 1                       ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 39 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 83476
  %i.l = load i32, ptr %i.k, align 4, !tbaa !18   ; 9 uses
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 217
  %i.o = load i8, ptr %i.n, align 1, !tbaa !112, !range !64, !noundef !65
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.hh

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = tail call noundef zeroext i1 @_Z12MergeArchiveR7ArchiveP11ComprDataIObw(ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.q, i1 noundef zeroext false, i32 noundef signext %i.l)
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 1)
  br label %bb.hh

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 11076
  %i.t = load i32, ptr %i.s, align 4, !tbaa !120  ; 3 uses
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16392
  %i.y = load i64, ptr %i.x, align 8, !tbaa !119  ; 2 uses
  %.not327 = icmp eq i64 %i.y, 0
  br i1 %.not327, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48824
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !124
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.t

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8200 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.hh, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ag = tail call i32 @wcscmp(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.af) #23
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.hh, label %bb.t

bb.j:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48840
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !122
  %i.ak = icmp eq i32 %i.aj, 2
  %i.al = icmp eq i32 %i.t, 119
  %or.cond = and i1 %i.al, %i.ak
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8569
  %i.an = load i8, ptr %i.am, align 1, !tbaa !113, !range !64, !noundef !65
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8572
  tail call void @_Z14SetExtraInfo20P11CommandDataR7ArchivePw(ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.aq)
  br label %.thread

bb.m:                                             ; preds = %bb.j
  switch i32 %i.t, label %.thread [
    i32 3, label %bb.n
    i32 5, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8569
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !113, !range !64, !noundef !65
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8572
  tail call void @_Z12SetExtraInfoP11CommandDataR7ArchivePw(ptr noundef %i.au, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.av)
  br label %.thread

bb.p:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 31188
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !121, !range !64, !noundef !65
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.q, label %bb.hh

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = tail call noundef zeroext i1 @_Z12MergeArchiveR7ArchiveP11ComprDataIObw(ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.az, i1 noundef zeroext false, i32 noundef signext %i.l)
  br i1 %i.ba, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 1)
  br label %bb.hh

bb.s:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 48824
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !124
  %i.bd = load ptr, ptr %1, align 8, !tbaa !129
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(57108) %1, i64 noundef %i.bc, i32 noundef 0)
  br label %bb.hh

.thread:                                          ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.m
  tail call void @_ZN7Archive10SeekToNextEv(ptr noundef nonnull align 8 dereferenceable(57108) %1)
  br label %bb.hh

bb.t:                                             ; preds = %bb.f, %bb.g, %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8569 ; 4 uses
  store i8 0, ptr %i.bg, align 1, !tbaa !113
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 13976
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 22264 ; 6 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !168
  %i.bk = icmp slt i64 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.bi, align 8, !tbaa !168
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 22272 ; 10 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !130
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i64 0, ptr %i.bl, align 8, !tbaa !130
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bo = load ptr, ptr %i.i, align 8, !tbaa !36  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 57456
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !169
  %.not328 = icmp eq i32 %i.bq, 0
  br i1 %.not328, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !170
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 99968
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !173
  %.not329 = icmp ult i64 %i.bs, %i.bu
  br i1 %.not329, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 369
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !114, !range !64, !noundef !65
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.hh, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 0, ptr %i.a, align 1, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.by = call noundef i32 @_ZN11CommandData13IsProcessFileER10FileHeaderPbibPwj(ptr noundef nonnull align 8 dereferenceable(100904) %i.bo, ptr noundef nonnull align 8 dereferenceable(17184) %i.bh, ptr noundef nonnull %i.a, i32 noundef 6, i1 noundef zeroext false, ptr noundef nonnull %i.b, i32 noundef 2048)
  %i.bz = icmp ne i32 %i.by, 0                    ; 2 uses
  %10 = zext i1 %i.bz to i8                       ; 4 uses
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 57452
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !132
  %i.cd = icmp eq i32 %i.cc, 2
  br i1 %i.cd, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 32816
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.ce, ptr noundef nonnull %i.b, i64 noundef 2048)
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32816
  %i.ch = call noundef ptr @_Z11PointToNamePKw(ptr noundef nonnull %i.cg)
  store i32 0, ptr %i.ch, align 4, !tbaa !18
  %i.ci = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 32816
  %i.ck = call noundef zeroext i1 @_Z10IsWildcardPKw(ptr noundef nonnull %i.cj)
  br i1 %i.ck, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cl = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32816
  store i32 0, ptr %i.cm, align 8, !tbaa !18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.aa
  %.not = xor i1 %i.bz, true
  %i.cn = load i8, ptr %i.a, align 1, !range !64
  %i.co = trunc nuw i8 %i.cn to i1
  %or.cond4 = select i1 %.not, i1 true, i1 %i.co
  br i1 %or.cond4, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 369
  store i8 0, ptr %i.cp, align 1, !tbaa !114
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @_ZN7Archive17ConvertAttributesEv(ptr noundef nonnull align 8 dereferenceable(57108) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 14016
  %i.cr = call noundef ptr @_Z11ConvertPathPKwPwm(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.c, i64 noundef 2048) ; 0 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 22419
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !174, !range !64, !noundef !65
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 67004
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !175 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 1
  %i.cz = load i8, ptr %i.a, align 1, !range !64
  %i.da = trunc nuw i8 %i.cz to i1
  %or.cond6 = select i1 %i.cy, i1 true, i1 %i.da
  br i1 %or.cond6, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = call noundef i32 @_Z20ParseVersionFileNamePwb(ptr noundef nonnull %i.c, i1 noundef zeroext false)
  %i.dc = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 67004
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !175
  %i.df = add i32 %i.de, -1
  %i.dg = icmp eq i32 %i.df, %i.db
  br i1 %i.dg, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %11 = icmp eq i32 %i.cx, 0
  %spec.select = select i1 %11, i8 0, i8 %10
  %i.dh = call noundef i32 @_Z20ParseVersionFileNamePwb(ptr noundef nonnull %i.c, i1 noundef zeroext true) ; 0 uses
  br label %bb.al

bb.aj:                                            ; preds = %bb.af
  %i.di = call noundef zeroext i1 @_ZN7Archive8IsArcDirEv(ptr noundef nonnull align 8 dereferenceable(57108) %1)
  br i1 %i.di, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dj = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 67004
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !175
  %12 = icmp ugt i32 %i.dl, 1
  %spec.select364 = select i1 %12, i8 0, i8 %10
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.ah, %bb.aj, %bb.ag
  %.2308 = phi i8 [ %10, %bb.ag ], [ %spec.select364, %bb.ak ], [ %10, %bb.aj ], [ 0, %bb.ah ], [ %spec.select, %bb.ai ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 22329 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !127, !range !64, !noundef !65
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 217
  store i8 %i.dn, ptr %i.dp, align 1, !tbaa !112
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 218 ; 3 uses
  store i8 0, ptr %i.dq, align 2, !tbaa !176
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 48832
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !177
  %i.dt = load i64, ptr %i.bi, align 8, !tbaa !168
  %i.du = sub nsw i64 %i.ds, %i.dt
  %i.dv = load ptr, ptr %1, align 8, !tbaa !129
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(57108) %1, i64 noundef %i.du, i32 noundef 0)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.dz = load i8, ptr %i.dy, align 8, !tbaa !104, !range !64, !noundef !65
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.am, label %.thread372

bb.am:                                            ; preds = %bb.al
  %13 = trunc nuw i8 %.2308 to i1
  br i1 %13, label %bb.an, label %.thread372.thread

bb.an:                                            ; preds = %bb.am
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 22328
  %i.ec = load i8, ptr %i.eb, align 8, !tbaa !123, !range !64, !noundef !65
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %bb.ao, label %.thread372.thread436

.thread372.thread436:                             ; preds = %bb.an
  store i8 0, ptr %i.dy, align 8, !tbaa !104
  br label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <4 x ptr> <ptr @.str, ptr @.str, ptr @.str, ptr @.str>, ptr %i.eg, align 8, !tbaa !67
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr @.str, ptr %i.eh, align 8, !tbaa !67
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr @.str, ptr %i.ei, align 8, !tbaa !67
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ej, i8 0, i64 40, i1 false)
  store i32 70, ptr %i.ek, align 8, !tbaa !70
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 96
  store ptr %i.ee, ptr %5, align 8, !tbaa !67
  store i32 2, ptr %i.el, align 8, !tbaa !71
  store ptr %i.c, ptr %i.ef, align 8, !tbaa !67
  call void @_ZN10uiMsgStore3MsgEv(ptr noundef nonnull align 8 dereferenceable(108) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.em = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 83424
  store i32 12, ptr %i.en, align 8, !tbaa !133
  call void @_ZN12ErrorHandler12SetErrorCodeE8RAR_EXIT(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, i32 noundef 6)
  br label %.thread372.thread

.thread372.thread:                                ; preds = %bb.ao, %bb.am
  store i8 0, ptr %i.dy, align 8, !tbaa !104
  br label %.preheader

.thread372:                                       ; preds = %bb.al
  store i8 0, ptr %i.dy, align 8, !tbaa !104
  %14 = trunc nuw i8 %.2308 to i1
  br i1 %14, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.thread372.thread, %.thread372
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !44 ; 2 uses
  %.not416 = icmp eq i64 %i.ep, 0
  br i1 %.not416, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.eq = load ptr, ptr %0, align 8, !tbaa !43
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aq
  %i.er = add nuw i64 %.0289415, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.er, %i.ep
  br i1 %exitcond.not, label %.loopexit, label %bb.aq, !llvm.loop !167

bb.aq:                                            ; preds = %.lr.ph, %bb.ap
  %.0289415 = phi i64 [ 0, %.lr.ph ], [ %i.er, %bb.ap ] ; 2 uses
  %i.es = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %.0289415 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !47
  %i.eu = call i32 @wcscmp(ptr noundef nonnull %i.c, ptr noundef %i.et) #23
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ar, label %bb.ap

bb.ar:                                            ; preds = %bb.aq
  %i.ew = load ptr, ptr %i.i, align 8, !tbaa !36  ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 58617
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !116, !range !64, !noundef !65
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8572 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !18
  %.not330 = icmp eq i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 16416
  %i.fe = select i1 %.not330, ptr %i.fd, ptr %i.fb
  call void @_Z8wcsncpyzPwPKwm(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fe, i64 noundef 2048)
  call void @_Z11AddEndSlashPwm(ptr noundef nonnull %i.fa, i64 noundef 2048)
  call void @_Z8wcsncatzPwPKwm(ptr noundef nonnull %i.fa, ptr noundef nonnull @.str.2, i64 noundef 2048)
  %i.ff = call noundef ptr @_Z6MkTempPwm(ptr noundef nonnull %i.fa, i64 noundef 2048) ; 0 uses
  %i.fg = call noalias ptr @wcsdup(ptr noundef nonnull %i.fa) #21
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !46
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ap, %.thread372.thread436, %.preheader, %bb.as, %bb.ar, %.thread372
  %.3309435 = phi i1 [ true, %.thread372 ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %.preheader ], [ true, %.thread372.thread436 ], [ false, %bb.ap ] ; 2 uses
  %.1291 = phi i1 [ false, %.thread372 ], [ true, %bb.ar ], [ true, %bb.as ], [ false, %.preheader ], [ false, %.thread372.thread436 ], [ false, %bb.ap ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 22331 ; 3 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !178, !range !64, !noundef !65
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.at, label %bb.av

bb.at:                                            ; preds = %.loopexit
  %i.fl = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 49201
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !179, !range !64, !noundef !65
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 48844
  %i.fq = load i8, ptr %i.fp, align 4, !tbaa !180, !range !64, !noundef !65
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.hf, label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.loopexit
  %.4310 = phi i1 [ %.3309435, %.loopexit ], [ %.3309435, %bb.at ], [ false, %bb.au ] ; 2 uses
  %or.cond8 = or i1 %.1291, %.4310
  br i1 %or.cond8, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48844
  %i.ft = load i8, ptr %i.fs, align 4, !tbaa !180, !range !64, !noundef !65
  %i.fu = trunc nuw i8 %i.ft to i1
  br i1 %i.fu, label %bb.ax, label %.thread404.thread

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0292 = phi i8 [ 0, %bb.av ], [ 1, %bb.aw ]    ; 4 uses
  %i.fv = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 58617
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !116, !range !64, !noundef !65
  %i.fy = trunc nuw i8 %i.fx to i1                ; 2 uses
  %i.fz = xor i1 %i.fy, true
  %i.ga = icmp ne i32 %i.l, 73
  %i.gb = select i1 %i.fy, i1 %i.ga, i1 false
  %i.gc = trunc nuw i8 %.0292 to i1               ; 2 uses
  %i.gd = call noundef zeroext i1 @_Z18uiStartFileExtractPKwbbb(ptr noundef nonnull %i.c, i1 noundef zeroext %i.fz, i1 noundef zeroext %i.gb, i1 noundef zeroext %i.gc)
  br i1 %i.gd, label %bb.ay, label %bb.hf

bb.ay:                                            ; preds = %bb.ax
  br i1 %.1291, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 8572
  call void @_ZN10CmdExtract15ExtrPrepareNameER7ArchivePKwPwm(ptr noundef nonnull align 8 dereferenceable(16800) %0, ptr noundef nonnull align 8 dereferenceable(57108) %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.ge, i64 noundef 2048)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br i1 %i.gc, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 8572
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !18
  %.not331 = icmp eq i32 %i.gg, 0
  br i1 %.not331, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 22328
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !123, !range !64, !noundef !65
  %i.gj = xor i8 %i.gi, 1
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.gk = phi i8 [ 0, %bb.bb ], [ 0, %bb.ba ], [ %i.gj, %bb.bc ] ; 5 uses
  %i.gl = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 57447
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !181, !range !64, !noundef !65
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 57448
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !182, !range !64, !noundef !65
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bf, label %bb.bn

bb.bf:                                            ; preds = %bb.be, %bb.bd
  switch i32 %i.l, label %bb.bn [
    i32 88, label %bb.bg
    i32 69, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.gs = getelementptr inbounds nuw i8, ptr %6, i64 8208 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gs, i8 0, i64 24, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 8572
  %i.gu = call noundef zeroext i1 @_ZN8FindFile8FastFindEPKwP8FindDatab(ptr noundef nonnull %i.gt, ptr noundef nonnull %6, i1 noundef zeroext false)
  br i1 %i.gu, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 22240
  %i.gw = load i64, ptr %i.gs, align 8, !tbaa !11 ; 2 uses
  %i.gx = load i64, ptr %i.gv, align 8, !tbaa !11
  %spec.select.i.not = icmp ult i64 %i.gw, %i.gx
  br i1 %spec.select.i.not, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gy = getelementptr inbounds nuw i8, ptr %6, i64 8204
  %i.gz = load i8, ptr %i.gy, align 4, !tbaa !183, !range !64, !noundef !65
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !11
  %i.hd = icmp ult i64 %i.gw, %i.hc
  br i1 %i.hd, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.he = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 57447
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !181, !range !64, !noundef !65
  %i.hh = trunc nuw i8 %i.hg to i1
  %spec.select365 = select i1 %i.hh, i8 0, i8 %i.gk
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bh, %bb.bk, %bb.bj
  %.0296 = phi i8 [ 0, %bb.bk ], [ %i.gk, %bb.bj ], [ %i.gk, %bb.bh ], [ %spec.select365, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bf, %bb.bm, %bb.be
  %.1297 = phi i8 [ %.0296, %bb.bm ], [ %i.gk, %bb.bf ], [ %i.gk, %bb.be ] ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 48840 ; 3 uses
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !122
  %i.hk = icmp eq i32 %i.hj, 3                    ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 14004 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !134 ; 2 uses
  %i.hn = icmp ult i32 %i.hm, 51
  %i.ho = add i32 %i.hm, -13
  %spec.select.i371 = icmp ult i32 %i.ho, 17
  %.0.i = select i1 %i.hk, i1 %i.hn, i1 %spec.select.i371
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 14008 ; 3 uses
  %i.hq = load i8, ptr %i.hp, align 8, !tbaa !135
  %i.hr = icmp eq i8 %i.hq, 0
  %spec.select10.not.i = select i1 %i.hr, i1 true, i1 %.0.i
  br i1 %spec.select10.not.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  call void @_ZN12ErrorHandler16UnknownMethodMsgEPKwS1_(ptr noundef nonnull align 4 dereferenceable(14) @ErrHandler, ptr noundef nonnull %i.hs, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ht = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_0
