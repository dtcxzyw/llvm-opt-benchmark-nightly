Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@JS_CallInternal:bb.a
JS_FreeValueRT.exit4655:                          ; preds = %bb.jr, %bb.js, %bb.jt
  %i.bkh = phi ptr [ %i.bjz, %bb.jr ], [ %i.bjz, %bb.js ], [ %.pre1801, %bb.jt ]
  %i.bki = load i64, ptr %i.bhi, align 8          ; 2 uses
  %i.bkj = load i64, ptr %i.bhk, align 8          ; 2 uses
  %i.bkk = trunc i64 %i.bkj to i32
  %i.bkl = icmp ugt i32 %i.bkk, -10
  br i1 %i.bkl, label %bb.ju, label %JS_FreeValueRT.exit4656

bb.ju:                                            ; preds = %JS_FreeValueRT.exit4655
  %i.bkm = inttoptr i64 %i.bki to ptr
  %i.bkn = getelementptr inbounds i8, ptr %i.bkm, i64 -4 ; 2 uses
  %i.bko = load i32, ptr %i.bkn, align 4, !tbaa !191 ; 2 uses
  %i.bkp = add nsw i32 %i.bko, -1
  store i32 %i.bkp, ptr %i.bkn, align 4, !tbaa !191
  %i.bkq = icmp slt i32 %i.bko, 2
  br i1 %i.bkq, label %bb.jv, label %JS_FreeValueRT.exit4656

bb.jv:                                            ; preds = %bb.ju
  call fastcc void @js_free_value_rt(ptr noundef %i.bkh, i64 %i.bki, i64 %i.bkj), !inline_history !370
  br label %JS_FreeValueRT.exit4656

JS_FreeValueRT.exit4656:                          ; preds = %JS_FreeValueRT.exit4655, %bb.ju, %bb.jv
  store i64 %.sroa.01347.sroa.0.1.in, ptr %i.bhn, align 8, !tbaa !218
  store i64 %.sroa.43.1, ptr %i.bhp, align 8, !tbaa !240
  %i.bkr = getelementptr inbounds nuw i8, ptr %.10, i64 3
  br label %.backedge.backedge

bb.jw:                                            ; preds = %.backedge
  %i.bks = getelementptr inbounds i8, ptr %.31, i64 -32 ; 2 uses
  %i.bkt = getelementptr inbounds i8, ptr %.31, i64 -16 ; 3 uses
  %i.bku = load i64, ptr %i.bks, align 8
  %i.bkv = getelementptr inbounds i8, ptr %.31, i64 -24 ; 2 uses
  %i.bkw = load i64, ptr %i.bkv, align 8
  %i.bkx = call fastcc { i64, i64 } @js_regexp_constructor_internal(ptr noundef %.0, i64 0, i64 3, i64 %i.bku, i64 %i.bkw, ptr noundef nonnull byval(%struct.JSValue) align 8 %i.bkt) ; 2 uses
  %i.bky = extractvalue { i64, i64 } %i.bkx, 0
  %i.bkz = extractvalue { i64, i64 } %i.bkx, 1    ; 2 uses
  store i64 %i.bky, ptr %i.bks, align 8, !tbaa !218
  store i64 %i.bkz, ptr %i.bkv, align 8, !tbaa !240
  %i.bla = and i64 %i.bkz, 4294967295
  %i.blb = icmp eq i64 %i.bla, 6
  br i1 %i.blb, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.blc = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.jy:                                            ; preds = %.backedge
  %i.bld = getelementptr inbounds i8, ptr %.31, i64 -16 ; 3 uses
  %i.ble = load i64, ptr %i.bld, align 8          ; 2 uses
  %i.blf = getelementptr inbounds i8, ptr %.31, i64 -8 ; 3 uses
  %i.blg = load i64, ptr %i.blf, align 8          ; 3 uses
  %i.blh = and i64 %i.blg, 4294967295
  %i.bli = icmp eq i64 %i.blh, 4294967295
  br i1 %i.bli, label %bb.jz, label %bb.kd

