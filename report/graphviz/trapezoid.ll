Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/trapezoid?download=true
inline.NumInlined: 101
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@add_segment:bb.a
  %i.ags = getelementptr inbounds nuw [96 x i8], ptr %i.agm, i64 %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 40
  store i64 %.0775854, ptr %i.agt, align 8, !tbaa !34
  %i.agu = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.agv = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.agw = getelementptr inbounds nuw [96 x i8], ptr %i.agu, i64 %i.agv
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 64
  %i.agy = load i64, ptr %i.agx, align 8, !tbaa !36
  br label %bb.cl

bb.cc:                                            ; preds = %bb.bk, %bb.bj
  %i.agz = load ptr, ptr %2, align 8, !tbaa !8
  %i.aha = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ahb = getelementptr inbounds nuw [96 x i8], ptr %i.agz, i64 %i.aha
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !30
  %i.ahe = load double, ptr %i.h, align 8, !tbaa !71 ; 3 uses
  %i.ahf = fsub double %i.ahd, %i.ahe
  %i.ahg = tail call double @llvm.fabs.f64(double %i.ahf)
  %i.ahh = fcmp ugt double %i.ahg, f0x3E7AD7F29ABCAF48
  %i.ahi = load ptr, ptr %2, align 8, !tbaa !8
  %i.ahj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ahk = getelementptr inbounds nuw [96 x i8], ptr %i.ahi, i64 %i.ahj ; 2 uses
  br i1 %i.ahh, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 24
  %i.ahm = load double, ptr %i.ahl, align 8, !tbaa !31
  %i.ahn = load double, ptr %4, align 8, !tbaa !72
  %i.aho = fcmp ogt double %i.ahm, %i.ahn
  %.val.pre = load double, ptr %i.c, align 8
  %.val798.pre = load double, ptr %i.e, align 8
  br label %less_than.exit

bb.ce:                                            ; preds = %bb.cc
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32
  %i.ahq = load double, ptr %i.e, align 8, !tbaa !73 ; 3 uses
  %i.ahr = fsub double %i.ahq, %i.ahe
  %i.ahs = load double, ptr %4, align 8, !tbaa !72 ; 2 uses
  %i.aht = load double, ptr %i.c, align 8, !tbaa !74 ; 3 uses
  %i.ahu = fsub double %i.aht, %i.ahs
  %i.ahv = load ptr, ptr %2, align 8, !tbaa !8
  %i.ahw = load double, ptr %i.ahp, align 8, !tbaa !30 ; 4 uses
  %i.ahx = fsub double %i.ahw, %i.ahe
  %i.ahy = fdiv double %i.ahx, %i.ahr
  %i.ahz = tail call double @llvm.fmuladd.f64(double %i.ahy, double %i.ahu, double %i.ahs) ; 2 uses
  %i.aia = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aib = getelementptr inbounds nuw [96 x i8], ptr %i.ahv, i64 %i.aia
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 24
  %i.aid = load <2 x double>, ptr %i.aic, align 8 ; 3 uses
  %i.aie = extractelement <2 x double> %i.aid, i64 1 ; 2 uses
  %i.aif = fadd double %i.aie, f0x3E7AD7F29ABCAF48
  %i.aig = fcmp ogt double %i.ahw, %i.aif
  %i.aih = fadd double %i.aie, f0xBE7AD7F29ABCAF48
  %i.aii = fcmp uge double %i.ahw, %i.aih
  %i.aij = extractelement <2 x double> %i.aid, i64 0
  %i.aik = fcmp ogt double %i.ahz, %i.aij
  %narrow.i.i.i = select i1 %i.aii, i1 %i.aik, i1 false
  %i.ail = select i1 %i.aig, i1 true, i1 %narrow.i.i.i
  br i1 %i.ail, label %less_than.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aim = insertelement <2 x double> poison, double %i.ahz, i64 0
  %i.ain = insertelement <2 x double> %i.aim, double %i.ahw, i64 1
  %i.aio = fsub <2 x double> %i.ain, %i.aid
  %i.aip = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aio)
  %i.aiq = fcmp ugt <2 x double> %i.aip, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.air = extractelement <2 x i1> %i.aiq, i64 0
  %i.ais = extractelement <2 x i1> %i.aiq, i64 1
  %.not4.i = select i1 %i.ais, i1 true, i1 %i.air
  br label %less_than.exit

