inline.NumInlined: 40
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 40
begin_hunk_0_@copy_rdopt_data:bb.a
  %i.bqm = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 6512
  %i.bqo = load ptr, ptr %i.bqn, align 8, !tbaa !407
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !90
  %i.bqq = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqq, i64 172
  %i.bqs = load i32, ptr %i.bqr, align 4, !tbaa !374
  %i.bqt = sext i32 %i.bqs to i64
  %i.bqu = getelementptr inbounds [8 x i8], ptr %i.bqp, i64 %i.bqt
  %i.bqv = load ptr, ptr %i.bqu, align 8, !tbaa !48
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqq, i64 168
  %i.bqx = load i32, ptr %i.bqw, align 8, !tbaa !378
  %i.bqy = sext i32 %i.bqx to i64
  %i.bqz = getelementptr inbounds [8 x i8], ptr %i.bqv, i64 %i.bqy
  %i.bra = load ptr, ptr %i.bqz, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bra, i8 0, i64 16, i1 false)
  %i.brb = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.brc = getelementptr inbounds nuw i8, ptr %i.brb, i64 6512
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !407
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !90
  %i.brf = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.brf, i64 172
  %i.brh = load i32, ptr %i.brg, align 4, !tbaa !374
  %i.bri = sext i32 %i.brh to i64
  %i.brj = getelementptr [8 x i8], ptr %i.bre, i64 %i.bri
  %i.brk = getelementptr i8, ptr %i.brj, i64 8
  %i.brl = load ptr, ptr %i.brk, align 8, !tbaa !48
  %i.brm = getelementptr inbounds nuw i8, ptr %i.brf, i64 168
  %i.brn = load i32, ptr %i.brm, align 8, !tbaa !378
  %i.bro = sext i32 %i.brn to i64
  %i.brp = getelementptr inbounds [8 x i8], ptr %i.brl, i64 %i.bro
  %i.brq = load ptr, ptr %i.brp, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.brq, i8 0, i64 16, i1 false)
  %i.brr = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brr, i64 6512
  %i.brt = load ptr, ptr %i.brs, align 8, !tbaa !407
  %i.bru = load ptr, ptr %i.brt, align 8, !tbaa !90
  %i.brv = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brv, i64 172
  %i.brx = load i32, ptr %i.brw, align 4, !tbaa !374
  %i.bry = sext i32 %i.brx to i64
  %i.brz = getelementptr [8 x i8], ptr %i.bru, i64 %i.bry
  %i.bsa = getelementptr i8, ptr %i.brz, i64 16
  %i.bsb = load ptr, ptr %i.bsa, align 8, !tbaa !48
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.brv, i64 168
  %i.bsd = load i32, ptr %i.bsc, align 8, !tbaa !378
  %i.bse = sext i32 %i.bsd to i64
  %i.bsf = getelementptr inbounds [8 x i8], ptr %i.bsb, i64 %i.bse
  %i.bsg = load ptr, ptr %i.bsf, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bsg, i8 0, i64 16, i1 false)
  %i.bsh = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 6512
  %i.bsj = load ptr, ptr %i.bsi, align 8, !tbaa !407
  %i.bsk = load ptr, ptr %i.bsj, align 8, !tbaa !90
  %i.bsl = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.bsm = getelementptr inbounds nuw i8, ptr %i.bsl, i64 172
  %i.bsn = load i32, ptr %i.bsm, align 4, !tbaa !374
  %i.bso = sext i32 %i.bsn to i64
  %i.bsp = getelementptr [8 x i8], ptr %i.bsk, i64 %i.bso
  %i.bsq = getelementptr i8, ptr %i.bsp, i64 24
  %i.bsr = load ptr, ptr %i.bsq, align 8, !tbaa !48
  %i.bss = getelementptr inbounds nuw i8, ptr %i.bsl, i64 168
  %i.bst = load i32, ptr %i.bss, align 8, !tbaa !378
  %i.bsu = sext i32 %i.bst to i64
  %i.bsv = getelementptr inbounds [8 x i8], ptr %i.bsr, i64 %i.bsu
  %i.bsw = load ptr, ptr %i.bsv, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bsw, i8 0, i64 16, i1 false)
  br i1 %i.j, label %.preheader168.preheader, label %.loopexit

.preheader168.preheader:                          ; preds = %bb.t
  %i.bsx = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.bsy = getelementptr inbounds nuw i8, ptr %i.bsx, i64 6512
  %i.bsz = load ptr, ptr %i.bsy, align 8, !tbaa !407
  %i.bta = getelementptr inbounds nuw i8, ptr %i.bsz, i64 8
  %i.btb = load ptr, ptr %i.bta, align 8, !tbaa !90
  %i.btc = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btc, i64 172
  %i.bte = load i32, ptr %i.btd, align 4, !tbaa !374
  %i.btf = sext i32 %i.bte to i64
  %i.btg = getelementptr inbounds [8 x i8], ptr %i.btb, i64 %i.btf
  %i.bth = load ptr, ptr %i.btg, align 8, !tbaa !48
  %i.bti = getelementptr inbounds nuw i8, ptr %i.btc, i64 168
  %i.btj = load i32, ptr %i.bti, align 8, !tbaa !378
  %i.btk = sext i32 %i.btj to i64
  %i.btl = getelementptr inbounds [8 x i8], ptr %i.bth, i64 %i.btk
  %i.btm = load ptr, ptr %i.btl, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.btm, i8 0, i64 16, i1 false)
  %i.btn = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btn, i64 6512
  %i.btp = load ptr, ptr %i.bto, align 8, !tbaa !407
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 8
  %i.btr = load ptr, ptr %i.btq, align 8, !tbaa !90
  %i.bts = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bts, i64 172
  %i.btu = load i32, ptr %i.btt, align 4, !tbaa !374
  %i.btv = sext i32 %i.btu to i64
  %i.btw = getelementptr [8 x i8], ptr %i.btr, i64 %i.btv
  %i.btx = getelementptr i8, ptr %i.btw, i64 8
  %i.bty = load ptr, ptr %i.btx, align 8, !tbaa !48
  %i.btz = getelementptr inbounds nuw i8, ptr %i.bts, i64 168
  %i.bua = load i32, ptr %i.btz, align 8, !tbaa !378
  %i.bub = sext i32 %i.bua to i64
  %i.buc = getelementptr inbounds [8 x i8], ptr %i.bty, i64 %i.bub
  %i.bud = load ptr, ptr %i.buc, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bud, i8 0, i64 16, i1 false)
  %i.bue = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.buf = getelementptr inbounds nuw i8, ptr %i.bue, i64 6512
  %i.bug = load ptr, ptr %i.buf, align 8, !tbaa !407
  %i.buh = getelementptr inbounds nuw i8, ptr %i.bug, i64 8
  %i.bui = load ptr, ptr %i.buh, align 8, !tbaa !90
  %i.buj = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.buk = getelementptr inbounds nuw i8, ptr %i.buj, i64 172
  %i.bul = load i32, ptr %i.buk, align 4, !tbaa !374
  %i.bum = sext i32 %i.bul to i64
  %i.bun = getelementptr [8 x i8], ptr %i.bui, i64 %i.bum
  %i.buo = getelementptr i8, ptr %i.bun, i64 16
  %i.bup = load ptr, ptr %i.buo, align 8, !tbaa !48
  %i.buq = getelementptr inbounds nuw i8, ptr %i.buj, i64 168
  %i.bur = load i32, ptr %i.buq, align 8, !tbaa !378
  %i.bus = sext i32 %i.bur to i64
  %i.but = getelementptr inbounds [8 x i8], ptr %i.bup, i64 %i.bus
  %i.buu = load ptr, ptr %i.but, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.buu, i8 0, i64 16, i1 false)
  %i.buv = load ptr, ptr @enc_picture, align 8, !tbaa !8
  %i.buw = getelementptr inbounds nuw i8, ptr %i.buv, i64 6512
  %i.bux = load ptr, ptr %i.buw, align 8, !tbaa !407
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bux, i64 8
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !90
  %i.bva = load ptr, ptr @img, align 8, !tbaa !26 ; 2 uses
  %i.bvb = getelementptr inbounds nuw i8, ptr %i.bva, i64 172
  %i.bvc = load i32, ptr %i.bvb, align 4, !tbaa !374
  %i.bvd = sext i32 %i.bvc to i64
  %i.bve = getelementptr [8 x i8], ptr %i.buz, i64 %i.bvd
  %i.bvf = getelementptr i8, ptr %i.bve, i64 24
  %i.bvg = load ptr, ptr %i.bvf, align 8, !tbaa !48
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bva, i64 168
  %i.bvi = load i32, ptr %i.bvh, align 8, !tbaa !378
  %i.bvj = sext i32 %i.bvi to i64
  %i.bvk = getelementptr inbounds [8 x i8], ptr %i.bvg, i64 %i.bvj
  %i.bvl = load ptr, ptr %i.bvk, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.bvl, i8 0, i64 16, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.preheader168.preheader, %bb.t, %.loopexit170
  ret void
}

