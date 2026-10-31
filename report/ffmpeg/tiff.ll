Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tiff?download=true
inline.NumInlined: 42
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 53
begin_hunk_0_@decode_frame:bb.a
  %i.aly = load i16, ptr %i.bb, align 4, !tbaa !204
  %i.alz = zext i16 %i.aly to i32
  %i.ama = add nuw nsw i32 %i.alz, 1
  %i.amb = icmp samesign ult i32 %i.ama, %i.alx
  br i1 %i.amb, label %bb.ip, label %.thread

bb.ip:                                            ; preds = %bb.io
  %i.amc = load i32, ptr %i.i, align 4, !tbaa !33
  %i.amd = call i32 @ff_tget_long(ptr noundef nonnull %i.y, i32 noundef %i.amc) #16
  br label %.thread861

.thread:                                          ; preds = %bb.in, %bb.io
  br i1 %i.alv, label %.thread861, label %bb.ix

.thread861:                                       ; preds = %.thread, %bb.ip
  %storemerge1679 = phi i32 [ %i.amd, %bb.ip ], [ %i.alq, %.thread ] ; 6 uses
  store i32 %storemerge1679, ptr %i.h, align 4, !tbaa !33
  %.not824 = icmp eq i32 %storemerge1679, 0
  br i1 %.not824, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %.thread861
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.15) #16
  br label %.loopexit973

bb.ir:                                            ; preds = %.thread861
  %.not825 = icmp ugt i32 %storemerge1679, %.0667
  br i1 %.not825, label %bb.it, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.ame = load ptr, ptr %i.bo, align 8, !tbaa !43
  call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.ame, ptr noundef nonnull @.str.16) #16
  br label %.loopexit973

bb.it:                                            ; preds = %bb.ir
  %i.amf = icmp ugt i32 %storemerge1679, -16
  br i1 %i.amf, label %bb.iv, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.amg = load i32, ptr %i.s, align 8, !tbaa !50
  %i.amh = add nuw i32 %storemerge1679, 14
  %i.ami = icmp ult i32 %i.amg, %i.amh
  br i1 %i.ami, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu, %bb.it
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.13) #16
  br label %.loopexit973

bb.iw:                                            ; preds = %bb.iu
  store i32 0, ptr %i.cy, align 8, !tbaa !219
  br label %vector.ph3066

bb.ix:                                            ; preds = %.thread
  %i.amj = getelementptr inbounds nuw i8, ptr %i.o, i64 1236 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %i.o, i64 1204
  %i.aml = getelementptr inbounds nuw i8, ptr %i.o, i64 1360 ; 2 uses
  %i.amm = getelementptr inbounds nuw i8, ptr %i.o, i64 1364 ; 4 uses
  %i.amn = getelementptr inbounds nuw i8, ptr %i.o, i64 1300 ; 2 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.o, i64 1308 ; 2 uses
  %i.amp = getelementptr inbounds nuw i8, ptr %i.o, i64 1324 ; 3 uses
  %i.amq = getelementptr inbounds nuw i8, ptr %i.o, i64 1328 ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %i.o, i64 1332 ; 3 uses
  %i.ams = load i32, ptr %i.ap, align 4, !tbaa !197
  %i.amt = add i32 %i.ams, -1
  %spec.select = icmp ult i32 %i.amt, 2           ; 4 uses
  %i.amu = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.amv = icmp sgt i32 %i.amu, 0
  br i1 %i.amv, label %.lr.ph1590, label %._crit_edge1591

.lr.ph1590:                                       ; preds = %bb.ix
  %i.amw = getelementptr inbounds nuw i8, ptr %1, i64 312
  br label %bb.iy

bb.iy:                                            ; preds = %.lr.ph1590, %bb.jh
  %indvars.iv1926 = phi i64 [ 0, %.lr.ph1590 ], [ %indvars.iv.next1927, %bb.jh ] ; 3 uses
  %i.amx = load ptr, ptr %i.bl, align 8, !tbaa !64
  %i.amy = getelementptr inbounds nuw [24 x i8], ptr %i.amx, i64 %indvars.iv1926 ; 3 uses
  %i.amz = load i32, ptr %i.amy, align 8, !tbaa !222 ; 9 uses
  %i.ana = icmp sgt i32 %i.amz, 4095
  br i1 %i.ana, label %bb.iz, label %bb.ja

bb.iz:                                            ; preds = %bb.iy
  %i.anb = icmp samesign ult i32 %i.amz, 4100
  br i1 %i.anb, label %get_geokey_type.exit, label %.sink.split

bb.ja:                                            ; preds = %bb.iy
  %i.anc = icmp sgt i32 %i.amz, 3071
  br i1 %i.anc, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.and = icmp samesign ult i32 %i.amz, 3096
  br i1 %i.and, label %get_geokey_type.exit, label %.sink.split

bb.jc:                                            ; preds = %bb.ja
  %i.ane = icmp sgt i32 %i.amz, 2047
  br i1 %i.ane, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.anf = icmp samesign ult i32 %i.amz, 2062
  br i1 %i.anf, label %get_geokey_type.exit, label %.sink.split

bb.je:                                            ; preds = %bb.jc
  %i.ang = add i32 %i.amz, -1024
  %or.cond.i845 = icmp ult i32 %i.ang, 3
  br i1 %or.cond.i845, label %get_geokey_type.exit, label %.sink.split