less_than.exit:                                   ; preds = %bb.cf, %bb.ce, %bb.cd
  %.val798 = phi double [ %.val798.pre, %bb.cd ], [ %i.ahq, %bb.ce ], [ %i.ahq, %bb.cf ]
  %.val = phi double [ %.val.pre, %bb.cd ], [ %i.aht, %bb.ce ], [ %i.aht, %bb.cf ]
  %.0772 = phi i1 [ %i.aho, %bb.cd ], [ false, %bb.ce ], [ %.not4.i, %bb.cf ]
  tail call fastcc void @update_trapezoid(double %.val, double %.val798, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %.0775854, i64 noundef %i.qi)
  %i.ait = load ptr, ptr %2, align 8, !tbaa !8
  %i.aiu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aiv = getelementptr inbounds nuw [96 x i8], ptr %i.ait, i64 %i.aiu
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 32
  %i.aix = load double, ptr %i.aiw, align 8, !tbaa !30
  %i.aiy = load ptr, ptr %2, align 8, !tbaa !8
  %i.aiz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.aja = getelementptr inbounds nuw [96 x i8], ptr %i.aiy, i64 %i.aiz
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 32
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !30
  %i.ajd = fsub double %i.aix, %i.ajc
  %i.aje = tail call double @llvm.fabs.f64(double %i.ajd)
  %i.ajf = fcmp ugt double %i.aje, f0x3E7AD7F29ABCAF48
  br i1 %i.ajf, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %less_than.exit
  %i.ajg = load ptr, ptr %2, align 8, !tbaa !8
  %i.ajh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.aji = getelementptr inbounds nuw [96 x i8], ptr %i.ajg, i64 %i.ajh
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  %i.ajk = load double, ptr %i.ajj, align 8, !tbaa !31
  %i.ajl = load ptr, ptr %2, align 8, !tbaa !8
  %i.ajm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.gq) #10
  %i.ajn = getelementptr inbounds nuw [96 x i8], ptr %i.ajl, i64 %i.ajm
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajn, i64 24
  %i.ajp = load double, ptr %i.ajo, align 8, !tbaa !31
  %i.ajq = fsub double %i.ajk, %i.ajp
  %i.ajr = tail call double @llvm.fabs.f64(double %i.ajq)
  %i.ajs = fcmp ole double %i.ajr, f0x3E7AD7F29ABCAF48
  %or.cond5 = and i1 %i.ajs, %.0.i812
  br i1 %or.cond5, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ajt = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.aju = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ajv = getelementptr inbounds nuw [96 x i8], ptr %i.ajt, i64 %i.aju
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajv, i64 56
  %i.ajx = load i64, ptr %i.ajw, align 8, !tbaa !35
  %i.ajy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ajx) #10
  %i.ajz = getelementptr inbounds nuw [96 x i8], ptr %i.ajt, i64 %i.ajy
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajz, i64 40
  store i64 %.0775854, ptr %i.aka, align 8, !tbaa !34
  %i.akb = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.akc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.akd = getelementptr inbounds nuw [96 x i8], ptr %i.akb, i64 %i.akc
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 56
  %i.akf = load i64, ptr %i.ake, align 8, !tbaa !35
  %i.akg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.akf) #10
  %i.akh = getelementptr inbounds nuw [96 x i8], ptr %i.akb, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 48
  store i64 -1, ptr %i.aki, align 8, !tbaa !37
  %i.akj = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.akk = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.akl = getelementptr inbounds nuw [96 x i8], ptr %i.akj, i64 %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 64
  %i.akn = load i64, ptr %i.akm, align 8, !tbaa !36
  %i.ako = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.akn) #10
  %i.akp = getelementptr inbounds nuw [96 x i8], ptr %i.akj, i64 %i.ako
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 40
  store i64 %i.qi, ptr %i.akq, align 8, !tbaa !34
  %i.akr = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.aks = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.akt = getelementptr inbounds nuw [96 x i8], ptr %i.akr, i64 %i.aks
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 64
  %i.akv = load i64, ptr %i.aku, align 8, !tbaa !36
  %i.akw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.akv) #10
  %i.akx = getelementptr inbounds nuw [96 x i8], ptr %i.akr, i64 %i.akw
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akx, i64 48
  store i64 -1, ptr %i.aky, align 8, !tbaa !37
  %i.akz = load ptr, ptr %2, align 8, !tbaa !8
  %i.ala = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alb = getelementptr inbounds nuw [96 x i8], ptr %i.akz, i64 %i.ala
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 64
  %i.ald = load i64, ptr %i.alc, align 8, !tbaa !36
  %i.ale = load ptr, ptr %2, align 8, !tbaa !8
  %i.alf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qi) #10
  %i.alg = getelementptr inbounds nuw [96 x i8], ptr %i.ale, i64 %i.alf
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 56
  store i64 %i.ald, ptr %i.alh, align 8, !tbaa !35
  %i.ali = load ptr, ptr %2, align 8, !tbaa !8
  %i.alj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alk = getelementptr inbounds nuw [96 x i8], ptr %i.ali, i64 %i.alj
  %i.all = getelementptr inbounds nuw i8, ptr %i.alk, i64 64
  store i64 -1, ptr %i.all, align 8, !tbaa !36
  %i.alm = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cl

