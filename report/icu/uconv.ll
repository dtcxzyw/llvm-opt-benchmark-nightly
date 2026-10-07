Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uconv?download=true
inline.NumInlined: 116
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %i.ik = call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.52, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not341 = icmp eq i32 %i.ik, 0
  br i1 %.not341, label %bb.cp, label %sub_0496

bb.cp:                                            ; preds = %bb.co, %.tail490
  %i.il = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef nonnull %.0221) ; 0 uses
  br label %bb.fu

sub_0496:                                         ; preds = %bb.co
  br i1 %.not, label %sub_1497, label %.tail495

sub_1497:                                         ; preds = %sub_0496
  %i.im = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.in = load i8, ptr %i.im, align 1             ; 2 uses
  %i.io = zext i8 %i.in to i32
  %i.ip = sub nsw i32 111, %i.io
  %.not1089 = icmp eq i8 %i.in, 111
  br i1 %.not1089, label %sub_2498, label %.tail495

sub_2498:                                         ; preds = %sub_1497
  %i.iq = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ir = load i8, ptr %i.iq, align 1
  %i.is = zext i8 %i.ir to i32
  %i.it = sub nsw i32 0, %i.is
  br label %.tail495

.tail495:                                         ; preds = %sub_0496, %sub_1497, %sub_2498
  %i.iu = phi i32 [ %i.v, %sub_0496 ], [ %i.ip, %sub_1497 ], [ %i.it, %sub_2498 ]
  %.not342 = icmp eq i32 %i.iu, 0
  br i1 %.not342, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.tail495
  %i.iv = call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.55, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %.not343 = icmp eq i32 %i.iv, 0
  br i1 %.not343, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq, %.tail495
  %i.iw = getelementptr inbounds nuw i8, ptr %.02241037, i64 8 ; 3 uses
  %i.ix = icmp eq ptr %i.iw, %i.h
  %i.iy = icmp ne ptr %.02451031, null
  %or.cond6 = select i1 %i.ix, i1 true, i1 %i.iy
  br i1 %or.cond6, label %.invoke, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.iz = load ptr, ptr %i.iw, align 8, !tbaa !24
  br label %bb.da