bb.jz:                                            ; preds = %bb.jy
  %i.blj = inttoptr i64 %i.ble to ptr             ; 2 uses
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 18
  %i.bll = load i16, ptr %i.blk, align 2, !tbaa !276
  %i.blm = icmp eq i16 %i.bll, 51
  br i1 %i.blm, label %bb.ka, label %bb.kb, !prof !192

bb.ka:                                            ; preds = %bb.jz
  %i.bln = call fastcc { i64, i64 } @js_proxy_getPrototypeOf(ptr noundef %.0, i64 %i.ble, i64 %i.blg), !inline_history !539 ; 2 uses
  %i.blo = extractvalue { i64, i64 } %i.bln, 0
  %i.blp = extractvalue { i64, i64 } %i.bln, 1
  br label %JS_GetPrototype.exit3863

bb.kb:                                            ; preds = %bb.jz
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blj, i64 24
  %i.blr = load ptr, ptr %i.blq, align 8, !tbaa !316
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 48
  %i.blt = load ptr, ptr %i.bls, align 8, !tbaa !336 ; 3 uses
  %.not.i3860 = icmp eq ptr %i.blt, null
  br i1 %.not.i3860, label %JS_GetPrototype.exit3863.thread, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.blu = ptrtoint ptr %i.blt to i64
  %i.blv = getelementptr inbounds i8, ptr %i.blt, i64 -4 ; 2 uses
  %i.blw = load i32, ptr %i.blv, align 4, !tbaa !191
  %i.blx = add nsw i32 %i.blw, 1
  store i32 %i.blx, ptr %i.blv, align 4, !tbaa !191
  br label %JS_GetPrototype.exit3863.thread

bb.kd:                                            ; preds = %bb.jy
  %i.bly = trunc i64 %i.blg to i32
  %switch.tableidx6106 = add i32 %i.bly, 9        ; 4 uses
  %i.blz = icmp ult i32 %switch.tableidx6106, 18
  %switch.shifted6109 = lshr i32 198159, %switch.tableidx6106
  %switch.lobit6110 = trunc i32 %switch.shifted6109 to i1
  %or.cond6117 = select i1 %i.blz, i1 %switch.lobit6110, i1 false
  br i1 %or.cond6117, label %switch.lookup6108, label %JS_GetPrototype.exit3863.thread

switch.lookup6108:                                ; preds = %bb.kd
  %i.bma = zext nneg i32 %switch.tableidx6106 to i64
  %switch.gep6111 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.JS_SetPropertyInternal2, i64 %i.bma
  %switch.load6112 = load i16, ptr %switch.gep6111, align 2
  %switch.ext6113 = zext i16 %switch.load6112 to i64
  %i.bmb = zext nneg i32 %switch.tableidx6106 to i64
  %switch.gep6114 = getelementptr inbounds nuw [2 x i8], ptr @switch.table.JS_GetPrototypeFree.124, i64 %i.bmb
  %switch.load6115 = load i16, ptr %switch.gep6114, align 2
  %switch.ext6116 = zext i16 %switch.load6115 to i64
  %i.bmc = load ptr, ptr %i.gm, align 8, !tbaa !350 ; 2 uses
  %i.bmd = getelementptr inbounds nuw i8, ptr %i.bmc, i64 %switch.ext6113
  %.sroa.06.0.copyload10.i4663 = load i64, ptr %i.bmd, align 8, !tbaa !218 ; 3 uses
  %.sroa.8.0..sroa_idx17.i4664 = getelementptr inbounds nuw i8, ptr %i.bmc, i64 %switch.ext6116
  %.sroa.8.0.copyload18.i4665 = load i64, ptr %.sroa.8.0..sroa_idx17.i4664, align 8, !tbaa !240 ; 3 uses
  %i.bme = trunc i64 %.sroa.8.0.copyload18.i4665 to i32
  %i.bmf = icmp ugt i32 %i.bme, -10
  br i1 %i.bmf, label %bb.ke, label %JS_GetPrototype.exit3863

