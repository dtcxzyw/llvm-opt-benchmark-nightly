Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_warnings?download=true
inline.NumInlined: 169
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@do_warn:bb.a
.lr.ph.i:                                         ; preds = %is_internal_frame.exit.i
  %i.ak = getelementptr i8, ptr %4, i64 16
  %i.al = getelementptr i8, ptr %4, i64 32
  br i1 %.not.i17, label %.critedge2.us.i.preheader.us.i, label %.critedge2.i.preheader.i

.critedge2.us.i.preheader.us.i:                   ; preds = %.lr.ph.i, %next_external_frame.exit.loopexit118.us.i
  %.153127.us.i = phi i64 [ %i.am, %next_external_frame.exit.loopexit118.us.i ], [ %2, %.lr.ph.i ] ; 2 uses
  %.169126.us.i = phi ptr [ %i.an, %next_external_frame.exit.loopexit118.us.i ], [ %i.v, %.lr.ph.i ]
  %i.am = add nsw i64 %.153127.us.i, -1
  br label %.critedge2.us.i.us.i

.critedge2.us.i.us.i:                             ; preds = %.critedge2.backedge.us.i.us.i, %.critedge2.us.i.preheader.us.i
  %.0.us.i.us.i = phi ptr [ %i.an, %.critedge2.backedge.us.i.us.i ], [ %.169126.us.i, %.critedge2.us.i.preheader.us.i ] ; 4 uses
  %i.an = tail call ptr @PyFrame_GetBack(ptr noundef nonnull %.0.us.i.us.i) #7 ; 5 uses
  %i.ao = load i32, ptr %.0.us.i.us.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.us.i.us.i = icmp sgt i32 %i.ao, -1
  br i1 %.not.i.us.i.us.i, label %bb.m, label %Py_DECREF.exit.us.i.us.i

bb.m:                                             ; preds = %.critedge2.us.i.us.i
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %.0.us.i.us.i, align 8, !tbaa !20
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %Py_DECREF.exit.us.i.us.i

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.us.i.us.i) #7
  br label %Py_DECREF.exit.us.i.us.i

Py_DECREF.exit.us.i.us.i:                         ; preds = %bb.n, %bb.m, %.critedge2.us.i.us.i
  %.not.us.i.us.i = icmp eq ptr %i.an, null
  br i1 %.not.us.i.us.i, label %.loopexit.thread.i, label %bb.o

bb.o:                                             ; preds = %Py_DECREF.exit.us.i.us.i
  %i.ar = tail call ptr @PyFrame_GetCode(ptr noundef nonnull %i.an) #7 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 112
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !64 ; 4 uses
  %i.au = load i32, ptr %i.ar, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.us.i.us.i = icmp sgt i32 %i.au, -1
  br i1 %.not.i.i.us.i.us.i, label %bb.p, label %get_frame_filename.exit.us.i.us.i

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i32 %i.au, -1                   ; 2 uses
  store i32 %i.av, ptr %i.ar, align 8, !tbaa !20
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.q, label %get_frame_filename.exit.us.i.us.i

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ar) #7
  br label %get_frame_filename.exit.us.i.us.i

get_frame_filename.exit.us.i.us.i:                ; preds = %bb.q, %bb.p, %bb.o
  %.not15.us.i.us.i = icmp eq ptr %i.at, null
  br i1 %.not15.us.i.us.i, label %next_external_frame.exit.loopexit118.us.i, label %bb.r