bb.ct:                                            ; preds = %bb.cq
  %i.ja = call i32 @strcmp(ptr noundef nonnull dereferenceable(16) @.str.56, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  store i8 1, ptr %i.r, align 8, !tbaa !21
  br label %bb.da

bb.cv:                                            ; preds = %bb.ct
  %i.jc = call i32 @strcmp(ptr noundef nonnull dereferenceable(19) @.str.57, ptr noundef nonnull dereferenceable(1) %i.s) #21
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store i8 -1, ptr %i.r, align 8, !tbaa !21
  br label %bb.da

bb.cx:                                            ; preds = %bb.cv
  br i1 %.not, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.je = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !11
  %.not344 = icmp eq i8 %i.jf, 0
  br i1 %.not344, label %bb.cz, label %.invoke

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0222.add = add nuw nsw i64 %.0222.idx1038, 8
  store ptr %i.s, ptr %.0222.ptr1044, align 8, !tbaa !24
  br label %bb.da

bb.da:                                            ; preds = %bb.cl, %bb.by, %bb.bl, %.thread, %.tail485, %bb.cn, %.tail480, %bb.cm, %.tail475, %.tail470, %bb.ax, %bb.av, %bb.af, %bb.ac, %bb.o, %bb.n, %bb.h, %bb.m, %bb.cs, %bb.cw, %bb.cz, %bb.cu, %bb.r, %bb.k
  %.1256 = phi i64 [ %.02551027, %bb.h ], [ %.02551027, %bb.cm ], [ %.02551027, %bb.k ], [ %.02551027, %.tail470 ], [ %.02551027, %bb.m ], [ %.02551027, %bb.by ], [ %i.ca, %bb.r ], [ %.02551027, %bb.ax ], [ %.02551027, %bb.o ], [ %.02551027, %bb.ac ], [ %.02551027, %.thread ], [ %.02551027, %bb.bl ], [ %.02551027, %bb.af ], [ %.02551027, %bb.av ], [ %.02551027, %bb.n ], [ %.02551027, %bb.cu ], [ %.02551027, %bb.cw ], [ %.02551027, %.tail485 ], [ %.02551027, %bb.cz ], [ %.02551027, %bb.cn ], [ %.02551027, %bb.cs ], [ %.02551027, %.tail480 ], [ %.02551027, %.tail475 ], [ %.02551027, %bb.cl ] ; 5 uses
  %.1253 = phi ptr [ %i.ai, %bb.h ], [ %.02521028, %bb.cm ], [ %.02521028, %bb.k ], [ %.02521028, %.tail470 ], [ %.02521028, %bb.m ], [ %.02521028, %bb.by ], [ %.02521028, %bb.r ], [ %.02521028, %bb.ax ], [ %.02521028, %bb.o ], [ %.02521028, %bb.ac ], [ %.02521028, %.thread ], [ %.02521028, %bb.bl ], [ %.02521028, %bb.af ], [ %.02521028, %bb.av ], [ %.02521028, %bb.n ], [ %.02521028, %bb.cu ], [ %.02521028, %bb.cw ], [ %.02521028, %.tail485 ], [ %.02521028, %bb.cz ], [ %.02521028, %bb.cn ], [ %.02521028, %bb.cs ], [ %.02521028, %.tail480 ], [ %.02521028, %.tail475 ], [ %.02521028, %bb.cl ] ; 6 uses
  %.1250 = phi ptr [ %.02491029, %bb.h ], [ %.02491029, %bb.cm ], [ %i.aw, %bb.k ], [ %.02491029, %.tail470 ], [ %.02491029, %bb.m ], [ %.02491029, %bb.by ], [ %.02491029, %bb.r ], [ %.02491029, %bb.ax ], [ %.02491029, %bb.o ], [ %.02491029, %bb.ac ], [ %.02491029, %.thread ], [ %.02491029, %bb.bl ], [ %.02491029, %bb.af ], [ %.02491029, %bb.av ], [ %.02491029, %bb.n ], [ %.02491029, %bb.cu ], [ %.02491029, %bb.cw ], [ %.02491029, %.tail485 ], [ %.02491029, %bb.cz ], [ %.02491029, %bb.cn ], [ %.02491029, %bb.cs ], [ %.02491029, %.tail480 ], [ %.02491029, %.tail475 ], [ %.02491029, %bb.cl ] ; 5 uses
  %.1248 = phi ptr [ %.02471030, %bb.h ], [ %.02471030, %bb.cm ], [ %.02471030, %bb.k ], [ %.02471030, %.tail470 ], [ %i.bi, %bb.m ], [ %.02471030, %bb.by ], [ %.02471030, %bb.r ], [ %.02471030, %bb.ax ], [ %.02471030, %bb.o ], [ %.02471030, %bb.ac ], [ %.02471030, %.thread ], [ %.02471030, %bb.bl ], [ %.02471030, %bb.af ], [ %.02471030, %bb.av ], [ %.02471030, %bb.n ], [ %.02471030, %bb.cu ], [ %.02471030, %bb.cw ], [ %.02471030, %.tail485 ], [ %.02471030, %bb.cz ], [ %.02471030, %bb.cn ], [ %.02471030, %bb.cs ], [ %.02471030, %.tail480 ], [ %.02471030, %.tail475 ], [ %.02471030, %bb.cl ] ; 5 uses
  %.1246 = phi ptr [ %.02451031, %bb.h ], [ %.02451031, %bb.cm ], [ %.02451031, %bb.k ], [ %.02451031, %.tail470 ], [ %.02451031, %bb.m ], [ %.02451031, %bb.by ], [ %.02451031, %bb.r ], [ %.02451031, %bb.ax ], [ %.02451031, %bb.o ], [ %.02451031, %bb.ac ], [ %.02451031, %.thread ], [ %.02451031, %bb.bl ], [ %.02451031, %bb.af ], [ %.02451031, %bb.av ], [ %.02451031, %bb.n ], [ %.02451031, %bb.cu ], [ %.02451031, %bb.cw ], [ %.02451031, %.tail485 ], [ %.02451031, %bb.cz ], [ %.02451031, %bb.cn ], [ %i.iz, %bb.cs ], [ %.02451031, %.tail480 ], [ %.02451031, %.tail475 ], [ %.02451031, %bb.cl ] ; 5 uses
  %.1244 = phi i8 [ %.02431032, %bb.h ], [ %.02431032, %bb.cm ], [ %.02431032, %bb.k ], [ %.02431032, %.tail470 ], [ %.02431032, %bb.m ], [ %.02431032, %bb.by ], [ %.02431032, %bb.r ], [ %.02431032, %bb.ax ], [ 0, %bb.o ], [ %.02431032, %bb.ac ], [ %.02431032, %.thread ], [ %.02431032, %bb.bl ], [ %.02431032, %bb.af ], [ %.02431032, %bb.av ], [ 1, %bb.n ], [ %.02431032, %bb.cu ], [ %.02431032, %bb.cw ], [ %.02431032, %.tail485 ], [ %.02431032, %bb.cz ], [ %.02431032, %bb.cn ], [ %.02431032, %bb.cs ], [ %.02431032, %.tail480 ], [ %.02431032, %.tail475 ], [ %.02431032, %bb.cl ] ; 5 uses
  %.3242 = phi ptr [ %.02391033, %bb.h ], [ %.02391033, %bb.cm ], [ %.02391033, %bb.k ], [ @UCNV_FROM_U_CALLBACK_SKIP_78, %.tail470 ], [ %.02391033, %bb.m ], [ %.02391033, %bb.by ], [ %.02391033, %bb.r ], [ %.02391033, %bb.ax ], [ %.02391033, %bb.o ], [ %.02391033, %bb.ac ], [ %.02391033, %.thread ], [ %i.fn, %bb.bl ], [ %.02391033, %bb.af ], [ %.02391033, %bb.av ], [ %.02391033, %bb.n ], [ %.02391033, %bb.cu ], [ %.02391033, %bb.cw ], [ %.02391033, %.tail485 ], [ %.02391033, %bb.cz ], [ %.02391033, %bb.cn ], [ %.02391033, %bb.cs ], [ %.02391033, %.tail480 ], [ %.02391033, %.tail475 ], [ %i.ha, %bb.cl ] ; 5 uses
  %.3238 = phi ptr [ %.02351034, %bb.h ], [ %.02351034, %bb.cm ], [ %.02351034, %bb.k ], [ %.02351034, %.tail470 ], [ %.02351034, %bb.m ], [ %.02351034, %bb.by ], [ %.02351034, %bb.r ], [ %.02351034, %bb.ax ], [ %.02351034, %bb.o ], [ %.02351034, %bb.ac ], [ %.02351034, %.thread ], [ %i.fp, %bb.bl ], [ %.02351034, %bb.af ], [ %.02351034, %bb.av ], [ %.02351034, %bb.n ], [ %.02351034, %bb.cu ], [ %.02351034, %bb.cw ], [ %.02351034, %.tail485 ], [ %.02351034, %bb.cz ], [ %.02351034, %bb.cn ], [ %.02351034, %bb.cs ], [ %.02351034, %.tail480 ], [ %.02351034, %.tail475 ], [ %i.hc, %bb.cl ] ; 5 uses
  %.3234 = phi ptr [ %.02311035, %bb.h ], [ %.02311035, %bb.cm ], [ %.02311035, %bb.k ], [ %.02311035, %.tail470 ], [ %.02311035, %bb.m ], [ %i.gc, %bb.by ], [ %.02311035, %bb.r ], [ %.02311035, %bb.ax ], [ %.02311035, %bb.o ], [ %.02311035, %bb.ac ], [ %.02311035, %.thread ], [ %.02311035, %bb.bl ], [ %.02311035, %bb.af ], [ %.02311035, %bb.av ], [ %.02311035, %bb.n ], [ %.02311035, %bb.cu ], [ %.02311035, %bb.cw ], [ %.02311035, %.tail485 ], [ %.02311035, %bb.cz ], [ %.02311035, %bb.cn ], [ %.02311035, %bb.cs ], [ %.02311035, %.tail480 ], [ @UCNV_TO_U_CALLBACK_SKIP_78, %.tail475 ], [ %i.he, %bb.cl ] ; 5 uses
  %.3230 = phi ptr [ %.02271036, %bb.h ], [ %.02271036, %bb.cm ], [ %.02271036, %bb.k ], [ %.02271036, %.tail470 ], [ %.02271036, %bb.m ], [ %i.ge, %bb.by ], [ %.02271036, %bb.r ], [ %.02271036, %bb.ax ], [ %.02271036, %bb.o ], [ %.02271036, %bb.ac ], [ %.02271036, %.thread ], [ %.02271036, %bb.bl ], [ %.02271036, %bb.af ], [ %.02271036, %bb.av ], [ %.02271036, %bb.n ], [ %.02271036, %bb.cu ], [ %.02271036, %bb.cw ], [ %.02271036, %.tail485 ], [ %.02271036, %bb.cz ], [ %.02271036, %bb.cn ], [ %.02271036, %bb.cs ], [ %.02271036, %.tail480 ], [ %.02271036, %.tail475 ], [ %i.hg, %bb.cl ] ; 5 uses
  %.1225 = phi ptr [ %i.ah, %bb.h ], [ %.02241037, %bb.cm ], [ %i.av, %bb.k ], [ %.02241037, %.tail470 ], [ %i.bh, %bb.m ], [ %i.fr, %bb.by ], [ %i.bw, %bb.r ], [ %.02241037, %bb.ax ], [ %.02241037, %bb.o ], [ %.02241037, %bb.ac ], [ %i.cy, %.thread ], [ %i.fc, %bb.bl ], [ %.02241037, %bb.af ], [ %.02241037, %bb.av ], [ %.02241037, %bb.n ], [ %.02241037, %bb.cu ], [ %.02241037, %bb.cw ], [ %.02241037, %.tail485 ], [ %.02241037, %bb.cz ], [ %.02241037, %bb.cn ], [ %i.iw, %bb.cs ], [ %.02241037, %.tail480 ], [ %.02241037, %.tail475 ], [ %i.gp, %bb.cl ]
  %.1223.idx = phi i64 [ %.0222.idx1038, %bb.h ], [ %.0222.idx1038, %bb.cm ], [ %.0222.idx1038, %bb.k ], [ %.0222.idx1038, %.tail470 ], [ %.0222.idx1038, %bb.m ], [ %.0222.idx1038, %bb.by ], [ %.0222.idx1038, %bb.r ], [ %.0222.idx1038, %bb.ax ], [ %.0222.idx1038, %bb.o ], [ %.0222.idx1038, %bb.ac ], [ %.0222.idx1038, %.thread ], [ %.0222.idx1038, %bb.bl ], [ %.0222.idx1038, %bb.af ], [ %.0222.idx1038, %bb.av ], [ %.0222.idx1038, %bb.n ], [ %.0222.idx1038, %bb.cu ], [ %.0222.idx1038, %bb.cw ], [ %.0222.idx1038, %.tail485 ], [ %.0222.add, %bb.cz ], [ %.0222.idx1038, %bb.cn ], [ %.0222.idx1038, %bb.cs ], [ %.0222.idx1038, %.tail480 ], [ %.0222.idx1038, %.tail475 ], [ %.0222.idx1038, %bb.cl ] ; 7 uses
  %.1220 = phi i8 [ %.02191039, %bb.h ], [ %.02191039, %bb.cm ], [ %.02191039, %bb.k ], [ %.02191039, %.tail470 ], [ %.02191039, %bb.m ], [ %.02191039, %bb.by ], [ %.02191039, %bb.r ], [ 0, %bb.ax ], [ %.02191039, %bb.o ], [ 1, %bb.ac ], [ %.02191039, %.thread ], [ %.02191039, %bb.bl ], [ %.02191039, %bb.af ], [ %.02191039, %bb.av ], [ %.02191039, %bb.n ], [ %.02191039, %bb.cu ], [ %.02191039, %bb.cw ], [ %.02191039, %.tail485 ], [ %.02191039, %bb.cz ], [ %.02191039, %bb.cn ], [ %.02191039, %bb.cs ], [ %.02191039, %.tail480 ], [ %.02191039, %.tail475 ], [ %.02191039, %bb.cl ] ; 2 uses
  %.1218 = phi i8 [ %.02171040, %bb.h ], [ %.02171040, %bb.cm ], [ %.02171040, %bb.k ], [ %.02171040, %.tail470 ], [ %.02171040, %bb.m ], [ %.02171040, %bb.by ], [ %.02171040, %bb.r ], [ %.02171040, %bb.ax ], [ %.02171040, %bb.o ], [ %.02171040, %bb.ac ], [ %.02171040, %.thread ], [ %.02171040, %bb.bl ], [ %.02171040, %bb.af ], [ 1, %bb.av ], [ %.02171040, %bb.n ], [ %.02171040, %bb.cu ], [ %.02171040, %bb.cw ], [ %.02171040, %.tail485 ], [ %.02171040, %bb.cz ], [ %.02171040, %bb.cn ], [ %.02171040, %bb.cs ], [ %.02171040, %.tail480 ], [ %.02171040, %.tail475 ], [ %.02171040, %bb.cl ] ; 2 uses
  %.1216 = phi i8 [ %.02151041, %bb.h ], [ %.02151041, %bb.cm ], [ %.02151041, %bb.k ], [ %.02151041, %.tail470 ], [ %.02151041, %bb.m ], [ %.02151041, %bb.by ], [ %.02151041, %bb.r ], [ 1, %bb.ax ], [ %.02151041, %bb.o ], [ 0, %bb.ac ], [ 0, %.thread ], [ %.02151041, %bb.bl ], [ 0, %bb.af ], [ %.02151041, %bb.av ], [ %.02151041, %bb.n ], [ %.02151041, %bb.cu ], [ %.02151041, %bb.cw ], [ %.02151041, %.tail485 ], [ %.02151041, %bb.cz ], [ %.02151041, %bb.cn ], [ %.02151041, %bb.cs ], [ %.02151041, %.tail480 ], [ %.02151041, %.tail475 ], [ %.02151041, %bb.cl ] ; 2 uses
  %.1214 = phi ptr [ %.02131042, %bb.h ], [ %.02131042, %bb.cm ], [ %.02131042, %bb.k ], [ %.02131042, %.tail470 ], [ %.02131042, %bb.m ], [ %.02131042, %bb.by ], [ %.02131042, %bb.r ], [ %.02131042, %bb.ax ], [ %.02131042, %bb.o ], [ %.02131042, %bb.ac ], [ %i.da, %.thread ], [ %.02131042, %bb.bl ], [ %i.cv, %bb.af ], [ %.02131042, %bb.av ], [ %.02131042, %bb.n ], [ %.02131042, %bb.cu ], [ %.02131042, %bb.cw ], [ %.02131042, %.tail485 ], [ %.02131042, %bb.cz ], [ %.02131042, %bb.cn ], [ %.02131042, %bb.cs ], [ %.02131042, %.tail480 ], [ %.02131042, %.tail475 ], [ %.02131042, %bb.cl ] ; 5 uses
  %.1212 = phi i8 [ %.02111043, %bb.h ], [ 0, %bb.cm ], [ %.02111043, %bb.k ], [ %.02111043, %.tail470 ], [ %.02111043, %bb.m ], [ %.02111043, %bb.by ], [ %.02111043, %bb.r ], [ %.02111043, %bb.ax ], [ %.02111043, %bb.o ], [ %.02111043, %bb.ac ], [ %.02111043, %.thread ], [ %.02111043, %bb.bl ], [ %.02111043, %bb.af ], [ %.02111043, %bb.av ], [ %.02111043, %bb.n ], [ %.02111043, %bb.cu ], [ %.02111043, %bb.cw ], [ 1, %.tail485 ], [ %.02111043, %bb.cz ], [ 1, %bb.cn ], [ %.02111043, %bb.cs ], [ 0, %.tail480 ], [ %.02111043, %.tail475 ], [ %.02111043, %bb.cl ] ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.1225, i64 8 ; 2 uses
  %.0222.ptr.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.1223.idx
  %.not291 = icmp eq ptr %i.jg, %i.h
  br i1 %.not291, label %._crit_edge, label %sub_0, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.da
  %i.jh = icmp ne i8 %.1220, 0
  %i.ji = icmp eq i8 %.1218, 0                    ; 5 uses
  %i.jj = zext nneg i8 %.1212 to i32              ; 4 uses
  %.0222.ptr.lcssa.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.1223.idx ; 4 uses
  %i.jk = icmp ne ptr %.1214, null                ; 2 uses
  %or.cond8 = select i1 %i.jh, i1 true, i1 %i.jk
  br i1 %or.cond8, label %bb.db, label %bb.em

.thread1229:                                      ; preds = %bb.e
  %.0222.ptr.lcssa.ptr1184 = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.et

bb.db:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !10
  br i1 %i.jk, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  br i1 %i.ji, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) %.1214) ; 0 uses
  br label %bb.el