get_geokey_type.exit:                             ; preds = %bb.je, %bb.jd, %bb.jb, %bb.iz
  %tiff_vert_name_type_map.sink = phi ptr [ @tiff_geog_name_type_map, %bb.jd ], [ @tiff_vert_name_type_map, %bb.iz ], [ @tiff_proj_name_type_map, %bb.jb ], [ @tiff_conf_name_type_map, %bb.je ] ; 2 uses
  %.sink2835 = phi i64 [ -16380, %bb.jd ], [ -32764, %bb.iz ], [ -24572, %bb.jb ], [ -8188, %bb.je ]
  %.str.1816.sink = phi ptr [ @.str.1818, %bb.jd ], [ @.str.1816, %bb.iz ], [ @.str.1817, %bb.jb ], [ @.str.1819, %bb.je ]
  %.sink26.i850 = phi i64 [ -16384, %bb.jd ], [ -32768, %bb.iz ], [ -24576, %bb.jb ], [ -8192, %bb.je ]
  %i.anh = zext nneg i32 %i.amz to i64            ; 2 uses
  %i.ani = getelementptr [8 x i8], ptr %tiff_vert_name_type_map.sink, i64 %i.anh
  %i.anj = getelementptr i8, ptr %i.ani, i64 %.sink26.i850
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !237
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amy, i64 4
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !223
  %.not823 = icmp eq i32 %i.ank, %i.anm
  br i1 %.not823, label %bb.jf, label %.sink.split

bb.jf:                                            ; preds = %get_geokey_type.exit
  %i.ann = getelementptr [8 x i8], ptr %tiff_vert_name_type_map.sink, i64 %i.anh
  %i.ano = getelementptr i8, ptr %i.ann, i64 %.sink2835
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !238
  %i.anq = zext i32 %i.anp to i64
  %i.anr = getelementptr inbounds nuw i8, ptr %.str.1816.sink, i64 %i.anq ; 2 uses
  %i.ans = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !225
  %i.anu = call i32 @av_dict_set(ptr noundef nonnull %i.amw, ptr noundef nonnull %i.anr, ptr noundef %i.ant, i32 noundef 8) #16 ; 2 uses
  %i.anv = load ptr, ptr %i.bl, align 8, !tbaa !64
  %i.anw = getelementptr inbounds nuw [24 x i8], ptr %i.anv, i64 %indvars.iv1926
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anw, i64 16
  store ptr null, ptr %i.anx, align 8, !tbaa !225
  %i.any = icmp slt i32 %i.anu, 0
  br i1 %i.any, label %bb.jg, label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.anr) #16
  br label %.loopexit973

.sink.split:                                      ; preds = %get_geokey_type.exit, %bb.iz, %bb.jb, %bb.je, %bb.jd
  %.str.18.sink = phi ptr [ @.str.17, %bb.iz ], [ @.str.17, %bb.jd ], [ @.str.17, %bb.je ], [ @.str.17, %bb.jb ], [ @.str.18, %get_geokey_type.exit ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull %.str.18.sink, i32 noundef %i.amz) #16
  br label %bb.jh

bb.jh:                                            ; preds = %.sink.split, %bb.jf
  %indvars.iv.next1927 = add nuw nsw i64 %indvars.iv1926, 1 ; 2 uses
  %i.anz = load i32, ptr %i.bk, align 4, !tbaa !63
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = icmp slt i64 %indvars.iv.next1927, %i.aoa
  br i1 %i.aob, label %bb.iy, label %._crit_edge1591, !llvm.loop !105

._crit_edge1591:                                  ; preds = %bb.jh, %bb.ix
  br i1 %spec.select, label %.preheader957, label %bb.js

.preheader957:                                    ; preds = %._crit_edge1591
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  %i.aoc = load float, ptr %i.amn, align 4, !tbaa !62
  %i.aod = load float, ptr %i.dw, align 4, !tbaa !62
  %i.aoe = load <2 x float>, ptr %i.bj, align 4, !tbaa !62 ; 2 uses
  %i.aof = load <2 x float>, ptr %i.bh, align 4, !tbaa !62 ; 3 uses
  %i.aog = load <2 x float>, ptr %i.amo, align 4, !tbaa !62 ; 2 uses
  %i.aoh = shufflevector <2 x float> %i.aoe, <2 x float> %i.aog, <2 x i32> <i32 0, i32 2>
  %i.aoi = fmul nsz <2 x float> %i.aof, %i.aoh    ; 5 uses
  %i.aoj = extractelement <2 x float> %i.aoi, i64 0 ; 3 uses
  store float %i.aoj, ptr %i.bj, align 4, !tbaa !62
  %i.aok = shufflevector <2 x float> %i.aoe, <2 x float> %i.aog, <2 x i32> <i32 1, i32 3>
  %i.aol = fmul nsz <2 x float> %i.aof, %i.aok    ; 6 uses
  %i.aom = extractelement <2 x float> %i.aol, i64 0
  store float %i.aom, ptr %i.du, align 8, !tbaa !62
  %i.aon = insertelement <2 x float> poison, float %i.aoc, i64 0
  %i.aoo = insertelement <2 x float> %i.aon, float %i.aod, i64 1
  %i.aop = fmul nsz <2 x float> %i.aof, %i.aoo    ; 5 uses
  %i.aoq = extractelement <2 x float> %i.aop, i64 0
  store float %i.aoq, ptr %i.amn, align 4, !tbaa !62
  %i.aor = shufflevector <2 x float> %i.aoi, <2 x float> %i.aol, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.aor, ptr %i.amo, align 4, !tbaa !62
  %i.aos = extractelement <2 x float> %i.aop, i64 1
  store float %i.aos, ptr %i.dw, align 4, !tbaa !62
  %i.aot = load float, ptr %i.amk, align 4, !tbaa !62 ; 3 uses
  %i.aou = load float, ptr %i.amp, align 4, !tbaa !62
  %i.aov = fmul nsz float %i.aot, %i.aou
  store float %i.aov, ptr %i.amp, align 4, !tbaa !62
  %i.aow = load float, ptr %i.amq, align 8, !tbaa !62
  %i.aox = fmul nsz float %i.aot, %i.aow
  store float %i.aox, ptr %i.amq, align 8, !tbaa !62
  %i.aoy = load float, ptr %i.amr, align 4, !tbaa !62
  %i.aoz = fmul nsz float %i.aot, %i.aoy          ; 3 uses
  store float %i.aoz, ptr %i.amr, align 4, !tbaa !62
  %i.apa = load i32, ptr %i.aq, align 4, !tbaa !198
  %.not780 = icmp eq i32 %i.apa, 0
  br i1 %.not780, label %.preheader953, label %.preheader956

