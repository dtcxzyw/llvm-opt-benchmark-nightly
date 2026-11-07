Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/cct?download=true
inline.NumInlined: 161
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_Z9opt_parseiPPcPKcS2_PS2_S3_:bb.a

bb.av:                                            ; preds = %.lr.ph387, %bb.ax
  %indvars.iv438 = phi i64 [ %i.hr, %.lr.ph387 ], [ %indvars.iv.next439, %bb.ax ] ; 3 uses
  %i.it = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv438
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !20
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !27
  switch i8 %i.iv, label %._crit_edge388.loopexit [
    i8 45, label %bb.aw
    i8 43, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  tail call void @free(ptr noundef %i.c) #26
  %i.iw = load ptr, ptr @stderr, align 8, !tbaa !25
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.13, i64 53, i64 1, ptr %i.iw) #30 ; 0 uses
  br label %bb.az

bb.ax:                                            ; preds = %bb.av
  %i.ix = load i32, ptr %i.ht, align 8, !tbaa !33
  %i.iy = add nsw i32 %i.ix, 1
  store i32 %i.iy, ptr %i.ht, align 8, !tbaa !33
  %indvars.iv.next439 = add nsw i64 %indvars.iv438, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next439 to i32
  %exitcond441.not = icmp eq i32 %0, %lftr.wideiv
  br i1 %exitcond441.not, label %._crit_edge388.thread, label %bb.av, !llvm.loop !53

._crit_edge388.thread:                            ; preds = %bb.ax
  %i.iz = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.iz, align 4, !tbaa !17
  br label %bb.az

._crit_edge388.loopexit:                          ; preds = %bb.av
  %i.ja = trunc nsw i64 %indvars.iv438 to i32
  br label %._crit_edge388

._crit_edge388:                                   ; preds = %._crit_edge388.loopexit, %.preheader
  %.13.lcssa = phi i32 [ %.6.lcssa466, %.preheader ], [ %i.ja, %._crit_edge388.loopexit ] ; 3 uses
  %i.jb = sub nsw i32 %0, %.13.lcssa
  %i.jc = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.jb, ptr %i.jc, align 4, !tbaa !17
  %.not261 = icmp eq i32 %0, %.13.lcssa
  br i1 %.not261, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge388
  %i.jd = sext i32 %.13.lcssa to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %1, i64 %i.jd
  %i.jf = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !18
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge388.thread, %.thread289, %._crit_edge388, %bb.ay, %bb.at, %bb.au, %bb.b, %bb.a, %bb.aw, %.split368, %.split360, %.split349, %.split
  %.6229 = phi ptr [ %i.c, %bb.at ], [ null, %bb.a ], [ null, %.split ], [ null, %.split349 ], [ null, %.split360 ], [ null, %.split368 ], [ null, %.thread289 ], [ null, %bb.b ], [ null, %bb.aw ], [ %i.c, %bb.au ], [ %i.c, %bb.ay ], [ %i.c, %._crit_edge388 ], [ %i.c, %._crit_edge388.thread ]
  ret ptr %.6229
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %i.c = alloca [4 x i32], align 16               ; 11 uses
  %i.d = alloca [5 x ptr], align 16               ; 5 uses
  %i.e = alloca [7 x ptr], align 16               ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %3 = alloca %"class.std::allocator", align 1    ; 3 uses
  %4 = alloca %"class.std::basic_ifstream", align 8 ; 16 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.f = alloca [256 x i8], align 16              ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %struct.PJ_PROJ_INFO, align 8       ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %9 = alloca %union.PJ_COORD, align 8            ; 6 uses
  %10 = alloca %union.PJ_COORD, align 8           ; 7 uses
  %11 = alloca %union.PJ_COORD, align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i16 32, ptr %i.b, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const.main.columns_xyzt, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %i.d, ptr noundef nonnull align 16 dereferenceable(40) @__const.main.longflags, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.e, ptr noundef nonnull align 16 dereferenceable(56) @__const.main.longkeys, i64 56, i1 false)
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !25
  store ptr %i.h, ptr @fout, align 8, !tbaa !25
  tail call void @_Z38pj_stderr_proj_lib_deprecation_warningv()
  %i.i = call noundef ptr @_Z9opt_parseiPPcPKcS2_PS2_S3_(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 81 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread400, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.26) ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %_Z9opt_givenP7OPTARGSPKc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.n = zext nneg i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.r = icmp ult ptr %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.t = icmp ugt ptr %i.p, %i.s
  %narrow.i.not.i = select i1 %i.r, i1 true, i1 %i.t
  br i1 %narrow.i.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = and i64 %i.w, 4294967295
  %i.y = icmp ne i64 %i.x, 0
  br label %_Z9opt_givenP7OPTARGSPKc.exit