bb.de:                                            ; preds = %bb.dc
  %i.jl = invoke ptr @ucnv_getAlias_78(ptr noundef nonnull %.1214, i16 noundef zeroext 0, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.de
  %i.jm = load i32, ptr %i.c, align 4, !tbaa !10
  %i.jn = icmp sgt i32 %i.jm, 0
  br i1 %i.jn, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %.noexc
  store i32 0, ptr %i.c, align 4, !tbaa !10
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %.noexc, %bb.db
  %.184.i = phi ptr [ null, %bb.db ], [ %.1214, %bb.df ], [ %i.jl, %.noexc ] ; 4 uses
  %i.jo = invoke i32 @ucnv_countAvailable_78()
          to label %.noexc361 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc361:                                        ; preds = %bb.dg
  %i.jp = icmp slt i32 %i.jo, 1
  br i1 %i.jp, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %.noexc361
  invoke fastcc void @_ZL7initMsgPKc(ptr noundef nonnull %.0221)
          to label %.noexc362 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc362:                                        ; preds = %bb.dh
  %i.jq = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jr = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.jq, ptr noundef nonnull @.str.89)
          to label %.thread418 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.di:                                            ; preds = %.noexc361
  %.not93.i = icmp eq ptr %.184.i, null           ; 4 uses
  %spec.select.i = select i1 %.not93.i, i32 %i.jo, i32 1 ; 3 uses
  %i.js = invoke zeroext i16 @ucnv_countStandards_78()
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc364:                                        ; preds = %bb.di
  %.fr156.i = freeze i16 %i.js                    ; 4 uses
  %i.jt = zext i16 %.fr156.i to i64               ; 4 uses
  %i.ju = shl nuw nsw i64 %i.jt, 3
  %i.jv = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ju) #23
          to label %.noexc365 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc365:                                        ; preds = %.noexc364
  %.not94.i = icmp eq ptr %i.jv, null
  br i1 %.not94.i, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %.noexc365
  %i.jw = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.jx = invoke ptr @u_wmsg_errorName(i32 noundef 7)
          to label %.noexc366 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc366:                                        ; preds = %bb.dj
  %i.jy = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.jw, ptr noundef nonnull @.str.90, ptr noundef %i.jx)
          to label %.thread418 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dk:                                            ; preds = %.noexc365
  br i1 %i.ji, label %bb.dl, label %.thread216.i

