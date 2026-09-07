Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/compression?download=true
inline.NumInlined: 100
inline.NumDeleted: 42
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 129
begin_hunk_0_@deflate_flush_block:.preheader619
  %i.aje = zext nneg i32 %i.adc to i64            ; 3 uses
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.aje
  %i.ajg = load i32, ptr %i.ajf, align 4, !tbaa !36
  %i.ajh = zext i32 %i.ajg to i64
  %i.aji = zext nneg i32 %.22554 to i64
  %i.ajj = shl nuw nsw i64 %i.ajh, %i.aji
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.xx, i64 %i.aje
  %i.ajl = load i8, ptr %i.ajk, align 1, !tbaa !36
  %i.ajm = zext i8 %i.ajl to i32
  %i.ajn = add nuw nsw i32 %.22554, %i.ajm        ; 2 uses
  %i.ajo = zext i16 %i.ajd to i64                 ; 4 uses
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %i.ajo
  %i.ajq = load i32, ptr %i.ajp, align 4, !tbaa !16
  %i.ajr = zext i32 %i.ajq to i64
  %i.ajs = zext nneg i32 %i.ajn to i64
  %i.ajt = shl i64 %i.ajr, %i.ajs
  %i.aju = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.ajo
  %i.ajv = load i8, ptr %i.aju, align 1, !tbaa !36
  %i.ajw = zext i8 %i.ajv to i32
  %i.ajx = add nuw nsw i32 %i.ajn, %i.ajw         ; 2 uses
  %i.ajy = getelementptr inbounds nuw [4 x i8], ptr @deflate_offset_slot_base, i64 %i.ajo
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !16
  %i.aka = sub i32 %i.ajb, %i.ajz
  %i.akb = zext i32 %i.aka to i64
  %i.akc = zext nneg i32 %i.ajx to i64
  %i.akd = shl i64 %i.akb, %i.akc
  %i.ake = or i64 %i.ajj, %i.ajt
  %i.akf = or i64 %i.ake, %i.akd
  %i.akg = or i64 %i.akf, %.22                    ; 4 uses
  %i.akh = getelementptr inbounds nuw i8, ptr @deflate_extra_offset_bits, i64 %i.ajo
  %i.aki = load i8, ptr %i.akh, align 1, !tbaa !36
  %i.akj = zext i8 %i.aki to i32
  %i.akk = add nuw nsw i32 %i.ajx, %i.akj         ; 6 uses
  %i.akl = icmp ult ptr %.21525, %i.bm
  br i1 %i.akl, label %bb.ac, label %.preheader602, !prof !46

.preheader602:                                    ; preds = %bb.ab
  %i.akm = icmp ugt i32 %i.akk, 7
  br i1 %i.akm, label %.lr.ph695, label %.loopexit603

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.akg, ptr %.21525, align 1
  %i.akn = and i32 %i.akk, -8
  %i.ako = zext nneg i32 %i.akn to i64
  %i.akp = lshr i64 %i.akg, %i.ako
  %i.akq = lshr i32 %i.akk, 3
  %i.akr = zext nneg i32 %i.akq to i64
  %i.aks = getelementptr inbounds nuw i8, ptr %.21525, i64 %i.akr
  %i.akt = and i32 %i.akk, 7
  br label %.loopexit603

.lr.ph695:                                        ; preds = %.preheader602, %.lr.ph695
  %.23694 = phi i64 [ %i.akx, %.lr.ph695 ], [ %i.akg, %.preheader602 ] ; 2 uses
  %.22526693 = phi ptr [ %i.akv, %.lr.ph695 ], [ %.21525, %.preheader602 ] ; 2 uses
  %.23555692 = phi i32 [ %i.akw, %.lr.ph695 ], [ %i.akk, %.preheader602 ]
  %i.aku = trunc i64 %.23694 to i8
  %i.akv = getelementptr inbounds nuw i8, ptr %.22526693, i64 1 ; 2 uses
  store i8 %i.aku, ptr %.22526693, align 1, !tbaa !36
  %i.akw = add nsw i32 %.23555692, -8             ; 3 uses
  %i.akx = lshr i64 %.23694, 8                    ; 2 uses
  %i.aky = icmp ugt i32 %i.akw, 7
  br i1 %i.aky, label %.lr.ph695, label %.loopexit603, !llvm.loop !195