declare void @set_chroma_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local void @buf2img(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = sext i32 %4 to i64                       ; 6 uses
  %i.c = icmp ugt i32 %4, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @error(ptr noundef nonnull @.str.3, i32 noundef 500) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call i32 @testEndian() #18
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader79, label %bb.d

.preheader79:                                     ; preds = %bb.c
  %i.e = icmp sgt i32 %3, 0
  %i.f = icmp sgt i32 %2, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader79
  %i.g = zext nneg i32 %2 to i64
  %wide.trip.count141 = zext nneg i32 %3 to i64
  %wide.trip.count136 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter194 = and i64 %wide.trip.count136, 1
  %i.h = icmp eq i32 %2, 1
  %unroll_iter197 = and i64 %wide.trip.count136, 2147483646
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  %lcmp.mod196 = trunc i32 %2 to i1
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  switch i32 %4, label %.loopexit88 [
    i32 1, label %.preheader81
    i32 2, label %.preheader84
    i32 4, label %.preheader87
  ]

.preheader87:                                     ; preds = %bb.d
  %i.i = icmp sgt i32 %3, 0
  %i.j = icmp sgt i32 %2, 0
  %or.cond102 = and i1 %i.i, %i.j
  br i1 %or.cond102, label %.preheader86.preheader, label %.loopexit88

.preheader86.preheader:                           ; preds = %.preheader87
  %i.k = zext nneg i32 %2 to i64                  ; 3 uses
  %wide.trip.count111 = zext nneg i32 %3 to i64
  %xtraiter.a = and i64 %i.k, 1
  %i.l = icmp eq i32 %2, 1
  %unroll_iter = and i64 %i.k, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter.a, 0
  %lcmp.mod188 = trunc i32 %2 to i1
  br label %.preheader86

.preheader84:                                     ; preds = %bb.d
  %i.m = icmp sgt i32 %3, 0
  %i.n = icmp sgt i32 %2, 0
  %or.cond103 = and i1 %i.m, %i.n
  br i1 %or.cond103, label %.preheader83.preheader, label %.loopexit

.preheader83.preheader:                           ; preds = %.preheader84
  %i.o = zext nneg i32 %2 to i64                  ; 10 uses
  %wide.trip.count121 = zext nneg i32 %3 to i64
  %i.p = mul nsw i64 %i.o, -2
  %min.iters.check.a = icmp ult i32 %2, 4
  %min.iters.check151 = icmp ult i32 %2, 16
  %i.q = and i64 %i.o, 12
  %n.vec = and i64 %i.o, 2147483632               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.o
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec153 = and i64 %i.o, 2147483644            ; 3 uses
  %cmp.n157 = icmp eq i64 %n.vec153, %i.o
  %xtraiter189 = and i64 %i.o, 1
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  %i.r = add nsw i64 %i.o, -1
  br label %iter.check

.preheader81:                                     ; preds = %bb.d
  %i.s = icmp sgt i32 %3, 0
  %i.t = icmp sgt i32 %2, 0
  %or.cond104 = and i1 %i.s, %i.t
  br i1 %or.cond104, label %.preheader80.preheader, label %.loopexit

.preheader80.preheader:                           ; preds = %.preheader81
  %i.u = zext nneg i32 %2 to i64                  ; 11 uses
  %wide.trip.count131 = zext nneg i32 %3 to i64   ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = mul nuw nsw i64 %wide.trip.count131, %i.u
  %scevgep159 = getelementptr i8, ptr %1, i64 %i.w
  %min.iters.check160 = icmp ult i32 %2, 4
  %min.iters.check162 = icmp ult i32 %2, 16
  %i.x = and i64 %i.u, 12
  %n.vec164 = and i64 %i.u, 2147483632            ; 4 uses
  %cmp.n171 = icmp eq i64 %n.vec164, %i.u
  %min.epilog.iters.check176 = icmp eq i64 %i.x, 0
  %n.vec178 = and i64 %i.u, 2147483644            ; 3 uses
  %cmp.n184 = icmp eq i64 %n.vec178, %i.u
  %xtraiter191 = and i64 %i.u, 3                  ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br label %iter.check173

iter.check173:                                    ; preds = %.preheader80.preheader, %._crit_edge97
  %indvars.iv128 = phi i64 [ 0, %.preheader80.preheader ], [ %indvars.iv.next129, %._crit_edge97 ] ; 3 uses
  %i.y = mul nuw nsw i64 %indvars.iv128, %i.u
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv128
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44  ; 9 uses
  %invariant.gep = getelementptr inbounds nuw i8, ptr %1, i64 %i.y ; 7 uses
  br i1 %min.iters.check160, label %vec.epilog.scalar.ph174.preheader, label %vector.memcheck158

vector.memcheck158:                               ; preds = %iter.check173
  %scevgep.a = getelementptr i8, ptr %i.aa, i64 %i.v
  %bound0.a = icmp ult ptr %i.aa, %scevgep159
  %bound1.a = icmp ult ptr %1, %scevgep.a
  %found.conflict.a = and i1 %bound0.a, %bound1.a
  br i1 %found.conflict.a, label %vec.epilog.scalar.ph174.preheader, label %vector.main.loop.iter.check161

vector.main.loop.iter.check161:                   ; preds = %vector.memcheck158
  br i1 %min.iters.check162, label %vec.epilog.ph177, label %vector.body165

vector.body165:                                   ; preds = %vector.main.loop.iter.check161, %vector.body165
  %index166 = phi i64 [ %index.next169, %vector.body165 ], [ 0, %vector.main.loop.iter.check161 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index166 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %wide.load167 = load <8 x i8>, ptr %i.ab, align 1, !tbaa !43, !alias.scope !409
  %wide.load168 = load <8 x i8>, ptr %i.ac, align 1, !tbaa !43, !alias.scope !409
  %i.ad = zext <8 x i8> %wide.load167 to <8 x i16>
  %i.ae = zext <8 x i8> %wide.load168 to <8 x i16>
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index166 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <8 x i16> %i.ad, ptr %i.af, align 2, !tbaa !149, !alias.scope !412, !noalias !409
  store <8 x i16> %i.ae, ptr %i.ag, align 2, !tbaa !149, !alias.scope !412, !noalias !409
  %index.next169 = add nuw i64 %index166, 16      ; 2 uses
  %i.ah = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.ah, label %middle.block170, label %vector.body165, !llvm.loop !414

middle.block170:                                  ; preds = %vector.body165
  br i1 %cmp.n171, label %._crit_edge97, label %vec.epilog.iter.check175

vec.epilog.iter.check175:                         ; preds = %middle.block170
  br i1 %min.epilog.iters.check176, label %vec.epilog.scalar.ph174.preheader, label %vec.epilog.ph177, !prof !156

vec.epilog.ph177:                                 ; preds = %vector.main.loop.iter.check161, %vec.epilog.iter.check175
  %vec.epilog.resume.val172 = phi i64 [ %n.vec164, %vec.epilog.iter.check175 ], [ 0, %vector.main.loop.iter.check161 ]
  br label %vec.epilog.vector.body179

vec.epilog.vector.body179:                        ; preds = %vec.epilog.vector.body179, %vec.epilog.ph177
  %index180 = phi i64 [ %vec.epilog.resume.val172, %vec.epilog.ph177 ], [ %index.next182, %vec.epilog.vector.body179 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index180
  %wide.load181 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !43, !alias.scope !409
  %i.aj = zext <4 x i8> %wide.load181 to <4 x i16>
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %index180
  store <4 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !149, !alias.scope !412, !noalias !409
  %index.next182 = add nuw i64 %index180, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next182, %n.vec178
  br i1 %i.al, label %vec.epilog.middle.block183, label %vec.epilog.vector.body179, !llvm.loop !415

vec.epilog.middle.block183:                       ; preds = %vec.epilog.vector.body179
  br i1 %cmp.n184, label %._crit_edge97, label %vec.epilog.scalar.ph174.preheader

vec.epilog.scalar.ph174.preheader:                ; preds = %vector.memcheck158, %iter.check173, %vec.epilog.iter.check175, %vec.epilog.middle.block183
  %indvars.iv123.ph = phi i64 [ 0, %iter.check173 ], [ 0, %vector.memcheck158 ], [ %n.vec164, %vec.epilog.iter.check175 ], [ %n.vec178, %vec.epilog.middle.block183 ] ; 3 uses
  br i1 %lcmp.mod192.not, label %vec.epilog.scalar.ph174.prol.loopexit, label %vec.epilog.scalar.ph174.prol

vec.epilog.scalar.ph174.prol:                     ; preds = %vec.epilog.scalar.ph174.preheader, %vec.epilog.scalar.ph174.prol
  %indvars.iv123.prol = phi i64 [ %indvars.iv.next124.prol, %vec.epilog.scalar.ph174.prol ], [ %indvars.iv123.ph, %vec.epilog.scalar.ph174.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph174.prol ], [ 0, %vec.epilog.scalar.ph174.preheader ]
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv123.prol
  %i.am = load i8, ptr %gep.prol, align 1, !tbaa !43
  %i.an = zext i8 %i.am to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv123.prol
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !149
  %indvars.iv.next124.prol = add nuw nsw i64 %indvars.iv123.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter191
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph174.prol.loopexit, label %vec.epilog.scalar.ph174.prol, !llvm.loop !416

vec.epilog.scalar.ph174.prol.loopexit:            ; preds = %vec.epilog.scalar.ph174.prol, %vec.epilog.scalar.ph174.preheader
  %indvars.iv123.unr = phi i64 [ %indvars.iv123.ph, %vec.epilog.scalar.ph174.preheader ], [ %indvars.iv.next124.prol, %vec.epilog.scalar.ph174.prol ]
  %i.ap = sub nsw i64 %indvars.iv123.ph, %i.u
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge97, label %vec.epilog.scalar.ph174

vec.epilog.scalar.ph174:                          ; preds = %vec.epilog.scalar.ph174.prol.loopexit, %vec.epilog.scalar.ph174
  %indvars.iv123 = phi i64 [ %indvars.iv.next124.3, %vec.epilog.scalar.ph174 ], [ %indvars.iv123.unr, %vec.epilog.scalar.ph174.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv123
  %i.ar = load i8, ptr %gep, align 1, !tbaa !43
  %i.as = zext i8 %i.ar to i16
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv123
  store i16 %i.as, ptr %i.at, align 2, !tbaa !149
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next124
  %i.au = load i8, ptr %gep.1, align 1, !tbaa !43
  %i.av = zext i8 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.next124
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !149
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next124.1
  %i.ax = load i8, ptr %gep.2, align 1, !tbaa !43
  %i.ay = zext i8 %i.ax to i16
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.next124.1
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !149
  %indvars.iv.next124.2 = add nuw nsw i64 %indvars.iv123, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next124.2
  %i.ba = load i8, ptr %gep.3, align 1, !tbaa !43
  %i.bb = zext i8 %i.ba to i16
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv.next124.2
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !149
  %indvars.iv.next124.3 = add nuw nsw i64 %indvars.iv123, 4 ; 2 uses
  %exitcond127.not.3 = icmp eq i64 %indvars.iv.next124.3, %i.u
  br i1 %exitcond127.not.3, label %._crit_edge97, label %vec.epilog.scalar.ph174, !llvm.loop !417

._crit_edge97:                                    ; preds = %vec.epilog.scalar.ph174.prol.loopexit, %vec.epilog.scalar.ph174, %vec.epilog.middle.block183, %middle.block170
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit, label %iter.check173, !llvm.loop !418

iter.check:                                       ; preds = %.preheader83.preheader, %._crit_edge94
  %indvars.iv118 = phi i64 [ 0, %.preheader83.preheader ], [ %indvars.iv.next119, %._crit_edge94 ] ; 4 uses
  %i.bd = mul nuw nsw i64 %indvars.iv118, %i.o    ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv118
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44 ; 6 uses
  br i1 %min.iters.check.a, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck.a

vector.memcheck.a:                                ; preds = %iter.check
  %i.bg = ptrtoaddr ptr %i.bf to i64
  %i.bh = mul i64 %i.p, %indvars.iv118
  %i.bi = sub i64 %i.bh, %i.a
  %i.bj = add i64 %i.bi, %i.bg
  %i.bk = add i64 %i.bj, -1
  %diff.check = icmp ult i64 %i.bk, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck.a
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.body.a

vector.body.a:                                    ; preds = %vector.main.loop.iter.check, %vector.body.a
  %index.a = phi i64 [ %index.next.a, %vector.body.a ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bl = add nuw nsw i64 %index.a, %i.bd
  %i.bm = shl nuw nsw i64 %i.bl, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load.a = load <8 x i16>, ptr %i.bn, align 1
  %wide.load152 = load <8 x i16>, ptr %i.bo, align 1
  %i.bp = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load.a)
  %i.bq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load152)
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %index.a ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store <8 x i16> %i.bp, ptr %i.br, align 2, !tbaa !149
  store <8 x i16> %i.bq, ptr %i.bs, align 2, !tbaa !149
  %index.next.a = add nuw i64 %index.a, 16        ; 2 uses
  %i.bt = icmp eq i64 %index.next.a, %n.vec
  br i1 %i.bt, label %middle.block.a, label %vector.body.a, !llvm.loop !419

middle.block.a:                                   ; preds = %vector.body.a
  br i1 %cmp.n, label %._crit_edge94, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block.a
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 3 uses
  %i.bu = add nuw nsw i64 %index154, %i.bd
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 %i.bv
  %wide.load155 = load <4 x i16>, ptr %i.bw, align 1
  %i.bx = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load155)
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %index154
  store <4 x i16> %i.bx, ptr %i.by, align 2, !tbaa !149
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next156, %n.vec153
  br i1 %i.bz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !420

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n157, label %._crit_edge94, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck.a, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv113.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck.a ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec153, %vec.epilog.middle.block ] ; 5 uses
  br i1 %lcmp.mod190.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.ca = add nuw nsw i64 %indvars.iv113.ph, %i.bd
  %i.cb = shl nuw nsw i64 %i.ca, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 %i.cb
  %.0.copyload6.prol = load i16, ptr %i.cc, align 1
  %rev78.prol = tail call i16 @llvm.bswap.i16(i16 %.0.copyload6.prol)
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv113.ph
  store i16 %rev78.prol, ptr %i.cd, align 2, !tbaa !149
  %indvars.iv.next114.prol = or disjoint i64 %indvars.iv113.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv113.unr = phi i64 [ %indvars.iv113.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next114.prol, %vec.epilog.scalar.ph.prol ]
  %i.ce = icmp eq i64 %indvars.iv113.ph, %i.r
  br i1 %i.ce, label %._crit_edge94, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv113 = phi i64 [ %indvars.iv.next114.1, %vec.epilog.scalar.ph ], [ %indvars.iv113.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.cf = add nuw nsw i64 %indvars.iv113, %i.bd
  %i.cg = shl nuw nsw i64 %i.cf, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %.0.copyload6 = load i16, ptr %i.ch, align 1
  %rev78 = tail call i16 @llvm.bswap.i16(i16 %.0.copyload6)
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv113
  store i16 %rev78, ptr %i.ci, align 2, !tbaa !149
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.cj = add nuw nsw i64 %indvars.iv.next114, %i.bd
  %i.ck = shl nuw nsw i64 %i.cj, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 %i.ck
  %.0.copyload6.1 = load i16, ptr %i.cl, align 1
  %rev78.1 = tail call i16 @llvm.bswap.i16(i16 %.0.copyload6.1)
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %indvars.iv.next114
  store i16 %rev78.1, ptr %i.cm, align 2, !tbaa !149
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %exitcond117.not.1 = icmp eq i64 %indvars.iv.next114.1, %i.o
  br i1 %exitcond117.not.1, label %._crit_edge94, label %vec.epilog.scalar.ph, !llvm.loop !421

._crit_edge94:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block.a
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %.loopexit, label %iter.check, !llvm.loop !422

.preheader86:                                     ; preds = %.preheader86.preheader, %._crit_edge
  %indvars.iv108 = phi i64 [ 0, %.preheader86.preheader ], [ %indvars.iv.next109, %._crit_edge ] ; 3 uses
  %i.cn = mul nuw nsw i64 %indvars.iv108, %i.k    ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv108
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !44 ; 3 uses
  br i1 %i.l, label %.epil.preheader.a, label %.preheader86.new

.preheader86.new:                                 ; preds = %.preheader86, %.preheader86.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader86.new ], [ 0, %.preheader86 ] ; 4 uses
  %niter.a = phi i64 [ %niter.next.1.a, %.preheader86.new ], [ 0, %.preheader86 ]
  %i.cq = add nuw nsw i64 %indvars.iv, %i.cn
  %i.cr = shl i64 %i.cq, 2
  %i.cs = and i64 %i.cr, 4294967292
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 %i.cs
  %.0.copyload = load i32, ptr %i.ct, align 1
  %rev = tail call i32 @llvm.bswap.i32(i32 %.0.copyload)
  %5 = trunc i32 %rev to i16
  %6 = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv
  store i16 %5, ptr %6, align 2, !tbaa !149
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %7 = add nuw nsw i64 %indvars.iv.next, %i.cn
  %8 = shl i64 %7, 2
  %9 = and i64 %8, 4294967292
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %9
  %.0.copyload.1 = load i32, ptr %i.cu, align 1
  %rev.1 = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.1)
  %10 = trunc i32 %rev.1 to i16
  %11 = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv.next
  store i16 %10, ptr %11, align 2, !tbaa !149
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1.a = add i64 %niter.a, 2           ; 2 uses
  %niter.ncmp.1.a = icmp eq i64 %niter.next.1.a, %unroll_iter
  br i1 %niter.ncmp.1.a, label %._crit_edge.unr-lcssa, label %.preheader86.new, !llvm.loop !423