bb.dl:                                            ; preds = %bb.dk
  %.not155.i = icmp eq i16 %.fr156.i, 0
  br i1 %.not155.i, label %.lr.ph142.split.us.i.preheader, label %.lr.ph.split.us.i

.thread216.i:                                     ; preds = %bb.dk
  %i.jz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.91) ; 0 uses
  %.not155217.i = icmp eq i16 %.fr156.i, 0
  br i1 %.not155217.i, label %.lr.ph142.split.i.thread, label %.lr.ph.split.i

.lr.ph142.split.i.thread:                         ; preds = %.thread216.i
  %i.ka = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.93) ; 0 uses
  br label %.lr.ph142.split.split.i.preheader

.lr.ph.split.us.i:                                ; preds = %bb.dl, %bb.dm
  %indvars.iv178.i = phi i64 [ %indvars.iv.next179.i, %bb.dm ], [ 0, %bb.dl ] ; 3 uses
  %i.kb = trunc nuw i64 %indvars.iv178.i to i16
  %i.kc = invoke ptr @ucnv_getStandard_78(i16 noundef zeroext %i.kb, ptr noundef nonnull %i.c)
          to label %.noexc368 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc368:                                        ; preds = %.lr.ph.split.us.i
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv178.i
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !24
  %i.ke = load i32, ptr %i.c, align 4, !tbaa !10  ; 2 uses
  %i.kf = icmp slt i32 %i.ke, 1
  br i1 %i.kf, label %bb.dm, label %.thread.i