bb.ke:                                            ; preds = %switch.lookup6108
  %i.bmg = inttoptr i64 %.sroa.06.0.copyload10.i4663 to ptr
  %i.bmh = getelementptr inbounds i8, ptr %i.bmg, i64 -4 ; 2 uses
  %i.bmi = load i32, ptr %i.bmh, align 4, !tbaa !191
  %i.bmj = add nsw i32 %i.bmi, 1
  store i32 %i.bmj, ptr %i.bmh, align 4, !tbaa !191
  br label %JS_GetPrototype.exit3863

JS_GetPrototype.exit3863:                         ; preds = %bb.ke, %switch.lookup6108, %bb.ka
  %.sroa.020.1.i3853 = phi i64 [ %i.blo, %bb.ka ], [ %.sroa.06.0.copyload10.i4663, %bb.ke ], [ %.sroa.06.0.copyload10.i4663, %switch.lookup6108 ]
  %.sroa.6.1.i3855 = phi i64 [ %i.blp, %bb.ka ], [ %.sroa.8.0.copyload18.i4665, %bb.ke ], [ %.sroa.8.0.copyload18.i4665, %switch.lookup6108 ] ; 2 uses
  %i.bmk = and i64 %.sroa.6.1.i3855, 4294967295
  %i.bml = icmp eq i64 %i.bmk, 6
  br i1 %i.bml, label %JS_CheckDefineGlobalVar.exit.loopexit608, label %JS_GetPrototype.exit3863.thread

JS_GetPrototype.exit3863.thread:                  ; preds = %bb.kd, %bb.kb, %bb.kc, %JS_GetPrototype.exit3863
  %.sroa.020.0.insert.insert.i3857241 = phi i64 [ %.sroa.020.1.i3853, %JS_GetPrototype.exit3863 ], [ 0, %bb.kb ], [ %i.blu, %bb.kc ], [ 0, %bb.kd ]
  %.sroa.6.1.i3855240 = phi i64 [ %.sroa.6.1.i3855, %JS_GetPrototype.exit3863 ], [ 2, %bb.kb ], [ -1, %bb.kc ], [ 2, %bb.kd ]
  %i.bmm = load i64, ptr %i.bld, align 8          ; 2 uses
  %i.bmn = load i64, ptr %i.blf, align 8          ; 2 uses
  %i.bmo = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.bmp = trunc i64 %i.bmn to i32
  %i.bmq = icmp ugt i32 %i.bmp, -10
  br i1 %i.bmq, label %bb.kf, label %JS_FreeValueRT.exit4673

bb.kf:                                            ; preds = %JS_GetPrototype.exit3863.thread
  %i.bmr = inttoptr i64 %i.bmm to ptr
  %i.bms = getelementptr inbounds i8, ptr %i.bmr, i64 -4 ; 2 uses
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !191 ; 2 uses
  %i.bmu = add nsw i32 %i.bmt, -1
  store i32 %i.bmu, ptr %i.bms, align 4, !tbaa !191
  %i.bmv = icmp slt i32 %i.bmt, 2
  br i1 %i.bmv, label %bb.kg, label %JS_FreeValueRT.exit4673

bb.kg:                                            ; preds = %bb.kf
  call fastcc void @js_free_value_rt(ptr noundef %i.bmo, i64 %i.bmm, i64 %i.bmn), !inline_history !370
  br label %JS_FreeValueRT.exit4673

JS_FreeValueRT.exit4673:                          ; preds = %JS_GetPrototype.exit3863.thread, %bb.kf, %bb.kg
  store i64 %.sroa.020.0.insert.insert.i3857241, ptr %i.bld, align 8, !tbaa !218
  store i64 %.sroa.6.1.i3855240, ptr %i.blf, align 8, !tbaa !240
  %i.bmw = getelementptr inbounds nuw i8, ptr %.10, i64 1
  br label %.backedge.backedge

