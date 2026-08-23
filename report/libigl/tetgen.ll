Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/tetgen?download=true
inline.NumInlined: 6988
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 436
loop-unroll.NumRuntimeUnrolled: 118
loop-unroll.NumUnrolled: 560
begin_hunk_0_@_ZN10tetgenmesh19removevertexbyflipsEPd:bb.a
  store i32 %i.ahx, ptr %i.aii, align 8, !tbaa !335
  store ptr %i.aeh, ptr %.ptr.1, align 16, !tbaa !330
  %i.aij = getelementptr inbounds nuw i8, ptr %i.adt, i64 72
  store i32 %i.ahz, ptr %i.aih, align 8, !tbaa !335
  store ptr %i.aeu, ptr %.ptr352.4, align 8, !tbaa !330
  %i.aik = getelementptr inbounds nuw i8, ptr %i.adt, i64 88
  store i32 %i.aif, ptr %i.aij, align 8, !tbaa !335
  store ptr %i.aeh, ptr %.ptr352.5, align 8, !tbaa !330
  store i32 %i.ahz, ptr %i.aik, align 8, !tbaa !335
  br label %bb.bx

bb.bx:                                            ; preds = %.preheader621.preheader, %bb.bw
  %i.ail = phi i32 [ %i.ahx, %.preheader621.preheader ], [ %i.aey, %bb.bw ]
  %i.aim = phi ptr [ %i.agd, %.preheader621.preheader ], [ %i.aeu, %bb.bw ]
  %i.ain = phi i32 [ %i.aic, %.preheader621.preheader ], [ %i.ael, %bb.bw ]
  %i.aio = phi ptr [ %i.agq, %.preheader621.preheader ], [ %i.aeh, %bb.bw ]
  %i.aip = phi i32 [ %i.ahs, %.preheader621.preheader ], [ %.pre760, %bb.bw ]
  %i.aiq = phi ptr [ %i.afk, %.preheader621.preheader ], [ %.pre759, %bb.bw ]
  %i.air = getelementptr inbounds nuw i8, ptr %i.aiq, i64 72
  %i.ais = load ptr, ptr %i.air, align 8, !tbaa !306 ; 4 uses
  %.not357 = icmp eq ptr %i.ais, null
  br i1 %.not357, label %.split654.thread, label %.split654

.split654:                                        ; preds = %bb.bx
  %i.ait = sext i32 %i.aip to i64
  %i.aiu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ait
  %i.aiv = load i32, ptr %i.aiu, align 4, !tbaa !33
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aiw
  %.sroa.6410.0 = load i32, ptr %i.aix, align 4, !tbaa !33
  %i.aiy = sext i32 %.sroa.6410.0 to i64          ; 2 uses
  %i.aiz = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aiy
  %i.aja = load i32, ptr %i.aiz, align 4, !tbaa !33
  %i.ajb = and i32 %i.aja, 3
  %i.ajc = zext nneg i32 %i.ajb to i64
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.ajc
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !131
  %.not358 = icmp ne ptr %i.aje, null
  %i.ajf = zext i1 %.not358 to i32
  %i.ajg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.aiy
  %.sroa.6410.0.1 = load i32, ptr %i.ajg, align 4, !tbaa !33
  %i.ajh = sext i32 %.sroa.6410.0.1 to i64        ; 2 uses
  %i.aji = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ajh
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !33
  %i.ajk = and i32 %i.ajj, 3
  %i.ajl = zext nneg i32 %i.ajk to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.ajl
  %i.ajn = load ptr, ptr %i.ajm, align 8, !tbaa !131
  %.not358.1 = icmp ne ptr %i.ajn, null
  %i.ajo = zext i1 %.not358.1 to i32
  %spec.select383.1 = add nuw nsw i32 %i.ajf, %i.ajo
  %i.ajp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ajh
  %.sroa.6410.0.2 = load i32, ptr %i.ajp, align 4, !tbaa !33
  %i.ajq = sext i32 %.sroa.6410.0.2 to i64
  %i.ajr = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !33
  %i.ajt = and i32 %i.ajs, 3
  %i.aju = zext nneg i32 %i.ajt to i64
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.ais, i64 %i.aju
  %i.ajw = load ptr, ptr %i.ajv, align 8, !tbaa !131
  %.not358.2 = icmp ne ptr %i.ajw, null
  %i.ajx = zext i1 %.not358.2 to i32
  %spec.select383.2 = add nuw nsw i32 %spec.select383.1, %i.ajx
  switch i32 %spec.select383.2, label %.split654.thread [
    i32 3, label %.critedge386.thread
    i32 2, label %.thread604
  ]

