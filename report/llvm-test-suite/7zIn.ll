Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/7zIn?download=true
inline.NumInlined: 459
inline.NumDeleted: 122
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN8NArchive3N7z18CArchiveDatabaseEx24FillFolderStartFileIndexEv:bb.a
  %i.am = load i32, ptr %i.al, align 4, !tbaa !13
  %.not23 = icmp eq i32 %i.am, 0
  br i1 %.not23, label %bb.e, label %.loopexit.loopexit

bb.e:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.an = load i32, ptr %i.b, align 4, !tbaa !17
  %i.ao = sext i32 %i.an to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.ao
  br i1 %.not, label %.lr.ph, label %.preheader._crit_edge, !llvm.loop !200

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.ap = trunc nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %.221 = phi i32 [ %.01929, %bb.d ], [ %i.ap, %.loopexit.loopexit ] ; 4 uses
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !17
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.as
  store i32 %.221, ptr %i.at, align 4, !tbaa !13
  %i.au = load i32, ptr %i.k, align 4, !tbaa !17
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.k, align 4, !tbaa !17
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.aw = add i32 %.01830, 1                      ; 2 uses
  %i.ax = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.ay = sext i32 %.221 to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !13
  %.not24 = icmp uge i32 %i.aw, %i.ba             ; 2 uses
  %i.bb = zext i1 %.not24 to i32
  %spec.select = add nsw i32 %.221, %i.bb
  %spec.select25 = select i1 %.not24, i32 0, i32 %i.aw
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f, %bb.c
  %.4 = phi i32 [ %.01929, %bb.c ], [ %spec.select, %bb.f ], [ %.221, %.loopexit ]
  %.2 = phi i32 [ 0, %bb.c ], [ %spec.select25, %bb.f ], [ %.01830, %.loopexit ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1 ; 2 uses
  %i.bc = load i32, ptr %i.e, align 4, !tbaa !17
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next40, %i.bd
  br i1 %i.be, label %bb.b, label %._crit_edge35, !llvm.loop !201
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive13ReadDatabase2ERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca [500 x i8], align 16              ; 5 uses
  %4 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 8 uses
  %5 = alloca %class.CObjectVector.6, align 8     ; 13 uses
  tail call void @_ZN8NArchive3N7z16CArchiveDatabase5ClearEv(ptr noundef nonnull align 8 dereferenceable(696) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 520
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 552
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 584
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 616
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 648
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 680 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 488
  store i64 %i.k, ptr %i.m, align 8, !tbaa !203
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.o = load i8, ptr %i.n, align 2, !tbaa !54    ; 2 uses
  store i8 %i.o, ptr %i.l, align 8, !tbaa !91
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.q = load i8, ptr %i.p, align 1, !tbaa !54
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 481
  store i8 %i.q, ptr %i.r, align 1, !tbaa !92
  %.not = icmp eq i8 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i32, ptr %i.s, align 8, !tbaa !13   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.v = load i64, ptr %i.u, align 4, !tbaa !55   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load i64, ptr %i.w, align 4, !tbaa !55   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.z = load i32, ptr %i.y, align 4, !tbaa !13   ; 2 uses
  %i.aa = tail call i32 @CrcCalc(ptr noundef nonnull %i.u, i64 noundef 20)
  %i.ab = icmp eq i32 %i.t, 0
  %i.ac = icmp eq i64 %i.v, 0
  %or.cond = select i1 %i.ab, i1 %i.ac, i1 false
  %i.ad = icmp eq i64 %i.x, 0
  %or.cond12 = select i1 %or.cond, i1 %i.ad, i1 false
  %i.ae = icmp eq i32 %i.z, 0
  %or.cond14 = select i1 %or.cond12, i1 %i.ae, i1 false
  br i1 %or.cond14, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.af = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %.not144 = icmp eq i32 %i.aj, 0
  br i1 %.not144, label %bb.e, label %.thread188

.thread188:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ao

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.ak = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %i.b) ; 2 uses
  %.not145 = icmp eq i32 %i.ao, 0
  br i1 %.not145, label %bb.f, label %.thread195

bb.f:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !55
  %i.aq = load i64, ptr %i.a, align 8, !tbaa !55
  %i.ar = sub i64 %i.ap, %i.aq                    ; 2 uses
  %spec.select216 = call i64 @llvm.umin.i64(i64 %i.ar, i64 500) ; 4 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.at = sub nsw i64 0, %spec.select216
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef %i.at, i32 noundef 2, ptr noundef nonnull %i.b) ; 2 uses
  %.not146 = icmp eq i32 %i.ax, 0
  br i1 %.not146, label %bb.g, label %.thread195

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %0, align 8, !tbaa !69
  %i.az = call noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.ay, ptr noundef nonnull %i.c, i64 noundef %spec.select216) ; 2 uses
  %.not147 = icmp eq i32 %i.az, 0
  br i1 %.not147, label %bb.h, label %.thread195

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp ugt i64 %i.ar, 1
  br i1 %i.ba, label %.lr.ph.preheader, label %.thread195

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.bb = add nuw nsw i64 %spec.select216, 4294967294
  %i.bc = and i64 %i.bb, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.thread
  %indvars.iv = phi i64 [ %i.bc, %.lr.ph.preheader ], [ %indvars.iv.next, %.thread ] ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !54
  %i.bf = trunc nuw i64 %indvars.iv to i32
  switch i8 %i.be, label %.thread [
    i8 23, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !54
  %i.bi = icmp eq i8 %i.bh, 6
  br i1 %i.bi, label %bb.k, label %.thread

bb.j:                                             ; preds = %.lr.ph
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !54
  %i.bl = icmp eq i8 %i.bk, 4
  br i1 %i.bl, label %bb.k, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bm = icmp sgt i32 %i.bf, 0
  br i1 %i.bm, label %.lr.ph, label %.thread195, !llvm.loop !202

.thread195:                                       ; preds = %.thread, %bb.h, %bb.e, %bb.f, %bb.g
  %.7125.ph = phi i32 [ %i.ao, %bb.e ], [ %i.az, %bb.g ], [ %i.ax, %bb.f ], [ 1, %bb.h ], [ 1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ao

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bn = sub i64 %spec.select216, %indvars.iv
  %sext = shl i64 %i.bn, 32
  %6 = ashr exact i64 %sext, 32                   ; 2 uses
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !55
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !55
  %i.bq = add i64 %i.bo, %indvars.iv
  %i.br = sub i64 %i.bq, %i.bp
  %i.bs = call i32 @CrcCalc(ptr noundef nonnull %i.bd, i64 noundef %6)
  %i.bt = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !55
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef i32 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, i64 noundef %i.bu, i32 noundef 0, ptr noundef null) ; 2 uses
  %.not148 = icmp eq i32 %i.by, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not148, label %bb.n, label %bb.ao

bb.l:                                             ; preds = %bb.c
  %.not143 = icmp eq i32 %i.aa, %i.t
  br i1 %.not143, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %.4117 = phi i64 [ %i.br, %bb.k ], [ %i.v, %bb.l ] ; 3 uses
  %.4112 = phi i64 [ %6, %bb.k ], [ %i.x, %bb.l ] ; 7 uses
  %.4107 = phi i32 [ %i.bs, %bb.k ], [ %i.z, %bb.l ]
  %i.bz = load i64, ptr %i.j, align 8, !tbaa !66
  %i.ca = add i64 %i.bz, 32
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 496 ; 2 uses
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !89
  %i.cc = icmp eq i64 %.4112, 0
  br i1 %i.cc, label %bb.ao, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = icmp ugt i64 %.4112, 4294967295
  %i.ce = icmp slt i64 %.4117, 0
  %or.cond160 = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond160, label %bb.ao, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = load ptr, ptr %0, align 8, !tbaa !69    ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !20
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i32 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i64 noundef %.4117, i32 noundef 1, ptr noundef null) ; 2 uses
  %.not149 = icmp eq i32 %i.cj, 0
  br i1 %.not149, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %bb.ao

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.p
  %i.ck = call noalias noundef nonnull ptr @_Znam(i64 noundef %.4112) #18 ; 5 uses
  %i.cl = load ptr, ptr %0, align 8, !tbaa !69
  %i.cm = invoke noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef %i.cl, ptr noundef nonnull %i.ck, i64 noundef %.4112)
          to label %bb.q unwind label %bb.r       ; 2 uses