bb.kh:                                            ; preds = %.backedge
  store ptr %.10, ptr %i.fn, align 8, !tbaa !468
  %i.bmx = getelementptr inbounds i8, ptr %.31, i64 -32 ; 3 uses
  %i.bmy = getelementptr inbounds i8, ptr %.31, i64 -16 ; 3 uses
  %i.bmz = load i64, ptr %i.bmx, align 8
  %i.bna = getelementptr inbounds i8, ptr %.31, i64 -24 ; 3 uses
  %i.bnb = load i64, ptr %i.bna, align 8
  %i.bnc = load i64, ptr %i.bmy, align 8          ; 2 uses
  %i.bnd = getelementptr inbounds i8, ptr %.31, i64 -8 ; 2 uses
  %i.bne = load i64, ptr %i.bnd, align 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #49
  %i.bnf = load ptr, ptr %i.fc, align 8, !tbaa !232 ; 2 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 1264
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !264 ; 3 uses
  %.not.i4704 = icmp eq ptr %i.bnh, null
  br i1 %.not.i4704, label %.split.i.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.kh
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 16
  %i.bnj = load i64, ptr %i.bni, align 8, !tbaa !537
  %i.bnk = and i64 %i.bnj, 4294967295
  %.not15.i = icmp eq i64 %i.bnk, 4294967295
  br i1 %.not15.i, label %bb.ki, label %.split.i.thread

bb.ki:                                            ; preds = %.preheader.i
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnh, i64 8
  %i.bnm = load ptr, ptr %i.bnl, align 8, !tbaa !218 ; 2 uses
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnm, i64 18
  %i.bno = load i16, ptr %i.bnn, align 2, !tbaa !276
  %i.bnp = zext i16 %i.bno to i32
  %i.bnq = add nsw i32 %i.bnp, -13                ; 2 uses
  %i.bnr = call i32 @llvm.fshl.i32(i32 %i.bnq, i32 %i.bnq, i32 31)
  switch i32 %i.bnr, label %.split.i.thread [
    i32 21, label %bb.kj
    i32 2, label %bb.kj
    i32 0, label %bb.kj
    i32 23, label %bb.kj
  ]

bb.kj:                                            ; preds = %bb.ki, %bb.ki, %bb.ki, %bb.ki
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bnm, i64 48
  %i.bnt = load ptr, ptr %i.bns, align 8, !tbaa !218
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 88
  %i.bnv = load i32, ptr %i.bnu, align 8, !tbaa !469 ; 6 uses
  %i.bnw = icmp slt i32 %i.bnv, 242               ; 2 uses
  br i1 %i.bnw, label %JS_GetScriptOrModuleName.exit, label %.split158.i.thread

.split158.i.thread:                               ; preds = %bb.kj
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnf, i64 1104
  %i.bny = load ptr, ptr %i.bnx, align 8, !tbaa !297
  %i.bnz = zext nneg i32 %i.bnv to i64            ; 2 uses
  %i.boa = getelementptr inbounds nuw [8 x i8], ptr %i.bny, i64 %i.bnz
  %i.bob = load ptr, ptr %i.boa, align 8, !tbaa !299
  %i.boc = getelementptr inbounds i8, ptr %i.bob, i64 -4 ; 2 uses
  %i.bod = load i32, ptr %i.boc, align 4, !tbaa !191
  %i.boe = add nsw i32 %i.bod, 1
  store i32 %i.boe, ptr %i.boc, align 4, !tbaa !191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #49
  br label %JS_AtomToValue.exit

JS_GetScriptOrModuleName.exit:                    ; preds = %bb.kj
  %i.bof = icmp eq i32 %i.bnv, 0
  br i1 %i.bof, label %.split.i.thread, label %.split158.i

.split158.i:                                      ; preds = %JS_GetScriptOrModuleName.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #49
  %i.bog = icmp slt i32 %i.bnv, 0
  br i1 %i.bog, label %JS_AtomToValue.exit.thread, label %.split158.i._crit_edge

.split158.i._crit_edge:                           ; preds = %.split158.i
  %.pre1831 = zext nneg i32 %i.bnv to i64
  br label %JS_AtomToValue.exit