bb.dm:                                            ; preds = %.noexc368
  %indvars.iv.next179.i = add nuw nsw i64 %indvars.iv178.i, 1 ; 2 uses
  %exitcond182.not.i = icmp eq i64 %indvars.iv.next179.i, %i.jt
  br i1 %exitcond182.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !53

bb.dn:                                            ; preds = %.noexc369
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.jt
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !53

.lr.ph.split.i:                                   ; preds = %.thread216.i, %bb.dn
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.dn ], [ 0, %.thread216.i ] ; 3 uses
  %i.kg = trunc nuw i64 %indvars.iv.i to i16
  %i.kh = invoke ptr @ucnv_getStandard_78(i16 noundef zeroext %i.kg, ptr noundef nonnull %i.c)
          to label %.noexc369 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc369:                                        ; preds = %.lr.ph.split.i
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv.i
  store ptr %i.kh, ptr %i.ki, align 8, !tbaa !24
  %i.kj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, ptr noundef %i.kh) ; 0 uses
  %i.kk = load i32, ptr %i.c, align 4, !tbaa !10  ; 2 uses
  %i.kl = icmp slt i32 %i.kk, 1
  br i1 %i.kl, label %bb.dn, label %.thread.i

.thread.i:                                        ; preds = %.noexc369, %.noexc368
  %.us-phi.i = phi i32 [ %i.ke, %.noexc368 ], [ %i.kk, %.noexc369 ]
  %i.km = load ptr, ptr @stderr, align 8, !tbaa !15
  %i.kn = invoke ptr @u_wmsg_errorName(i32 noundef %.us-phi.i)
          to label %.noexc370 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc370:                                        ; preds = %.thread.i
  %i.ko = invoke i32 (ptr, ptr, ...) @u_wmsg(ptr noundef %i.km, ptr noundef nonnull @.str.90, ptr noundef %i.kn)
          to label %.thread115.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

._crit_edge.i:                                    ; preds = %bb.dn, %bb.dm
  br i1 %i.ji, label %.lr.ph142.split.us.i.preheader, label %.lr.ph142.split.i