.loopexit603:                                     ; preds = %.lr.ph695, %.preheader602, %bb.ac
  %.24556 = phi i32 [ %i.akt, %bb.ac ], [ %i.akk, %.preheader602 ], [ %i.akw, %.lr.ph695 ]
  %.23527 = phi ptr [ %i.aks, %bb.ac ], [ %.21525, %.preheader602 ], [ %i.akv, %.lr.ph695 ]
  %.24 = phi i64 [ %i.akp, %bb.ac ], [ %i.akg, %.preheader602 ], [ %i.akx, %.lr.ph695 ]
  %i.akz = getelementptr inbounds nuw i8, ptr %.4, i64 %i.aje
  %i.ala = getelementptr inbounds nuw i8, ptr %.0475, i64 8
  br label %bb.u

.loopexit599:                                     ; preds = %.loopexit605, %.loopexit596
  %.26558 = phi i32 [ %.15547, %.loopexit596 ], [ %.22554, %.loopexit605 ] ; 3 uses
  %.25529 = phi ptr [ %.15519, %.loopexit596 ], [ %.21525, %.loopexit605 ] ; 6 uses
  %.26 = phi i64 [ %.15, %.loopexit596 ], [ %.22, %.loopexit605 ]
  %i.alb = getelementptr inbounds nuw i8, ptr %.0494, i64 1024
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !16
  %i.ald = zext i32 %i.alc to i64
  %i.ale = zext nneg i32 %.26558 to i64
  %i.alf = shl nuw nsw i64 %i.ald, %i.ale
  %i.alg = or i64 %i.alf, %.26                    ; 5 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.0494, i64 1536
  %i.ali = load i8, ptr %i.alh, align 4, !tbaa !36
  %i.alj = zext i8 %i.ali to i32                  ; 2 uses
  %i.alk = add nuw nsw i32 %.26558, %i.alj        ; 7 uses
  %i.all = icmp ult ptr %.25529, %i.bm
  br i1 %i.all, label %bb.ad, label %.preheader593, !prof !46

.preheader593:                                    ; preds = %.loopexit599
  %i.alm = icmp ugt i32 %i.alk, 7
  br i1 %i.alm, label %.lr.ph716.preheader, label %.loopexit

.lr.ph716.preheader:                              ; preds = %.preheader593
  %i.aln = add i32 %.26558, %i.alj
  %i.alo = add i32 %i.aln, -8                     ; 2 uses
  %i.alp = lshr i32 %i.alo, 3
  %i.alq = add nuw nsw i32 %i.alp, 1
  %xtraiter1072 = and i32 %i.alq, 7               ; 2 uses
  %lcmp.mod1073.not = icmp eq i32 %xtraiter1072, 0
  br i1 %lcmp.mod1073.not, label %.lr.ph716.prol.loopexit, label %.lr.ph716.prol

.lr.ph716.prol:                                   ; preds = %.lr.ph716.preheader, %.lr.ph716.prol
  %.27715.prol = phi i64 [ %i.alu, %.lr.ph716.prol ], [ %i.alg, %.lr.ph716.preheader ] ; 2 uses
  %.26530714.prol = phi ptr [ %i.als, %.lr.ph716.prol ], [ %.25529, %.lr.ph716.preheader ] ; 2 uses
  %.27559713.prol = phi i32 [ %i.alt, %.lr.ph716.prol ], [ %i.alk, %.lr.ph716.preheader ]
  %prol.iter1074 = phi i32 [ %prol.iter1074.next, %.lr.ph716.prol ], [ 0, %.lr.ph716.preheader ]
  %i.alr = trunc i64 %.27715.prol to i8
  %i.als = getelementptr inbounds nuw i8, ptr %.26530714.prol, i64 1 ; 3 uses
  store i8 %i.alr, ptr %.26530714.prol, align 1, !tbaa !36
  %i.alt = add nsw i32 %.27559713.prol, -8        ; 3 uses
  %i.alu = lshr i64 %.27715.prol, 8               ; 3 uses
  %prol.iter1074.next = add i32 %prol.iter1074, 1 ; 2 uses
  %prol.iter1074.cmp.not = icmp eq i32 %prol.iter1074.next, %xtraiter1072
  br i1 %prol.iter1074.cmp.not, label %.lr.ph716.prol.loopexit, label %.lr.ph716.prol, !llvm.loop !196