.thread604:                                       ; preds = %.split654.2, %.split654.1, %.split654
  tail call void @_ZdaPv(ptr noundef nonnull %i.adt) #42
  br label %.critedge

.split654.thread:                                 ; preds = %bb.bx, %.split654
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aio, i64 72
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !306 ; 4 uses
  %.not357.1 = icmp eq ptr %i.ajz, null
  br i1 %.not357.1, label %.split654.1.thread, label %.split654.1

.split654.1:                                      ; preds = %.split654.thread
  %i.aka = sext i32 %i.ain to i64
  %i.akb = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.aka
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !33
  %i.akd = sext i32 %i.akc to i64
  %i.ake = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.akd
  %.sroa.6410.0.1724 = load i32, ptr %i.ake, align 4, !tbaa !33
  %i.akf = sext i32 %.sroa.6410.0.1724 to i64     ; 2 uses
  %i.akg = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.akf
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !33
  %i.aki = and i32 %i.akh, 3
  %i.akj = zext nneg i32 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.akj
  %i.akl = load ptr, ptr %i.akk, align 8, !tbaa !131
  %.not358.1725 = icmp ne ptr %i.akl, null
  %i.akm = zext i1 %.not358.1725 to i32
  %i.akn = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.akf
  %.sroa.6410.0.1.1 = load i32, ptr %i.akn, align 4, !tbaa !33
  %i.ako = sext i32 %.sroa.6410.0.1.1 to i64      ; 2 uses
  %i.akp = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ako
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !33
  %i.akr = and i32 %i.akq, 3
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.aks
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !131
  %.not358.1.1 = icmp ne ptr %i.aku, null
  %i.akv = zext i1 %.not358.1.1 to i32
  %spec.select383.1.1 = add nuw nsw i32 %i.akm, %i.akv
  %i.akw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.ako
  %.sroa.6410.0.2.1 = load i32, ptr %i.akw, align 4, !tbaa !33
  %i.akx = sext i32 %.sroa.6410.0.2.1 to i64
  %i.aky = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.akx
  %i.akz = load i32, ptr %i.aky, align 4, !tbaa !33
  %i.ala = and i32 %i.akz, 3
  %i.alb = zext nneg i32 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.ajz, i64 %i.alb
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !131
  %.not358.2.1 = icmp ne ptr %i.ald, null
  %i.ale = zext i1 %.not358.2.1 to i32
  %spec.select383.2.1 = add nuw nsw i32 %spec.select383.1.1, %i.ale
  switch i32 %spec.select383.2.1, label %.split654.1.thread [
    i32 3, label %.critedge386.thread
    i32 2, label %.thread604
  ]

.split654.1.thread:                               ; preds = %.split654.thread, %.split654.1
  %i.alf = getelementptr inbounds nuw i8, ptr %i.aim, i64 72
  %i.alg = load ptr, ptr %i.alf, align 8, !tbaa !306 ; 5 uses
  %.not357.2 = icmp eq ptr %i.alg, null
  br i1 %.not357.2, label %.thread891, label %.split654.2

.split654.2:                                      ; preds = %.split654.1.thread
  %i.alh = sext i32 %i.ail to i64
  %i.ali = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.alh
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !33
  %i.alk = sext i32 %i.alj to i64
  %i.all = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.alk
  %.sroa.6410.0.2727 = load i32, ptr %i.all, align 4, !tbaa !33
  %i.alm = sext i32 %.sroa.6410.0.2727 to i64     ; 2 uses
  %i.aln = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.alm
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !33
  %i.alp = and i32 %i.alo, 3
  %i.alq = zext nneg i32 %i.alp to i64
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %i.alq
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !131
  %.not358.2728 = icmp ne ptr %i.als, null
  %i.alt = zext i1 %.not358.2728 to i32
  %i.alu = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.alm
  %.sroa.6410.0.1.2 = load i32, ptr %i.alu, align 4, !tbaa !33
  %i.alv = sext i32 %.sroa.6410.0.1.2 to i64      ; 2 uses
  %i.alw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.alv
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !33
  %i.aly = and i32 %i.alx, 3
  %i.alz = zext nneg i32 %i.aly to i64
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %i.alz
  %i.amb = load ptr, ptr %i.ama, align 8, !tbaa !131
  %.not358.1.2 = icmp ne ptr %i.amb, null
  %i.amc = zext i1 %.not358.1.2 to i32
  %spec.select383.1.2 = add nuw nsw i32 %i.alt, %i.amc
  %i.amd = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.alv
  %.sroa.6410.0.2.2 = load i32, ptr %i.amd, align 4, !tbaa !33
  %i.ame = sext i32 %.sroa.6410.0.2.2 to i64
  %i.amf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ame
  %i.amg = load i32, ptr %i.amf, align 4, !tbaa !33 ; 2 uses
  %i.amh = and i32 %i.amg, 3
  %i.ami = zext nneg i32 %i.amh to i64
  %i.amj = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %i.ami
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !131
  %.not358.2.2 = icmp ne ptr %i.amk, null
  %i.aml = zext i1 %.not358.2.2 to i32
  %spec.select383.2.2 = add nuw nsw i32 %spec.select383.1.2, %i.aml
  switch i32 %spec.select383.2.2, label %bb.by [
    i32 3, label %.critedge386.thread
    i32 2, label %.thread604
  ]