._crit_edge.unr-lcssa:                            ; preds = %.preheader86.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader.a

.epil.preheader.a:                                ; preds = %._crit_edge.unr-lcssa, %.preheader86
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader86 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod188)
  %i.cv = add nuw nsw i64 %indvars.iv.epil.init, %i.cn
  %i.cw = shl i64 %i.cv, 2
  %i.cx = and i64 %i.cw, 4294967292
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %i.cx
  %.0.copyload.epil = load i32, ptr %i.cy, align 1
  %rev.epil = tail call i32 @llvm.bswap.i32(i32 %.0.copyload.epil)
  %i.cz = trunc i32 %rev.epil to i16
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %indvars.iv.epil.init
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !149
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader.a
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %.loopexit88, label %.preheader86, !llvm.loop !424

.loopexit88:                                      ; preds = %._crit_edge, %.preheader87, %bb.d
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 500) #18
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge100
  %indvars.iv138 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next139, %._crit_edge100 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv138 ; 3 uses
  %i.dc = mul nuw nsw i64 %indvars.iv138, %i.g    ; 3 uses
  br i1 %i.h, label %.epil.preheader193, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter198 = phi i64 [ %niter198.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %indvars.iv133 ; 2 uses
  store i16 0, ptr %i.de, align 2, !tbaa !149
  %i.df = add nuw nsw i64 %indvars.iv133, %i.dc
  %i.dg = mul nsw i64 %i.df, %i.b
  %i.dh = getelementptr inbounds i8, ptr %1, i64 %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.de, ptr align 1 %i.dh, i64 %i.b, i1 false)
  %indvars.iv.next134 = or disjoint i64 %indvars.iv133, 1 ; 2 uses
  %i.di = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %indvars.iv.next134 ; 2 uses
  store i16 0, ptr %i.dj, align 2, !tbaa !149
  %i.dk = add nuw nsw i64 %indvars.iv.next134, %i.dc
  %i.dl = mul nsw i64 %i.dk, %i.b
  %i.dm = getelementptr inbounds i8, ptr %1, i64 %i.dl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.dj, ptr align 1 %i.dm, i64 %i.b, i1 false)
  %indvars.iv.next134.1 = add nuw nsw i64 %indvars.iv133, 2 ; 2 uses
  %niter198.next.1 = add i64 %niter198, 2         ; 2 uses
  %niter198.ncmp.1 = icmp eq i64 %niter198.next.1, %unroll_iter197
  br i1 %niter198.ncmp.1, label %._crit_edge100.unr-lcssa, label %.preheader.new, !llvm.loop !425