bb.r:                                             ; preds = %get_frame_filename.exit.us.i.us.i
  %i.ax = getelementptr i8, ptr %i.at, i64 8
  %.val.i.us.i.us.i = load ptr, ptr %i.ax, align 8, !tbaa !44
  %i.ay = getelementptr i8, ptr %.val.i.us.i.us.i, i64 168
  %.val11.i.us.i.us.i = load i64, ptr %i.ay, align 8, !tbaa !45
  %i.az = and i64 %.val11.i.us.i.us.i, 268435456
  %.not.i16.us.i.us.i = icmp eq i64 %i.az, 0
  br i1 %.not.i16.us.i.us.i, label %next_external_frame.exit.loopexit118.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = tail call i32 @PyUnicode_Contains(ptr noundef nonnull %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 86840)) #7
  %or.cond.us.i.us.i = icmp slt i32 %i.ba, 1
  br i1 %or.cond.us.i.us.i, label %next_external_frame.exit.loopexit118.us.i, label %.critedge2.backedge.us.i.us.i

.critedge2.backedge.us.i.us.i:                    ; preds = %bb.s
  %i.bb = tail call i32 @PyUnicode_Contains(ptr noundef nonnull %i.at, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71928)) #7
  %or.cond21.us.i.us.i = icmp slt i32 %i.bb, 1
  br i1 %or.cond21.us.i.us.i, label %next_external_frame.exit.loopexit118.us.i, label %.critedge2.us.i.us.i, !llvm.loop !67

next_external_frame.exit.loopexit118.us.i:        ; preds = %.critedge2.backedge.us.i.us.i, %bb.s, %bb.r, %get_frame_filename.exit.us.i.us.i
  %i.bc = icmp sgt i64 %.153127.us.i, 2
  br i1 %i.bc, label %.critedge2.us.i.preheader.us.i, label %.loopexit.thread175.i, !llvm.loop !68

is_internal_frame.exit.thread.i:                  ; preds = %bb.l, %.critedge84.i
  %i.bd = add i64 %2, -1                          ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  %i.bf = icmp ne ptr %i.v, null
  %i.bg = select i1 %i.be, i1 %i.bf, i1 false
  br i1 %i.bg, label %.lr.ph129.i, label %.loopexit.i

.lr.ph129.i:                                      ; preds = %is_internal_frame.exit.thread.i, %Py_DECREF.exit90.i
  %i.bh = phi i64 [ %i.bm, %Py_DECREF.exit90.i ], [ %i.bd, %is_internal_frame.exit.thread.i ] ; 2 uses
  %.068128.i = phi ptr [ %i.bi, %Py_DECREF.exit90.i ], [ %i.v, %is_internal_frame.exit.thread.i ] ; 4 uses
  %i.bi = tail call ptr @PyFrame_GetBack(ptr noundef nonnull %.068128.i) #7 ; 3 uses
  %i.bj = load i32, ptr %.068128.i, align 8, !tbaa !20 ; 2 uses
  %.not.i89.i = icmp sgt i32 %i.bj, -1
  br i1 %.not.i89.i, label %bb.t, label %Py_DECREF.exit90.i

bb.t:                                             ; preds = %.lr.ph129.i
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %.068128.i, align 8, !tbaa !20
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.u, label %Py_DECREF.exit90.i

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_Dealloc(ptr noundef nonnull %.068128.i) #7
  br label %Py_DECREF.exit90.i

Py_DECREF.exit90.i:                               ; preds = %bb.u, %bb.t, %.lr.ph129.i
  %i.bm = add nsw i64 %i.bh, -1
  %i.bn = icmp sgt i64 %i.bh, 1
  %i.bo = icmp ne ptr %i.bi, null
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  br i1 %i.bp, label %.lr.ph129.i, label %.loopexit.i, !llvm.loop !69

.critedge2.i.preheader.i:                         ; preds = %.lr.ph.i, %next_external_frame.exit.i
  %.153127.i = phi i64 [ %i.bq, %next_external_frame.exit.i ], [ %2, %.lr.ph.i ] ; 2 uses
  %.169126.i = phi ptr [ %i.br, %next_external_frame.exit.i ], [ %i.v, %.lr.ph.i ]
  %i.bq = add nsw i64 %.153127.i, -1
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.i.i.backedge, %.critedge2.i.preheader.i
  %.0.i100.i = phi ptr [ %.169126.i, %.critedge2.i.preheader.i ], [ %i.br, %.critedge2.i.i.backedge ] ; 4 uses
  %i.br = tail call ptr @PyFrame_GetBack(ptr noundef nonnull %.0.i100.i) #7 ; 5 uses
  %i.bs = load i32, ptr %.0.i100.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i101.i = icmp sgt i32 %i.bs, -1
  br i1 %.not.i.i101.i, label %bb.v, label %Py_DECREF.exit.i.i