bb.ci:                                            ; preds = %bb.cg, %less_than.exit
  %i.aln = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.alo = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alp = getelementptr inbounds nuw [96 x i8], ptr %i.aln, i64 %i.alo
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 56
  %i.alr = load i64, ptr %i.alq, align 8, !tbaa !35
  %i.als = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.alr) #10
  %i.alt = getelementptr inbounds nuw [96 x i8], ptr %i.aln, i64 %i.als
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 40
  store i64 %.0775854, ptr %i.alu, align 8, !tbaa !34
  %i.alv = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.alw = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.alx = getelementptr inbounds nuw [96 x i8], ptr %i.alv, i64 %i.alw
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 56
  %i.alz = load i64, ptr %i.aly, align 8, !tbaa !35
  %i.ama = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.alz) #10
  %i.amb = getelementptr inbounds nuw [96 x i8], ptr %i.alv, i64 %i.ama
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 48 ; 2 uses
  br i1 %.0772, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  store i64 %i.qi, ptr %i.amc, align 8, !tbaa !37
  %i.amd = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ame = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.amf = getelementptr inbounds nuw [96 x i8], ptr %i.amd, i64 %i.ame
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 64
  %i.amh = load i64, ptr %i.amg, align 8, !tbaa !36
  %i.ami = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.amh) #10
  %i.amj = getelementptr inbounds nuw [96 x i8], ptr %i.amd, i64 %i.ami
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 40
  store i64 %i.qi, ptr %i.amk, align 8, !tbaa !34
  %i.aml = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.amm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.amn = getelementptr inbounds nuw [96 x i8], ptr %i.aml, i64 %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 64
  %i.amp = load i64, ptr %i.amo, align 8, !tbaa !36
  br label %.sink.split935

bb.ck:                                            ; preds = %bb.ci
  store i64 -1, ptr %i.amc, align 8, !tbaa !37
  %i.amq = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.amr = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ams = getelementptr inbounds nuw [96 x i8], ptr %i.amq, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 64
  %i.amu = load i64, ptr %i.amt, align 8, !tbaa !36
  %i.amv = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.amu) #10
  %i.amw = getelementptr inbounds nuw [96 x i8], ptr %i.amq, i64 %i.amv
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amw, i64 40
  store i64 %.0775854, ptr %i.amx, align 8, !tbaa !34
  %i.amy = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.amz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ana = getelementptr inbounds nuw [96 x i8], ptr %i.amy, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 64
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !36
  %i.and = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.anc) #10
  %i.ane = getelementptr inbounds nuw [96 x i8], ptr %i.amy, i64 %i.and
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 48
  store i64 %i.qi, ptr %i.anf, align 8, !tbaa !37
  %i.ang = load ptr, ptr %2, align 8, !tbaa !8
  %i.anh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.ani = getelementptr inbounds nuw [96 x i8], ptr %i.ang, i64 %i.anh
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 64
  %i.ank = load i64, ptr %i.anj, align 8, !tbaa !36
  %i.anl = load ptr, ptr %2, align 8, !tbaa !8
  br label %.sink.split935