.preheader956:                                    ; preds = %.preheader957
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.o, i64 1260 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1276 ; 2 uses
  %i.apb = load <2 x float>, ptr %i.bg, align 4, !tbaa !62 ; 4 uses
  %i.apc = load <2 x float>, ptr %i.bx, align 4, !tbaa !62 ; 2 uses
  %i.apd = shufflevector <2 x float> %i.aoi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ape = fmul nsz <2 x float> %i.apd, %i.apc
  %i.apf = fmul nsz <2 x float> %i.ape, %i.apb
  %i.apg = fpext <2 x float> %i.apf to <2 x double>
  %i.aph = load <2 x float>, ptr %gep.1, align 4, !tbaa !62 ; 2 uses
  %i.api = shufflevector <2 x float> %i.aol, <2 x float> poison, <2 x i32> zeroinitializer
  %i.apj = fmul nsz <2 x float> %i.api, %i.aph
  %i.apk = fmul nsz <2 x float> %i.apj, %i.apb
  %i.apl = fpext <2 x float> %i.apk to <2 x double>
  %i.apm = fadd nsz <2 x double> %i.apg, %i.apl
  %i.apn = load <2 x float>, ptr %gep.2, align 4, !tbaa !62 ; 2 uses
  %i.apo = shufflevector <2 x float> %i.aop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.app = fmul nsz <2 x float> %i.apo, %i.apn
  %i.apq = fmul nsz <2 x float> %i.app, %i.apb
  %i.apr = fpext <2 x float> %i.apq to <2 x double>
  %i.aps = fadd nsz <2 x double> %i.apm, %i.apr
  store <2 x double> %i.aps, ptr %i.k, align 16, !tbaa !76
  %i.apt = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %invariant.gep.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1252 ; 2 uses
  %i.apu = load float, ptr %i.amj, align 4, !tbaa !62 ; 2 uses
  %i.apv = load float, ptr %invariant.gep.2, align 4, !tbaa !62 ; 2 uses
  %gep.1.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1268 ; 2 uses
  %i.apw = load float, ptr %gep.1.2, align 4, !tbaa !62 ; 2 uses
  %gep.2.2 = getelementptr inbounds nuw i8, ptr %i.o, i64 1284
  %i.apx = load float, ptr %gep.2.2, align 4, !tbaa !62 ; 3 uses
  %i.apy = shufflevector <2 x float> %i.apc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.apz = insertelement <2 x float> %i.apy, float %i.apv, i64 0
  %i.aqa = fmul nsz <2 x float> %i.aoi, %i.apz
  %i.aqb = shufflevector <2 x float> %i.apb, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aqc = insertelement <2 x float> %i.aqb, float %i.apu, i64 0 ; 3 uses
  %i.aqd = fmul nsz <2 x float> %i.aqa, %i.aqc
  %i.aqe = fpext <2 x float> %i.aqd to <2 x double>
  %i.aqf = shufflevector <2 x float> %i.aph, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aqg = insertelement <2 x float> %i.aqf, float %i.apw, i64 0
  %i.aqh = fmul nsz <2 x float> %i.aol, %i.aqg
  %i.aqi = fmul nsz <2 x float> %i.aqh, %i.aqc
  %i.aqj = fpext <2 x float> %i.aqi to <2 x double>
  %i.aqk = fadd nsz <2 x double> %i.aqe, %i.aqj
  %i.aql = shufflevector <2 x float> %i.apn, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aqm = insertelement <2 x float> %i.aql, float %i.apx, i64 0
  %i.aqn = fmul nsz <2 x float> %i.aop, %i.aqm
  %i.aqo = fmul nsz <2 x float> %i.aqn, %i.aqc
  %i.aqp = fpext <2 x float> %i.aqo to <2 x double>
  %i.aqq = fadd nsz <2 x double> %i.aqk, %i.aqp
  store <2 x double> %i.aqq, ptr %i.apt, align 16, !tbaa !76
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aqs = shufflevector <2 x float> %i.aoi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aqt = insertelement <2 x float> %i.apy, float %i.apv, i64 1
  %i.aqu = fmul nsz <2 x float> %i.aqs, %i.aqt
  %i.aqv = insertelement <2 x float> %i.aqb, float %i.apu, i64 1 ; 3 uses
  %i.aqw = fmul nsz <2 x float> %i.aqu, %i.aqv
  %i.aqx = fpext <2 x float> %i.aqw to <2 x double>
  %i.aqy = shufflevector <2 x float> %i.aol, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.aqz = insertelement <2 x float> %i.aqf, float %i.apw, i64 1
  %i.ara = fmul nsz <2 x float> %i.aqy, %i.aqz
  %i.arb = fmul nsz <2 x float> %i.ara, %i.aqv
  %i.arc = fpext <2 x float> %i.arb to <2 x double>
  %i.ard = fadd nsz <2 x double> %i.aqx, %i.arc
  %i.are = shufflevector <2 x float> %i.aop, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.arf = insertelement <2 x float> %i.aql, float %i.apx, i64 1
  %i.arg = fmul nsz <2 x float> %i.are, %i.arf
  %i.arh = fmul nsz <2 x float> %i.arg, %i.aqv
  %i.ari = fpext <2 x float> %i.arh to <2 x double>
  %i.arj = fadd nsz <2 x double> %i.ard, %i.ari
  store <2 x double> %i.arj, ptr %i.aqr, align 16, !tbaa !76
  %i.ark = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.arl = load float, ptr %i.amr, align 4, !tbaa !62 ; 3 uses
  %i.arm = load <2 x float>, ptr %i.amp, align 4, !tbaa !62 ; 5 uses
  %i.arn = load float, ptr %i.amq, align 8, !tbaa !62
  %i.aro = load <2 x float>, ptr %i.bg, align 4, !tbaa !62 ; 3 uses
  %i.arp = load <2 x float>, ptr %i.bx, align 4, !tbaa !62 ; 2 uses
  %i.arq = shufflevector <2 x float> %i.arp, <2 x float> %i.arm, <2 x i32> <i32 0, i32 2>
  %i.arr = shufflevector <2 x float> %i.arm, <2 x float> %i.arp, <2 x i32> <i32 0, i32 3>
  %i.ars = fmul nsz <2 x float> %i.arq, %i.arr
  %i.art = fmul nsz <2 x float> %i.ars, %i.aro
  %i.aru = fpext <2 x float> %i.art to <2 x double>
  %i.arv = load <2 x float>, ptr %gep.1, align 4, !tbaa !62 ; 2 uses
  %i.arw = shufflevector <2 x float> %i.arv, <2 x float> %i.arm, <2 x i32> <i32 0, i32 3>
  %i.arx = shufflevector <2 x float> %i.arm, <2 x float> %i.arv, <2 x i32> <i32 1, i32 3>
  %i.ary = fmul nsz <2 x float> %i.arw, %i.arx
  %i.arz = fmul nsz <2 x float> %i.ary, %i.aro
  %i.asa = fpext <2 x float> %i.arz to <2 x double>
  %i.asb = fadd nsz <2 x double> %i.aru, %i.asa
  %i.asc = load <2 x float>, ptr %gep.2, align 4, !tbaa !62 ; 2 uses
  %i.asd = insertelement <2 x float> %i.asc, float %i.arl, i64 1
  %i.ase = insertelement <2 x float> %i.asc, float %i.arl, i64 0
  %i.asf = fmul nsz <2 x float> %i.asd, %i.ase
  %i.asg = fmul nsz <2 x float> %i.asf, %i.aro
  %i.ash = fpext <2 x float> %i.asg to <2 x double>
  %i.asi = fadd nsz <2 x double> %i.asb, %i.ash
  store <2 x double> %i.asi, ptr %i.ark, align 16, !tbaa !76
  %i.asj = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ask = load float, ptr %i.amj, align 4, !tbaa !62 ; 3 uses
  %i.asl = load float, ptr %invariant.gep.2, align 4, !tbaa !62
  %i.asm = extractelement <2 x float> %i.arm, i64 0
  %i.asn = fmul nsz float %i.asm, %i.asl
  %i.aso = fmul nsz float %i.asn, %i.ask
  %i.asp = fpext nsz float %i.aso to double
  %i.asq = load float, ptr %gep.1.2, align 4, !tbaa !62
  %i.asr = fmul nsz float %i.arn, %i.asq
  %i.ass = fmul nsz float %i.asr, %i.ask
  %i.ast = fpext nsz float %i.ass to double
  %i.asu = fadd nsz double %i.asp, %i.ast
  %i.asv = fmul nsz float %i.arl, %i.apx
  %i.asw = fmul nsz float %i.asv, %i.ask
  %i.asx = fpext nsz float %i.asw to double
  %i.asy = fadd nsz double %i.asu, %i.asx
  store double %i.asy, ptr %i.asj, align 16, !tbaa !76
  call fastcc void @camera_xyz_coeff(ptr noundef nonnull %i.o, ptr noundef %i.k)
  br label %.loopexit954