bb.v:                                             ; preds = %.critedge2.i.i
  %i.bt = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bt, ptr %.0.i100.i, align 8, !tbaa !20
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.w, label %Py_DECREF.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0.i100.i) #7
  br label %Py_DECREF.exit.i.i

Py_DECREF.exit.i.i:                               ; preds = %bb.w, %bb.v, %.critedge2.i.i
  %.not.i102.i = icmp eq ptr %i.br, null
  br i1 %.not.i102.i, label %.loopexit.thread.i, label %bb.x

bb.x:                                             ; preds = %Py_DECREF.exit.i.i
  %i.bv = tail call ptr @PyFrame_GetCode(ptr noundef nonnull %i.br) #7 ; 4 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 112
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !64 ; 5 uses
  %i.by = load i32, ptr %i.bv, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i103.i = icmp sgt i32 %i.by, -1
  br i1 %.not.i.i.i103.i, label %bb.y, label %get_frame_filename.exit.i104.i

bb.y:                                             ; preds = %bb.x
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.bv, align 8, !tbaa !20
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.z, label %get_frame_filename.exit.i104.i

bb.z:                                             ; preds = %bb.y
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bv) #7
  br label %get_frame_filename.exit.i104.i

get_frame_filename.exit.i104.i:                   ; preds = %bb.z, %bb.y, %bb.x
  %.not15.i.i = icmp eq ptr %i.bx, null
  br i1 %.not15.i.i, label %next_external_frame.exit.i, label %bb.aa

bb.aa:                                            ; preds = %get_frame_filename.exit.i104.i
  %i.cb = getelementptr i8, ptr %i.bx, i64 8      ; 2 uses
  %.val.i.i105.i = load ptr, ptr %i.cb, align 8, !tbaa !44
  %i.cc = getelementptr i8, ptr %.val.i.i105.i, i64 168
  %.val11.i.i106.i = load i64, ptr %i.cc, align 8, !tbaa !45
  %i.cd = and i64 %.val11.i.i106.i, 268435456
  %.not.i16.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not.i16.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = tail call i32 @PyUnicode_Contains(ptr noundef nonnull %i.bx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 86840)) #7
  %or.cond.i.i = icmp slt i32 %i.ce, 1
  br i1 %or.cond.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = tail call i32 @PyUnicode_Contains(ptr noundef nonnull %i.bx, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71928)) #7
  %or.cond21.i.i = icmp slt i32 %i.cf, 1
  br i1 %or.cond21.i.i, label %bb.ad, label %.critedge2.i.i.backedge

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.val23.i.i.i = load ptr, ptr %i.cb, align 8, !tbaa !44
  %i.cg = getelementptr i8, ptr %.val23.i.i.i, i64 168
  %.val24.i.i.i = load i64, ptr %i.cg, align 8, !tbaa !45
  %i.ch = and i64 %.val24.i.i.i, 268435456
  %.not21.i.i.i = icmp eq i64 %i.ch, 0
  br i1 %.not21.i.i.i, label %next_external_frame.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.i18.i.i = load i64, ptr %i.ak, align 8, !tbaa !61 ; 2 uses
  %.not2226.i.i.i = icmp sgt i64 %.val.i18.i.i, 0
  br i1 %.not2226.i.i.i, label %.lr.ph.i.i.i, label %next_external_frame.exit.i