._crit_edge100.unr-lcssa:                         ; preds = %.preheader.new
  br i1 %lcmp.mod195.not, label %._crit_edge100, label %.epil.preheader193

.epil.preheader193:                               ; preds = %._crit_edge100.unr-lcssa, %.preheader
  %indvars.iv133.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next134.1, %._crit_edge100.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod196)
  %i.dn = load ptr, ptr %i.db, align 8, !tbaa !44
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dn, i64 %indvars.iv133.epil.init ; 2 uses
  store i16 0, ptr %i.do, align 2, !tbaa !149
  %i.dp = add nuw nsw i64 %indvars.iv133.epil.init, %i.dc
  %i.dq = mul nsw i64 %i.dp, %i.b
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.do, ptr align 1 %i.dr, i64 %i.b, i1 false)
  br label %._crit_edge100

._crit_edge100:                                   ; preds = %._crit_edge100.unr-lcssa, %.epil.preheader193
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %.loopexit, label %.preheader, !llvm.loop !426

.loopexit:                                        ; preds = %._crit_edge94, %._crit_edge97, %._crit_edge100, %.preheader84, %.preheader81, %.preheader79, %.loopexit88
  ret void
}

declare i32 @testEndian() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @AllocNALU(i32 noundef) local_unnamed_addr #2