.preheader953:                                    ; preds = %.preheader957
  %i.asz = fcmp nsz une float %i.aoj, 0.000000e+00
  br i1 %i.asz, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %.preheader953
  %i.ata = load float, ptr %i.bi, align 4, !tbaa !62
  %i.atb = fdiv nsz float %i.ata, %i.aoj
  store float %i.atb, ptr %i.bi, align 4, !tbaa !62
  br label %bb.jj

bb.jj:                                            ; preds = %.preheader953, %bb.ji
  %i.atc = extractelement <2 x float> %i.aol, i64 1 ; 2 uses
  %i.atd = fcmp nsz une float %i.atc, 0.000000e+00
  br i1 %i.atd, label %bb.jk, label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  %i.ate = load float, ptr %i.aml, align 8, !tbaa !62
  %i.atf = fdiv nsz float %i.ate, %i.atc
  store float %i.atf, ptr %i.aml, align 8, !tbaa !62
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jj
  %i.atg = fcmp nsz une float %i.aoz, 0.000000e+00
  br i1 %i.atg, label %bb.jm, label %.loopexit954

bb.jm:                                            ; preds = %bb.jl
  %i.ath = load float, ptr %i.amm, align 4, !tbaa !62
  %i.ati = fdiv nsz float %i.ath, %i.aoz
  store float %i.ati, ptr %i.amm, align 4, !tbaa !62
  br label %.loopexit954