bb.e:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !20
  %i.ac = icmp ne ptr %i.ab, %i.p
  br label %_Z9opt_givenP7OPTARGSPKc.exit

_Z9opt_givenP7OPTARGSPKc.exit:                    ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i1 [ %i.ac, %bb.e ], [ %i.y, %bb.d ], [ false, %bb.b ]
  %i.ad = icmp eq i32 %0, 1
  %or.cond = or i1 %i.ad, %.0.i
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @_ZL5usage, ptr noundef %i.af) ; 0 uses
  call void @free(ptr noundef nonnull %i.i) #26
  br label %.thread400

bb.g:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit
  %i.ah = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.27) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_Z9opt_givenP7OPTARGSPKc.exit309, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.ak = zext nneg i32 %i.ah to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.ao = icmp ult ptr %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.aq = icmp ugt ptr %i.am, %i.ap
  %narrow.i.not.i307 = select i1 %i.ao, i1 true, i1 %i.aq
  br i1 %narrow.i.not.i307, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = and i64 %i.at, 4294967295
  %i.av = icmp eq i64 %i.au, 0
  br label %_Z9opt_givenP7OPTARGSPKc.exit309

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !26
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %.not = icmp eq ptr %i.ay, %i.am
  br label %_Z9opt_givenP7OPTARGSPKc.exit309

_Z9opt_givenP7OPTARGSPKc.exit309:                 ; preds = %bb.g, %bb.i, %bb.j
  %.0.i308 = phi i1 [ %.not, %bb.j ], [ %i.av, %bb.i ], [ true, %bb.g ]
  %i.az = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.28) ; 2 uses
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_Z9opt_givenP7OPTARGSPKc.exit312.thread.thread, label %bb.k

bb.k:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit309
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bc = zext nneg i32 %i.az to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !20 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.bg = icmp ult ptr %i.be, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.bi = icmp ugt ptr %i.be, %i.bh
  %narrow.i.not.i310 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %narrow.i.not.i310, label %bb.l, label %_Z9opt_givenP7OPTARGSPKc.exit312.a

bb.l:                                             ; preds = %bb.k
  %12 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp ne ptr %14, %i.be
  %16 = zext i1 %15 to i32
  br label %_Z9opt_givenP7OPTARGSPKc.exit312.thread.a

_Z9opt_givenP7OPTARGSPKc.exit312.a:               ; preds = %bb.k
  %17 = ptrtoint ptr %i.be to i64
  %18 = ptrtoint ptr %i.bf to i64
  %19 = sub i64 %17, %18
  %.fr409 = freeze i64 %19
  %20 = trunc i64 %.fr409 to i32                  ; 2 uses
  %21 = icmp sgt i32 %20, 3
  br i1 %21, label %.thread.a, label %_Z9opt_givenP7OPTARGSPKc.exit312.thread.a

_Z9opt_givenP7OPTARGSPKc.exit312.thread.a:        ; preds = %bb.l, %_Z9opt_givenP7OPTARGSPKc.exit312.a
  %i.bj = phi i32 [ %20, %_Z9opt_givenP7OPTARGSPKc.exit312.a ], [ %16, %bb.l ] ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.thread.a, label %_Z9opt_givenP7OPTARGSPKc.exit312.thread.thread

.thread.a:                                        ; preds = %_Z9opt_givenP7OPTARGSPKc.exit312.a, %_Z9opt_givenP7OPTARGSPKc.exit312.thread.a
  %22 = phi i32 [ %i.bj, %_Z9opt_givenP7OPTARGSPKc.exit312.thread.a ], [ 3, %_Z9opt_givenP7OPTARGSPKc.exit312.a ]
  %i.bl = call i32 @proj_log_level(ptr noundef null, i32 noundef %22) ; 0 uses
  br label %_Z9opt_givenP7OPTARGSPKc.exit312.thread.thread