.lr.ph716.prol.loopexit:                          ; preds = %.lr.ph716.prol, %.lr.ph716.preheader
  %.27715.unr = phi i64 [ %i.alg, %.lr.ph716.preheader ], [ %i.alu, %.lr.ph716.prol ]
  %.26530714.unr = phi ptr [ %.25529, %.lr.ph716.preheader ], [ %i.als, %.lr.ph716.prol ]
  %.27559713.unr = phi i32 [ %i.alk, %.lr.ph716.preheader ], [ %i.alt, %.lr.ph716.prol ]
  %.lcssa1000.unr = phi ptr [ poison, %.lr.ph716.preheader ], [ %i.als, %.lr.ph716.prol ]
  %.lcssa999.unr = phi i32 [ poison, %.lr.ph716.preheader ], [ %i.alt, %.lr.ph716.prol ]
  %.lcssa998.unr = phi i64 [ poison, %.lr.ph716.preheader ], [ %i.alu, %.lr.ph716.prol ]
  %i.alv = icmp ult i32 %i.alo, 56
  br i1 %i.alv, label %.loopexit, label %.lr.ph716

bb.ad:                                            ; preds = %.loopexit599
  store i64 %i.alg, ptr %.25529, align 1
  %i.alw = and i32 %i.alk, -8
  %i.alx = zext nneg i32 %i.alw to i64
  %i.aly = lshr i64 %i.alg, %i.alx
  %i.alz = lshr i32 %i.alk, 3
  %i.ama = zext nneg i32 %i.alz to i64
  %i.amb = getelementptr inbounds nuw i8, ptr %.25529, i64 %i.ama
  %i.amc = and i32 %i.alk, 7
  br label %.loopexit

.lr.ph716:                                        ; preds = %.lr.ph716.prol.loopexit, %.lr.ph716
  %.27715 = phi i64 [ 0, %.lr.ph716 ], [ %.27715.unr, %.lr.ph716.prol.loopexit ] ; 8 uses
  %.26530714 = phi ptr [ %i.amz, %.lr.ph716 ], [ %.26530714.unr, %.lr.ph716.prol.loopexit ] ; 9 uses
  %.27559713 = phi i32 [ %i.ana, %.lr.ph716 ], [ %.27559713.unr, %.lr.ph716.prol.loopexit ]
  %i.amd = trunc i64 %.27715 to i8
  %i.ame = getelementptr inbounds nuw i8, ptr %.26530714, i64 1
  store i8 %i.amd, ptr %.26530714, align 1, !tbaa !36
  %i.amf = lshr i64 %.27715, 8
  %i.amg = trunc i64 %i.amf to i8
  %i.amh = getelementptr inbounds nuw i8, ptr %.26530714, i64 2
  store i8 %i.amg, ptr %i.ame, align 1, !tbaa !36
  %i.ami = lshr i64 %.27715, 16
  %i.amj = trunc i64 %i.ami to i8
  %i.amk = getelementptr inbounds nuw i8, ptr %.26530714, i64 3
  store i8 %i.amj, ptr %i.amh, align 1, !tbaa !36
  %i.aml = lshr i64 %.27715, 24
  %i.amm = trunc i64 %i.aml to i8
  %i.amn = getelementptr inbounds nuw i8, ptr %.26530714, i64 4
  store i8 %i.amm, ptr %i.amk, align 1, !tbaa !36
  %i.amo = lshr i64 %.27715, 32
  %i.amp = trunc i64 %i.amo to i8
  %i.amq = getelementptr inbounds nuw i8, ptr %.26530714, i64 5
  store i8 %i.amp, ptr %i.amn, align 1, !tbaa !36
  %i.amr = lshr i64 %.27715, 40
  %i.ams = trunc i64 %i.amr to i8
  %i.amt = getelementptr inbounds nuw i8, ptr %.26530714, i64 6
  store i8 %i.ams, ptr %i.amq, align 1, !tbaa !36
  %i.amu = lshr i64 %.27715, 48
  %i.amv = trunc i64 %i.amu to i8
  %i.amw = getelementptr inbounds nuw i8, ptr %.26530714, i64 7
  store i8 %i.amv, ptr %i.amt, align 1, !tbaa !36
  %i.amx = lshr i64 %.27715, 56
  %i.amy = trunc nuw i64 %i.amx to i8
  %i.amz = getelementptr inbounds nuw i8, ptr %.26530714, i64 8 ; 2 uses
  store i8 %i.amy, ptr %i.amw, align 1, !tbaa !36
  %i.ana = add nsw i32 %.27559713, -64            ; 3 uses
  %i.anb = icmp ugt i32 %i.ana, 7
  br i1 %i.anb, label %.lr.ph716, label %.loopexit, !llvm.loop !197