.loopexit954:                                     ; preds = %bb.jl, %bb.jm, %.preheader956
  %i.atj = load float, ptr %i.amm, align 4, !tbaa !62 ; 2 uses
  %i.atk = load <2 x float>, ptr %i.bi, align 4, !tbaa !62 ; 3 uses
  %i.atl = extractelement <2 x float> %i.atk, i64 0
  %i.atm = call nsz float @llvm.minnum.f32(float %i.atl, float f0x7F7FFFFF)
  %i.atn = extractelement <2 x float> %i.atk, i64 1
  %i.ato = call nsz float @llvm.minnum.f32(float %i.atm, float %i.atn)
  %i.atp = call nsz float @llvm.minnum.f32(float %i.ato, float %i.atj) ; 2 uses
  %i.atq = insertelement <2 x float> poison, float %i.atp, i64 0
  %i.atr = shufflevector <2 x float> %i.atq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ats = fdiv nsz <2 x float> %i.atk, %i.atr
  store <2 x float> %i.ats, ptr %i.bi, align 4, !tbaa !62
  %i.att = fdiv nsz float %i.atj, %i.atp
  store float %i.att, ptr %i.amm, align 4, !tbaa !62
  %i.atu = load i32, ptr %i.as, align 8, !tbaa !55 ; 2 uses
  %i.atv = load i32, ptr %i.at, align 4, !tbaa !56 ; 2 uses
  %i.atw = urem i32 %i.atu, %i.atv
  %i.atx = udiv i32 %i.atu, %i.atv                ; 2 uses
  %.not781 = icmp ne i32 %i.atw, 0
  %i.aty = add i32 %i.atx, -33
  %or.cond6 = icmp ult i32 %i.aty, -25
  %or.cond = or i1 %.not781, %or.cond6
  br i1 %or.cond, label %.thread885, label %bb.jn

bb.jn:                                            ; preds = %.loopexit954
  %i.atz = load i32, ptr %i.ax, align 4, !tbaa !58 ; 2 uses
  %i.aua = icmp eq i32 %i.atz, 0
  br i1 %i.aua, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.aub = zext nneg i32 %i.atx to i64
  %notmask = shl nsw i64 -1, %i.aub
  %i.auc = trunc i64 %notmask to i32
  %i.aud = xor i32 %i.auc, -1                     ; 2 uses
  store i32 %i.aud, ptr %i.ax, align 4, !tbaa !58
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jn
  %i.aue = phi i32 [ %i.aud, %bb.jo ], [ %i.atz, %bb.jn ] ; 2 uses
  %i.auf = uitofp nsz i32 %i.aue to float
  %i.aug = load float, ptr %i.be, align 4, !tbaa !62 ; 2 uses
  %i.auh = fcmp nsz ult float %i.aug, %i.auf
  br i1 %i.auh, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.aui = fpext nsz float %i.aug to double
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.20, double noundef %i.aui, i32 noundef %i.aue) #16
  br label %.thread885

.thread885:                                       ; preds = %.loopexit954, %bb.jq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br label %.loopexit973

bb.jr:                                            ; preds = %bb.jp
  %i.auj = load i32, ptr %i.cn, align 8, !tbaa !74
  %.not782 = icmp eq i32 %i.auj, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  br i1 %.not782, label %bb.js, label %.loopexit973

bb.js:                                            ; preds = %._crit_edge1591, %bb.jr
  %i.auk = load i32, ptr %i.az, align 8, !tbaa !202
  %.not783 = icmp ne i32 %i.auk, 0                ; 2 uses
  %.pre = load i32, ptr %i.bm, align 4, !tbaa !208 ; 2 uses
  br i1 %.not783, label %bb.ka, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %.not784 = icmp eq i32 %.pre, 0
  br i1 %.not784, label %bb.ju, label %bb.jw

bb.ju:                                            ; preds = %bb.jt
  %i.aul = load i32, ptr %i.dl, align 8, !tbaa !213
  %.not785 = icmp eq i32 %i.aul, 0
  br i1 %.not785, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.21) #16
  br label %.loopexit973

bb.jw:                                            ; preds = %bb.ju, %bb.jt
  %i.aum = load i32, ptr %i.dc, align 4, !tbaa !69
  %.not787 = icmp eq i32 %i.aum, 0
  br i1 %.not787, label %bb.jx, label %bb.ka

bb.jx:                                            ; preds = %bb.jw
  %i.aun = load i32, ptr %i.dd, align 8, !tbaa !68
  %.not788 = icmp eq i32 %i.aun, 0
  br i1 %.not788, label %bb.jy, label %bb.ka

bb.jy:                                            ; preds = %bb.jx
  %i.auo = load i32, ptr %i.da, align 4, !tbaa !71
  %.not789 = icmp eq i32 %i.auo, 0
  br i1 %.not789, label %bb.jz, label %bb.ka

bb.jz:                                            ; preds = %bb.jy
  %i.aup = load i32, ptr %i.db, align 8, !tbaa !70
  %i.auq = icmp ne i32 %i.aup, 0
  br label %bb.ka

bb.ka:                                            ; preds = %bb.js, %bb.jz, %bb.jy, %bb.jx, %bb.jw
  %i.aur = phi i1 [ true, %bb.jy ], [ true, %bb.jx ], [ true, %bb.jw ], [ %i.auq, %bb.jz ], [ true, %bb.js ]
  %.not790 = icmp eq i32 %.pre, 0
  br i1 %.not790, label %bb.kb, label %bb.ki

bb.kb:                                            ; preds = %bb.ka
  %i.aus = load i32, ptr %i.dj, align 8, !tbaa !214
  %.not791 = icmp eq i32 %i.aus, 0
  br i1 %.not791, label %bb.kc, label %bb.ki