.lr.ph142.split.us.i.preheader:                   ; preds = %bb.dl, %._crit_edge.i
  br label %.lr.ph142.split.us.i

.lr.ph142.split.us.i:                             ; preds = %.lr.ph142.split.us.i.preheader, %._crit_edge135.split.us.us.i
  %.074140.us.i = phi i32 [ %i.la, %._crit_edge135.split.us.us.i ], [ 0, %.lr.ph142.split.us.i.preheader ] ; 2 uses
  br i1 %.not93.i, label %bb.do, label %.noexc372

bb.do:                                            ; preds = %.lr.ph142.split.us.i
  %i.kp = invoke ptr @ucnv_getAvailableName_78(i32 noundef %.074140.us.i)
          to label %.noexc372 unwind label %.loopexit.split-lp.loopexit

.noexc372:                                        ; preds = %bb.do, %.lr.ph142.split.us.i
  %.073.us.i = phi ptr [ %.184.i, %.lr.ph142.split.us.i ], [ %i.kp, %bb.do ] ; 4 uses
  store i32 0, ptr %i.c, align 4, !tbaa !10
  %i.kq = invoke zeroext i16 @ucnv_countAliases_78(ptr noundef %.073.us.i, ptr noundef nonnull %i.c)
          to label %.noexc373 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc373:                                        ; preds = %.noexc372
  %i.kr = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ks = icmp slt i32 %i.kr, 1
  br i1 %i.ks, label %.preheader117.us.i, label %.split145.us.i

.preheader117.us.i:                               ; preds = %.noexc373
  %.not159.i = icmp eq i16 %i.kq, 0
  br i1 %.not159.i, label %._crit_edge135.split.us.us.i, label %.lr.ph134.us.i

.lr.ph134.us.i:                                   ; preds = %.preheader117.us.i, %.critedge.thread.us.us.i
  %.070133.us.us.i = phi i16 [ %i.kx, %.critedge.thread.us.us.i ], [ 0, %.preheader117.us.i ] ; 2 uses
  %i.kt = invoke ptr @ucnv_getAlias_78(ptr noundef %.073.us.i, i16 noundef zeroext %.070133.us.us.i, ptr noundef nonnull %i.c)
          to label %.noexc374 unwind label %.loopexit

.noexc374:                                        ; preds = %.lr.ph134.us.i
  %i.ku = load i32, ptr %i.c, align 4, !tbaa !10
  %i.kv = icmp slt i32 %i.ku, 1
  br i1 %i.kv, label %.critedge.thread.us.us.i, label %.split.us.i

.critedge.thread.us.us.i:                         ; preds = %.noexc374
  %i.kw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @.str.2, ptr noundef %i.kt, ptr noundef nonnull @.str.98) ; 0 uses
  %i.kx = add nuw i16 %.070133.us.us.i, 1         ; 2 uses
  %exitcond197.not.i = icmp eq i16 %i.kx, %i.kq
  br i1 %exitcond197.not.i, label %._crit_edge135.split.us.us.i, label %.lr.ph134.us.i, !llvm.loop !54

._crit_edge135.split.us.us.i:                     ; preds = %.critedge.thread.us.us.i, %.preheader117.us.i
  %i.ky = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.kz = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ky), !inline_history !55 ; 0 uses
  %i.la = add nuw nsw i32 %.074140.us.i, 1        ; 2 uses
  %exitcond199.not.i = icmp eq i32 %i.la, %spec.select.i
  br i1 %exitcond199.not.i, label %._crit_edge143.i, label %.lr.ph142.split.us.i, !llvm.loop !56

.lr.ph142.split.i:                                ; preds = %._crit_edge.i
  %i.lb = call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.93) ; 0 uses
  %i.lc = icmp ugt i16 %.fr156.i, 1
  br i1 %i.lc, label %.lr.ph142.split.split.us.preheader.i, label %.lr.ph142.split.split.i.preheader

.lr.ph142.split.split.i.preheader:                ; preds = %.lr.ph142.split.i.thread, %.lr.ph142.split.i
  br label %.lr.ph142.split.split.i

.lr.ph142.split.split.us.preheader.i:             ; preds = %.lr.ph142.split.i
  %i.ld = add nuw nsw i64 %i.jt, 4294967295
  %wide.trip.count192.i = and i64 %i.ld, 4294967295
  br label %.lr.ph142.split.split.us.i

.lr.ph142.split.split.us.i:                       ; preds = %._crit_edge135.split.split.us.us.i, %.lr.ph142.split.split.us.preheader.i
  %.074140.us148.i = phi i32 [ %i.mj, %._crit_edge135.split.split.us.us.i ], [ 0, %.lr.ph142.split.split.us.preheader.i ] ; 2 uses
  br i1 %.not93.i, label %bb.dp, label %.noexc375

bb.dp:                                            ; preds = %.lr.ph142.split.split.us.i
  %i.le = invoke ptr @ucnv_getAvailableName_78(i32 noundef %.074140.us148.i)
          to label %.noexc375 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc375:                                        ; preds = %bb.dp, %.lr.ph142.split.split.us.i
  %.073.us149.i = phi ptr [ %.184.i, %.lr.ph142.split.split.us.i ], [ %i.le, %bb.dp ] ; 5 uses
  store i32 0, ptr %i.c, align 4, !tbaa !10
  %i.lf = invoke zeroext i16 @ucnv_countAliases_78(ptr noundef %.073.us149.i, ptr noundef nonnull %i.c)
          to label %.noexc376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc376:                                        ; preds = %.noexc375
  %i.lg = load i32, ptr %i.c, align 4, !tbaa !10
  %i.lh = icmp slt i32 %i.lg, 1
  br i1 %i.lh, label %.preheader117.us150.i, label %.split145.us.i