.loopexit:                                        ; preds = %.lr.ph716.prol.loopexit, %.lr.ph716, %bb.e, %bb.d, %.preheader593, %bb.ad
  %.28560 = phi i32 [ 0, %bb.d ], [ %i.amc, %bb.ad ], [ %i.alk, %.preheader593 ], [ 0, %bb.e ], [ %.lcssa999.unr, %.lr.ph716.prol.loopexit ], [ %i.ana, %.lr.ph716 ]
  %.27531 = phi ptr [ %i.na, %bb.d ], [ %i.amb, %bb.ad ], [ %.25529, %.preheader593 ], [ %i.nl, %bb.e ], [ %.lcssa1000.unr, %.lr.ph716.prol.loopexit ], [ %i.amz, %.lr.ph716 ]
  %.28 = phi i64 [ 0, %bb.d ], [ %i.aly, %bb.ad ], [ %i.alg, %.preheader593 ], [ 0, %bb.e ], [ %.lcssa998.unr, %.lr.ph716.prol.loopexit ], [ 0, %.lr.ph716 ]
  store i64 %.28, ptr %1, align 8, !tbaa !62
  store i32 %.28560, ptr %i.b, align 8, !tbaa !63
  store ptr %.27531, ptr %i.d, align 8, !tbaa !64
  br label %bb.ae

bb.ae:                                            ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @deflate_make_huffman_code(i32 noundef range(i32 19, 289) %0, i32 noundef range(i32 7, 16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 10 uses
  %i.b = alloca [288 x i32], align 16             ; 13 uses
  %i.c = alloca [16 x i32], align 16              ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.d = shl nuw nsw i32 %0, 2
  %i.e = zext nneg i32 %i.d to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.e, i1 false)
  %i.f = add nsw i32 %0, -1                       ; 4 uses
  %wide.trip.count.i = zext nneg i32 %0 to i64    ; 6 uses
  %i.g = add nsw i64 %wide.trip.count.i, -1       ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %5 = icmp eq i64 %i.g, 0
  br i1 %5, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count.i, 510
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv.i = phi i64 [ 0, %.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.b ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.i = load i32, ptr %i.h, align 4, !tbaa !16
  %..i = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.f)
  %i.j = zext nneg i32 %..i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !16
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !16
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %..i.1 = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.f)
  %i.q = zext nneg i32 %..i.1 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !16
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader47.i.preheader.unr-lcssa, label %bb.b, !llvm.loop !199

.preheader47.i.preheader.unr-lcssa:               ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader47.i.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader47.i.preheader.unr-lcssa, %bb.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i.1, %.preheader47.i.preheader.unr-lcssa ]
  %lcmp.mod99 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !16
  %..i.epil = tail call i32 @llvm.umin.i32(i32 %i.v, i32 %i.f)
  %i.w = zext nneg i32 %..i.epil to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !16
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !16
  br label %.preheader47.i.preheader

.preheader47.i.preheader:                         ; preds = %.preheader47.i.preheader.unr-lcssa, %.epil.preheader
  %xtraiter100 = and i64 %i.g, 3                  ; 3 uses
  %unroll_iter104 = and i64 %i.g, -4
  br label %.preheader47.i