JS_AtomToValue.exit.thread:                       ; preds = %.split158.i
  %i.boh = and i32 %i.bnv, 2147483647
  %i.boi = call i64 @u32toa(ptr noundef nonnull %i.k, i32 noundef %i.boh) #49, !inline_history !1226
  %i.boj = trunc i64 %i.boi to i32
  %i.bok = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef nonnull %.0, ptr noundef nonnull %i.k, i32 noundef %i.boj), !inline_history !1226 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #49
  %i.bol = extractvalue { i64, i64 } %i.bok, 0
  %i.bom = extractvalue { i64, i64 } %i.bok, 1
  br label %.split.i

JS_AtomToValue.exit:                              ; preds = %.split158.i._crit_edge, %.split158.i.thread
  %.pre-phi1832 = phi i64 [ %.pre1831, %.split158.i._crit_edge ], [ %i.bnz, %.split158.i.thread ] ; 2 uses
  %i.bon = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 1104
  %i.bop = load ptr, ptr %i.boo, align 8, !tbaa !297
  %i.boq = getelementptr inbounds nuw [8 x i8], ptr %i.bop, i64 %.pre-phi1832
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !299 ; 3 uses
  %i.bos = load i64, ptr %i.bor, align 8
  %.mask.i.i = and i64 %i.bos, -4611686018427387904
  %i.bot = icmp eq i64 %.mask.i.i, 4611686018427387904
  %i.bou = getelementptr inbounds i8, ptr %i.bor, i64 -4 ; 2 uses
  %i.bov = load i32, ptr %i.bou, align 4, !tbaa !191
  %i.bow = add nsw i32 %i.bov, 1
  store i32 %i.bow, ptr %i.bou, align 4, !tbaa !191
  %.2793 = select i1 %i.bot, i64 -7, i64 -8       ; 3 uses
  %.pn553 = ptrtoint ptr %i.bor to i64            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #49
  br i1 %i.bnw, label %.split.i, label %bb.kk

bb.kk:                                            ; preds = %JS_AtomToValue.exit
  %i.box = load ptr, ptr %i.fc, align 8, !tbaa !232 ; 7 uses
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 1104
  %i.boz = load ptr, ptr %i.boy, align 8, !tbaa !297 ; 4 uses
  %i.bpa = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %.pre-phi1832
  %i.bpb = load ptr, ptr %i.bpa, align 8, !tbaa !299 ; 7 uses
  %i.bpc = getelementptr inbounds i8, ptr %i.bpb, i64 -4 ; 2 uses
  %i.bpd = load i32, ptr %i.bpc, align 4, !tbaa !191 ; 2 uses
  %i.bpe = add nsw i32 %i.bpd, -1
  store i32 %i.bpe, ptr %i.bpc, align 4, !tbaa !191
  %i.bpf = icmp sgt i32 %i.bpd, 1
  br i1 %i.bpf, label %.split.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.bpg = load i64, ptr %i.bpb, align 8          ; 2 uses
  %.not.i5289 = icmp ugt i64 %i.bpg, -4611686018427387905
  br i1 %.not.i5289, label %._crit_edge1824, label %bb.km

._crit_edge1824:                                  ; preds = %bb.kl
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpb, i64 8
  %i.bpi = load i32, ptr %i.bph, align 8, !tbaa !249 ; 2 uses
  %.pre1833 = zext i32 %i.bpi to i64
  br label %bb.kp

bb.km:                                            ; preds = %bb.kl
  %i.bpj = lshr i64 %i.bpg, 32
  %i.bpk = trunc nuw i64 %i.bpj to i32
  %i.bpl = and i32 %i.bpk, 268435455
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.box, i64 1080
  %i.bpn = load i32, ptr %i.bpm, align 8, !tbaa !242
  %i.bpo = add nsw i32 %i.bpn, -1
  %i.bpp = and i32 %i.bpl, %i.bpo
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.box, i64 1096
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !243
  %i.bps = zext nneg i32 %i.bpp to i64
  %i.bpt = getelementptr inbounds nuw [4 x i8], ptr %i.bpr, i64 %i.bps ; 2 uses
  %i.bpu = load i32, ptr %i.bpt, align 4, !tbaa !191 ; 2 uses
  %i.bpv = zext i32 %i.bpu to i64                 ; 2 uses
  %i.bpw = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %i.bpv
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !299 ; 3 uses
  %i.bpy = icmp eq ptr %i.bpx, %i.bpb
  br i1 %i.bpy, label %bb.kn, label %.preheader586