_Z9opt_givenP7OPTARGSPKc.exit312.thread.thread:   ; preds = %_Z9opt_givenP7OPTARGSPKc.exit309, %.thread.a, %_Z9opt_givenP7OPTARGSPKc.exit312.thread.a
  %i.bm = load ptr, ptr @fout, align 8, !tbaa !25
  call void @proj_log_func(ptr noundef null, ptr noundef %i.bm, ptr noundef nonnull @_ZL6loggerPviPKc)
  %i.bn = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.17) ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_Z9opt_givenP7OPTARGSPKc.exit315.thread, label %bb.m

bb.m:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit312.thread.thread
  %i.bp = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bq = zext nneg i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !20 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.bu = icmp ult ptr %i.bs, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.bw = icmp ugt ptr %i.bs, %i.bv
  %narrow.i.not.i313 = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %narrow.i.not.i313, label %.split, label %_Z9opt_givenP7OPTARGSPKc.exit315

.split:                                           ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !20
  %.not410.a = icmp eq ptr %i.bz, %i.bs
  br i1 %.not410.a, label %_Z9opt_givenP7OPTARGSPKc.exit315.thread, label %bb.n

_Z9opt_givenP7OPTARGSPKc.exit315:                 ; preds = %bb.m
  %i.ca = ptrtoint ptr %i.bs to i64
  %i.cb = ptrtoint ptr %i.bt to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = and i64 %i.cc, 4294967295
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_Z9opt_givenP7OPTARGSPKc.exit315.thread, label %bb.n

bb.n:                                             ; preds = %.split, %_Z9opt_givenP7OPTARGSPKc.exit315
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ch = call noundef ptr @_Z14pj_get_releasev()
  call void (i32, ptr, ...) @_ZL5print12PJ_LOG_LEVELPKcz(i32 noundef 0, ptr noundef nonnull @.str.29, ptr noundef %i.cg, ptr noundef %i.ch)
  call void @free(ptr noundef nonnull %i.i) #26
  br label %.thread400

_Z9opt_givenP7OPTARGSPKc.exit315.thread:          ; preds = %.split, %_Z9opt_givenP7OPTARGSPKc.exit312.thread.thread, %_Z9opt_givenP7OPTARGSPKc.exit315
  %i.ci = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.30) ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %thread-pre-split, label %bb.o

bb.o:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit315.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %i.i, i64 96 ; 2 uses
  %i.cl = zext nneg i32 %i.ci to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !20 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.cp = icmp ult ptr %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.cr = icmp ugt ptr %i.cn, %i.cq
  %narrow.i.not.i316 = select i1 %i.cp, i1 true, i1 %i.cr
  br i1 %narrow.i.not.i316, label %.split515.a, label %_Z9opt_givenP7OPTARGSPKc.exit318

.split515.a:                                      ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !26
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !20
  %.not411.a = icmp eq ptr %i.cu, %i.cn
  br i1 %.not411.a, label %thread-pre-split, label %bb.p

_Z9opt_givenP7OPTARGSPKc.exit318:                 ; preds = %bb.o
  %i.cv = ptrtoint ptr %i.cn to i64
  %i.cw = ptrtoint ptr %i.co to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = and i64 %i.cx, 4294967295
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %thread-pre-split, label %bb.p

bb.p:                                             ; preds = %.split515.a, %_Z9opt_givenP7OPTARGSPKc.exit318
  %i.da = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull readonly %i.i, ptr noundef nonnull @.str.31) ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %_Z7opt_argP7OPTARGSPKc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dc = zext nneg i32 %i.da to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dc
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20
  br label %_Z7opt_argP7OPTARGSPKc.exit

_Z7opt_argP7OPTARGSPKc.exit:                      ; preds = %bb.p, %bb.q
  %.0.i319 = phi ptr [ %i.de, %bb.q ], [ null, %bb.p ]
  %i.df = call noalias ptr @fopen(ptr noundef %.0.i319, ptr noundef nonnull @.str.32) ; 2 uses
  store ptr %i.df, ptr @fout, align 8, !tbaa !25
  br label %bb.r