.sink.split935:                                   ; preds = %bb.ck, %bb.cj
  %.sink941 = phi i64 [ %i.amp, %bb.cj ], [ %i.qi, %bb.ck ]
  %.sink939 = phi ptr [ %i.aml, %bb.cj ], [ %i.anl, %bb.ck ]
  %.sink938 = phi i64 [ 48, %bb.cj ], [ 56, %bb.ck ]
  %.sink = phi i64 [ -1, %bb.cj ], [ %i.ank, %bb.ck ]
  %.sink924.sink.ph = phi i64 [ %.0775854, %bb.cj ], [ %i.qi, %bb.ck ]
  %.sink926.ph = phi i64 [ 56, %bb.cj ], [ 64, %bb.ck ]
  %5 = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.sink941) #10
  %6 = getelementptr inbounds nuw [96 x i8], ptr %.sink939, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 %.sink938
  store i64 %.sink, ptr %7, align 8, !tbaa !13
  %8 = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split935, %bb.cb, %is_left_of.exit827.thread841, %is_left_of.exit827.thread, %bb.bi, %is_left_of.exit.thread833, %is_left_of.exit.thread, %bb.ch
  %.sink924.sink = phi i64 [ %i.zv, %bb.bi ], [ %i.qi, %bb.ch ], [ %.0775854, %is_left_of.exit827.thread841 ], [ %i.agy, %bb.cb ], [ %i.qi, %is_left_of.exit.thread ], [ %.0775854, %is_left_of.exit.thread833 ], [ %i.qi, %is_left_of.exit827.thread ], [ %.sink924.sink.ph, %.sink.split935 ]
  %.sink922.sink = phi ptr [ %i.zr, %bb.bi ], [ %i.alm, %bb.ch ], [ %i.aeg, %is_left_of.exit827.thread841 ], [ %i.agu, %bb.cb ], [ %i.wq, %is_left_of.exit.thread ], [ %i.xd, %is_left_of.exit.thread833 ], [ %i.adt, %is_left_of.exit827.thread ], [ %8, %.sink.split935 ]
  %.sink921.sink = phi i64 [ 48, %bb.bi ], [ 64, %bb.ch ], [ 64, %is_left_of.exit827.thread841 ], [ 48, %bb.cb ], [ 64, %is_left_of.exit.thread ], [ 64, %is_left_of.exit.thread833 ], [ 64, %is_left_of.exit827.thread ], [ 64, %.sink.split935 ]
  %.sink918.sink = phi i64 [ %i.qi, %bb.bi ], [ -1, %bb.ch ], [ -1, %is_left_of.exit827.thread841 ], [ %i.qi, %bb.cb ], [ -1, %is_left_of.exit.thread ], [ -1, %is_left_of.exit.thread833 ], [ -1, %is_left_of.exit827.thread ], [ -1, %.sink.split935 ]
  %.sink926 = phi i64 [ 56, %bb.bi ], [ 64, %bb.ch ], [ 64, %is_left_of.exit827.thread841 ], [ 64, %bb.cb ], [ 56, %is_left_of.exit.thread ], [ 56, %is_left_of.exit.thread833 ], [ 64, %is_left_of.exit827.thread ], [ %.sink926.ph, %.sink.split935 ]
  %i.anm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.sink924.sink) #10
  %i.ann = getelementptr inbounds nuw [96 x i8], ptr %.sink922.sink, i64 %i.anm
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 %.sink921.sink
  store i64 %.sink918.sink, ptr %i.ano, align 8, !tbaa !13
  %i.anp = load ptr, ptr %2, align 8, !tbaa !8
  %i.anq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.anr = getelementptr inbounds nuw [96 x i8], ptr %i.anp, i64 %i.anq
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 %.sink926
  %.1 = load i64, ptr %i.ans, align 8, !tbaa !13  ; 2 uses
  %i.ant = load ptr, ptr %2, align 8, !tbaa !8
  %i.anu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0775854) #10
  %i.anv = getelementptr inbounds nuw [96 x i8], ptr %i.ant, i64 %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 4
  store i32 %0, ptr %i.anw, align 4, !tbaa !32
  %i.anx = load ptr, ptr %2, align 8, !tbaa !8
  %i.any = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qi) #10
  %i.anz = getelementptr inbounds nuw [96 x i8], ptr %i.anx, i64 %i.any
  store i32 %0, ptr %i.anz, align 8, !tbaa !33
  %i.aoa = add i64 %.1, -1
  %i.aob = icmp ult i64 %i.aoa, -2
  br i1 %i.aob, label %bb.al, label %.critedge