bb.kn:                                            ; preds = %bb.km
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpx, i64 8
  %i.bqa = load i32, ptr %i.bpz, align 8, !tbaa !249
  store i32 %i.bqa, ptr %i.bpt, align 4, !tbaa !191
  br label %bb.kp

.preheader586:                                    ; preds = %bb.km, %.preheader586
  %.0.i5290 = phi ptr [ %i.bqf, %.preheader586 ], [ %i.bpx, %bb.km ] ; 2 uses
  %i.bqb = getelementptr inbounds nuw i8, ptr %.0.i5290, i64 8
  %i.bqc = load i32, ptr %i.bqb, align 8, !tbaa !249 ; 2 uses
  %i.bqd = zext i32 %i.bqc to i64                 ; 2 uses
  %i.bqe = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %i.bqd
  %i.bqf = load ptr, ptr %i.bqe, align 8, !tbaa !299 ; 3 uses
  %i.bqg = icmp eq ptr %i.bqf, %i.bpb
  br i1 %i.bqg, label %bb.ko, label %.preheader586

bb.ko:                                            ; preds = %.preheader586
  %i.bqh = getelementptr inbounds nuw i8, ptr %.0.i5290, i64 8
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqf, i64 8
  %i.bqj = load i32, ptr %i.bqi, align 8, !tbaa !249
  store i32 %i.bqj, ptr %i.bqh, align 8, !tbaa !249
  br label %bb.kp

bb.kp:                                            ; preds = %._crit_edge1824, %bb.ko, %bb.kn
  %.pre-phi1834 = phi i64 [ %.pre1833, %._crit_edge1824 ], [ %i.bqd, %bb.ko ], [ %i.bpv, %bb.kn ]
  %.1.i5291 = phi i32 [ %i.bpi, %._crit_edge1824 ], [ %i.bqc, %bb.ko ], [ %i.bpu, %bb.kn ]
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.box, i64 1112 ; 2 uses
  %i.bql = load i32, ptr %i.bqk, align 8, !tbaa !246
  %i.bqm = zext i32 %i.bql to i64
  %i.bqn = shl nuw nsw i64 %i.bqm, 1
  %i.bqo = or disjoint i64 %i.bqn, 1
  %i.bqp = inttoptr i64 %i.bqo to ptr
  %i.bqq = getelementptr inbounds nuw [8 x i8], ptr %i.boz, i64 %.pre-phi1834
  store ptr %i.bqp, ptr %i.bqq, align 8, !tbaa !299
  store i32 %.1.i5291, ptr %i.bqk, align 8, !tbaa !246
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bpb, i64 16 ; 2 uses
  %i.bqs = load ptr, ptr %i.bqr, align 8, !tbaa !357
  %.not35.i = icmp eq ptr %i.bqs, null
  br i1 %.not35.i, label %JS_FreeAtomStruct.exit, label %bb.kq, !prof !324

bb.kq:                                            ; preds = %bb.kp
  call fastcc void @reset_weak_ref(ptr noundef nonnull %i.box, ptr noundef nonnull %i.bqr), !inline_history !1227
  br label %JS_FreeAtomStruct.exit

JS_FreeAtomStruct.exit:                           ; preds = %bb.kp, %bb.kq
  call void @js_free_rt(ptr noundef nonnull %i.box, ptr noundef nonnull %i.bpb), !inline_history !1227
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.box, i64 1084 ; 2 uses
  %i.bqu = load i32, ptr %i.bqt, align 4, !tbaa !244
  %i.bqv = add nsw i32 %i.bqu, -1
  store i32 %i.bqv, ptr %i.bqt, align 4, !tbaa !244
  br label %.split.i