bb.kc:                                            ; preds = %bb.kb
  %i.aut = load i32, ptr %i.dl, align 8, !tbaa !213
  %.not792 = icmp eq i32 %i.aut, 0
  br i1 %.not792, label %bb.kd, label %bb.ki

bb.kd:                                            ; preds = %bb.kc
  %i.auu = load i32, ptr %i.dn, align 4, !tbaa !212
  %.not793 = icmp eq i32 %i.auu, 0
  br i1 %.not793, label %bb.ke, label %bb.ki

bb.ke:                                            ; preds = %bb.kd
  %i.auv = load i32, ptr %i.do, align 4, !tbaa !215
  %.not794 = icmp eq i32 %i.auv, 0
  br i1 %.not794, label %bb.kf, label %bb.ki

bb.kf:                                            ; preds = %bb.ke
  %i.auw = load i32, ptr %i.dk, align 8, !tbaa !217
  %.not795 = icmp eq i32 %i.auw, 0
  br i1 %.not795, label %bb.kg, label %bb.ki

bb.kg:                                            ; preds = %bb.kf
  %i.aux = load i32, ptr %i.di, align 4, !tbaa !216
  %.not796 = icmp eq i32 %i.aux, 0
  br i1 %.not796, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %bb.kg
  %i.auy = load i32, ptr %i.bn, align 8, !tbaa !209
  %i.auz = icmp ne i32 %i.auy, 0
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %bb.kg, %bb.kf, %bb.ke, %bb.kd, %bb.kc, %bb.kb, %bb.ka
  %i.ava = phi i1 [ true, %bb.kg ], [ true, %bb.kf ], [ true, %bb.ke ], [ true, %bb.kd ], [ true, %bb.kc ], [ true, %bb.kb ], [ true, %bb.ka ], [ %i.auz, %bb.kh ] ; 2 uses
  %or.cond8 = select i1 %i.aur, i1 %i.ava, i1 false
  br i1 %or.cond8, label %bb.kj, label %bb.kk

bb.kj:                                            ; preds = %bb.ki
  %i.avb = and i1 %spec.select, %.not783          ; 2 uses
  %i.avc = select i1 %i.avb, i32 24, i32 16
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef %i.avc, ptr noundef nonnull @.str.22) #16
end_hunk_0
begin_hunk_1_@decode_frame:bb.a
  %i.dru = select <8 x i1> %i.drt, <8 x float> splat (float 6.553500e+04), <8 x float> %i.drs
  %i.drv = fptoui <8 x float> %i.dru to <8 x i16>
  store <8 x i16> %i.drv, ptr %i.drp, align 2, !tbaa !60
  %index.next3512 = add nuw i64 %index3510, 8     ; 2 uses
  %i.drw = icmp eq i64 %index.next3512, %n.vec3506
  br i1 %i.drw, label %middle.block3513, label %vector.body3509, !llvm.loop !194

middle.block3513:                                 ; preds = %vector.body3509
  br i1 %cmp.n3514, label %._crit_edge1671, label %scalar.ph3503.preheader

scalar.ph3503.preheader:                          ; preds = %.preheader, %middle.block3513
  %indvars.iv2028.ph = phi i64 [ 0, %.preheader ], [ %n.vec3506, %middle.block3513 ]
  br label %scalar.ph3503

scalar.ph3503:                                    ; preds = %scalar.ph3503.preheader, %scalar.ph3503
  %indvars.iv2028 = phi i64 [ %indvars.iv.next2029, %scalar.ph3503 ], [ %indvars.iv2028.ph, %scalar.ph3503.preheader ] ; 2 uses
  %i.drx = getelementptr inbounds nuw [2 x i8], ptr %.01673, i64 %indvars.iv2028 ; 2 uses
  %i.dry = load i16, ptr %i.drx, align 2, !tbaa !60
  %i.drz = uitofp i16 %i.dry to float
  %i.dsa = fdiv nsz float %i.drz, %i.drn
  %i.dsb = fmul nsz float %i.dsa, 6.553500e+04    ; 2 uses
  %.inv = fcmp nsz oge float %i.dsb, 6.553500e+04
  %spec.select833907 = select i1 %.inv, float 6.553500e+04, float %i.dsb
  %spec.select833 = fptoui float %spec.select833907 to i16
  store i16 %spec.select833, ptr %i.drx, align 2, !tbaa !60
  %indvars.iv.next2029 = add nuw nsw i64 %indvars.iv2028, 1 ; 2 uses
  %exitcond2032.not = icmp eq i64 %indvars.iv.next2029, %wide.trip.count2031
  br i1 %exitcond2032.not, label %._crit_edge1671, label %scalar.ph3503, !llvm.loop !195

._crit_edge1671:                                  ; preds = %scalar.ph3503, %middle.block3513
  %i.dsc = getelementptr inbounds [2 x i8], ptr %.01673, i64 %.0725.lcssa2196
  %i.dsd = add nuw nsw i32 %.211672, 1            ; 2 uses
  %exitcond2033.not = icmp eq i32 %i.dsd, %i.drj
  br i1 %exitcond2033.not, label %.loopexit, label %.preheader, !llvm.loop !196

.loopexit:                                        ; preds = %._crit_edge1671, %bb.rx, %.preheader.lr.ph, %bb.rw, %bb.rv, %bb.ru
  %i.dse = call i32 @ff_decode_exif_attach_ifd(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.p) #16 ; 2 uses
  %i.dsf = icmp slt i32 %i.dse, 0
  br i1 %i.dsf, label %bb.ry, label %bb.rz

bb.ry:                                            ; preds = %.loopexit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.dsg = call i32 @av_strerror(i32 noundef range(i32 -2147483648, 0) %i.dse, ptr noundef nonnull %i.m, i64 noundef 64) #16 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.m) #16
  br label %bb.rz