.preheader117.us150.i:                            ; preds = %.noexc376
  %.not158.i = icmp eq i16 %i.lf, 0
  br i1 %.not158.i, label %._crit_edge135.split.split.us.us.i, label %.lr.ph134.us151.i

.lr.ph134.us151.i:                                ; preds = %.preheader117.us150.i, %.critedge.us.us.i
  %.070133.us137.us.i = phi i16 [ %i.mi, %.critedge.us.us.i ], [ 0, %.preheader117.us150.i ] ; 3 uses
  %i.li = invoke ptr @ucnv_getAlias_78(ptr noundef %.073.us149.i, i16 noundef zeroext %.070133.us137.us.i, ptr noundef nonnull %i.c)
          to label %.noexc377 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc377:                                        ; preds = %.lr.ph134.us151.i
  %i.lj = load i32, ptr %i.c, align 4, !tbaa !10
  %i.lk = icmp slt i32 %i.lj, 1
  br i1 %i.lk, label %.preheader.us.us.i, label %.split.us.i

.preheader.us.us.i:                               ; preds = %.noexc377
  %i.ll = icmp eq i16 %.070133.us137.us.i, 0
  %i.lm = select i1 %i.ll, ptr @.str.2, ptr @.str.97
  %i.ln = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull %i.lm, ptr noundef %i.li, ptr noundef nonnull @.str.2) ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.ea, %.preheader.us.us.i
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i, %bb.ea ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %.068129.us.us.i = phi i16 [ %.4.us.us.i, %bb.ea ], [ 0, %.preheader.us.us.i ] ; 4 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv189.i ; 3 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !24
  %i.lq = invoke ptr @ucnv_openStandardNames_78(ptr noundef %.073.us149.i, ptr noundef %i.lp, ptr noundef nonnull %i.c)
          to label %.noexc378 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc378:                                        ; preds = %bb.dq
  %i.lr = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ls = icmp sgt i32 %i.lr, 0
  br i1 %i.ls, label %bb.ea, label %bb.dr

bb.dr:                                            ; preds = %.noexc378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.lt = invoke ptr @uenum_next_78(ptr noundef %i.lq, ptr noundef null, ptr noundef nonnull %i.d)
          to label %.noexc379 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc379:                                        ; preds = %bb.dr
  %.not102122.us.us.i = icmp eq ptr %i.lt, null
  br i1 %.not102122.us.us.i, label %._crit_edge127.us.us.i, label %.lr.ph126.us.us.preheader.i

.lr.ph126.us.us.preheader.i:                      ; preds = %.noexc379
  %i.lu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lt, ptr noundef nonnull dereferenceable(1) %i.li) #21
  %.not103.us.us.peel.i = icmp eq i32 %i.lu, 0
  br i1 %.not103.us.us.peel.i, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %.lr.ph126.us.us.preheader.i
  %.not104.us.us.peel.i = icmp eq i16 %.068129.us.us.i, 0
  br i1 %.not104.us.us.peel.i, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.lv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99) ; 0 uses
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.lw = load ptr, ptr %i.lo, align 8, !tbaa !24
  %i.lx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100, ptr noundef %i.lw, ptr noundef nonnull @.str.101) ; 0 uses
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %.lr.ph126.us.us.preheader.i
  %.3.us.us.peel.i = phi i16 [ %.068129.us.us.i, %.lr.ph126.us.us.preheader.i ], [ 1, %bb.du ] ; 2 uses
  %i.ly = invoke ptr @uenum_next_78(ptr noundef %i.lq, ptr noundef null, ptr noundef nonnull %i.d)
          to label %.noexc380 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc380:                                        ; preds = %bb.dv
  %.not102.us.us.peel.i = icmp eq ptr %i.ly, null
  br i1 %.not102.us.us.peel.i, label %._crit_edge127.us.us.i, label %.lr.ph126.us.us.i

.lr.ph126.us.us.i:                                ; preds = %.noexc380, %.noexc381
  %i.lz = phi ptr [ %i.me, %.noexc381 ], [ %i.ly, %.noexc380 ]
  %.1123.us.us.i = phi i16 [ %.3.us.us.i, %.noexc381 ], [ %.3.us.us.peel.i, %.noexc380 ] ; 2 uses
  %i.ma = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lz, ptr noundef nonnull dereferenceable(1) %i.li) #21
  %.not103.us.us.i = icmp eq i32 %i.ma, 0
  br i1 %.not103.us.us.i, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %.lr.ph126.us.us.i
  %.not104.us.us.i = icmp eq i16 %.1123.us.us.i, 0
  br i1 %.not104.us.us.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.mb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99) ; 0 uses
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.mc = load ptr, ptr %i.lo, align 8, !tbaa !24
  %i.md = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100, ptr noundef %i.mc, ptr noundef nonnull @.str.2) ; 0 uses
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %.lr.ph126.us.us.i
  %.3.us.us.i = phi i16 [ %.1123.us.us.i, %.lr.ph126.us.us.i ], [ 1, %bb.dy ] ; 2 uses
  %i.me = invoke ptr @uenum_next_78(ptr noundef %i.lq, ptr noundef null, ptr noundef nonnull %i.d)
          to label %.noexc381 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc381:                                        ; preds = %bb.dz
  %.not102.us.us.i = icmp eq ptr %i.me, null
  br i1 %.not102.us.us.i, label %._crit_edge127.us.us.i, label %.lr.ph126.us.us.i, !llvm.loop !57