.preheader47.i:                                   ; preds = %.preheader47.i, %.preheader47.i.preheader
  %indvars.iv64.i = phi i64 [ 1, %.preheader47.i.preheader ], [ %indvars.iv.next65.i.3, %.preheader47.i ] ; 5 uses
  %.03855.i = phi i32 [ 0, %.preheader47.i.preheader ], [ %i.ao, %.preheader47.i ] ; 2 uses
  %niter105 = phi i64 [ 0, %.preheader47.i.preheader ], [ %niter105.next.3, %.preheader47.i ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !16
  store i32 %.03855.i, ptr %i.aa, align 4, !tbaa !16
  %i.ac = add i32 %i.ab, %.03855.i                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !16
  %i.ag = add i32 %i.af, %i.ac                    ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !16
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !16
  %i.ak = add i32 %i.aj, %i.ag                    ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !16
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !16
  %i.ao = add i32 %i.an, %i.ak                    ; 3 uses
  %indvars.iv.next65.i.3 = add nuw nsw i64 %indvars.iv64.i, 4 ; 2 uses
  %niter105.next.3 = add nuw nsw i64 %niter105, 4 ; 2 uses
  %niter105.ncmp.3 = icmp eq i64 %niter105.next.3, %unroll_iter104
  br i1 %niter105.ncmp.3, label %.preheader.i.preheader.unr-lcssa, label %.preheader47.i, !llvm.loop !200

.preheader.i.preheader.unr-lcssa:                 ; preds = %.preheader47.i
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.preheader.i.preheader, label %.preheader47.i.epil.preheader

.preheader47.i.epil.preheader:                    ; preds = %.preheader.i.preheader.unr-lcssa
  %lcmp.mod103 = icmp ne i64 %xtraiter100, 0
  tail call void @llvm.assume(i1 %lcmp.mod103)
  br label %.preheader47.i.epil

.preheader47.i.epil:                              ; preds = %.preheader47.i.epil, %.preheader47.i.epil.preheader
  %indvars.iv64.i.epil = phi i64 [ %indvars.iv.next65.i.epil, %.preheader47.i.epil ], [ %indvars.iv.next65.i.3, %.preheader47.i.epil.preheader ] ; 2 uses
  %.03855.i.epil = phi i32 [ %i.ar, %.preheader47.i.epil ], [ %i.ao, %.preheader47.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader47.i.epil ], [ 0, %.preheader47.i.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv64.i.epil ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16
  store i32 %.03855.i.epil, ptr %i.ap, align 4, !tbaa !16
  %i.ar = add i32 %i.aq, %.03855.i.epil           ; 2 uses
  %indvars.iv.next65.i.epil = add nuw nsw i64 %indvars.iv64.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter100
  br i1 %epil.iter.cmp.not, label %.preheader.i.preheader, label %.preheader47.i.epil, !llvm.loop !201

.preheader.i.preheader:                           ; preds = %.preheader47.i.epil, %.preheader.i.preheader.unr-lcssa
  %.lcssa98 = phi i32 [ %i.ao, %.preheader.i.preheader.unr-lcssa ], [ %i.ar, %.preheader47.i.epil ] ; 5 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.e
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %bb.e ], [ 0, %.preheader.i.preheader ] ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv69.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !16 ; 3 uses
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.au = shl i32 %i.at, 10
  %i.av = trunc nuw nsw i64 %indvars.iv69.i to i32
  %i.aw = or i32 %i.au, %i.av
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.at, i32 %i.f)
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ay ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !16 ; 2 uses
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !16
  %i.bc = zext i32 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bc
  store i32 %i.aw, ptr %i.bd, align 4, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv69.i
  store i8 0, ptr %i.be, align 1, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next70.i, %wide.trip.count.i
  br i1 %exitcond73.not.i, label %bb.f, label %.preheader.i, !llvm.loop !202