bb.af:                                            ; preds = %.lr.ph.i.i.i
  %i.ci = add nuw nsw i64 %.01628.i.i.i, 1        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ci, %.val.i18.i.i
  br i1 %exitcond.not.i.i.i, label %next_external_frame.exit.i, label %.lr.ph.i.i.i, !llvm.loop !70

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %bb.af
  %.01628.i.i.i = phi i64 [ %i.ci, %bb.af ], [ 0, %bb.ae ] ; 2 uses
  %.01727.i.i.i = phi i1 [ %.118.i.i.i, %bb.af ], [ undef, %bb.ae ]
  %i.cj = getelementptr [8 x i8], ptr %i.al, i64 %.01628.i.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !19
  %i.cl = tail call i64 @PyUnicode_Tailmatch(ptr noundef nonnull %i.bx, ptr noundef %i.ck, i64 noundef 0, i64 noundef 9223372036854775807, i32 noundef -1) #7 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 1                    ; 2 uses
  %i.cn = icmp sgt i64 %i.cl, -1                  ; 2 uses
  %..017.i.i.i = select i1 %i.cn, i1 %.01727.i.i.i, i1 false
  %.118.i.i.i = select i1 %i.cm, i1 true, i1 %..017.i.i.i ; 2 uses
  %cond1.i.i.i = xor i1 %i.cm, %i.cn
  br i1 %cond1.i.i.i, label %bb.af, label %is_filename_to_skip.exit.i.i

is_filename_to_skip.exit.i.i:                     ; preds = %.lr.ph.i.i.i
  br i1 %.118.i.i.i, label %.critedge2.i.i.backedge, label %next_external_frame.exit.i

.critedge2.i.i.backedge:                          ; preds = %is_filename_to_skip.exit.i.i, %bb.ac
  br label %.critedge2.i.i, !llvm.loop !67

next_external_frame.exit.i:                       ; preds = %is_filename_to_skip.exit.i.i, %bb.ae, %bb.ad, %get_frame_filename.exit.i104.i, %bb.af
  %i.co = icmp sgt i64 %.153127.i, 2
  br i1 %i.co, label %.critedge2.i.preheader.i, label %.loopexit.i, !llvm.loop !68

.loopexit.i:                                      ; preds = %next_external_frame.exit.i, %Py_DECREF.exit90.i, %is_internal_frame.exit.thread.i
  %.270.i = phi ptr [ %i.bi, %Py_DECREF.exit90.i ], [ %i.v, %is_internal_frame.exit.thread.i ], [ %i.br, %next_external_frame.exit.i ] ; 2 uses
  %i.cp = icmp eq ptr %.270.i, null
  br i1 %i.cp, label %.loopexit.thread.i, label %.loopexit.thread175.i

.loopexit.thread.i:                               ; preds = %Py_DECREF.exit.i.i, %Py_DECREF.exit.us.i.us.i, %.loopexit.i, %bb.f
  %i.cq = getelementptr i8, ptr %i.g, i64 7680
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !71
  %i.cs = tail call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.8) #7
  br label %Py_DECREF.exit88.i

.loopexit.thread175.i:                            ; preds = %next_external_frame.exit.loopexit118.us.i, %.loopexit.i, %is_internal_frame.exit.i
  %.270177.i = phi ptr [ %.270.i, %.loopexit.i ], [ %i.v, %is_internal_frame.exit.i ], [ %i.an, %next_external_frame.exit.loopexit118.us.i ] ; 5 uses
  %i.ct = getelementptr i8, ptr %.270177.i, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !137 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !139 ; 3 uses
  %.val99.i = load i64, ptr %i.cu, align 8
  %i.cx = and i64 %.val99.i, -2
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = getelementptr i8, ptr %i.cy, i64 112
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !64 ; 5 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !20 ; 2 uses
  %i.dc = icmp ugt i32 %i.db, -1073741825
  br i1 %i.dc, label %_Py_NewRef.exit.i, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.thread175.i
  %i.dd = add nuw i32 %i.db, 1
  store i32 %i.dd, ptr %i.da, align 8, !tbaa !20
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.ag, %.loopexit.thread175.i
  %i.de = tail call i32 @PyFrame_GetLineNumber(ptr noundef nonnull %.270177.i) #7 ; 3 uses
  %i.df = load i32, ptr %.270177.i, align 8, !tbaa !20 ; 2 uses
  %.not.i87.i = icmp sgt i32 %i.df, -1
  br i1 %.not.i87.i, label %bb.ah, label %Py_DECREF.exit88.i