._crit_edge127.us.us.i:                           ; preds = %.noexc381, %.noexc380, %.noexc379
  %.1.lcssa.us.us.i = phi i16 [ %.068129.us.us.i, %.noexc379 ], [ %.3.us.us.peel.i, %.noexc380 ], [ %.3.us.us.i, %.noexc381 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  br label %bb.ea

bb.ea:                                            ; preds = %._crit_edge127.us.us.i, %.noexc378
  %.4.us.us.i = phi i16 [ %.1.lcssa.us.us.i, %._crit_edge127.us.us.i ], [ %.068129.us.us.i, %.noexc378 ] ; 2 uses
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next190.i, %wide.trip.count192.i
  br i1 %exitcond193.not.i, label %._crit_edge131.us.us.i, label %bb.dq, !llvm.loop !58

._crit_edge131.us.us.i:                           ; preds = %bb.ea
  %.not99.us.us.i = icmp eq i16 %.4.us.us.i, 0
  br i1 %.not99.us.us.i, label %.critedge.us.us.i, label %bb.eb

bb.eb:                                            ; preds = %._crit_edge131.us.us.i
  %i.mf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102) ; 0 uses
  br label %.critedge.us.us.i

.critedge.us.us.i:                                ; preds = %bb.eb, %._crit_edge131.us.us.i
  %i.mg = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.mh = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.mg), !inline_history !55 ; 0 uses
  %i.mi = add nuw i16 %.070133.us137.us.i, 1      ; 2 uses
  %exitcond194.not.i = icmp eq i16 %i.mi, %i.lf
  br i1 %exitcond194.not.i, label %._crit_edge135.split.split.us.us.i, label %.lr.ph134.us151.i, !llvm.loop !54

._crit_edge135.split.split.us.us.i:               ; preds = %.critedge.us.us.i, %.preheader117.us150.i
  %i.mj = add nuw nsw i32 %.074140.us148.i, 1     ; 2 uses
  %exitcond196.not.i = icmp eq i32 %i.mj, %spec.select.i
  br i1 %exitcond196.not.i, label %._crit_edge143.i, label %.lr.ph142.split.split.us.i, !llvm.loop !56

.lr.ph142.split.split.i:                          ; preds = %.lr.ph142.split.split.i.preheader, %._crit_edge135.split.split.i
  %.074140.i = phi i32 [ %i.ns, %._crit_edge135.split.split.i ], [ 0, %.lr.ph142.split.split.i.preheader ] ; 2 uses
  br i1 %.not93.i, label %bb.ec, label %.noexc382

bb.ec:                                            ; preds = %.lr.ph142.split.split.i
  %i.mk = invoke ptr @ucnv_getAvailableName_78(i32 noundef %.074140.i)
          to label %.noexc382 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc382:                                        ; preds = %bb.ec, %.lr.ph142.split.split.i
  %.073.i = phi ptr [ %.184.i, %.lr.ph142.split.split.i ], [ %i.mk, %bb.ec ] ; 6 uses
  store i32 0, ptr %i.c, align 4, !tbaa !10
  %i.ml = invoke zeroext i16 @ucnv_countAliases_78(ptr noundef %.073.i, ptr noundef nonnull %i.c)
          to label %.noexc383 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc383:                                        ; preds = %.noexc382
  %i.mm = load i32, ptr %i.c, align 4, !tbaa !10
  %i.mn = icmp slt i32 %i.mm, 1
  br i1 %i.mn, label %.preheader117.i, label %.split145.us.i

.preheader117.i:                                  ; preds = %.noexc383
  %.not157.i = icmp eq i16 %i.ml, 0
  br i1 %.not157.i, label %._crit_edge135.split.split.i, label %.lr.ph134.preheader.i

.lr.ph134.preheader.i:                            ; preds = %.preheader117.i
  %i.mo = invoke ptr @ucnv_getAlias_78(ptr noundef %.073.i, i16 noundef zeroext 0, ptr noundef nonnull %i.c)
          to label %.noexc384 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc384:                                        ; preds = %.lr.ph134.preheader.i
  %i.mp = load i32, ptr %i.c, align 4, !tbaa !10
  %i.mq = icmp slt i32 %i.mp, 1
  br i1 %i.mq, label %.preheader.peel.i, label %.split.us.i

.preheader.peel.i:                                ; preds = %.noexc384
  %i.mr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @.str.2, ptr noundef %i.mo, ptr noundef nonnull @.str.2) ; 0 uses
  %i.ms = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.mt = call noundef i32 @putc(i32 noundef 10, ptr noundef %i.ms), !inline_history !55 ; 0 uses
  %exitcond183.peel.not.i = icmp eq i16 %i.ml, 1
  br i1 %exitcond183.peel.not.i, label %._crit_edge135.split.split.i, label %.lr.ph134.i

.split145.us.i:                                   ; preds = %.noexc383, %.noexc376, %.noexc373
  %.us-phi146.i = phi ptr [ %.073.us.i, %.noexc373 ], [ %.073.us149.i, %.noexc376 ], [ %.073.i, %.noexc383 ] ; 2 uses
  %i.mu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.94, ptr noundef %.us-phi146.i) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  invoke void @_ZN6icu_7813UnicodeStringC1EPKcS2_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %.us-phi146.i, ptr noundef nonnull @.str.2)
          to label %.noexc385 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

end_hunk_0