bb.by:                                            ; preds = %.split654.2
  %i.amm = and i32 %i.amg, 3
  %i.amn = zext nneg i32 %i.amm to i64
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %i.amn
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !131 ; 3 uses
  %.not356 = icmp ne ptr %i.amp, null
  %i.amq = zext i1 %.not356 to i32
  %.not356.1 = icmp ne ptr %i.amp, null
  %i.amr = zext i1 %.not356.1 to i32
  %spec.select384.1 = add nuw nsw i32 %i.amq, %i.amr
  %.not356.2 = icmp ne ptr %i.amp, null
  %i.ams = zext i1 %.not356.2 to i32
  %spec.select384.2 = add nuw nsw i32 %spec.select384.1, %i.ams
  %.not354 = icmp eq i32 %spec.select384.2, 3
  br i1 %.not354, label %.critedge386.thread, label %.thread891

.thread891:                                       ; preds = %.split654.1.thread, %bb.by
  tail call void @_ZdaPv(ptr noundef nonnull %i.adt) #42
  br label %.critedge

.critedge386.thread:                              ; preds = %.split654.1, %.split654.2, %.split654, %bb.by, %.thread841
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %.ptr352.3, i32 noundef 1, ptr noundef nonnull %6)
  call void @_ZN10tetgenmesh6flip41EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %i.adt, i32 noundef 1, ptr noundef nonnull %6)
  br label %bb.ca

.preheader908:                                    ; preds = %bb.bq, %.preheader908
  %indvar = phi i64 [ %indvar.next, %.preheader908 ], [ 0, %bb.bq ] ; 3 uses
  %indvars.iv745 = phi i32 [ %indvars.iv.next746, %.preheader908 ], [ 1, %bb.bq ] ; 2 uses
  %indvars.iv740 = phi i64 [ %indvars.iv.next741, %.preheader908 ], [ 1, %bb.bq ] ; 5 uses
  %.sroa.0523.6 = phi ptr [ %i.and, %.preheader908 ], [ %i.xo, %bb.bq ]
  %.sroa.51.6 = phi i32 [ %i.ang, %.preheader908 ], [ %i.xp, %bb.bq ]
  %.0307 = phi i32 [ %i.amt, %.preheader908 ], [ 0, %bb.bq ] ; 7 uses
  %i.amt = add nuw i32 %.0307, 1                  ; 4 uses
  %i.amu = sext i32 %.sroa.51.6 to i64            ; 2 uses
  %i.amv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.amu
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !33
  %i.amx = sext i32 %i.amw to i64
  %i.amy = getelementptr inbounds [8 x i8], ptr %.sroa.0523.6, i64 %i.amx
  %i.amz = load ptr, ptr %i.amy, align 8, !tbaa !306
  %i.ana = ptrtoint ptr %i.amz to i64             ; 2 uses
  %i.anb = and i64 %i.ana, 15
  %i.anc = and i64 %i.ana, -16
  %i.and = inttoptr i64 %i.anc to ptr             ; 2 uses
  %i.ane = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.amu
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.ane, i64 %i.anb
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !33
  %i.anh = icmp eq ptr %i.xo, %i.and
  %indvars.iv.next741 = add nuw i64 %indvars.iv740, 1
  %indvars.iv.next746 = add i32 %indvars.iv745, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %i.anh, label %bb.bz, label %.preheader908, !llvm.loop !1054