thread-pre-split:                                 ; preds = %.split515.a, %_Z9opt_givenP7OPTARGSPKc.exit315.thread, %_Z9opt_givenP7OPTARGSPKc.exit318
  %.pr = load ptr, ptr @fout, align 8, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split, %_Z7opt_argP7OPTARGSPKc.exit
  %i.dg = phi ptr [ %.pr, %thread-pre-split ], [ %i.df, %_Z7opt_argP7OPTARGSPKc.exit ]
  %i.dh = icmp eq ptr %i.dg, null
  %i.di = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 7 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !31 ; 2 uses
  br i1 %i.dh, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dk = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull readonly %i.i, ptr noundef nonnull @.str.31) ; 2 uses
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %_Z7opt_argP7OPTARGSPKc.exit321, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.dn = zext nneg i32 %i.dk to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20
  br label %_Z7opt_argP7OPTARGSPKc.exit321

_Z7opt_argP7OPTARGSPKc.exit321:                   ; preds = %bb.s, %bb.t
  %.0.i320 = phi ptr [ %i.dp, %bb.t ], [ null, %bb.s ]
  call void (i32, ptr, ...) @_ZL5print12PJ_LOG_LEVELPKcz(i32 noundef 1, ptr noundef nonnull @.str.33, ptr noundef %i.dj, ptr noundef %.0.i320)
  call void @free(ptr noundef nonnull %i.i) #26
  br label %.thread400

bb.u:                                             ; preds = %bb.r
  call void (i32, ptr, ...) @_ZL5print12PJ_LOG_LEVELPKcz(i32 noundef 3, ptr noundef nonnull @.str.34, ptr noundef %i.dj)
  %i.dq = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.35) ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %_Z9opt_givenP7OPTARGSPKc.exit324.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.dt = zext nneg i32 %i.dq to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !20 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.dx = icmp ult ptr %i.dv, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.dz = icmp ugt ptr %i.dv, %i.dy
  %narrow.i.not.i322 = select i1 %i.dx, i1 true, i1 %i.dz
  br i1 %narrow.i.not.i322, label %.split516, label %_Z9opt_givenP7OPTARGSPKc.exit324

.split516:                                        ; preds = %bb.v
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !26
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !20
  %.not412.a = icmp eq ptr %i.ec, %i.dv
  br i1 %.not412.a, label %_Z9opt_givenP7OPTARGSPKc.exit324.thread, label %_Z7opt_argP7OPTARGSPKc.exit326

_Z9opt_givenP7OPTARGSPKc.exit324:                 ; preds = %bb.v
  %i.ed = ptrtoint ptr %i.dv to i64
  %i.ee = ptrtoint ptr %i.dw to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = and i64 %i.ef, 4294967295
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %_Z9opt_givenP7OPTARGSPKc.exit324.thread, label %_Z7opt_argP7OPTARGSPKc.exit326

_Z7opt_argP7OPTARGSPKc.exit326:                   ; preds = %.split516, %_Z9opt_givenP7OPTARGSPKc.exit324
  %i.ei = call noundef double @_Z9proj_atofPKc(ptr noundef %i.dv)
  br label %_Z9opt_givenP7OPTARGSPKc.exit324.thread

_Z9opt_givenP7OPTARGSPKc.exit324.thread:          ; preds = %.split516, %bb.u, %_Z7opt_argP7OPTARGSPKc.exit326, %_Z9opt_givenP7OPTARGSPKc.exit324
  %.0233 = phi i32 [ 3, %_Z7opt_argP7OPTARGSPKc.exit326 ], [ 4, %_Z9opt_givenP7OPTARGSPKc.exit324 ], [ 4, %bb.u ], [ 4, %.split516 ] ; 4 uses
  %.0228 = phi double [ %i.ei, %_Z7opt_argP7OPTARGSPKc.exit326 ], [ +inf, %_Z9opt_givenP7OPTARGSPKc.exit324 ], [ +inf, %bb.u ], [ +inf, %.split516 ]
  %i.ej = call fastcc noundef i32 @_ZL11opt_ordinalP7OPTARGSPKc(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.36) ; 2 uses
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %_Z9opt_givenP7OPTARGSPKc.exit329.thread, label %bb.w