bb.q:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %.not150 = icmp eq i32 %i.cm, 0
  br i1 %.not150, label %bb.s, label %_ZN7CBufferIhED2Ev.exit

bb.r:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.thread206

bb.s:                                             ; preds = %bb.q
  %i.co = add nuw nsw i64 %.4112, 32              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !68
  %i.cr = add i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !68
  %i.cs = add nuw i64 %i.co, %.4117
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 688
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !204
  %i.cu = invoke i32 @CrcCalc(ptr noundef nonnull %i.ck, i64 noundef %.4112)
          to label %bb.t unwind label %.thread213

bb.t:                                             ; preds = %bb.s
  %.not151 = icmp eq i32 %i.cu, %.4107
  br i1 %.not151, label %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc161 unwind label %.thread213

.noexc161:                                        ; preds = %bb.u
  unreachable

_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i8 0, ptr %i.cv, align 8, !tbaa !39
  store ptr %0, ptr %4, align 8, !tbaa !40
  %i.cw = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %.noexc164 unwind label %bb.x  ; 2 uses

.noexc164:                                        ; preds = %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.cw, i8 0, i64 24, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %.noexc164
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !17 ; 2 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dc
  store ptr %i.cw, ptr %i.dd, align 8, !tbaa !30
  %i.de = add nsw i32 %i.db, 1                    ; 2 uses
  store i32 %i.de, ptr %i.da, align 4, !tbaa !17
  %i.df = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.dg = sext i32 %i.de to i64
  %i.dh = getelementptr [8 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !47
  store ptr %i.ck, ptr %i.dj, align 8, !tbaa !49
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.4112, ptr %i.dl, align 8, !tbaa !50
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store i64 0, ptr %i.dm, align 8, !tbaa !51
  store i8 1, ptr %i.cv, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.do, align 8, !tbaa !18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI7CBufferIhEE, i64 16), ptr %5, align 8, !tbaa !20
  %i.dp = invoke noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.dj)
          to label %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit unwind label %bb.y