bb.f:                                             ; preds = %bb.e
  %i.bf = getelementptr [4 x i8], ptr %i.b, i64 %wide.trip.count.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -8
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !16 ; 2 uses
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bi ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bf, i64 -4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16
  %i.bm = sub i32 %i.bl, %i.bh                    ; 6 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 -4 ; 12 uses
  %i.bo = lshr i32 %i.bm, 1                       ; 2 uses
  %.not7.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not7.i.i.i, label %heapify_array.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %i.bp = zext i32 %i.bm to i64                   ; 2 uses
  %i.bq = lshr i64 %i.bp, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %heapify_subtree.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.bq, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %heapify_subtree.exit.i.i.i ] ; 5 uses
  %.08.i.i.i = phi i32 [ %i.bo, %.lr.ph.preheader.i.i.i ], [ %i.cm, %heapify_subtree.exit.i.i.i ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !16 ; 2 uses
  %i.bt = shl nuw nsw i64 %indvars.iv.i.i.i, 1    ; 2 uses
  %.not27.i.i.i.i = icmp samesign ugt i64 %i.bt, %i.bp
  br i1 %.not27.i.i.i.i, label %heapify_subtree.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.bu = trunc nuw i64 %i.bt to i32
  %i.bv = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.i, %.lr.ph.i.preheader.i.i.i
  %i.bw = phi i32 [ %i.ck, %bb.i ], [ %i.bu, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %.02228.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.i ], [ %i.bv, %.lr.ph.i.preheader.i.i.i ]
  %i.bx = icmp ult i32 %i.bw, %i.bm
  br i1 %i.bx, label %bb.g, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.phi.trans.insert.i.i.i.i = zext i32 %i.bw to i64 ; 2 uses
  %.phi.trans.insert31.i.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.phi.trans.insert.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr %.phi.trans.insert31.i.i.i.i, align 4, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = or disjoint i32 %i.bw, 1                ; 2 uses
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !16 ; 2 uses
  %i.cc = zext i32 %i.bw to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !16 ; 2 uses
  %i.cf = icmp ugt i32 %i.cb, %i.ce
  %spec.select.i.i.i.i = select i1 %i.cf, i32 %i.by, i32 %i.bw ; 2 uses
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 %i.ce)
  %.pre33.i.i.i.i = zext i32 %spec.select.i.i.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi34.i.i.i.i = phi i64 [ %.phi.trans.insert.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %.pre33.i.i.i.i, %bb.g ]
  %i.ch = phi i32 [ %.pre.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.cg, %bb.g ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.bw, %.lr.ph._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.g ] ; 2 uses
  %.not26.i.i.i.i = icmp ult i32 %i.bs, %i.ch
  %i.ci = zext i32 %.02228.i.i.i.i to i64         ; 2 uses
  br i1 %.not26.i.i.i.i, label %bb.i, label %heapify_subtree.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.ci
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !16
  %i.ck = shl i32 %.0.i.i.i.i, 1                  ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.ck, %i.bm
  br i1 %.not.i.i.i.i, label %heapify_subtree.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !203

heapify_subtree.exit.i.i.i:                       ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %indvars.iv.i.i.i, %.lr.ph.i.i.i ], [ %.pre-phi34.i.i.i.i, %bb.i ], [ %i.ci, %bb.h ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.pre-phi.i.i.i.i
  store i32 %i.bs, ptr %i.cl, align 4, !tbaa !16
  %i.cm = add nsw i32 %.08.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.cm, 0
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1
  br i1 %.not.i.i.i, label %heapify_array.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !204

heapify_array.exit.i.i:                           ; preds = %heapify_subtree.exit.i.i.i, %bb.f
  %i.cn = icmp ugt i32 %i.bm, 1
  br i1 %i.cn, label %.lr.ph.preheader.i.i, label %sort_symbols.exit

.lr.ph.preheader.i.i:                             ; preds = %heapify_array.exit.i.i
  %i.co = zext i32 %i.bm to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %heapify_subtree.exit.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.co, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %heapify_subtree.exit.i.i ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.i ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !16 ; 3 uses
  %i.cr = load i32, ptr %i.bj, align 4, !tbaa !16
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !16
  store i32 %i.cq, ptr %i.bj, align 4, !tbaa !16
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %indvars.i.i = trunc i64 %indvars.iv.next.i.i to i32 ; 3 uses
end_hunk_0