.split.i:                                         ; preds = %JS_AtomToValue.exit, %JS_AtomToValue.exit.thread, %JS_FreeAtomStruct.exit, %bb.kk
  %.sroa.10.0.i = phi i64 [ %.2793, %JS_FreeAtomStruct.exit ], [ %.2793, %bb.kk ], [ %i.bom, %JS_AtomToValue.exit.thread ], [ %.2793, %JS_AtomToValue.exit ] ; 2 uses
  %.sroa.071.sroa.0.0.insert.insert.i = phi i64 [ %.pn553, %JS_FreeAtomStruct.exit ], [ %.pn553, %bb.kk ], [ %i.bol, %JS_AtomToValue.exit.thread ], [ %.pn553, %JS_AtomToValue.exit ]
  %i.bqw = and i64 %.sroa.10.0.i, 4294967295
  %i.bqx = icmp eq i64 %i.bqw, 6
  br i1 %i.bqx, label %js_dynamic_import.exit.thread, label %.split.i.thread

.split.i.thread:                                  ; preds = %.preheader.i, %bb.ki, %bb.kh, %JS_GetScriptOrModuleName.exit, %.split.i
  %.sroa.071.sroa.0.0.insert.insert.i255 = phi i64 [ %.sroa.071.sroa.0.0.insert.insert.i, %.split.i ], [ 0, %JS_GetScriptOrModuleName.exit ], [ 0, %bb.kh ], [ 0, %bb.ki ], [ 0, %.preheader.i ] ; 5 uses
  %.sroa.10.0.i253 = phi i64 [ %.sroa.10.0.i, %.split.i ], [ 2, %JS_GetScriptOrModuleName.exit ], [ 2, %bb.kh ], [ 2, %bb.ki ], [ 2, %.preheader.i ] ; 5 uses
  %i.bqy = call fastcc { i64, i64 } @js_promise_new(ptr noundef nonnull %.0, i64 0, i64 3, ptr noundef nonnull %32), !inline_history !1228 ; 2 uses
  %i.bqz = extractvalue { i64, i64 } %i.bqy, 0
  %i.bra = extractvalue { i64, i64 } %i.bqy, 1    ; 2 uses
  %i.brb = and i64 %i.bra, 4294967295
  %i.brc = icmp eq i64 %i.brb, 6
  br i1 %i.brc, label %bb.kr, label %bb.ku

bb.kr:                                            ; preds = %.split.i.thread
  %i.brd = load ptr, ptr %i.fc, align 8, !tbaa !232
  %i.bre = trunc i64 %.sroa.10.0.i253 to i32
  %i.brf = icmp ugt i32 %i.bre, -10
  br i1 %i.brf, label %bb.ks, label %js_dynamic_import.exit.thread

bb.ks:                                            ; preds = %bb.kr
  %i.brg = inttoptr i64 %.sroa.071.sroa.0.0.insert.insert.i255 to ptr
  %i.brh = getelementptr inbounds i8, ptr %i.brg, i64 -4 ; 2 uses
  %i.bri = load i32, ptr %i.brh, align 4, !tbaa !191 ; 2 uses
  %i.brj = add nsw i32 %i.bri, -1
  store i32 %i.brj, ptr %i.brh, align 4, !tbaa !191
  %i.brk = icmp slt i32 %i.bri, 2
  br i1 %i.brk, label %bb.kt, label %js_dynamic_import.exit.thread

bb.kt:                                            ; preds = %bb.ks
  call fastcc void @js_free_value_rt(ptr noundef %i.brd, i64 %.sroa.071.sroa.0.0.insert.insert.i255, i64 %.sroa.10.0.i253), !inline_history !1229
  br label %js_dynamic_import.exit.thread