bb.w:                                             ; preds = %_Z9opt_givenP7OPTARGSPKc.exit324.thread
  %i.el = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.em = zext nneg i32 %i.ej to i64
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !20 ; 5 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %i.eq = icmp ult ptr %i.eo, %i.ep
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.es = icmp ugt ptr %i.eo, %i.er
  %narrow.i.not.i327 = select i1 %i.eq, i1 true, i1 %i.es
  br i1 %narrow.i.not.i327, label %.split517, label %_Z9opt_givenP7OPTARGSPKc.exit329

.split517:                                        ; preds = %bb.w
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !26
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !20
  %.not413.a = icmp eq ptr %i.ev, %i.eo
  br i1 %.not413.a, label %_Z9opt_givenP7OPTARGSPKc.exit329.thread, label %_Z7opt_argP7OPTARGSPKc.exit331

_Z9opt_givenP7OPTARGSPKc.exit329:                 ; preds = %bb.w
  %i.ew = ptrtoint ptr %i.eo to i64
  %i.ex = ptrtoint ptr %i.ep to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_Z9opt_givenP7OPTARGSPKc.exit329.thread, label %_Z7opt_argP7OPTARGSPKc.exit331

_Z7opt_argP7OPTARGSPKc.exit331:                   ; preds = %.split517, %_Z9opt_givenP7OPTARGSPKc.exit329
  %i.fb = call noundef double @_Z9proj_atofPKc(ptr noundef %i.eo)
  %i.fc = add nsw i32 %.0233, -1
  br label %_Z9opt_givenP7OPTARGSPKc.exit329.thread