.critedge:                                        ; preds = %greater_than_equal_to.exit, %bb.cl, %bb.ak, %.thread843
  %.2781 = phi i64 [ %.1780, %.thread843 ], [ 0, %bb.ak ], [ %.0779852, %greater_than_equal_to.exit ], [ %.1780, %bb.cl ]
  %.2778 = phi i64 [ %spec.select, %.thread843 ], [ 0, %bb.ak ], [ %.0776853, %greater_than_equal_to.exit ], [ %spec.select, %bb.cl ]
  tail call fastcc void @merge_trapezoids(i32 noundef %0, i64 noundef %.0, i64 noundef %i.gq, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  tail call fastcc void @merge_trapezoids(i32 noundef %0, i64 noundef %.2778, i64 noundef %.2781, i32 noundef 2, ptr noundef %2, ptr noundef %3)
  %i.aoc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.aoc, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @locate_endpoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr101 = phi i64 [ %2, %bb.a ], [ %.tr101.be, %tailrecurse.backedge ]
  %i.b = load ptr, ptr %4, align 8, !tbaa !8
  %i.c = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.tr101) #10
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23
  switch i32 %i.e, label %bb.af [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40
  ret i64 %i.g

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load <2 x double>, ptr %0, align 8       ; 3 uses
  %i.j = load <2 x double>, ptr %i.h, align 8     ; 3 uses
  %i.k = extractelement <2 x double> %i.j, i64 1  ; 2 uses
  %i.l = fadd double %i.k, f0x3E7AD7F29ABCAF48    ; 2 uses
  %i.m = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.n = fcmp ogt double %i.m, %i.l
  %i.o = fadd double %i.k, f0xBE7AD7F29ABCAF48    ; 2 uses
  %i.p = fcmp uge double %i.m, %i.o
  %i.q = extractelement <2 x double> %i.i, i64 0
  %i.r = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.s = fcmp ogt double %i.q, %i.r
  %narrow.i = select i1 %i.p, i1 %i.s, i1 false
  %i.t = select i1 %i.n, i1 true, i1 %narrow.i
  br i1 %i.t, label %tailrecurse.backedge, label %bb.d

tailrecurse.backedge:                             ; preds = %bb.c, %is_left_of.exit84, %bb.w, %bb.y, %bb.ad, %bb.ab, %is_left_of.exit, %bb.l, %bb.n, %bb.s, %bb.q, %bb.i, %bb.d, %bb.e, %is_left_of.exit.thread90
  %.sink = phi i64 [ 40, %is_left_of.exit84 ], [ %., %bb.e ], [ 48, %bb.c ], [ 40, %is_left_of.exit ], [ %.110, %bb.i ], [ 40, %bb.d ], [ 48, %is_left_of.exit.thread90 ], [ 40, %bb.q ], [ 40, %bb.s ], [ 40, %bb.n ], [ 40, %bb.l ], [ 40, %bb.ab ], [ 40, %bb.ad ], [ 40, %bb.y ], [ 40, %bb.w ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink
  %.tr101.be = load i64, ptr %i.u, align 8, !tbaa !13
  br label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.v = fsub <2 x double> %i.i, %i.j
  %i.w = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v)
  %i.x = fcmp ole <2 x double> %i.w, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.y = extractelement <2 x i1> %i.x, i64 0
  %i.z = extractelement <2 x i1> %i.x, i64 1
  %i.aa = select i1 %i.z, i1 %i.y, i1 false
  br i1 %i.aa, label %bb.e, label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.d
  %i.ab = load double, ptr %1, align 8
  %i.ac = load double, ptr %i.a, align 8          ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %i.l
  %i.ae = fcmp uge double %i.ac, %i.o
  %i.af = fcmp ogt double %i.ab, %i.r
  %narrow.i77 = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = select i1 %i.ad, i1 true, i1 %narrow.i77
  %. = select i1 %i.ag, i64 48, i64 40
  br label %tailrecurse.backedge

bb.f:                                             ; preds = %tailrecurse
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [64 x i8], ptr %3, i64 %i.aj ; 4 uses
  %i.al = load <2 x double>, ptr %0, align 8      ; 9 uses
  %i.am = load <2 x double>, ptr %i.ak, align 8   ; 5 uses
  %i.an = extractelement <2 x double> %i.am, i64 1 ; 11 uses
  %i.ao = extractelement <2 x double> %i.am, i64 0 ; 9 uses
  %i.ap = fsub <2 x double> %i.al, %i.am          ; 3 uses
  %i.aq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ap)
  %i.ar = fcmp ole <2 x double> %i.aq, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.as = extractelement <2 x i1> %i.ar, i64 0
  %i.at = extractelement <2 x i1> %i.ar, i64 1
  %i.au = select i1 %i.at, i1 %i.as, i1 false
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aw = load <2 x double>, ptr %i.av, align 8   ; 5 uses
  %i.ax = fsub <2 x double> %i.al, %i.aw          ; 3 uses
  %i.ay = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ax)
  %i.az = fcmp ole <2 x double> %i.ay, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.ba = extractelement <2 x i1> %i.az, i64 0
  %i.bb = extractelement <2 x i1> %i.az, i64 1
  %i.bc = select i1 %i.bb, i1 %i.ba, i1 false
  br i1 %i.bc, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = load double, ptr %i.a, align 8, !tbaa !50 ; 6 uses
  %i.be = extractelement <2 x double> %i.al, i64 1
  %i.bf = fsub double %i.be, %i.bd
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ugt double %i.bg, f0x3E7AD7F29ABCAF48
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load double, ptr %1, align 8, !tbaa !51
  %i.bj = extractelement <2 x double> %i.al, i64 0
  %i.bk = fcmp olt double %i.bi, %i.bj
  %.110 = select i1 %i.bk, i64 40, i64 48
  br label %tailrecurse.backedge