bb.ah:                                            ; preds = %_Py_NewRef.exit.i
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %.270177.i, align 8, !tbaa !20
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.ai, label %Py_DECREF.exit88.i

bb.ai:                                            ; preds = %bb.ah
  tail call void @_Py_Dealloc(ptr noundef nonnull %.270177.i) #7
  br label %Py_DECREF.exit88.i

Py_DECREF.exit88.i:                               ; preds = %bb.ai, %bb.ah, %_Py_NewRef.exit.i, %.loopexit.thread.i
  %.021 = phi ptr [ %i.cs, %.loopexit.thread.i ], [ %i.da, %bb.ai ], [ %i.da, %bb.ah ], [ %i.da, %_Py_NewRef.exit.i ] ; 7 uses
  %.020 = phi i32 [ 0, %.loopexit.thread.i ], [ %i.de, %bb.ai ], [ %i.de, %bb.ah ], [ %i.de, %_Py_NewRef.exit.i ]
  %.054.i = phi ptr [ %i.cr, %.loopexit.thread.i ], [ %i.cw, %bb.ai ], [ %i.cw, %bb.ah ], [ %i.cw, %_Py_NewRef.exit.i ] ; 3 uses
  store ptr null, ptr %i.a, align 8, !tbaa !19
  %i.di = call i32 @PyDict_GetItemRef(ptr noundef %.054.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71240), ptr noundef nonnull %i.b) #7
  %i.dj = icmp slt i32 %i.di, 0
  br i1 %i.dj, label %bb.at, label %bb.aj

bb.aj:                                            ; preds = %Py_DECREF.exit88.i
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.dm = call ptr @PyDict_New() #7               ; 3 uses
  store ptr %i.dm, ptr %i.b, align 8, !tbaa !19
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %Py_XDECREF.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.do = call i32 @PyDict_SetItem(ptr noundef %.054.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 71240), ptr noundef nonnull %i.dm) #7
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %bb.at, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %i.dq = call i32 @PyDict_GetItemRef(ptr noundef %.054.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 67864), ptr noundef nonnull %i.a) #7 ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not81.i = icmp eq i32 %i.dq, 0
  br i1 %.not81.i, label %Py_DECREF.exit86.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !19  ; 5 uses
  %i.dt = icmp eq ptr %i.ds, @_Py_NoneStruct
  br i1 %i.dt, label %setup_context.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = getelementptr i8, ptr %i.ds, i64 8
  %.val94.i = load ptr, ptr %i.du, align 8, !tbaa !44
  %i.dv = getelementptr i8, ptr %.val94.i, i64 168
  %.val97.i = load i64, ptr %i.dv, align 8, !tbaa !45
  %i.dw = and i64 %.val97.i, 268435456
  %.not82.i = icmp eq i64 %i.dw, 0
  br i1 %.not82.i, label %bb.aq, label %setup_context.exit

bb.aq:                                            ; preds = %bb.ap
  %i.dx = load i32, ptr %i.ds, align 8, !tbaa !20 ; 2 uses
  %.not.i85.i = icmp sgt i32 %i.dx, -1
  br i1 %.not.i85.i, label %bb.ar, label %Py_DECREF.exit86.i

bb.ar:                                            ; preds = %bb.aq
  %i.dy = add nsw i32 %i.dx, -1                   ; 2 uses
  store i32 %i.dy, ptr %i.ds, align 8, !tbaa !20
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.as, label %Py_DECREF.exit86.i