bb.ku:                                            ; preds = %.split.i.thread
  %i.brl = call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %.0, i64 %i.bmz, i64 %i.bnb, i32 noundef 0), !inline_history !1230 ; 2 uses
  %i.brm = extractvalue { i64, i64 } %i.brl, 0    ; 3 uses
  %i.brn = extractvalue { i64, i64 } %i.brl, 1    ; 4 uses
  %i.bro = and i64 %i.brn, 4294967295
  %i.brp = icmp eq i64 %i.bro, 6
  br i1 %i.brp, label %JS_FreeValue.exit4685, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %trunc554 = trunc i64 %i.bne to i32
  switch i32 %trunc554, label %bb.kw [
    i32 3, label %bb.lm
    i32 -1, label %bb.kx
  ]

bb.kw:                                            ; preds = %bb.kv
  %i.brq = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %.0, ptr noundef nonnull @.str.174), !inline_history !1231 ; 0 uses
  br label %JS_FreeValue.exit4685

bb.kx:                                            ; preds = %bb.kv
  %i.brr = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %.0, i64 %i.bnc, i64 %i.bne, i32 noundef 29, i64 %i.bnc, i64 %i.bne, i1 noundef zeroext false), !inline_history !1232 ; 2 uses
  %i.brs = extractvalue { i64, i64 } %i.brr, 0    ; 6 uses
  %i.brt = extractvalue { i64, i64 } %i.brr, 1    ; 6 uses
  %trunc555 = trunc i64 %i.brt to i32             ; 2 uses
  switch i32 %trunc555, label %bb.ky [
    i32 6, label %JS_FreeValue.exit4685
    i32 3, label %bb.lm
  ]

bb.ky:                                            ; preds = %bb.kx
  %i.bru = and i64 %i.brt, 4294967295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #49
  %i.brv = icmp eq i64 %i.bru, 4294967295
  br i1 %i.brv, label %bb.la, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.brw = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %.0, ptr noundef nonnull @.str.175), !inline_history !1231 ; 0 uses
  br label %bb.lx

bb.la:                                            ; preds = %bb.ky
  %i.brx = call { i64, i64 } @JS_NewObjectProto(ptr noundef nonnull %.0, i64 0, i64 2), !inline_history !1231 ; 2 uses
  %i.bry = extractvalue { i64, i64 } %i.brx, 0    ; 7 uses
  %i.brz = extractvalue { i64, i64 } %i.brx, 1    ; 8 uses
  %i.bsa = and i64 %i.brz, 4294967295
  %i.bsb = icmp eq i64 %i.bsa, 6
  br i1 %i.bsb, label %bb.lx, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.bsc = inttoptr i64 %i.brs to ptr             ; 2 uses
  %i.bsd = call fastcc i32 @JS_GetOwnPropertyNamesInternal(ptr noundef nonnull %.0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.p, ptr noundef %i.bsc, i32 noundef 17), !inline_history !1231
  %.not.i3867 = icmp eq i32 %i.bsd, 0
  br i1 %.not.i3867, label %.preheader584, label %bb.lx

.preheader584:                                    ; preds = %bb.lb
  %i.bse = load i32, ptr %i.p, align 4, !tbaa !191
  %.not1201 = icmp eq i32 %i.bse, 0
  br i1 %.not1201, label %._crit_edge1165, label %.lr.ph1164

bb.lc:                                            ; preds = %bb.lh
  %indvars.iv.next1712 = add nuw nsw i64 %indvars.iv1711, 1 ; 2 uses
  %i.bsf = load i32, ptr %i.p, align 4, !tbaa !191 ; 2 uses
  %i.bsg = zext i32 %i.bsf to i64
  %i.bsh = icmp samesign ult i64 %indvars.iv.next1712, %i.bsg
  br i1 %i.bsh, label %.lr.ph1164, label %._crit_edge1165, !llvm.loop !1233

.lr.ph1164:                                       ; preds = %.preheader584, %bb.lc
  %indvars.iv1711 = phi i64 [ %indvars.iv.next1712, %bb.lc ], [ 0, %.preheader584 ] ; 3 uses
end_hunk_0