declare void @FreeNALU(ptr noundef) local_unnamed_addr #2

declare void @combine_field() local_unnamed_addr #2

declare i32 @decide_fld_frame(float noundef, float noundef, i32 noundef, i32 noundef, double noundef) local_unnamed_addr #2

declare void @UpdateSubseqInfo(i32 noundef) local_unnamed_addr #2

declare void @UpdateSceneInformation(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

declare void @report_stats_on_error() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #15

declare i32 @test_wp_P_slice(i32 noundef) local_unnamed_addr #2

declare i32 @picture_coding_decision(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @test_wp_B_slice(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS16storable_picture", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 6440}
!12 = !{!"storable_picture", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !6, i64 1608, !6, i64 3192, !6, i64 4776, !5, i64 6360, !5, i64 6364, !5, i64 6368, !5, i64 6372, !5, i64 6376, !5, i64 6380, !5, i64 6384, !5, i64 6388, !5, i64 6392, !5, i64 6396, !5, i64 6400, !5, i64 6404, !5, i64 6408, !5, i64 6412, !5, i64 6416, !5, i64 6420, !5, i64 6424, !5, i64 6428, !5, i64 6432, !13, i64 6440, !15, i64 6448, !15, i64 6456, !18, i64 6464, !20, i64 6472, !21, i64 6480, !22, i64 6488, !23, i64 6496, !23, i64 6504, !15, i64 6512, !24, i64 6520, !24, i64 6528, !9, i64 6536, !9, i64 6544, !9, i64 6552, !5, i64 6560, !5, i64 6564, !5, i64 6568, !5, i64 6572, !5, i64 6576, !5, i64 6580, !5, i64 6584}
!13 = !{!"p2 short", !14, i64 0}
!14 = !{!"any p2 pointer", !10, i64 0}
!15 = !{!"p4 short", !16, i64 0}
!16 = !{!"any p4 pointer", !17, i64 0}
!17 = !{!"any p3 pointer", !14, i64 0}
!18 = !{!"p5 short", !19, i64 0}
!19 = !{!"any p5 pointer", !16, i64 0}
!20 = !{!"p3 short", !17, i64 0}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!"p3 omnipotent char", !17, i64 0}
!23 = !{!"p3 long long", !17, i64 0}
!24 = !{!"p2 omnipotent char", !14, i64 0}
!25 = !{!12, !20, i64 6472}
!26 = !{!10, !10, i64 0}
!27 = !{!28, !5, i64 15536}
!28 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !29, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !24, i64 128, !24, i64 136, !5, i64 144, !30, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !6, i64 208, !6, i64 4816, !6, i64 7376, !6, i64 8528, !6, i64 12624, !6, i64 13136, !31, i64 14160, !30, i64 14168, !30, i64 14176, !30, i64 14184, !31, i64 14192, !31, i64 14200, !10, i64 14208, !10, i64 14216, !32, i64 14224, !33, i64 14232, !33, i64 14240, !5, i64 14248, !5, i64 14252, !5, i64 14256, !5, i64 14260, !6, i64 14264, !5, i64 14328, !5, i64 14332, !5, i64 14336, !5, i64 14340, !5, i64 14344, !34, i64 14352, !5, i64 14360, !5, i64 14364, !5, i64 14368, !5, i64 14372, !35, i64 14376, !35, i64 14384, !35, i64 14392, !35, i64 14400, !6, i64 14408, !5, i64 14440, !5, i64 14444, !5, i64 14448, !5, i64 14452, !5, i64 14456, !5, i64 14460, !5, i64 14464, !5, i64 14468, !6, i64 14472, !5, i64 15240, !5, i64 15244, !5, i64 15248, !5, i64 15252, !5, i64 15256, !5, i64 15260, !5, i64 15264, !5, i64 15268, !5, i64 15272, !5, i64 15276, !5, i64 15280, !5, i64 15284, !5, i64 15288, !6, i64 15292, !5, i64 15296, !5, i64 15300, !6, i64 15304, !5, i64 15312, !5, i64 15316, !5, i64 15320, !5, i64 15324, !5, i64 15328, !5, i64 15332, !5, i64 15336, !5, i64 15340, !5, i64 15344, !5, i64 15348, !5, i64 15352, !5, i64 15356, !5, i64 15360, !5, i64 15364, !5, i64 15368, !5, i64 15372, !37, i64 15376, !5, i64 15384, !5, i64 15388, !5, i64 15392, !5, i64 15396, !5, i64 15400, !5, i64 15404, !5, i64 15408, !5, i64 15412, !5, i64 15416, !5, i64 15420, !5, i64 15424, !5, i64 15428, !5, i64 15432, !5, i64 15436, !5, i64 15440, !5, i64 15444, !5, i64 15448, !5, i64 15452, !5, i64 15456, !5, i64 15460, !5, i64 15464, !5, i64 15468, !5, i64 15472, !38, i64 15480, !39, i64 15488, !30, i64 15496, !38, i64 15504, !5, i64 15512, !5, i64 15516, !5, i64 15520, !5, i64 15524, !5, i64 15528, !5, i64 15532, !5, i64 15536, !5, i64 15540, !5, i64 15544, !5, i64 15548, !6, i64 15552, !6, i64 15576, !5, i64 15584, !5, i64 15588, !40, i64 15592, !5, i64 15596, !5, i64 15600, !5, i64 15604, !5, i64 15608, !5, i64 15612}
!29 = !{!"float", !6, i64 0}
!30 = !{!"p3 int", !17, i64 0}
!31 = !{!"p4 int", !16, i64 0}
!32 = !{!"p1 _ZTS10macroblock", !10, i64 0}
!33 = !{!"p1 int", !10, i64 0}
!34 = !{!"double", !6, i64 0}
!35 = !{!"p6 short", !36, i64 0}
!36 = !{!"any p6 pointer", !19, i64 0}
!37 = !{!"p1 _ZTS18DecRefPicMarking_s", !10, i64 0}
!38 = !{!"p2 double", !14, i64 0}
!39 = !{!"p3 double", !17, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!28, !5, i64 15348}
!42 = !{!12, !21, i64 6480}
!43 = !{!6, !6, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"p1 short", !10, i64 0}
!46 = !{!28, !5, i64 15544}
!47 = !{!28, !5, i64 15548}
!48 = !{!13, !13, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = !{!55, !5, i64 1560}
!55 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !6, i64 72, !6, i64 136, !6, i64 200, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !6, i64 280, !6, i64 536, !6, i64 792, !6, i64 1048, !6, i64 1304, !5, i64 1560, !5, i64 1564, !5, i64 1568, !5, i64 1572, !5, i64 1576, !5, i64 1580, !6, i64 1584, !5, i64 2084, !5, i64 2088, !5, i64 2092, !5, i64 2096, !5, i64 2100, !5, i64 2104, !5, i64 2108, !5, i64 2112, !5, i64 2116, !5, i64 2120, !5, i64 2124, !5, i64 2128, !5, i64 2132, !5, i64 2136, !5, i64 2140, !5, i64 2144, !5, i64 2148, !5, i64 2152, !5, i64 2156, !6, i64 2160, !6, i64 2416, !6, i64 2672, !5, i64 2928, !5, i64 2932, !5, i64 2936, !5, i64 2940, !5, i64 2944, !5, i64 2948, !5, i64 2952, !5, i64 2956, !5, i64 2960, !5, i64 2964, !5, i64 2968, !5, i64 2972, !6, i64 2976, !5, i64 4000, !5, i64 4004, !5, i64 4008, !5, i64 4012, !5, i64 4016, !5, i64 4020, !5, i64 4024, !5, i64 4028, !5, i64 4032, !5, i64 4036, !5, i64 4040, !5, i64 4044, !5, i64 4048, !5, i64 4052, !5, i64 4056, !5, i64 4060, !5, i64 4064, !5, i64 4068, !5, i64 4072, !5, i64 4076, !34, i64 4080, !5, i64 4088, !5, i64 4092, !5, i64 4096, !5, i64 4100, !5, i64 4104, !5, i64 4108, !5, i64 4112, !5, i64 4116, !5, i64 4120, !5, i64 4124, !5, i64 4128, !5, i64 4132, !5, i64 4136, !5, i64 4140, !5, i64 4144, !5, i64 4148, !5, i64 4152, !5, i64 4156, !5, i64 4160, !5, i64 4164, !5, i64 4168, !5, i64 4172, !5, i64 4176, !5, i64 4180, !5, i64 4184, !5, i64 4188, !6, i64 4192, !6, i64 4448, !5, i64 4704, !5, i64 4708, !5, i64 4712, !5, i64 4716, !5, i64 4720, !5, i64 4724, !5, i64 4728, !5, i64 4732, !5, i64 4736, !5, i64 4740, !5, i64 4744, !5, i64 4748, !5, i64 4752, !5, i64 4756, !5, i64 4760, !5, i64 4764, !5, i64 4768, !5, i64 4772, !6, i64 4776, !5, i64 5032, !5, i64 5036, !33, i64 5040, !33, i64 5048, !21, i64 5056, !33, i64 5064, !5, i64 5072, !5, i64 5076, !5, i64 5080, !5, i64 5084, !5, i64 5088, !5, i64 5092, !5, i64 5096, !5, i64 5100, !5, i64 5104, !5, i64 5108, !5, i64 5112, !5, i64 5116, !5, i64 5120, !5, i64 5124, !5, i64 5128, !5, i64 5132, !5, i64 5136, !34, i64 5144, !34, i64 5152, !34, i64 5160, !6, i64 5168, !5, i64 5208, !6, i64 5212, !5, i64 5244, !5, i64 5248, !5, i64 5252, !5, i64 5256, !5, i64 5260, !5, i64 5264, !5, i64 5268, !5, i64 5272, !5, i64 5276, !5, i64 5280, !5, i64 5284, !5, i64 5288, !6, i64 5296, !6, i64 5344, !6, i64 5392, !5, i64 5648, !5, i64 5652, !5, i64 5656, !5, i64 5660, !6, i64 5664, !6, i64 5704, !5, i64 5744, !5, i64 5748, !5, i64 5752, !5, i64 5756, !5, i64 5760, !5, i64 5764, !5, i64 5768, !5, i64 5772, !5, i64 5776, !6, i64 5780, !5, i64 5792}
!56 = !{!28, !5, i64 0}
!57 = !{!28, !10, i64 14208}
!58 = !{!28, !5, i64 24}
!59 = !{!55, !5, i64 1568}
!60 = !{!28, !5, i64 20}
!61 = !{!62, !5, i64 4}
!62 = !{!"", !5, i64 0, !5, i64 4, !6, i64 8, !5, i64 808, !29, i64 812, !29, i64 816, !29, i64 820}
!63 = !{!62, !5, i64 0}
!64 = !{!62, !29, i64 820}
!65 = !{!29, !29, i64 0}
!66 = !{!28, !5, i64 15436}
!67 = !{!55, !5, i64 5100}
!68 = !{!28, !5, i64 15600}
!69 = !{!28, !5, i64 12}
!70 = !{!28, !5, i64 16}
!71 = !{!72, !5, i64 32}
!72 = !{!"", !5, i64 0, !5, i64 4, !29, i64 8, !29, i64 12, !73, i64 16, !73, i64 24, !5, i64 32, !5, i64 36, !5, i64 40, !6, i64 44, !6, i64 84, !6, i64 384, !6, i64 684, !5, i64 700, !33, i64 704, !33, i64 712, !73, i64 720, !73, i64 728, !73, i64 736, !29, i64 744, !29, i64 748, !29, i64 752, !6, i64 760, !6, i64 1360, !6, i64 1960, !6, i64 2000, !6, i64 2040, !6, i64 2080, !6, i64 2120, !6, i64 2160, !6, i64 2200, !5, i64 2240, !5, i64 2244, !33, i64 2248, !5, i64 2256, !5, i64 2260}
!73 = !{!"long long", !6, i64 0}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = !{!55, !5, i64 4168}
!77 = !{!55, !5, i64 4728}
!78 = !{!79, !20, i64 24}
!79 = !{!"", !80, i64 0, !20, i64 8, !15, i64 16, !20, i64 24, !13, i64 32, !24, i64 40, !24, i64 48}
!80 = !{!"p2 int", !14, i64 0}
!81 = distinct !{!81, !50}
!82 = !{!28, !5, i64 15268}
!83 = !{!84, !84, i64 0}
!84 = !{!"long", !6, i64 0}
!85 = !{!28, !5, i64 14260}
!86 = !{!28, !5, i64 15408}
!87 = !{!55, !5, i64 2092}
!88 = !{!72, !5, i64 2260}
!89 = !{!72, !5, i64 2256}
!90 = !{!20, !20, i64 0}
!91 = !{!33, !33, i64 0}
!92 = !{!28, !5, i64 120}
!93 = !{!28, !5, i64 15352}
!94 = !{!28, !32, i64 14224}
!95 = !{!96, !5, i64 0}
!96 = !{!"macroblock", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !5, i64 20, !6, i64 24, !32, i64 56, !32, i64 64, !5, i64 72, !6, i64 76, !6, i64 332, !6, i64 348, !5, i64 364, !73, i64 368, !6, i64 376, !6, i64 392, !73, i64 408, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !40, i64 480, !34, i64 488, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !99}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = !{!28, !5, i64 14364}
!101 = !{!55, !5, i64 20}
!102 = !{!28, !5, i64 14248}
!103 = !{!28, !5, i64 14332}
!104 = !{!28, !5, i64 14336}
!105 = !{!55, !5, i64 4144}
!106 = !{!55, !5, i64 8}
!107 = !{!55, !5, i64 2096}
!108 = !{!55, !5, i64 5116}
!109 = !{!55, !5, i64 4156}
!110 = !{!55, !5, i64 2152}
!111 = !{!55, !5, i64 4160}
!112 = !{!28, !5, i64 36}
!113 = !{!55, !5, i64 12}
!114 = !{!55, !5, i64 4148}
!115 = !{!28, !5, i64 15360}
!116 = !{!55, !5, i64 5756}
!117 = !{!55, !5, i64 16}
!118 = !{!28, !5, i64 112}
!119 = !{!28, !5, i64 116}
!120 = !{!55, !5, i64 68}
!121 = !{!28, !5, i64 68}
!122 = !{!28, !5, i64 14360}
!123 = !{!28, !5, i64 15240}
!124 = distinct !{!124, !50}
!125 = !{!28, !34, i64 14352}
!126 = !{!55, !5, i64 2968}
!127 = !{!128, !5, i64 4}
!128 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!129 = !{!55, !5, i64 2104}
!130 = !{!55, !5, i64 4152}
!131 = !{!28, !5, i64 15452}
!132 = !{!55, !5, i64 4164}
!133 = !{!55, !5, i64 2108}
!134 = !{!128, !5, i64 12}
!135 = !{!28, !5, i64 44}
!136 = !{!28, !5, i64 15248}
!137 = !{!55, !5, i64 276}
!138 = !{!55, !5, i64 56}
!139 = !{!55, !5, i64 60}
!140 = !{!55, !5, i64 5268}
!141 = !{!55, !5, i64 5264}
!142 = !{!28, !5, i64 15440}
!143 = !{!55, !5, i64 5272}
!144 = !{!55, !5, i64 64}
!145 = !{!55, !5, i64 1572}
!146 = !{!28, !5, i64 52}
!147 = !{!28, !5, i64 64}
!148 = !{!28, !5, i64 80}
!149 = !{!40, !40, i64 0}
!150 = distinct !{!150, !99}
!151 = distinct !{!151, !50}
!152 = distinct !{!152, !50}
!153 = distinct !{!153, !50, !154, !155}
!154 = !{!"llvm.loop.isvectorized", i32 1}
!155 = !{!"llvm.loop.unroll.runtime.disable"}
!156 = !{!"branch_weights", i32 4, i32 12}
!157 = distinct !{!157, !50, !154, !155}
!158 = distinct !{!158, !99}
!159 = distinct !{!159, !50, !154}
!160 = distinct !{!160, !50}
!161 = distinct !{!161, !50}
!162 = distinct !{!162, !99}
!163 = distinct !{!163, !50}
!164 = distinct !{!164, !50, !154, !155}
!165 = distinct !{!165, !50, !154, !155}
!166 = distinct !{!166, !50, !154}
!167 = distinct !{!167, !50}
!168 = !{!55, !5, i64 2112}
end_hunk_0
begin_hunk_1_@llvm.bswap.v4i16
!223 = distinct !{!223, !50}
!224 = distinct !{!224, !50}
!225 = distinct !{!225, !50}
!226 = distinct !{!226, !50}
!227 = distinct !{!227, !50}
!228 = !{!175, !29, i64 96}
!229 = !{!175, !29, i64 100}
!230 = !{!175, !29, i64 104}
!231 = !{!175, !29, i64 0}
!232 = !{!175, !29, i64 4}
!233 = !{!175, !29, i64 12}
!234 = !{!175, !29, i64 16}
!235 = !{!175, !29, i64 20}
!236 = !{!175, !29, i64 84}
!237 = !{!175, !29, i64 88}
!238 = !{!175, !29, i64 92}
!239 = !{!175, !29, i64 108}
!240 = !{!175, !29, i64 112}
!241 = !{!175, !29, i64 116}
!242 = !{!55, !5, i64 5084}
!243 = distinct !{!243, !50}
!244 = distinct !{!244, !99}
!245 = distinct !{!245, !50}
!246 = distinct !{!246, !50}
!247 = distinct !{!247, !50}
!248 = distinct !{!248, !50}
!249 = distinct !{!249, !99}
!250 = distinct !{!250, !50}
!251 = distinct !{!251, !50}
!252 = distinct !{!252, !50}
!253 = !{!254, !40, i64 8}
!254 = !{!"timeb", !84, i64 0, !40, i64 8, !40, i64 10, !40, i64 12}
!255 = !{!28, !5, i64 15604}
!256 = !{!257, !5, i64 1356}
!257 = !{!"", !29, i64 0, !29, i64 4, !29, i64 8, !34, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !34, i64 80, !34, i64 88, !34, i64 96, !34, i64 104, !34, i64 112, !6, i64 120, !6, i64 288, !6, i64 456, !6, i64 624, !6, i64 792, !6, i64 960, !6, i64 1128, !34, i64 1296, !34, i64 1304, !34, i64 1312, !34, i64 1320, !5, i64 1328, !5, i64 1332, !5, i64 1336, !5, i64 1340, !5, i64 1344, !5, i64 1348, !5, i64 1352, !5, i64 1356, !5, i64 1360, !5, i64 1364, !5, i64 1368, !5, i64 1372, !5, i64 1376, !5, i64 1380, !5, i64 1384, !5, i64 1388, !5, i64 1392, !34, i64 1400, !34, i64 1408, !34, i64 1416, !34, i64 1424, !34, i64 1432, !5, i64 1440, !5, i64 1444, !5, i64 1448, !5, i64 1452, !5, i64 1456, !5, i64 1460, !5, i64 1464, !5, i64 1468, !258, i64 1472, !258, i64 1480, !258, i64 1488, !258, i64 1496, !5, i64 1504, !73, i64 1512, !73, i64 1520, !5, i64 1528, !5, i64 1532, !5, i64 1536, !5, i64 1540, !5, i64 1544, !5, i64 1548, !5, i64 1552, !5, i64 1556, !5, i64 1560, !5, i64 1564, !34, i64 1568, !34, i64 1576, !34, i64 1584, !5, i64 1592, !5, i64 1596}
!258 = !{!"p1 double", !10, i64 0}
!259 = !{!260, !260, i64 0}
!260 = !{!"p1 long", !10, i64 0}
!261 = !{!28, !5, i64 15272}
!262 = !{!28, !5, i64 14456}
!263 = !{!28, !5, i64 14460}
!264 = !{!257, !73, i64 1512}
!265 = !{!72, !73, i64 720}
!266 = !{!257, !73, i64 1520}
!267 = !{!72, !73, i64 728}
!268 = !{!269, !5, i64 192}
!269 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !6, i64 24, !5, i64 56, !5, i64 60, !5, i64 64, !6, i64 68, !6, i64 100, !6, i64 132, !5, i64 164, !5, i64 168, !5, i64 172, !21, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232}
!270 = !{!72, !73, i64 736}
!271 = !{!269, !5, i64 196}
!272 = !{!273, !273, i64 0}
!273 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!274 = !{!257, !34, i64 1432}
!275 = !{!28, !5, i64 88}
!276 = distinct !{!276, !50}
!277 = !{!80, !80, i64 0}
!278 = distinct !{!278, !50}
!279 = !{!30, !30, i64 0}
!280 = !{!72, !5, i64 2244}
!281 = !{!72, !33, i64 2248}
!282 = !{!28, !5, i64 15316}
!283 = !{!12, !5, i64 4}
!284 = !{!12, !5, i64 16}
!285 = !{!28, !5, i64 15332}
!286 = !{!12, !5, i64 6364}
!287 = !{!12, !5, i64 6360}
!288 = !{!12, !5, i64 6428}
!289 = !{!12, !5, i64 6432}
!290 = !{!28, !5, i64 15328}
!291 = !{!12, !5, i64 6564}
!292 = !{!187, !5, i64 1160}
!293 = !{!12, !5, i64 6568}
!294 = !{!187, !5, i64 32}
!295 = !{!12, !5, i64 6560}
!296 = !{!12, !5, i64 0}
!297 = !{!28, !10, i64 14216}
!298 = !{!299, !300, i64 24}
!299 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !300, i64 24, !10, i64 32, !10, i64 40, !5, i64 48, !33, i64 56, !33, i64 64, !33, i64 72, !5, i64 80, !33, i64 88, !33, i64 96, !33, i64 104, !10, i64 112, !6, i64 120}
!300 = !{!"p1 _ZTS13datapartition", !10, i64 0}
!301 = !{!302, !10, i64 0}
!302 = !{!"datapartition", !10, i64 0, !303, i64 8, !303, i64 56}
!303 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !21, i64 24, !33, i64 32, !5, i64 40, !5, i64 44}
!304 = !{!305, !5, i64 0}
!305 = !{!"", !5, i64 0, !5, i64 4, !6, i64 8, !5, i64 12, !5, i64 16, !6, i64 20, !6, i64 21, !5, i64 24, !5, i64 28, !21, i64 32, !5, i64 40}
!306 = !{!28, !5, i64 15320}
!307 = !{!55, !5, i64 4712}
!308 = !{!55, !5, i64 2964}
!309 = !{!257, !5, i64 1552}
!310 = !{!28, !5, i64 15324}
!311 = !{!72, !5, i64 2240}
!312 = distinct !{!312, !50}
!313 = distinct !{!313, !50}
!314 = !{!299, !5, i64 12}
!315 = !{!299, !5, i64 16}
!316 = !{!305, !5, i64 40}
!317 = !{!28, !5, i64 15444}
!318 = !{!28, !5, i64 15448}
!319 = !{!320, !5, i64 0}
!320 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !21, i64 24}
!321 = !{!320, !5, i64 4}
!322 = !{!320, !21, i64 24}
!323 = !{!305, !21, i64 32}
!324 = !{!55, !5, i64 4016}
!325 = !{!320, !5, i64 12}
!326 = !{!320, !5, i64 16}
!327 = !{!320, !5, i64 20}
!328 = distinct !{null}
!329 = distinct !{!329, !50}
!330 = distinct !{!330, !50}
!331 = distinct !{!331, !50}
!332 = distinct !{!332, !50}
!333 = distinct !{!333, !50}
!334 = distinct !{!334, !50}
!335 = distinct !{!335, !50}
!336 = distinct !{!336, !50}
!337 = distinct !{!337, !50}
!338 = distinct !{!338, !50}
!339 = !{!28, !5, i64 14340}
!340 = !{!28, !5, i64 14344}
!341 = distinct !{!341, !50}
!342 = distinct !{!342, !50}
!343 = !{!12, !5, i64 6396}
!344 = !{!12, !5, i64 6392}
!345 = !{!12, !15, i64 6448}
!346 = !{!55, !5, i64 5772}
!347 = !{!96, !5, i64 432}
!348 = !{!349, !5, i64 1656}
!349 = !{!"", !34, i64 0, !6, i64 8, !6, i64 520, !6, i64 1032, !31, i64 1544, !30, i64 1552, !5, i64 1560, !40, i64 1564, !6, i64 1568, !6, i64 1584, !24, i64 1600, !6, i64 1608, !6, i64 1624, !5, i64 1640, !73, i64 1648, !5, i64 1656, !35, i64 1664, !35, i64 1672, !6, i64 1680, !5, i64 1712, !5, i64 1716, !5, i64 1720, !5, i64 1724, !5, i64 1728, !5, i64 1732, !5, i64 1736, !5, i64 1740, !5, i64 1744}
!350 = !{!349, !5, i64 1560}
!351 = !{!96, !5, i64 72}
!352 = !{!349, !5, i64 1640}
!353 = !{!96, !5, i64 364}
!354 = !{!349, !73, i64 1648}
!355 = !{!96, !73, i64 368}
!356 = !{!349, !40, i64 1564}
!357 = !{!96, !40, i64 480}
!358 = !{!349, !5, i64 1712}
!359 = !{!28, !5, i64 15244}
!360 = !{!349, !5, i64 1744}
!361 = !{!96, !5, i64 504}
!362 = !{!349, !5, i64 1740}
!363 = !{!96, !5, i64 4}
!364 = !{!349, !5, i64 1728}
!365 = !{!96, !5, i64 8}
!366 = !{!349, !5, i64 1716}
!367 = !{!96, !5, i64 416}
!368 = !{!28, !5, i64 15528}
!369 = !{!28, !31, i64 14160}
!370 = !{!349, !31, i64 1544}
!371 = distinct !{!371, !50}
!372 = !{!28, !30, i64 14168}
!373 = !{!349, !30, i64 1552}
!374 = !{!28, !5, i64 172}
!375 = !{!12, !22, i64 6488}
!376 = !{!24, !24, i64 0}
!377 = !{!21, !21, i64 0}
!378 = !{!28, !5, i64 168}
!379 = !{!12, !23, i64 6496}
!380 = !{!381, !381, i64 0}
!381 = !{!"p2 long long", !14, i64 0}
!382 = !{!383, !383, i64 0}
!383 = !{!"p1 long long", !10, i64 0}
!384 = !{!73, !73, i64 0}
!385 = !{!28, !5, i64 180}
!386 = !{!28, !5, i64 176}
!387 = !{!28, !5, i64 188}
!388 = !{!28, !5, i64 184}
!389 = distinct !{!389, !50}
!390 = !{!349, !5, i64 1720}
!391 = !{!96, !5, i64 472}
!392 = !{!28, !24, i64 128}
!393 = !{!349, !24, i64 1600}
!394 = distinct !{!394, !50}
!395 = distinct !{!395, !50}
!396 = distinct !{!396, !50}
!397 = !{!28, !5, i64 32}
!398 = !{!28, !35, i64 14384}
!399 = !{!28, !35, i64 14376}
!400 = !{!349, !35, i64 1672}
!401 = !{!349, !35, i64 1664}
!402 = !{!18, !18, i64 0}
!403 = !{!15, !15, i64 0}
!404 = distinct !{!404, !50}
!405 = distinct !{!405, !50}
!406 = distinct !{!406, !50}
!407 = !{!12, !15, i64 6512}
!408 = distinct !{!408, !50}
!409 = !{!410}
!410 = distinct !{!410, !411}
!411 = distinct !{!411, !"LVerDomain"}
!412 = !{!413}
!413 = distinct !{!413, !411}
!414 = distinct !{!414, !50, !154, !155}
!415 = distinct !{!415, !50, !154, !155}
!416 = distinct !{!416, !99}
!417 = distinct !{!417, !50, !154}
!418 = distinct !{!418, !50}
!419 = distinct !{!419, !50, !154, !155}
!420 = distinct !{!420, !50, !154, !155}
!421 = distinct !{!421, !50, !154}
!422 = distinct !{!422, !50}
!423 = distinct !{!423, !50}
!424 = distinct !{!424, !50}
!425 = distinct !{!425, !50}
!426 = distinct !{!426, !50}
end_hunk_1