bb.rz:                                            ; preds = %bb.ry, %.loopexit
  store i32 1, ptr %2, align 4, !tbaa !33
  %i.dsh = load i32, ptr %i.s, align 8, !tbaa !50
  br label %.loopexit973

.loopexit973:                                     ; preds = %free_geotags.exit, %.thread902, %.thread885, %bb.jg, %tiff_decode_tag.exit.thread, %bb.li, %bb.lj, %bb.ku, %bb.kq, %bb.kk, %bb.jr, %bb.kj, %bb.rz, %bb.lh, %bb.lf, %bb.kz, %bb.jv, %bb.iv, %bb.is, %bb.iq, %bb.ij, %bb.h, %bb.e
  %.10 = phi i32 [ %i.ah, %bb.e ], [ -1094995529, %bb.h ], [ -541478725, %bb.ij ], [ -1094995529, %.thread885 ], [ -1094995529, %bb.is ], [ -1094995529, %bb.iv ], [ -1094995529, %bb.iq ], [ %i.anu, %bb.jg ], [ %.15.i.ph, %tiff_decode_tag.exit.thread ], [ %i.avd, %bb.kk ], [ -1094995529, %bb.kq ], [ -1094995529, %bb.kz ], [ -1094995529, %bb.ku ], [ -1163346256, %bb.lh ], [ -1163346256, %bb.lf ], [ %.9.ph, %.thread902 ], [ %i.dsh, %bb.rz ], [ -1094995529, %bb.kj ], [ -1094995529, %bb.jv ], [ -1163346256, %bb.jr ], [ %i.awt, %bb.lj ], [ %i.awt, %bb.li ], [ -1094995529, %free_geotags.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  ret i32 %.10
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @tiff_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 10 uses
  tail call fastcc void @free_geotags(ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 132576
  tail call void @av_exif_free(ptr noundef nonnull %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 132504
  tail call void @ff_lzw_decode_close(ptr noundef nonnull %i.d) #16
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 132536
  tail call void @av_freep(ptr noundef nonnull %i.e) #16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 132544
  store i32 0, ptr %i.f, align 8, !tbaa !274
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 132552
  tail call void @av_freep(ptr noundef nonnull %i.g) #16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 132560
  store i32 0, ptr %i.h, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_frame_free(ptr noundef nonnull %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @av_packet_free(ptr noundef nonnull %i.j) #16
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  tail call void @avcodec_free_context(ptr noundef nonnull %i.k) #16
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @ff_lzw_decode_open(ptr noundef) local_unnamed_addr #2

declare void @ff_ccitt_unpack_init() local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare ptr @av_packet_alloc() local_unnamed_addr #2

declare ptr @avcodec_alloc_context3(ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_open2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @av_exif_free(ptr noundef) local_unnamed_addr #2

declare i32 @av_exif_parse_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @ff_tdecode_header(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_geotags(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 132564 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 132568
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132568
  tail call void @av_freep(ptr noundef nonnull %i.e) #16
  store i32 0, ptr %i.a, align 4, !tbaa !63
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.h) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !63
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !0
}

declare i32 @ff_tget_short(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_tget_long(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_dict_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @camera_xyz_coeff(ptr nofree noundef writeonly captures(none) initializes((1356, 1368)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
.preheader2:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load double, ptr %i.b, align 8, !tbaa !76 ; 2 uses
  %i.f = load double, ptr %i.c, align 8, !tbaa !76 ; 2 uses
  %i.g = load double, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %i.h = insertelement <2 x double> poison, double %i.e, i64 0
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %i.j = fmul nsz <2 x double> %i.i, <double f0x3FDA65A140000000, double f0x3FD6E29740000000>
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> <double f0x3FCB38CDA0000000, double f0x3FE6E29740000000>, <2 x double> %i.j)
  %i.n = insertelement <2 x double> poison, double %i.g, i64 0
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> <double f0x3F93CC4AC0000000, double f0x3FBE836EC0000000>, <2 x double> %i.m) ; 2 uses
  %i.q = fmul nsz double %i.e, f0x3FC71819E0000000
  %i.r = tail call nsz double @llvm.fmuladd.f64(double %i.f, double f0x3FB279AAE0000000, double %i.q)
  %i.s = tail call nsz double @llvm.fmuladd.f64(double %i.g, double f0x3FEE684280000000, double %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1356
  %i.u = load <4 x double>, ptr %1, align 8, !tbaa !76 ; 3 uses
  %i.v = shufflevector <4 x double> %i.u, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.w = fmul nsz <2 x double> %i.v, splat (double f0x3FDA65A140000000)
  %i.x = load <2 x double>, ptr %i.a, align 8, !tbaa !76
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.z = shufflevector <4 x double> %i.u, <4 x double> %i.y, <2 x i32> <i32 1, i32 4> ; 3 uses
  %i.aa = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> splat (double f0x3FCB38CDA0000000), <2 x double> %i.w)
  %i.ab = shufflevector <4 x double> %i.u, <4 x double> %i.y, <2 x i32> <i32 2, i32 5> ; 3 uses
  %i.ac = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> splat (double f0x3F93CC4AC0000000), <2 x double> %i.aa)
  %i.ad = fmul nsz <2 x double> %i.v, splat (double f0x3FD6E29740000000)
  %i.ae = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> splat (double f0x3FE6E29740000000), <2 x double> %i.ad)
  %i.af = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> splat (double f0x3FBE836EC0000000), <2 x double> %i.ae)
  %i.ag = fmul nsz <2 x double> %i.v, splat (double f0x3FC71819E0000000)
  %i.ah = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> splat (double f0x3FB279AAE0000000), <2 x double> %i.ag)
  %i.ai = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> splat (double f0x3FEE684280000000), <2 x double> %i.ah)
  %i.aj = fadd nsz <2 x double> %i.ac, %i.af
  %i.ak = fadd nsz <2 x double> %i.aj, %i.ai      ; 2 uses
  %i.al = fcmp nsz une <2 x double> %i.ak, zeroinitializer
  %i.am = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.ak
  %i.an = select <2 x i1> %i.al, <2 x double> %i.am, <2 x double> splat (double 1.000000e+00)
  %i.ao = fptrunc <2 x double> %i.an to <2 x float>
  store <2 x float> %i.ao, ptr %i.t, align 4, !tbaa !62
  %shift = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x double> %i.p, %shift
  %i.ap = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aq = fadd nsz double %i.ap, %i.s             ; 2 uses
  %i.ar = fcmp nsz une double %i.aq, 0.000000e+00
  %i.as = fdiv nsz double 1.000000e+00, %i.aq
  %i.at = select i1 %i.ar, double %i.as, double 1.000000e+00
  %i.au = fptrunc nsz double %i.at to float
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1364
  store float %i.au, ptr %i.av, align 4, !tbaa !62
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2) i32 @init_image(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55   ; 4 uses
  %i.c = icmp ugt i32 %i.b, 128
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.pre158 = load i32, ptr %.phi.trans.insert157, align 4, !tbaa !56 ; 4 uses
  %i.d = icmp ugt i32 %.pre158, 9
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  br i1 %or.cond, label %._crit_edge156, label %bb.b

._crit_edge156:                                   ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.f, i32 noundef 16, ptr noundef nonnull @.str.1820, i32 noundef %i.b, i32 noundef %.pre158) #16
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = mul nsw i32 %i.h, 10000
  %i.j = mul nuw nsw i32 %i.b, 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.l = load i32, ptr %i.k, align 8, !tbaa !59
  %i.m = mul nsw i32 %i.l, 100000
  %i.n = add nuw nsw i32 %.pre158, %i.j
  %i.o = add i32 %i.n, %i.i
  %i.p = add i32 %i.o, %i.m
  switch i32 %i.p, label %bb.aw [
    i32 11, label %bb.c
    i32 21, label %bb.e
    i32 41, label %bb.e
    i32 81, label %bb.f
    i32 121, label %bb.g
    i32 100081, label %bb.h
    i32 100101, label %bb.n
    i32 100121, label %bb.n
    i32 100141, label %bb.n
    i32 100161, label %bb.n
    i32 243, label %bb.t
    i32 161, label %bb.af
    i32 162, label %bb.ag
    i32 322, label %bb.ah
    i32 324, label %bb.ai
    i32 405, label %bb.aj
    i32 483, label %bb.am
    i32 644, label %bb.an
    i32 10243, label %bb.ao
    i32 10324, label %bb.ap
    i32 10483, label %bb.aq
    i32 10644, label %bb.ar
    i32 963, label %bb.as
    i32 1284, label %bb.at
    i32 10963, label %bb.au
    i32 11284, label %bb.av
  ]

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.r = load i32, ptr %i.q, align 8, !tbaa !73
  %.not132 = icmp eq i32 %i.r, 0
  br i1 %.not132, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  store i32 10, ptr %i.u, align 8, !tbaa !82
  br label %bb.ax

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  store i32 11, ptr %i.x, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.z = load i32, ptr %i.y, align 8, !tbaa !73
  %.not133 = icmp ne i32 %i.z, 0
  br label %bb.ax

bb.f:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !73
  %.not131 = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not131, i32 8, i32 11       ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  store i32 %i.ac, ptr %i.af, align 8, !tbaa !82
  br label %bb.ax

bb.g:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 136
  store i32 166, ptr %i.ai, align 8, !tbaa !82
  br label %bb.ax

bb.h:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !67 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43 ; 9 uses
  switch i32 %i.ak, label %bb.m [
    i32 33620224, label %bb.i
    i32 65794, label %bb.j
    i32 16777729, label %bb.k
    i32 16908289, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 140, ptr %i.an, align 8, !tbaa !82
  br label %bb.ax

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 139, ptr %i.ao, align 8, !tbaa !82
  br label %bb.ax

bb.k:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 141, ptr %i.ap, align 8, !tbaa !82
  br label %bb.ax

bb.l:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  store i32 142, ptr %i.aq, align 8, !tbaa !82
  br label %bb.ax

bb.m:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.am, i32 noundef 16, ptr noundef nonnull @.str.1821, i32 noundef %i.ak) #16
  br label %.loopexit

bb.n:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43 ; 9 uses
  switch i32 %i.as, label %bb.s [
    i32 33620224, label %bb.o
    i32 65794, label %bb.p
    i32 16777729, label %bb.q
    i32 16908289, label %bb.r
  ]

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  store i32 145, ptr %i.av, align 8, !tbaa !82
  br label %bb.ax

bb.p:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  store i32 143, ptr %i.aw, align 8, !tbaa !82
  br label %bb.ax

bb.q:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  store i32 147, ptr %i.ax, align 8, !tbaa !82
  br label %bb.ax

bb.r:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 136
  store i32 149, ptr %i.ay, align 8, !tbaa !82
  br label %bb.ax

bb.s:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.au, i32 noundef 16, ptr noundef nonnull @.str.1821, i32 noundef %i.as) #16
  br label %.loopexit

bb.t:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !57
  %i.bb = icmp eq i32 %i.ba, 6
  br i1 %i.bb, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !33
  switch i32 %i.bd, label %.thread146 [
    i32 1, label %bb.v
    i32 2, label %bb.x
end_hunk_1