bb.bz:                                            ; preds = %.preheader908
  %i.ani = shl nuw nsw i32 %i.amt, 1              ; 2 uses
  %i.anj = zext nneg i32 %i.ani to i64            ; 2 uses
  %i.ank = shl nuw nsw i64 %i.anj, 4              ; 2 uses
  %i.anl = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ank) #41 ; 19 uses
  %i.anm = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %i.anj
  %i.ann = add nsw i64 %i.ank, -16                ; 2 uses
  %i.ano = lshr exact i64 %i.ann, 4
  %i.anp = add nuw nsw i64 %i.ano, 1
  %xtraiter = and i64 %i.anp, 7                   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.bz, %.prol.preheader
  %i.anq = phi ptr [ %i.ans, %.prol.preheader ], [ %i.anl, %bb.bz ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.bz ]
  store ptr null, ptr %i.anq, align 8, !tbaa !330
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 8
  store i32 0, ptr %i.anr, align 8, !tbaa !335
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anq, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !1055

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.bz
  %.unr = phi ptr [ %i.anl, %bb.bz ], [ %i.ans, %.prol.preheader ]
  %i.ant = icmp ult i64 %i.ann, 112
  br i1 %i.ant, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.anu = phi ptr [ %i.aok, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr null, ptr %i.anu, align 8, !tbaa !330
  %i.anv = getelementptr inbounds nuw i8, ptr %i.anu, i64 8
  store i32 0, ptr %i.anv, align 8, !tbaa !335
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anu, i64 16
  store ptr null, ptr %i.anw, align 8, !tbaa !330
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anu, i64 24
  store i32 0, ptr %i.anx, align 8, !tbaa !335
  %i.any = getelementptr inbounds nuw i8, ptr %i.anu, i64 32
  store ptr null, ptr %i.any, align 8, !tbaa !330
  %i.anz = getelementptr inbounds nuw i8, ptr %i.anu, i64 40
  store i32 0, ptr %i.anz, align 8, !tbaa !335
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anu, i64 48
  store ptr null, ptr %i.aoa, align 8, !tbaa !330
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anu, i64 56
  store i32 0, ptr %i.aob, align 8, !tbaa !335
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.anu, i64 64
  store ptr null, ptr %i.aoc, align 8, !tbaa !330
  %i.aod = getelementptr inbounds nuw i8, ptr %i.anu, i64 72
  store i32 0, ptr %i.aod, align 8, !tbaa !335
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anu, i64 80
  store ptr null, ptr %i.aoe, align 8, !tbaa !330
  %i.aof = getelementptr inbounds nuw i8, ptr %i.anu, i64 88
  store i32 0, ptr %i.aof, align 8, !tbaa !335
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anu, i64 96
  store ptr null, ptr %i.aog, align 8, !tbaa !330
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anu, i64 104
  store i32 0, ptr %i.aoh, align 8, !tbaa !335
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.anu, i64 112
  store ptr null, ptr %i.aoi, align 8, !tbaa !330
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anu, i64 120
  store i32 0, ptr %i.aoj, align 8, !tbaa !335
  %i.aok = getelementptr inbounds nuw i8, ptr %i.anu, i64 128 ; 2 uses
  %i.aol = icmp eq ptr %i.aok, %i.anm
  br i1 %i.aol, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  store ptr %i.xo, ptr %i.anl, align 8, !tbaa !330
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anl, i64 8 ; 2 uses
  store i32 %i.xp, ptr %i.aom, align 8, !tbaa !335
  %.not693 = icmp eq i32 %.0307, 0
  br i1 %.not693, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.unr-lcssa
  %wide.trip.count = zext nneg i32 %.0307 to i64  ; 2 uses
  %xtraiter928 = and i64 %wide.trip.count, 1
  %i.aon = icmp eq i64 %indvars.iv740, 2
  br i1 %i.aon, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %i.aoo = phi i32 [ %i.xp, %.lr.ph.preheader.new ], [ %i.apu, %.lr.ph ]
  %i.aop = phi ptr [ %i.xo, %.lr.ph.preheader.new ], [ %i.apq, %.lr.ph ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aoq = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aos = sext i32 %i.aoo to i64                 ; 2 uses
  %i.aot = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.aos
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !33
  %i.aov = sext i32 %i.aou to i64
  %i.aow = getelementptr inbounds [8 x i8], ptr %i.aop, i64 %i.aov
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !306
  %i.aoy = ptrtoint ptr %i.aox to i64             ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoq, i64 24
  %i.apa = and i64 %i.aoy, -16
  %i.apb = inttoptr i64 %i.apa to ptr             ; 2 uses
  store ptr %i.apb, ptr %i.aor, align 8, !tbaa !330
  %i.apc = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.aos
  %i.apd = and i64 %i.aoy, 15
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %i.apd
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !33 ; 2 uses
  store i32 %i.apf, ptr %i.aoz, align 8, !tbaa !335
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.apg = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv.next.1 ; 2 uses
  %i.aph = sext i32 %i.apf to i64                 ; 2 uses
  %i.api = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.aph
  %i.apj = load i32, ptr %i.api, align 4, !tbaa !33
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [8 x i8], ptr %i.apb, i64 %i.apk
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !306
  %i.apn = ptrtoint ptr %i.apm to i64             ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apg, i64 8
  %i.app = and i64 %i.apn, -16
  %i.apq = inttoptr i64 %i.app to ptr             ; 3 uses
  store ptr %i.apq, ptr %i.apg, align 8, !tbaa !330
  %i.apr = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.aph
  %i.aps = and i64 %i.apn, 15
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.apr, i64 %i.aps
  %i.apu = load i32, ptr %i.apt, align 4, !tbaa !33 ; 3 uses
  store i32 %i.apu, ptr %i.apo, align 8, !tbaa !335
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1056

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod932.not = icmp eq i64 %xtraiter928, 0
  br i1 %lcmp.mod932.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.epil.init = phi i32 [ %i.xp, %.lr.ph.preheader ], [ %i.apu, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init931 = phi ptr [ %i.xo, %.lr.ph.preheader ], [ %i.apq, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod933 = trunc i32 %.0307 to i1
  tail call void @llvm.assume(i1 %lcmp.mod933)
  %i.apv = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv.epil.init ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 16
  %i.apx = sext i32 %.epil.init to i64            ; 2 uses
  %i.apy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.apx
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !33
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds [8 x i8], ptr %.epil.init931, i64 %i.aqa
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !306
  %i.aqd = ptrtoint ptr %i.aqc to i64             ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apv, i64 24
  %i.aqf = and i64 %i.aqd, -16
  %i.aqg = inttoptr i64 %i.aqf to ptr
  store ptr %i.aqg, ptr %i.apw, align 8, !tbaa !330
  %i.aqh = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.apx
  %i.aqi = and i64 %i.aqd, 15
  %i.aqj = getelementptr inbounds nuw [4 x i8], ptr %i.aqh, i64 %i.aqi
  %i.aqk = load i32, ptr %i.aqj, align 4, !tbaa !33
  store i32 %i.aqk, ptr %i.aqe, align 8, !tbaa !335
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.unr-lcssa
  %i.aql = zext nneg i32 %i.amt to i64            ; 2 uses
  %i.aqm = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %i.aql ; 5 uses
  %i.aqn = sext i32 %i.xp to i64
  %i.aqo = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.aqn
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !33
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8 ; 4 uses
  %i.aqr = sext i32 %i.aqp to i64                 ; 3 uses
  %i.aqs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.aqr
  %i.aqt = load i32, ptr %i.aqs, align 4, !tbaa !33
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds [8 x i8], ptr %i.xo, i64 %i.aqu
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !306
  %i.aqx = ptrtoint ptr %i.aqw to i64             ; 2 uses
  %i.aqy = and i64 %i.aqx, -16
  %i.aqz = inttoptr i64 %i.aqy to ptr             ; 2 uses
  store ptr %i.aqz, ptr %i.aqm, align 8, !tbaa !330
  %i.ara = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.aqr
  %i.arb = and i64 %i.aqx, 15
  %i.arc = getelementptr inbounds nuw [4 x i8], ptr %i.ara, i64 %i.arb
  %i.ard = load i32, ptr %i.arc, align 4, !tbaa !33
  %i.are = sext i32 %i.ard to i64
  %i.arf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.are
  %i.arg = load i32, ptr %i.arf, align 4, !tbaa !33
  %i.arh = sext i32 %i.arg to i64
  %i.ari = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.arh
  %i.arj = load i32, ptr %i.ari, align 4, !tbaa !33 ; 2 uses
  store i32 %i.arj, ptr %i.aqq, align 8, !tbaa !335
  %i.ark = add nsw i32 %i.ani, -1                 ; 2 uses
  %i.arl = icmp slt i32 %i.amt, %i.ark
  br i1 %i.arl, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %._crit_edge
  %wide.trip.count747 = zext i32 %indvars.iv745 to i64
  %.phi.trans.insert761 = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv740 ; 2 uses
  %.pre762 = load ptr, ptr %.phi.trans.insert761, align 8, !tbaa !330 ; 2 uses
  %.phi.trans.insert763 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert761, i64 8
  %.pre764 = load i32, ptr %.phi.trans.insert763, align 8, !tbaa !335 ; 2 uses
  %7 = shl nuw i32 %.0307, 1
  %8 = zext i32 %7 to i64
  %xtraiter934 = and i64 %indvar, 1
  %lcmp.mod935.not = icmp eq i64 %xtraiter934, 0
  br i1 %lcmp.mod935.not, label %.lr.ph680.prol.loopexit, label %.lr.ph680.prol

.lr.ph680.prol:                                   ; preds = %.lr.ph680.preheader
  %indvars.iv.next743.prol = add nuw nsw i64 %indvars.iv740, 1 ; 2 uses
  %i.arm = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv.next743.prol ; 2 uses
  %i.arn = sext i32 %.pre764 to i64               ; 2 uses
  %i.aro = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.arn
  %i.arp = load i32, ptr %i.aro, align 4, !tbaa !33
  %i.arq = sext i32 %i.arp to i64
  %i.arr = getelementptr inbounds [8 x i8], ptr %.pre762, i64 %i.arq
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !306
  %i.art = ptrtoint ptr %i.ars to i64             ; 2 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arm, i64 8
  %i.arv = and i64 %i.art, -16
  %i.arw = inttoptr i64 %i.arv to ptr             ; 2 uses
  store ptr %i.arw, ptr %i.arm, align 8, !tbaa !330
  %i.arx = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.arn
  %i.ary = and i64 %i.art, 15
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %i.arx, i64 %i.ary
  %i.asa = load i32, ptr %i.arz, align 4, !tbaa !33 ; 2 uses
  store i32 %i.asa, ptr %i.aru, align 8, !tbaa !335
  br label %.lr.ph680.prol.loopexit

.lr.ph680.prol.loopexit:                          ; preds = %.lr.ph680.prol, %.lr.ph680.preheader
  %.unr937 = phi i32 [ %.pre764, %.lr.ph680.preheader ], [ %i.asa, %.lr.ph680.prol ]
  %.unr938 = phi ptr [ %.pre762, %.lr.ph680.preheader ], [ %i.arw, %.lr.ph680.prol ]
  %indvars.iv742.unr = phi i64 [ %indvars.iv740, %.lr.ph680.preheader ], [ %indvars.iv.next743.prol, %.lr.ph680.prol ]
  %9 = add nsw i64 %8, -1
  %i.asb = icmp eq i64 %indvar, %9
  br i1 %i.asb, label %._crit_edge681.loopexit, label %.lr.ph680

.lr.ph680:                                        ; preds = %.lr.ph680.prol.loopexit, %.lr.ph680
  %i.asc = phi i32 [ %i.ati, %.lr.ph680 ], [ %.unr937, %.lr.ph680.prol.loopexit ]
  %i.asd = phi ptr [ %i.ate, %.lr.ph680 ], [ %.unr938, %.lr.ph680.prol.loopexit ]
  %indvars.iv742 = phi i64 [ %indvars.iv.next743.1, %.lr.ph680 ], [ %indvars.iv742.unr, %.lr.ph680.prol.loopexit ] ; 2 uses
  %i.ase = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv742 ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 16
  %i.asg = sext i32 %i.asc to i64                 ; 2 uses
  %i.ash = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.asg
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !33
  %i.asj = sext i32 %i.asi to i64
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.asd, i64 %i.asj
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !306
  %i.asm = ptrtoint ptr %i.asl to i64             ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %i.ase, i64 24
  %i.aso = and i64 %i.asm, -16
  %i.asp = inttoptr i64 %i.aso to ptr             ; 2 uses
  store ptr %i.asp, ptr %i.asf, align 8, !tbaa !330
  %i.asq = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.asg
  %i.asr = and i64 %i.asm, 15
  %i.ass = getelementptr inbounds nuw [4 x i8], ptr %i.asq, i64 %i.asr
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !33 ; 2 uses
  store i32 %i.ast, ptr %i.asn, align 8, !tbaa !335
  %indvars.iv.next743.1 = add nuw nsw i64 %indvars.iv742, 2 ; 3 uses
  %i.asu = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv.next743.1 ; 2 uses
  %i.asv = sext i32 %i.ast to i64                 ; 2 uses
  %i.asw = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh10facepivot1E, i64 %i.asv
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !33
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.asp, i64 %i.asy
  %i.ata = load ptr, ptr %i.asz, align 8, !tbaa !306
  %i.atb = ptrtoint ptr %i.ata to i64             ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asu, i64 8
  %i.atd = and i64 %i.atb, -16
  %i.ate = inttoptr i64 %i.atd to ptr             ; 2 uses
  store ptr %i.ate, ptr %i.asu, align 8, !tbaa !330
  %i.atf = getelementptr inbounds [48 x i8], ptr @_ZN10tetgenmesh10facepivot2E, i64 %i.asv
  %i.atg = and i64 %i.atb, 15
  %i.ath = getelementptr inbounds nuw [4 x i8], ptr %i.atf, i64 %i.atg
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !33 ; 2 uses
  store i32 %i.ati, ptr %i.atc, align 8, !tbaa !335
  %exitcond748.not.1 = icmp eq i64 %indvars.iv.next743.1, %wide.trip.count747
  br i1 %exitcond748.not.1, label %._crit_edge681.loopexit, label %.lr.ph680, !llvm.loop !1057

._crit_edge681.loopexit:                          ; preds = %.lr.ph680, %.lr.ph680.prol.loopexit
  %.pre765 = load ptr, ptr %i.aqm, align 8, !tbaa !330
  %.pre766 = load i32, ptr %i.aqq, align 8, !tbaa !335
  br label %._crit_edge681

._crit_edge681:                                   ; preds = %._crit_edge681.loopexit, %._crit_edge
  %i.atj = phi i32 [ %.pre766, %._crit_edge681.loopexit ], [ %i.arj, %._crit_edge ]
  %i.atk = phi ptr [ %.pre765, %._crit_edge681.loopexit ], [ %i.aqz, %._crit_edge ]
  store ptr %i.xo, ptr %2, align 16, !tbaa !330
  %i.atl = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aqr
  %i.atm = load i32, ptr %i.atl, align 4, !tbaa !33
  %i.atn = sext i32 %i.atm to i64
  %i.ato = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.atn
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !33
  store i32 %i.atp, ptr %i.a, align 8, !tbaa !335
  store ptr %i.atk, ptr %.ptr.1, align 16, !tbaa !330
  %i.atq = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.atr = sext i32 %i.atj to i64
  %i.ats = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.atr
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !33
  %i.atu = sext i32 %i.att to i64
  %i.atv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.atu
  %i.atw = load i32, ptr %i.atv, align 4, !tbaa !33
  %i.atx = sext i32 %i.atw to i64
  %i.aty = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.atx
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !33
  store i32 %i.atz, ptr %i.atq, align 8, !tbaa !335
  call void @_ZN10tetgenmesh6flip23EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %6)
  %i.aua = load ptr, ptr %.ptr.2, align 16, !tbaa !330 ; 2 uses
  store ptr %i.aua, ptr %i.aqm, align 8, !tbaa !330
  %i.aub = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.auc = load i32, ptr %i.aub, align 8, !tbaa !335 ; 2 uses
  store i32 %i.auc, ptr %i.aqq, align 8, !tbaa !335
  %i.aud = load ptr, ptr %2, align 16, !tbaa !330
  store ptr %i.aud, ptr %i.anl, align 8, !tbaa !330
  %i.aue = load i32, ptr %i.a, align 8, !tbaa !335
  store i32 %i.aue, ptr %i.aom, align 8, !tbaa !335
  %i.auf = icmp samesign ugt i32 %.0307, 1
  %wide.trip.count753 = zext nneg i32 %.0307 to i64 ; 2 uses
  br i1 %i.auf, label %.lr.ph684.preheader, label %._crit_edge685

.lr.ph684.preheader:                              ; preds = %._crit_edge681
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %i.aql
  br label %.lr.ph684

.lr.ph684:                                        ; preds = %.lr.ph684.preheader, %.lr.ph684
  %indvars.iv749 = phi i64 [ 1, %.lr.ph684.preheader ], [ %indvars.iv.next750, %.lr.ph684 ] ; 3 uses
  %i.aug = load ptr, ptr %.ptr.1, align 16, !tbaa !330
  store ptr %i.aug, ptr %2, align 16, !tbaa !330
  %i.auh = load i32, ptr %i.atq, align 8, !tbaa !335
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.aui
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !33
  %i.aul = sext i32 %i.auk to i64
  %i.aum = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aul
  %i.aun = load i32, ptr %i.aum, align 4, !tbaa !33
  %i.auo = sext i32 %i.aun to i64
  %i.aup = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.auo
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !33
  store i32 %i.auq, ptr %i.a, align 8, !tbaa !335
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %indvars.iv749 ; 2 uses
  %i.aur = load ptr, ptr %gep, align 8, !tbaa !330
  store ptr %i.aur, ptr %.ptr.1, align 16, !tbaa !330
  %i.aus = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.aut = load i32, ptr %i.aus, align 8, !tbaa !335
  %i.auu = sext i32 %i.aut to i64
  %i.auv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.auu
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !33
  store i32 %i.auw, ptr %i.atq, align 8, !tbaa !335
  %i.aux = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %indvars.iv749 ; 3 uses
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !330
  store ptr %i.auy, ptr %.ptr.2, align 16, !tbaa !330
  %i.auz = getelementptr inbounds nuw i8, ptr %i.aux, i64 8 ; 2 uses
  %i.ava = load i32, ptr %i.auz, align 8, !tbaa !335
  %i.avb = sext i32 %i.ava to i64
  %i.avc = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.avb
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !33
  %i.ave = sext i32 %i.avd to i64
  %i.avf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.ave
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !33
  store i32 %i.avg, ptr %i.aub, align 8, !tbaa !335
  call void @_ZN10tetgenmesh6flip32EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %6)
  %i.avh = load ptr, ptr %2, align 16, !tbaa !330
  store ptr %i.avh, ptr %i.aux, align 8, !tbaa !330
  %i.avi = load i32, ptr %i.a, align 8, !tbaa !335
  %i.avj = sext i32 %i.avi to i64
  %i.avk = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.avj
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !33
  store i32 %i.avl, ptr %i.auz, align 8, !tbaa !335
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 1 ; 2 uses
  %exitcond754.not = icmp eq i64 %indvars.iv.next750, %wide.trip.count753
  br i1 %exitcond754.not, label %._crit_edge685.loopexit, label %.lr.ph684, !llvm.loop !1058

._crit_edge685.loopexit:                          ; preds = %.lr.ph684
  %.pre767 = load ptr, ptr %i.aqm, align 8, !tbaa !330
  %.pre768 = load i32, ptr %i.aqq, align 8, !tbaa !335
  br label %._crit_edge685

._crit_edge685:                                   ; preds = %._crit_edge681, %._crit_edge685.loopexit
  %i.avm = phi i32 [ %.pre768, %._crit_edge685.loopexit ], [ %i.auc, %._crit_edge681 ]
  %i.avn = phi ptr [ %.pre767, %._crit_edge685.loopexit ], [ %i.aua, %._crit_edge681 ]
  %i.avo = load ptr, ptr %.ptr.1, align 16, !tbaa !330
  store ptr %i.avo, ptr %.ptr.3, align 16, !tbaa !330
  %i.avp = load i32, ptr %i.atq, align 8, !tbaa !335
  %i.avq = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.avp, ptr %i.avq, align 8, !tbaa !335
  store ptr %i.avn, ptr %2, align 16, !tbaa !330
  %i.avr = sext i32 %i.avm to i64
  %i.avs = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8eprevtblE, i64 %i.avr
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !33
  %i.avu = sext i32 %i.avt to i64
  %i.avv = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.avu
  %i.avw = load i32, ptr %i.avv, align 4, !tbaa !33
  %i.avx = sext i32 %i.avw to i64
  %i.avy = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.avx
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !33
  store i32 %i.avz, ptr %i.a, align 8, !tbaa !335
  %i.awa = getelementptr inbounds nuw [16 x i8], ptr %i.anl, i64 %wide.trip.count753 ; 3 uses
  %i.awb = load ptr, ptr %i.awa, align 8, !tbaa !330
  store ptr %i.awb, ptr %.ptr.1, align 16, !tbaa !330
  %i.awc = getelementptr inbounds nuw i8, ptr %i.awa, i64 8 ; 2 uses
  %i.awd = load i32, ptr %i.awc, align 8, !tbaa !335
  %i.awe = sext i32 %i.awd to i64
  %i.awf = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.awe
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !33
  %i.awh = sext i32 %i.awg to i64
  %i.awi = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.awh
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !33
  store i32 %i.awj, ptr %i.atq, align 8, !tbaa !335
  %i.awk = sext i32 %i.ark to i64
  %i.awl = getelementptr inbounds [16 x i8], ptr %i.anl, i64 %i.awk ; 2 uses
  %i.awm = load ptr, ptr %i.awl, align 8, !tbaa !330
  store ptr %i.awm, ptr %.ptr.2, align 16, !tbaa !330
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awl, i64 8
  %i.awo = load i32, ptr %i.awn, align 8, !tbaa !335
  %i.awp = sext i32 %i.awo to i64
  %i.awq = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.awp
  %i.awr = load i32, ptr %i.awq, align 4, !tbaa !33
  %i.aws = sext i32 %i.awr to i64
  %i.awt = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh7esymtblE, i64 %i.aws
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !33
  %i.awv = sext i32 %i.awu to i64
  %i.aww = getelementptr inbounds [4 x i8], ptr @_ZN10tetgenmesh8enexttblE, i64 %i.awv
  %i.awx = load i32, ptr %i.aww, align 4, !tbaa !33
  store i32 %i.awx, ptr %i.aub, align 8, !tbaa !335
  call void @_ZN10tetgenmesh6flip41EPNS_7trifaceEiPNS_15flipconstraintsE(ptr noundef nonnull align 8 dereferenceable(69984) %0, ptr noundef nonnull %2, i32 noundef 1, ptr noundef nonnull %6)
  %i.awy = load ptr, ptr %2, align 16, !tbaa !330
  store ptr %i.awy, ptr %i.awa, align 8, !tbaa !330
  %i.awz = load i32, ptr %i.a, align 8, !tbaa !335
  store i32 %i.awz, ptr %i.awc, align 8, !tbaa !335
  br label %bb.ca

bb.ca:                                            ; preds = %.critedge.thread, %._crit_edge685, %.critedge386.thread
  %.0318 = phi ptr [ %i.xq, %.critedge.thread ], [ %i.adt, %.critedge386.thread ], [ %i.anl, %._crit_edge685 ]
  call void @_ZdaPv(ptr noundef nonnull %.0318) #42
end_hunk_0