_Z9opt_givenP7OPTARGSPKc.exit329.thread:          ; preds = %.split517, %_Z9opt_givenP7OPTARGSPKc.exit324.thread, %_Z7opt_argP7OPTARGSPKc.exit331, %_Z9opt_givenP7OPTARGSPKc.exit329
  %.1234 = phi i32 [ %i.fc, %_Z7opt_argP7OPTARGSPKc.exit331 ], [ %.0233, %_Z9opt_givenP7OPTARGSPKc.exit329 ], [ %.0233, %_Z9opt_givenP7OPTARGSPKc.exit324.thread ], [ %.0233, %.split517 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_Z16parse_input_linePKcPidd:bb.a

bb.o:                                             ; preds = %bb.n
  %i.cn = icmp eq i32 %.026.i.i54, %i.ce
  br i1 %i.cn, label %_ZL4coldPKci.exit68, label %.preheader.i.i58

.preheader.i.i58:                                 ; preds = %bb.o
  %.not1721.i.i59 = icmp eq i8 %i.ch, 0
  br i1 %.not1721.i.i59, label %.critedge.i.i63, label %.lr.ph.i.i60

.lr.ph.i.i60:                                     ; preds = %.preheader.i.i58, %bb.p
  %i.co = phi i8 [ %i.cu, %bb.p ], [ %i.ch, %.preheader.i.i58 ]
  %.222.i.i61 = phi ptr [ %i.ct, %bb.p ], [ %.1.i.i56, %.preheader.i.i58 ] ; 2 uses
  %i.cp = sext i8 %i.co to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !43
  %i.cs = and i16 %i.cr, 8192
  %.not18.i.i62 = icmp eq i16 %i.cs, 0
  br i1 %.not18.i.i62, label %bb.p, label %.critedge.i.i63

bb.p:                                             ; preds = %.lr.ph.i.i60
  %i.ct = getelementptr inbounds nuw i8, ptr %.222.i.i61, i64 1 ; 3 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !27  ; 2 uses
  %.not17.i.i65 = icmp eq i8 %i.cu, 0
  br i1 %.not17.i.i65, label %.critedge.i.i63, label %.lr.ph.i.i60, !llvm.loop !1

.critedge.i.i63:                                  ; preds = %bb.p, %.lr.ph.i.i60, %.preheader.i.i58
  %.2.lcssa.i.i64 = phi ptr [ %.1.i.i56, %.preheader.i.i58 ], [ %.222.i.i61, %.lr.ph.i.i60 ], [ %i.ct, %bb.p ]
  %i.cv = add nuw nsw i32 %.026.i.i54, 1
  br label %.preheader19.i.i53

_ZL4coldPKci.exit68:                              ; preds = %bb.o, %bb.m
  %.013.i.i66 = phi ptr [ %1, %bb.m ], [ %.1.i.i56, %bb.o ] ; 2 uses
  %i.cw = call noundef double @_Z11proj_strtodPKcPPc(ptr noundef %.013.i.i66, ptr noundef nonnull %i.a)
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !20
  %i.cy = icmp eq ptr %i.cx, %.013.i.i66
  %..i67 = select i1 %i.cy, double +inf, double %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.q

bb.q:                                             ; preds = %_ZL4coldPKci.exit68, %bb.l
  %.sroa.9.0 = phi double [ %..i67, %_ZL4coldPKci.exit68 ], [ %4, %bb.l ]
  %i.cz = load i32, ptr %i.e, align 4, !tbaa !34
  %.not = icmp eq i32 %i.cz, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !104
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 %i.f, ptr %i.e, align 4, !tbaa !34
  store double %..i, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %..i33, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sroa.6.0, ptr %.sroa.6.0..sroa_idx4, align 8
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.9.0, ptr %.sroa.9.0..sroa_idx6, align 8, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_ZL6columnPci(ptr nofree noundef nonnull readonly captures(ret: address, provenance) %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, -1
  %i.b = tail call ptr @__ctype_b_loc() #34
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  br label %.preheader19.i

.preheader19.i:                                   ; preds = %.critedge.i, %bb.a
  %.026.i = phi i32 [ 0, %bb.a ], [ %i.r, %.critedge.i ] ; 2 uses
  %.01425.i = phi ptr [ %0, %bb.a ], [ %.2.lcssa.i, %.critedge.i ]
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader19.i
  %.1.i = phi ptr [ %i.i, %bb.b ], [ %.01425.i, %.preheader19.i ] ; 5 uses
  %i.d = load i8, ptr %.1.i, align 1, !tbaa !27   ; 3 uses
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.e
  %i.g = load i16, ptr %i.f, align 2, !tbaa !43
  %i.h = and i16 %i.g, 8192
  %.not.i = icmp eq i16 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i32 %.026.i, %i.a
  br i1 %i.j, label %_ZL6columnPKci.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %.not1721.i = icmp eq i8 %i.d, 0
  br i1 %.not1721.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %i.k = phi i8 [ %i.q, %bb.d ], [ %i.d, %.preheader.i ]
  %.222.i = phi ptr [ %i.p, %bb.d ], [ %.1.i, %.preheader.i ] ; 2 uses
  %i.l = sext i8 %i.k to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !43
  %i.o = and i16 %i.n, 8192
  %.not18.i = icmp eq i16 %i.o, 0
  br i1 %.not18.i, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.222.i, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !27    ; 2 uses
  %.not17.i = icmp eq i8 %i.q, 0
  br i1 %.not17.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.d, %.lr.ph.i, %.preheader.i
  %.2.lcssa.i = phi ptr [ %.1.i, %.preheader.i ], [ %i.p, %bb.d ], [ %.222.i, %.lr.ph.i ]
  %i.r = add nuw nsw i32 %.026.i, 1
  br label %.preheader19.i

_ZL6columnPKci.exit:                              ; preds = %bb.c
  ret ptr %.1.i
}

declare i32 @proj_angular_input(ptr noundef, i32 noundef) local_unnamed_addr #11

declare double @proj_torad(double noundef) local_unnamed_addr #11

declare i32 @proj_errno_reset(ptr noundef) local_unnamed_addr #11

declare void @proj_trans(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, ptr noundef, i32 noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #11

declare i32 @proj_errno_restore(ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @proj_angular_output(ptr noundef, i32 noundef) local_unnamed_addr #11

declare i32 @proj_degree_output(ptr noundef, i32 noundef) local_unnamed_addr #11

declare double @proj_todeg(double noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

declare void @proj_coord(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #17

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #16

declare noundef double @_Z11proj_strtodPKcPPc(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #20

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef zeroext i1 @_ZNKSt12__basic_fileIcE7is_openEv(ptr noundef nonnull align 8 dereferenceable(9)) local_unnamed_addr #21

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #20

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #25

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind willreturn memory(read) }
attributes #29 = { nounwind allocsize(0,1) }
attributes #30 = { cold }
attributes #31 = { cold noreturn nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind willreturn memory(none) }
attributes #35 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"any p2 pointer", !11, i64 0}
!13 = !{!"p2 omnipotent char", !12, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!"_ZTS7OPTARGS", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !14, i64 48, !8, i64 56, !8, i64 60, !15, i64 64, !7, i64 72, !7, i64 96, !15, i64 2144, !15, i64 2152, !13, i64 2160, !13, i64 2168}
!17 = !{!16, !8, i64 12}
!18 = !{!16, !13, i64 40}
!19 = !{!16, !8, i64 56}
!20 = !{!15, !15, i64 0}
!21 = !{!16, !8, i64 60}
!22 = !{!"bool", !7, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!16, !14, i64 48}
!25 = !{!14, !14, i64 0}
!26 = !{!16, !13, i64 16}
!27 = !{!7, !7, i64 0}
!28 = !{!16, !13, i64 2160}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!16, !13, i64 2168}
!31 = !{!16, !15, i64 64}
!32 = !{!16, !13, i64 32}
!33 = !{!16, !8, i64 8}
!34 = !{!8, !8, i64 0}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!36 = !{!"long", !7, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !36, i64 8, !7, i64 16}
!38 = !{!37, !36, i64 8}
!39 = !{!37, !15, i64 0}
!40 = !{!"p1 short", !11, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!"short", !7, i64 0}
!43 = !{!42, !42, i64 0}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !55}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !55}
!50 = distinct !{!50, !29}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = !{!16, !8, i64 0}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{!16, !13, i64 24}
!57 = !{!16, !8, i64 4}
!58 = distinct !{null}
!59 = distinct !{null}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = !{!"vtable pointer", !6, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!66 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!67 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!68 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !36, i64 8}
!69 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!70 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!71 = !{!"_ZTSSt6locale", !70, i64 0}
!72 = !{!"_ZTSSt8ios_base", !36, i64 8, !36, i64 16, !65, i64 24, !66, i64 28, !66, i64 32, !67, i64 40, !68, i64 48, !7, i64 64, !8, i64 192, !69, i64 200, !71, i64 208}
!73 = !{!72, !66, i64 32}
!74 = !{!"_ZTSSi", !36, i64 8}
!75 = !{!74, !36, i64 8}
!76 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!77 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!78 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!79 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!80 = !{!"double", !7, i64 0}
!81 = !{!"_ZTS11pj_io_units", !7, i64 0}
!82 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!83 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!84 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0}
!85 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !82, i64 0, !84, i64 8}
!86 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !85, i64 0}
!87 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !88, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !89, i64 0}
!91 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !90, i64 0}
!92 = !{!"_ZTS7PJ_TYPE", !7, i64 0}
!93 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !96, i64 0}
!98 = !{!"_ZTS8PJconsts", !76, i64 0, !15, i64 8, !15, i64 16, !77, i64 24, !15, i64 32, !78, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !79, i64 80, !11, i64 88, !8, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !80, i64 168, !80, i64 176, !80, i64 184, !80, i64 192, !80, i64 200, !80, i64 208, !80, i64 216, !80, i64 224, !80, i64 232, !80, i64 240, !80, i64 248, !80, i64 256, !80, i64 264, !80, i64 272, !80, i64 280, !80, i64 288, !80, i64 296, !80, i64 304, !80, i64 312, !80, i64 320, !80, i64 328, !80, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !8, i64 376, !81, i64 380, !81, i64 384, !78, i64 392, !78, i64 400, !78, i64 408, !78, i64 416, !78, i64 424, !78, i64 432, !80, i64 440, !80, i64 448, !80, i64 456, !80, i64 464, !80, i64 472, !80, i64 480, !80, i64 488, !80, i64 496, !80, i64 504, !80, i64 512, !80, i64 520, !8, i64 528, !7, i64 536, !8, i64 592, !11, i64 600, !11, i64 608, !80, i64 616, !80, i64 624, !8, i64 632, !7, i64 636, !86, i64 640, !22, i64 656, !80, i64 664, !22, i64 672, !37, i64 680, !37, i64 712, !37, i64 744, !22, i64 776, !91, i64 784, !92, i64 808, !97, i64 816, !8, i64 840, !22, i64 844, !22, i64 845, !22, i64 846, !78, i64 848}
!99 = !{!98, !8, i64 96}
!100 = !{i8 0, i8 2}
!101 = !{}
!102 = !{!35, !15, i64 0}
!103 = !{!36, !36, i64 0}
!104 = !{i64 0, i64 32, !27}
end_hunk_1