_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit:       ; preds = %bb.v
  switch i64 %i.dp, label %bb.w [
    i64 1, label %.thread202
    i64 23, label %bb.z
  ]

bb.w:                                             ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc167 unwind label %bb.y

.noexc167:                                        ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %.noexc164, %_ZN8NArchive3N7z13CStreamSwitch3SetEPNS0_10CInArchiveEPKhm.exit.i
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.y:                                             ; preds = %bb.w, %bb.v, %.thread202
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.z:                                             ; preds = %_ZN8NArchive3N7z10CInArchive6ReadIDEv.exit
  %i.ds = load i64, ptr %i.cb, align 8, !tbaa !89
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.du = invoke noundef i32 @_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.ds, ptr noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.aa unwind label %bb.ab     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  %.not154 = icmp eq i32 %i.du, 0
  br i1 %.not154, label %bb.ac, label %bb.ah

bb.ab:                                            ; preds = %.invoke, %bb.ag, %bb.ae, %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit, %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.aa
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !17 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dz = icmp sgt i32 %i.dx, 1
  br i1 %i.dz, label %.invoke, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cx)
          to label %.noexc171 unwind label %bb.ab

.noexc171:                                        ; preds = %bb.ae
  %i.ea = load i32, ptr %i.da, align 4, !tbaa !17 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit, label %bb.af

bb.af:                                            ; preds = %.noexc171
  %i.ec = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.ed = sext i32 %i.ea to i64
  %i.ee = getelementptr [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 -8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !30
  store ptr %i.eg, ptr %i.dk, align 8, !tbaa !47
  br label %_ZN8NArchive3N7z13CStreamSwitch6RemoveEv.exit
end_hunk_0