bb.as:                                            ; preds = %bb.ar
  call void @_Py_Dealloc(ptr noundef nonnull %i.ds) #7
  br label %Py_DECREF.exit86.i

Py_DECREF.exit86.i:                               ; preds = %bb.as, %bb.ar, %bb.aq, %bb.an
  %i.ea = call ptr @PyUnicode_FromString(ptr noundef nonnull @.str.9) #7 ; 2 uses
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !19
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.at, label %setup_context.exit

bb.at:                                            ; preds = %Py_DECREF.exit86.i, %bb.am, %bb.al, %Py_DECREF.exit88.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !19 ; 4 uses
  %.not.i107.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i107.i, label %Py_XDECREF.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ec = load i32, ptr %.pr.i, align 8, !tbaa !20 ; 2 uses
  %.not.i.i108.i = icmp sgt i32 %i.ec, -1
  br i1 %.not.i.i108.i, label %bb.av, label %Py_XDECREF.exit.i

bb.av:                                            ; preds = %bb.au
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %.pr.i, align 8, !tbaa !20
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.aw, label %Py_XDECREF.exit.i

bb.aw:                                            ; preds = %bb.av
  call void @_Py_Dealloc(ptr noundef nonnull %.pr.i) #7
  br label %Py_XDECREF.exit.i

Py_XDECREF.exit.i:                                ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.ak
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !19  ; 4 uses
  %.not.i110.i = icmp eq ptr %i.ef, null
  br i1 %.not.i110.i, label %Py_XDECREF.exit113.i, label %bb.ax

bb.ax:                                            ; preds = %Py_XDECREF.exit.i
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !20 ; 2 uses
  %.not.i.i111.i = icmp sgt i32 %i.eg, -1
  br i1 %.not.i.i111.i, label %bb.ay, label %Py_XDECREF.exit113.i

bb.ay:                                            ; preds = %bb.ax
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !20
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.az, label %Py_XDECREF.exit113.i

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.ef) #7
  br label %Py_XDECREF.exit113.i

Py_XDECREF.exit113.i:                             ; preds = %bb.az, %bb.ay, %bb.ax, %Py_XDECREF.exit.i
  %i.ej = load i32, ptr %.021, align 8, !tbaa !20 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ej, -1
  br i1 %.not.i.i, label %bb.ba, label %Py_DECREF.exit

bb.ba:                                            ; preds = %Py_XDECREF.exit113.i
  %i.ek = add nsw i32 %i.ej, -1                   ; 2 uses
  store i32 %i.ek, ptr %.021, align 8, !tbaa !20
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.bb, label %Py_DECREF.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_Py_Dealloc(ptr noundef nonnull %.021) #7
  br label %Py_DECREF.exit

setup_context.exit:                               ; preds = %Py_DECREF.exit86.i, %bb.ap, %bb.ao
  %i.em = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.en = getelementptr i8, ptr %i.em, i64 10792
  call void @_PyRecursiveMutex_Lock(ptr noundef %i.en) #7
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.ep = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.eq = call fastcc ptr @warn_explicit(ptr noundef %i.d, ptr noundef %1, ptr noundef %0, ptr noundef %.021, i32 noundef %.020, ptr noundef %i.eo, ptr noundef %i.ep, ptr noundef null, ptr noundef %3) ; 3 uses
  %i.er = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.es = getelementptr i8, ptr %i.er, i64 10792
  %i.et = call i32 @_PyRecursiveMutex_TryUnlock(ptr noundef %i.es) #7 ; 0 uses
  %i.eu = load i32, ptr %.021, align 8, !tbaa !20 ; 2 uses
  %.not.i13 = icmp sgt i32 %i.eu, -1
  br i1 %.not.i13, label %bb.bc, label %Py_DECREF.exit14

bb.bc:                                            ; preds = %setup_context.exit
  %i.ev = add nsw i32 %i.eu, -1                   ; 2 uses
  store i32 %i.ev, ptr %.021, align 8, !tbaa !20
end_hunk_0
