Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/KeccakP-1600-opt64?download=true
inline.NumInlined: 11
begin_hunk_0_@KeccakP1600_Permute_12rounds:bb.a
  %i.bsf = and i64 %i.brx, %i.bse
  %i.bsg = xor i64 %i.bsf, %i.brt
  %i.bsh = xor i64 %i.brx, -1
  %i.bsi = and i64 %i.brp, %i.bsh
  %i.bsj = xor i64 %i.bsi, %i.brv
  %i.bsk = xor i64 %i.brp, -1
  %i.bsl = and i64 %i.brr, %i.bsk
  %i.bsm = xor i64 %i.bsl, %i.brx
  %i.bsn = xor i64 %i.bpp, %i.bkp                 ; 2 uses
  %i.bso = tail call i64 @llvm.fshl.i64(i64 %i.bsn, i64 %i.bsn, i64 27) ; 3 uses
  %i.bsp = xor i64 %i.bph, %i.blc                 ; 2 uses
  %i.bsq = tail call i64 @llvm.fshl.i64(i64 %i.bsp, i64 %i.bsp, i64 36) ; 3 uses
  %i.bsr = xor i64 %i.bpj, %i.bmk                 ; 2 uses
  %i.bss = tail call i64 @llvm.fshl.i64(i64 %i.bsr, i64 %i.bsr, i64 10) ; 3 uses
  %i.bst = xor i64 %i.bpl, %i.bns                 ; 2 uses
  %i.bsu = tail call i64 @llvm.fshl.i64(i64 %i.bst, i64 %i.bst, i64 15) ; 3 uses
  %i.bsv = xor i64 %i.bpn, %i.bpa                 ; 2 uses
  %i.bsw = tail call i64 @llvm.fshl.i64(i64 %i.bsv, i64 %i.bsv, i64 56) ; 3 uses
  %i.bsx = xor i64 %i.bsq, -1
  %i.bsy = and i64 %i.bss, %i.bsx
  %i.bsz = xor i64 %i.bsy, %i.bso
  %i.bta = xor i64 %i.bss, -1
  %i.btb = and i64 %i.bsu, %i.bta
  %i.btc = xor i64 %i.btb, %i.bsq
  %i.btd = xor i64 %i.bsu, -1
  %i.bte = and i64 %i.bsw, %i.btd
  %i.btf = xor i64 %i.bte, %i.bss
  %i.btg = xor i64 %i.bsw, -1
  %i.bth = and i64 %i.bso, %i.btg
  %i.bti = xor i64 %i.bth, %i.bsu
  %i.btj = xor i64 %i.bso, -1
  %i.btk = and i64 %i.bsq, %i.btj
  %i.btl = xor i64 %i.btk, %i.bsw
  %i.btm = xor i64 %i.bpl, %i.bkj                 ; 2 uses
  %i.btn = tail call i64 @llvm.fshl.i64(i64 %i.btm, i64 %i.btm, i64 62) ; 3 uses
  %i.bto = xor i64 %i.bpn, %i.blo                 ; 2 uses
  %i.btp = tail call i64 @llvm.fshl.i64(i64 %i.bto, i64 %i.bto, i64 55) ; 3 uses
  %i.btq = xor i64 %i.bpp, %i.bmw                 ; 2 uses
  %i.btr = tail call i64 @llvm.fshl.i64(i64 %i.btq, i64 %i.btq, i64 39) ; 3 uses
  %i.bts = xor i64 %i.bph, %i.bnk                 ; 2 uses
  %i.btt = tail call i64 @llvm.fshl.i64(i64 %i.bts, i64 %i.bts, i64 41) ; 3 uses
  %i.btu = xor i64 %i.bpj, %i.bos                 ; 2 uses
  %i.btv = tail call i64 @llvm.fshl.i64(i64 %i.btu, i64 %i.btu, i64 2) ; 3 uses
  %i.btw = xor i64 %i.btp, -1
  %i.btx = and i64 %i.btr, %i.btw
  %i.bty = xor i64 %i.btx, %i.btn
  %i.btz = xor i64 %i.btr, -1
  %i.bua = and i64 %i.btt, %i.btz
  %i.bub = xor i64 %i.bua, %i.btp
  %i.buc = xor i64 %i.btt, -1
  %i.bud = and i64 %i.btv, %i.buc
  %i.bue = xor i64 %i.bud, %i.btr
  %i.buf = xor i64 %i.btv, -1
  %i.bug = and i64 %i.btn, %i.buf
  %i.buh = xor i64 %i.bug, %i.btt
  %i.bui = xor i64 %i.btn, -1
  %i.buj = and i64 %i.btp, %i.bui
  %i.buk = xor i64 %i.buj, %i.btv
  store i64 %i.bqc, ptr %0, align 8
  store i64 %i.bqf, ptr %i.b, align 8
  store i64 %i.bqi, ptr %i.d, align 8
  store i64 %i.bql, ptr %i.f, align 8
  store i64 %i.bqo, ptr %i.h, align 8
  store i64 %i.brb, ptr %i.j, align 8
  store i64 %i.bre, ptr %i.l, align 8
  store i64 %i.brh, ptr %i.n, align 8
  store i64 %i.brk, ptr %i.p, align 8
  store i64 %i.brn, ptr %i.r, align 8
  store i64 %i.bsa, ptr %i.t, align 8
  store i64 %i.bsd, ptr %i.v, align 8
  store i64 %i.bsg, ptr %i.x, align 8
  store i64 %i.bsj, ptr %i.z, align 8
  store i64 %i.bsm, ptr %i.ab, align 8
  store i64 %i.bsz, ptr %i.ad, align 8
  store i64 %i.btc, ptr %i.af, align 8
  store i64 %i.btf, ptr %i.ah, align 8
  store i64 %i.bti, ptr %i.aj, align 8
  store i64 %i.btl, ptr %i.al, align 8
  store i64 %i.bty, ptr %i.an, align 8
  store i64 %i.bub, ptr %i.ap, align 8
  store i64 %i.bue, ptr %i.ar, align 8
  store i64 %i.buh, ptr %i.at, align 8
  store i64 %i.buk, ptr %i.av, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @KeccakP1600_ExtractBytesInLane(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.d = load i64, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 %i.d, ptr %i.a, align 8
  %i.e = zext i32 %3 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.e
  %i.g = zext i32 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %i.f, i64 %i.g, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @KeccakP1600_ExtractLanes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i32 %2, 3
  %i.b = zext i32 %i.a to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %0, i64 %i.b, i1 false)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @KeccakP1600_ExtractBytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [1 x i64], align 8                ; 4 uses
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i32 %3, 3
  %i.d = and i32 %3, -8
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %0, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = and i32 %3, 7
  %i.h = zext nneg i32 %i.c to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i64 %i.j, ptr %.sroa.0, align 8
  %i.k = zext nneg i32 %i.g to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr nonnull align 8 %.sroa.0, i64 %i.k, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not33 = icmp eq i32 %3, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.l = and i32 %2, 7
  %i.m = lshr i32 %2, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02737 = phi ptr [ %i.w, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02836 = phi i32 [ 0, %.lr.ph ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.02935 = phi i32 [ %i.v, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.03034 = phi i32 [ %i.u, %.lr.ph ], [ %3, %.lr.ph.preheader ] ; 2 uses
  %i.n = sub nuw nsw i32 8, %.02836
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %.03034) ; 2 uses
  %i.o = zext i32 %.02935 to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i64 %i.q, ptr %i.a, align 8
  %i.r = zext nneg i32 %.02836 to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.r
  %i.t = zext nneg i32 %spec.select to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.02737, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.t, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.u = sub i32 %.03034, %spec.select            ; 2 uses
  %i.v = add i32 %.02935, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.02737, i64 %i.t
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @KeccakP1600_ExtractAndAddBytesInLane(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %3 to i64
  %i.c = alloca [1 x i64], align 8                ; 6 uses
  %i.d = zext i32 %1 to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i64 %i.f, ptr %i.c, align 8
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext i32 %5 to i64           ; 7 uses
  %min.iters.check = icmp ult i32 %5, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.g = add nsw i64 %wide.trip.count, -1         ; 2 uses
  %i.h = trunc i64 %i.g to i32
  %i.i = xor i32 %4, -1
  %i.j = icmp ult i32 %i.i, %i.h
  %i.k = icmp ugt i64 %i.g, 4294967295
  %i.l = or i1 %i.j, %i.k
  %i.m = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.m, -16
  %or.cond = or i1 %i.l, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check13 = icmp ult i32 %5, 16
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load = load <16 x i8>, ptr %i.o, align 1
  %i.p = trunc nuw i64 %index to i32
  %i.q = add i32 %4, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.r
  %wide.load14 = load <16 x i8>, ptr %i.s, align 1
  %i.t = xor <16 x i8> %wide.load14, %wide.load
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %index
  store <16 x i8> %i.t, ptr %i.u, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next19, %vec.epilog.vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.w, align 1
  %i.x = trunc nuw i64 %index16 to i32
  %i.y = add i32 %4, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.z
  %wide.load18 = load <4 x i8>, ptr %i.aa, align 1
  %i.ab = xor <4 x i8> %wide.load18, %wide.load17
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %index16
  store <4 x i8> %i.ab, ptr %i.ac, align 1
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next19, %n.vec15
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n20 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = trunc nuw i64 %indvars.iv to i32
  %i.ah = add i32 %4, %i.ag
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = xor i8 %i.ak, %i.af
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  store i8 %i.al, ptr %i.am, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @KeccakP1600_ExtractAndAddLanes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %3 to i64           ; 3 uses
  %min.iters.check = icmp ult i32 %3, 12
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.d = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.d, -16
  %i.e = sub i64 %i.a, %i.c
  %diff.check10 = icmp ugt i64 %i.e, -16
  %conflict.rdx = or i1 %diff.check, %diff.check10
  br i1 %conflict.rdx, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967294   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i64>, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %wide.load11 = load <2 x i64>, ptr %i.g, align 8
  %i.h = xor <2 x i64> %wide.load11, %wide.load
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x i64> %i.h, ptr %i.i, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader12, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8
  %i.o = xor i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.o, ptr %i.p, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @KeccakP1600_ExtractAndAddBytes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = alloca [1 x i64], align 8                ; 4 uses
  %i.e = alloca [1 x i64], align 8                ; 4 uses
  %i.f = icmp eq i32 %3, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = lshr i32 %4, 3                           ; 2 uses
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %KeccakP1600_ExtractAndAddLanes.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %4, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.h = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.h, -16
  %i.i = sub i64 %i.a, %i.c
  %diff.check68 = icmp ugt i64 %i.i, -16
  %conflict.rdx = or i1 %diff.check, %diff.check68
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 536870910  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i64>, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %wide.load69 = load <2 x i64>, ptr %i.k, align 8
  %i.l = xor <2 x i64> %wide.load69, %wide.load
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  store <2 x i64> %i.l, ptr %i.m, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %KeccakP1600_ExtractAndAddLanes.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.r = load i64, ptr %i.q, align 8
  %i.s = xor i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  store i64 %i.s, ptr %i.t, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %KeccakP1600_ExtractAndAddLanes.exit, label %.lr.ph.i, !llvm.loop !26

KeccakP1600_ExtractAndAddLanes.exit:              ; preds = %.lr.ph.i, %middle.block, %bb.b
  %.pre-phi = phi i64 [ 0, %bb.b ], [ %wide.trip.count.i, %middle.block ], [ %wide.trip.count.i, %.lr.ph.i ]
  %i.u = and i32 %4, -8
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.y = and i32 %4, 7                            ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.pre-phi
  %i.aa = load i64, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i64 %i.aa, ptr %i.e, align 8
  %.not.i41 = icmp eq i32 %i.y, 0
  br i1 %.not.i41, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.preheader.i42

.lr.ph.preheader.i42:                             ; preds = %KeccakP1600_ExtractAndAddLanes.exit
  %wide.trip.count.i43 = zext nneg i32 %i.y to i64
  br label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44, %.lr.ph.preheader.i42
  %indvars.iv.i45 = phi i64 [ 0, %.lr.ph.preheader.i42 ], [ %indvars.iv.next.i46, %.lr.ph.i44 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.i45
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i45
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = xor i8 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.i45
  store i8 %i.af, ptr %i.ag, align 1
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 2 uses
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, %wide.trip.count.i43
  br i1 %exitcond.not.i47, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.i44, !llvm.loop !27

KeccakP1600_ExtractAndAddBytesInLane.exit:        ; preds = %.lr.ph.i44, %KeccakP1600_ExtractAndAddLanes.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %.not56 = icmp eq i32 %4, 0
  br i1 %.not56, label %.loopexit, label %.lr.ph.preheader.i49.preheader

.lr.ph.preheader.i49.preheader:                   ; preds = %bb.c
  %i.ah = and i32 %3, 7
  %i.ai = lshr i32 %3, 3
  br label %.lr.ph.preheader.i49

.lr.ph.preheader.i49:                             ; preds = %.lr.ph.preheader.i49.preheader, %KeccakP1600_ExtractAndAddBytesInLane.exit55
  %.03461 = phi ptr [ %i.az, %KeccakP1600_ExtractAndAddBytesInLane.exit55 ], [ %2, %.lr.ph.preheader.i49.preheader ] ; 2 uses
  %.03560 = phi ptr [ %i.ay, %KeccakP1600_ExtractAndAddBytesInLane.exit55 ], [ %1, %.lr.ph.preheader.i49.preheader ] ; 2 uses
  %.03659 = phi i32 [ 0, %KeccakP1600_ExtractAndAddBytesInLane.exit55 ], [ %i.ah, %.lr.ph.preheader.i49.preheader ] ; 2 uses
  %.03758 = phi i32 [ %i.ax, %KeccakP1600_ExtractAndAddBytesInLane.exit55 ], [ %i.ai, %.lr.ph.preheader.i49.preheader ] ; 2 uses
  %.03857 = phi i32 [ %i.aw, %KeccakP1600_ExtractAndAddBytesInLane.exit55 ], [ %4, %.lr.ph.preheader.i49.preheader ] ; 2 uses
  %i.aj = sub nuw nsw i32 8, %.03659
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 %.03857) ; 2 uses
  %i.ak = zext i32 %.03758 to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i64 %i.am, ptr %i.d, align 8
  %wide.trip.count.i50 = zext nneg i32 %spec.select to i64 ; 3 uses
  br label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %.lr.ph.i51, %.lr.ph.preheader.i49
  %indvars.iv.i52 = phi i64 [ 0, %.lr.ph.preheader.i49 ], [ %indvars.iv.next.i53, %.lr.ph.i51 ] ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.03560, i64 %indvars.iv.i52
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = trunc nuw i64 %indvars.iv.i52 to i32
  %i.aq = add i32 %.03659, %i.ap
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = xor i8 %i.at, %i.ao
  %i.av = getelementptr inbounds nuw i8, ptr %.03461, i64 %indvars.iv.i52
  store i8 %i.au, ptr %i.av, align 1
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i52, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %wide.trip.count.i50
  br i1 %exitcond.not.i54, label %KeccakP1600_ExtractAndAddBytesInLane.exit55, label %.lr.ph.i51, !llvm.loop !27

KeccakP1600_ExtractAndAddBytesInLane.exit55:      ; preds = %.lr.ph.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  %i.aw = sub nuw i32 %.03857, %spec.select       ; 2 uses
  %i.ax = add i32 %.03758, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.03560, i64 %wide.trip.count.i50
  %i.az = getelementptr inbounds nuw i8, ptr %.03461, i64 %wide.trip.count.i50
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader.i49, !llvm.loop !28

.loopexit:                                        ; preds = %KeccakP1600_ExtractAndAddBytesInLane.exit55, %bb.c, %KeccakP1600_ExtractAndAddBytesInLane.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @KeccakF1600_FastLoop_Absorb(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = shl i32 %1, 3
  %i.ay = zext i32 %i.ax to i64                   ; 3 uses
  %.not5969 = icmp ult i64 %3, %i.ay
  br i1 %.not5969, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.az = icmp eq i32 %1, 21
  %i.ba = icmp ult i32 %1, 16
  %i.bb = icmp ult i32 %1, 24
  %i.bc = icmp eq i32 %1, 24
  %i.bd = icmp samesign ult i32 %1, 20
  %i.be = icmp samesign ult i32 %1, 22
  %.not5963 = icmp eq i32 %1, 23
  %i.bf = icmp samesign ult i32 %1, 18
  %.not5964 = icmp eq i32 %1, 19
  %i.bg = icmp eq i32 %1, 16
  %i.bh = icmp samesign ult i32 %1, 8
  %i.bi = icmp samesign ult i32 %1, 12
end_hunk_0