bb.j:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bm = load double, ptr %i.bl, align 8         ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bo = load double, ptr %i.bn, align 8         ; 6 uses
  %i.bp = fadd double %i.an, f0x3E7AD7F29ABCAF48
  %i.bq = fcmp ogt double %i.bo, %i.bp
  %i.br = fadd double %i.an, f0xBE7AD7F29ABCAF48
  %i.bs = fcmp uge double %i.bo, %i.br
  %i.bt = fcmp ogt double %i.bm, %i.ao
  %narrow.i.i = select i1 %i.bs, i1 %i.bt, i1 false
  %i.bu = select i1 %i.bq, i1 true, i1 %narrow.i.i
  %i.bv = fsub double %i.bo, %i.bd
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ugt double %i.bw, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.bu, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = load double, ptr %1, align 8, !tbaa !51
  %i.bz = fcmp olt double %i.by, %i.bm
  br i1 %i.bz, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.m:                                             ; preds = %bb.k
  %i.ca = fsub double %i.an, %i.bd
  %i.cb = tail call double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ugt double %i.cb, f0x3E7AD7F29ABCAF48
  %i.cd = load double, ptr %1, align 8            ; 2 uses
  br i1 %i.cc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = fcmp olt double %i.cd, %i.ao
  br i1 %i.ce, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.o:                                             ; preds = %bb.m
end_hunk_0
