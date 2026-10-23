Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/yyjson?download=true
inline.NumInlined: 31
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 88
begin_hunk_0_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.dvk = lshr i32 %i.dvj, 19                    ; 2 uses
  %i.dvl = mul i32 %i.dvi, 5243
  %i.dvm = lshr i32 %i.dvl, 19                    ; 2 uses
  %.neg62.i1017 = mul nsw i32 %i.dvk, -100
  %i.dvn = add nsw i32 %.neg62.i1017, %i.dvh
  %.neg63.i1018 = mul nsw i32 %i.dvm, -100
  %i.dvo = add nsw i32 %.neg63.i1018, %i.dvi
  %i.dvp = icmp samesign ult i64 %i.dpo, 1000000000000000 ; 2 uses
  %i.dvq = shl nuw nsw i32 %i.dvk, 1
  %i.dvr = zext nneg i32 %i.dvq to i64
  %i.dvs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dvr
  %.neg64.i1019 = sext i1 %i.dvp to i64
  %i.dvt = zext i1 %i.dvp to i64
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.dvs, i64 %i.dvt
  %i.dvv = load i16, ptr %i.dvu, align 1
  store i16 %i.dvv, ptr %i.dpf, align 1
  %i.dvw = getelementptr inbounds i8, ptr %i.dpf, i64 %.neg64.i1019 ; 4 uses
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvw, i64 2
  %i.dvy = shl nsw i32 %i.dvn, 1
  %i.dvz = zext i32 %i.dvy to i64
  %i.dwa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dvz
  %i.dwb = load i16, ptr %i.dwa, align 2
  store i16 %i.dwb, ptr %i.dvx, align 1
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dvw, i64 4
  %i.dwd = shl nuw nsw i32 %i.dvm, 1
  %i.dwe = zext nneg i32 %i.dwd to i64
  %i.dwf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dwe
  %i.dwg = load i16, ptr %i.dwf, align 2
  store i16 %i.dwg, ptr %i.dwc, align 1
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dvw, i64 6
  %i.dwi = shl nsw i32 %i.dvo, 1
  %i.dwj = zext i32 %i.dwi to i64
  %i.dwk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dwj
  %i.dwl = load i16, ptr %i.dwk, align 2
  store i16 %i.dwl, ptr %i.dwh, align 1
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dvw, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1027

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1027: ; preds = %bb.oh, %bb.oj, %bb.ol, %bb.om
  %.0.i1020 = phi ptr [ %i.dtm, %bb.oh ], [ %i.due, %bb.oj ], [ %i.dve, %bb.ol ], [ %i.dwm, %bb.om ] ; 5 uses
  %i.dwn = and i64 %i.dtb, 4294967295
  %i.dwo = mul nuw nsw i64 %i.dwn, 109951163
  %i.dwp = lshr i64 %i.dwo, 40
  %i.dwq = trunc nuw nsw i64 %i.dwp to i32        ; 3 uses
  %.neg.i1152 = mul i32 %i.dwq, -10000
  %i.dwr = add i32 %.neg.i1152, %i.dtc            ; 2 uses
  %i.dws = mul nuw i32 %i.dwq, 5243
  %i.dwt = lshr i32 %i.dws, 19                    ; 2 uses
  %i.dwu = mul i32 %i.dwr, 5243
  %i.dwv = lshr i32 %i.dwu, 19                    ; 2 uses
  %.neg17.i1153 = mul nsw i32 %i.dwt, -100
  %i.dww = add nsw i32 %.neg17.i1153, %i.dwq
  %.neg18.i1154 = mul i32 %i.dwv, 2147483548
  %i.dwx = add i32 %.neg18.i1154, %i.dwr
  %i.dwy = shl nuw nsw i32 %i.dwt, 1
  %i.dwz = zext nneg i32 %i.dwy to i64
  %i.dxa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dwz
  %i.dxb = load i16, ptr %i.dxa, align 2
  store i16 %i.dxb, ptr %.0.i1020, align 1
  %i.dxc = getelementptr inbounds nuw i8, ptr %.0.i1020, i64 2
  %i.dxd = shl nsw i32 %i.dww, 1
  %i.dxe = zext i32 %i.dxd to i64
  %i.dxf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dxe
  %i.dxg = load i16, ptr %i.dxf, align 2
  store i16 %i.dxg, ptr %i.dxc, align 1
  %i.dxh = getelementptr inbounds nuw i8, ptr %.0.i1020, i64 4
  %i.dxi = shl nuw nsw i32 %i.dwv, 1
  %i.dxj = zext nneg i32 %i.dxi to i64
  %i.dxk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dxj
  %i.dxl = load i16, ptr %i.dxk, align 2
  store i16 %i.dxl, ptr %i.dxh, align 1
  %i.dxm = getelementptr inbounds nuw i8, ptr %.0.i1020, i64 6
  %i.dxn = shl i32 %i.dwx, 1
  %i.dxo = zext i32 %i.dxn to i64
  %i.dxp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dxo
  %i.dxq = load i16, ptr %i.dxp, align 2
  store i16 %i.dxq, ptr %i.dxm, align 1
  %i.dxr = getelementptr inbounds nuw i8, ptr %.0.i1020, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit676

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit676: ; preds = %bb.of, %bb.oe, %bb.oc, %bb.oa, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1027
  %.0.i675 = phi ptr [ %i.dxr, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1027 ], [ %i.dpz, %bb.oa ], [ %i.dqr, %bb.oc ], [ %i.drr, %bb.oe ], [ %i.dsz, %bb.of ] ; 2 uses
  store i16 12334, ptr %.0.i675, align 1
  %i.dxs = getelementptr inbounds nuw i8, ptr %.0.i675, i64 2
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.on:                                            ; preds = %bb.nx, %bb.nw
  %i.dxt = icmp eq i64 %i.dov, 0
  %i.dxu = icmp ne i32 %i.doy, 1
  %i.dxv = and i1 %i.dxt, %i.dxu                  ; 2 uses
  %i.dxw = shl nuw nsw i64 %i.dpi, 2              ; 3 uses
  %i.dxx = add nsw i64 %i.dxw, -2
  %i.dxy = zext i1 %i.dxv to i64
  %i.dxz = or disjoint i64 %i.dxx, %i.dxy
  %i.dya = or disjoint i64 %i.dxw, 2
  %i.dyb = mul nuw nsw i32 %i.doy, 315653
  %i.dyc = add nsw i32 %i.dyb, -339326975
  %.neg.i692 = select i1 %i.dxv, i32 -131237, i32 0
  %i.dyd = add nsw i32 %.neg.i692, %i.dyc
  %i.dye = ashr i32 %i.dyd, 20                    ; 5 uses
  %i.dyf = mul nsw i32 %i.dye, -217707
  %i.dyg = ashr i32 %i.dyf, 16
  %i.dyh = add nsw i32 %i.doy, -1074
  %i.dyi = add nsw i32 %i.dyh, %i.dyg
  %.neg = mul nsw i32 %i.dye, -2
  %i.dyj = sext i32 %.neg to i64
  %i.dyk = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.dyj ; 2 uses
  %i.dyl = getelementptr i8, ptr %i.dyk, i64 5488
  %i.dym = load i64, ptr %i.dyl, align 16, !tbaa !105
  %i.dyn = getelementptr i8, ptr %i.dyk, i64 5496
  %i.dyo = load i64, ptr %i.dyn, align 8, !tbaa !105
  %i.dyp = add nsw i32 %i.dye, -1
  %i.dyq = icmp ult i32 %i.dyp, -56
  %i.dyr = zext i1 %i.dyq to i64
  %i.dys = add i64 %i.dyo, %i.dyr                 ; 3 uses
  %i.dyt = zext i32 %i.dyi to i64                 ; 3 uses
  %i.dyu = shl i64 %i.dxz, %i.dyt                 ; 2 uses
  %i.dyv = zext i64 %i.dyu to i128
  %i.dyw = tail call i64 @llvm.umulh.i64(i64 %i.dyu, i64 %i.dys)
  %i.dyx = zext i64 %i.dyw to i128
  %i.dyy = zext i64 %i.dym to i128                ; 3 uses
  %i.dyz = mul nuw i128 %i.dyy, %i.dyv
  %i.dza = add nuw i128 %i.dyz, %i.dyx            ; 2 uses
  %i.dzb = lshr i128 %i.dza, 64
  %i.dzc = trunc nuw i128 %i.dzb to i64
  %i.dzd = and i128 %i.dza, 18446744073709551614
  %i.dze = icmp ne i128 %i.dzd, 0
  %i.dzf = zext i1 %i.dze to i64
  %i.dzg = or i64 %i.dzf, %i.dzc
  %i.dzh = shl i64 %i.dxw, %i.dyt                 ; 2 uses
  %i.dzi = zext i64 %i.dzh to i128
  %i.dzj = tail call i64 @llvm.umulh.i64(i64 %i.dzh, i64 %i.dys)
  %i.dzk = zext i64 %i.dzj to i128
  %i.dzl = mul nuw i128 %i.dyy, %i.dzi
  %i.dzm = add nuw i128 %i.dzl, %i.dzk            ; 2 uses
  %i.dzn = lshr i128 %i.dzm, 64
  %i.dzo = trunc nuw i128 %i.dzn to i64           ; 5 uses
  %i.dzp = and i128 %i.dzm, 18446744073709551614
  %i.dzq = icmp ne i128 %i.dzp, 0
  %i.dzr = zext i1 %i.dzq to i64
  %i.dzs = or i64 %i.dzr, %i.dzo                  ; 2 uses
  %i.dzt = shl i64 %i.dya, %i.dyt                 ; 2 uses
  %i.dzu = zext i64 %i.dzt to i128
  %i.dzv = tail call i64 @llvm.umulh.i64(i64 %i.dzt, i64 %i.dys)
  %i.dzw = zext i64 %i.dzv to i128
  %i.dzx = mul nuw i128 %i.dyy, %i.dzu
  %i.dzy = add nuw i128 %i.dzx, %i.dzw            ; 2 uses
  %i.dzz = lshr i128 %i.dzy, 64
  %i.eaa = trunc nuw i128 %i.dzz to i64
  %i.eab = and i128 %i.dzy, 18446744073709551614
  %i.eac = icmp ne i128 %i.eab, 0
  %i.ead = zext i1 %i.eac to i64
  %i.eae = or i64 %i.ead, %i.eaa
  %i.eaf = and i64 %i.dou, 1                      ; 2 uses
  %i.eag = add i64 %i.dzg, %i.eaf                 ; 2 uses
  %i.eah = sub i64 %i.eae, %i.eaf                 ; 2 uses
  %i.eai = lshr i64 %i.dzo, 2                     ; 2 uses
  %i.eaj = icmp ugt i64 %i.dzo, 39
  br i1 %i.eaj, label %bb.oo, label %bb.oq

bb.oo:                                            ; preds = %bb.on
  %i.eak = udiv i64 %i.dzo, 40                    ; 2 uses
  %i.eal = mul nuw i64 %i.eak, 40                 ; 2 uses
  %i.eam = add i64 %i.eal, 40
  %i.ean = icmp uge i64 %i.eah, %i.eam            ; 2 uses
  %i.eao = icmp ugt i64 %i.eag, %i.eal
  %.not.i695 = xor i1 %i.eao, %i.ean
  br i1 %.not.i695, label %bb.oq, label %bb.op

bb.op:                                            ; preds = %bb.oo
  %i.eap = zext i1 %i.ean to i64
  %i.eaq = add nuw nsw i64 %i.eak, %i.eap
  %i.ear = add nsw i32 %i.dye, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696

bb.oq:                                            ; preds = %bb.oo, %bb.on
  %i.eas = and i64 %i.dzo, -4                     ; 3 uses
  %i.eat = add i64 %i.eas, 4
  %i.eau = icmp uge i64 %i.eah, %i.eat            ; 2 uses
  %i.eav = or disjoint i64 %i.eas, 2              ; 2 uses
  %i.eaw = icmp ugt i64 %i.dzs, %i.eav
  br i1 %i.eaw, label %bb.os, label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.eax = icmp eq i64 %i.dzs, %i.eav
  %i.eay = trunc i64 %i.eai to i1
  %i.eaz = and i1 %i.eax, %i.eay
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq
  %i.eba = phi i1 [ true, %bb.oq ], [ %i.eaz, %bb.or ]
  %i.ebb = icmp ugt i64 %i.eag, %i.eas
  %.not58.i693 = xor i1 %i.ebb, %i.eau
  %i.ebc = select i1 %.not58.i693, i1 %i.eba, i1 %i.eau
  %i.ebd = zext i1 %i.ebc to i64
  %i.ebe = add nuw nsw i64 %i.eai, %i.ebd
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696: ; preds = %bb.op, %bb.os
  %.11606 = phi i64 [ %i.ebe, %bb.os ], [ %i.eaq, %bb.op ] ; 8 uses
  %storemerge.i694 = phi i32 [ %i.dye, %bb.os ], [ %i.ear, %bb.op ]
  %i.ebf = icmp samesign ult i64 %.11606, 10000000000000000
  %i.ebg = select i1 %i.ebf, i32 16, i32 17
  %i.ebh = icmp samesign ult i64 %.11606, 1000000000000000
  %.neg129.i634 = sext i1 %i.ebh to i32
  %i.ebi = add nsw i32 %i.ebg, %.neg129.i634
  %i.ebj = add nsw i32 %i.ebi, %storemerge.i694   ; 8 uses
  %i.ebk = add nsw i32 %i.ebj, 5
  %or.cond3.i635 = icmp ult i32 %i.ebk, 27
  br i1 %or.cond3.i635, label %bb.ot, label %bb.pi

bb.ot:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696
  %i.ebl = icmp slt i32 %i.ebj, 1
  br i1 %i.ebl, label %bb.ou, label %bb.pb

bb.ou:                                            ; preds = %bb.ot
  %i.ebm = sub nsw i32 2, %i.ebj
  %i.ebn = zext nneg i32 %i.ebm to i64
  %i.ebo = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %i.ebn ; 2 uses
  %i.ebp = udiv i64 %.11606, 100000000            ; 2 uses
  %i.ebq = trunc i64 %i.ebp to i32                ; 2 uses
  %.neg.i761 = mul i64 %i.ebp, 4194967296
  %i.ebr = add i64 %.neg.i761, %.11606            ; 2 uses
  %i.ebs = trunc i64 %i.ebr to i32                ; 2 uses
  %i.ebt = udiv i32 %i.ebq, 10000                 ; 3 uses
  %.neg95.i762 = mul i32 %i.ebt, -10000
  %i.ebu = add i32 %.neg95.i762, %i.ebq           ; 5 uses
  %i.ebv = zext nneg i32 %i.ebt to i64
  %i.ebw = mul nuw nsw i64 %i.ebv, 167773
  %i.ebx = lshr i64 %i.ebw, 24
  %i.eby = trunc nuw nsw i64 %i.ebx to i32        ; 3 uses
  %i.ebz = mul nuw nsw i32 %i.eby, 41
  %i.eca = lshr i32 %i.ebz, 12                    ; 3 uses
  %.neg96.i763 = mul nsw i32 %i.eca, -100
  %i.ecb = add nsw i32 %.neg96.i763, %i.eby       ; 3 uses
  %.neg97.i764 = mul nsw i32 %i.eby, -100
  %i.ecc = add nsw i32 %.neg97.i764, %i.ebt       ; 3 uses
  %i.ecd = trunc nuw nsw i32 %i.eca to i8
  %i.ece = add nuw nsw i8 %i.ecd, 48
  store i8 %i.ece, ptr %i.ebo, align 1, !tbaa !99
  %i.ecf = icmp ne i32 %i.eca, 0                  ; 2 uses
  %i.ecg = zext i1 %i.ecf to i64
  %i.ech = getelementptr inbounds nuw i8, ptr %i.ebo, i64 %i.ecg ; 2 uses
  %i.eci = icmp ult i32 %i.ecb, 10
  %.not3754 = xor i1 %i.ecf, true
  %i.ecj = and i1 %i.eci, %.not3754               ; 2 uses
  %i.eck = shl nsw i32 %i.ecb, 1
  %i.ecl = zext i32 %i.eck to i64
  %i.ecm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ecl
  %.neg98.i765 = sext i1 %i.ecj to i64
  %i.ecn = zext i1 %i.ecj to i64
  %i.eco = getelementptr inbounds nuw i8, ptr %i.ecm, i64 %i.ecn
  %i.ecp = load i16, ptr %i.eco, align 1
  store i16 %i.ecp, ptr %i.ech, align 1
  %i.ecq = getelementptr inbounds i8, ptr %i.ech, i64 %.neg98.i765 ; 10 uses
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecq, i64 2
  %i.ecs = shl nsw i32 %i.ecc, 1
  %i.ect = zext i32 %i.ecs to i64
  %i.ecu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ect
  %i.ecv = load i16, ptr %i.ecu, align 2
  store i16 %i.ecv, ptr %i.ecr, align 1
  %.not.i766 = icmp eq i32 %i.ebs, 0
  br i1 %.not.i766, label %bb.oy, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ecw = mul i32 %i.ebu, 5243
  %i.ecx = lshr i32 %i.ecw, 19                    ; 2 uses
  %.neg103.i767 = mul i32 %i.ecx, 2147483548
  %i.ecy = add i32 %.neg103.i767, %i.ebu
  %i.ecz = and i64 %i.ebr, 4294967295
  %i.eda = mul nuw nsw i64 %i.ecz, 109951163
  %i.edb = lshr i64 %i.eda, 40
  %i.edc = trunc nuw nsw i64 %i.edb to i32        ; 3 uses
  %.neg104.i768 = mul i32 %i.edc, -10000
  %i.edd = add i32 %.neg104.i768, %i.ebs          ; 3 uses
  %i.ede = mul nuw i32 %i.edc, 5243
  %i.edf = lshr i32 %i.ede, 19                    ; 3 uses
  %.neg105.i769 = mul nsw i32 %i.edf, -100
  %i.edg = add nsw i32 %.neg105.i769, %i.edc      ; 2 uses
  %i.edh = getelementptr inbounds nuw i8, ptr %i.ecq, i64 4
  %i.edi = shl nuw nsw i32 %i.ecx, 1
  %i.edj = zext nneg i32 %i.edi to i64
  %i.edk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edj
  %i.edl = load i16, ptr %i.edk, align 2
  store i16 %i.edl, ptr %i.edh, align 1
  %i.edm = getelementptr inbounds nuw i8, ptr %i.ecq, i64 6
  %i.edn = shl i32 %i.ecy, 1
  %i.edo = zext i32 %i.edn to i64
  %i.edp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edo
  %i.edq = load i16, ptr %i.edp, align 2
  store i16 %i.edq, ptr %i.edm, align 1
  %i.edr = getelementptr inbounds nuw i8, ptr %i.ecq, i64 8
  %i.eds = shl nuw nsw i32 %i.edf, 1
  %i.edt = zext nneg i32 %i.eds to i64
  %i.edu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edt
  %i.edv = load i16, ptr %i.edu, align 2
  store i16 %i.edv, ptr %i.edr, align 1
  %i.edw = getelementptr inbounds nuw i8, ptr %i.ecq, i64 10
  %i.edx = shl nsw i32 %i.edg, 1
  %i.edy = zext i32 %i.edx to i64
  %i.edz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edy
  %i.eea = load i16, ptr %i.edz, align 2
  store i16 %i.eea, ptr %i.edw, align 1
  %.not106.i770 = icmp eq i32 %i.edd, 0
  br i1 %.not106.i770, label %bb.ox, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.eeb = mul i32 %i.edd, 5243
  %i.eec = lshr i32 %i.eeb, 19                    ; 3 uses
  %.neg108.i771 = mul nsw i32 %i.eec, -100
  %i.eed = add i32 %.neg108.i771, %i.edd          ; 2 uses
  %i.eee = getelementptr inbounds nuw i8, ptr %i.ecq, i64 12
  %i.eef = shl nuw nsw i32 %i.eec, 1
  %i.eeg = zext nneg i32 %i.eef to i64
  %i.eeh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eeg
  %i.eei = load i16, ptr %i.eeh, align 2
  store i16 %i.eei, ptr %i.eee, align 1
  %i.eej = getelementptr inbounds nuw i8, ptr %i.ecq, i64 14
  %i.eek = shl nuw i32 %i.eed, 1
  %i.eel = zext i32 %i.eek to i64
  %i.eem = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eel
  %i.een = load i16, ptr %i.eem, align 2
  store i16 %i.een, ptr %i.eej, align 1
  br label %bb.ox

bb.ox:                                            ; preds = %bb.ov, %bb.ow
  %.sink5246.a = phi i32 [ %i.eec, %bb.ow ], [ %i.edf, %bb.ov ]
  %.sink5242 = phi i32 [ %i.eed, %bb.ow ], [ %i.edg, %bb.ov ] ; 2 uses
  %.sink5233 = phi i64 [ 16, %bb.ow ], [ 12, %bb.ov ]
  %i.eeo = zext nneg i32 %.sink5246.a to i64
  %i.eep = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eeo
  %i.eeq = load i8, ptr %i.eep, align 1, !tbaa !99
  %i.eer = zext i8 %i.eeq to i64
  %i.ees = zext i32 %.sink5242 to i64
  %i.eet = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ees
  %i.eeu = load i8, ptr %i.eet, align 1, !tbaa !99
  %i.eev = zext i8 %i.eeu to i64
  %.not107.i777 = icmp eq i32 %.sink5242, 0
  %i.eew = add nuw nsw i64 %i.eer, 2
  %i.eex = select i1 %.not107.i777, i64 %i.eew, i64 %i.eev
  %i.eey = sub nsw i64 %.sink5233, %i.eex
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782

bb.oy:                                            ; preds = %bb.ou
  %.not99.i778 = icmp eq i32 %i.ebu, 0
  br i1 %.not99.i778, label %bb.pa, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.eez = mul i32 %i.ebu, 5243
  %i.efa = lshr i32 %i.eez, 19                    ; 3 uses
  %.neg101.i779 = mul nsw i32 %i.efa, -100
  %i.efb = add i32 %.neg101.i779, %i.ebu          ; 3 uses
  %i.efc = getelementptr inbounds nuw i8, ptr %i.ecq, i64 4
  %i.efd = shl nuw nsw i32 %i.efa, 1
  %i.efe = zext nneg i32 %i.efd to i64
  %i.eff = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efe
  %i.efg = load i16, ptr %i.eff, align 2
  store i16 %i.efg, ptr %i.efc, align 1
  %i.efh = getelementptr inbounds nuw i8, ptr %i.ecq, i64 6
  %i.efi = shl nuw i32 %i.efb, 1
  %i.efj = zext i32 %i.efi to i64
  %i.efk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efj
  %i.efl = load i16, ptr %i.efk, align 2
  store i16 %i.efl, ptr %i.efh, align 1
  %i.efm = zext nneg i32 %i.efa to i64
  %i.efn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efm
  %i.efo = load i8, ptr %i.efn, align 1, !tbaa !99
  %i.efp = zext i8 %i.efo to i64
  %i.efq = zext i32 %i.efb to i64
  %i.efr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efq
  %i.efs = load i8, ptr %i.efr, align 1, !tbaa !99
  %i.eft = zext i8 %i.efs to i64
  %.not102.i780 = icmp eq i32 %i.efb, 0
  %i.efu = add nuw nsw i64 %i.efp, 2
  %i.efv = select i1 %.not102.i780, i64 %i.efu, i64 %i.eft
  %i.efw = sub nsw i64 8, %i.efv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782

bb.pa:                                            ; preds = %bb.oy
  %i.efx = zext i32 %i.ecb to i64
  %i.efy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efx
  %i.efz = load i8, ptr %i.efy, align 1, !tbaa !99
  %i.ega = zext i8 %i.efz to i64
  %i.egb = zext i32 %i.ecc to i64
  %i.egc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egb
  %i.egd = load i8, ptr %i.egc, align 1, !tbaa !99
  %i.ege = zext i8 %i.egd to i64
  %.not100.i781 = icmp eq i32 %i.ecc, 0
  %i.egf = select i1 %.not100.i781, i64 %i.ega, i64 0
  %i.egg = add nuw nsw i64 %i.egf, %i.ege
  %i.egh = sub nsw i64 4, %i.egg
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782: ; preds = %bb.ox, %bb.oz, %bb.pa
  %.sink5247.a = phi i64 [ %i.eey, %bb.ox ], [ %i.efw, %bb.oz ], [ %i.egh, %bb.pa ]
  %.pn.i774 = and i64 %.sink5247.a, 4294967295
  %.0.i775 = getelementptr inbounds nuw i8, ptr %i.ecq, i64 %.pn.i774 ; 2 uses
  store i8 48, ptr %i.dpf, align 1, !tbaa !99
  %i.egi = getelementptr inbounds nuw i8, ptr %i.dpf, i64 1
  store i8 46, ptr %i.egi, align 1, !tbaa !99
  %i.egj = icmp slt i32 %i.ebj, 0
  br i1 %i.egj, label %.lr.ph2919.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

.lr.ph2919.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit782
  %i.egk = getelementptr i8, ptr %i.dpf, i64 2
  %narrow = sub nsw i32 0, %i.ebj
  %i.egl = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.egk, i8 48, i64 %i.egl, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.pb:                                            ; preds = %bb.ot
  %i.egm = getelementptr inbounds nuw i8, ptr %i.dpf, i64 1 ; 2 uses
  %i.egn = udiv i64 %.11606, 100000000            ; 2 uses
  %i.ego = trunc i64 %i.egn to i32                ; 2 uses
  %.neg.i783 = mul i64 %i.egn, 4194967296
  %i.egp = add i64 %.neg.i783, %.11606            ; 2 uses
  %i.egq = trunc i64 %i.egp to i32                ; 2 uses
  %i.egr = udiv i32 %i.ego, 10000                 ; 3 uses
  %.neg95.i784 = mul i32 %i.egr, -10000
  %i.egs = add i32 %.neg95.i784, %i.ego           ; 5 uses
  %i.egt = zext nneg i32 %i.egr to i64
  %i.egu = mul nuw nsw i64 %i.egt, 167773
  %i.egv = lshr i64 %i.egu, 24
  %i.egw = trunc nuw nsw i64 %i.egv to i32        ; 3 uses
  %i.egx = mul nuw nsw i32 %i.egw, 41
  %i.egy = lshr i32 %i.egx, 12                    ; 3 uses
  %.neg96.i785 = mul nsw i32 %i.egy, -100
  %i.egz = add nsw i32 %.neg96.i785, %i.egw       ; 3 uses
  %.neg97.i786 = mul nsw i32 %i.egw, -100
  %i.eha = add nsw i32 %.neg97.i786, %i.egr       ; 3 uses
  %i.ehb = trunc nuw nsw i32 %i.egy to i8
  %i.ehc = add nuw nsw i8 %i.ehb, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dpf, i8 48, i64 24, i1 false)
  store i8 %i.ehc, ptr %i.egm, align 1, !tbaa !99
  %i.ehd = icmp ne i32 %i.egy, 0                  ; 2 uses
  %i.ehe = zext i1 %i.ehd to i64
  %i.ehf = getelementptr inbounds nuw i8, ptr %i.egm, i64 %i.ehe ; 2 uses
  %i.ehg = icmp ult i32 %i.egz, 10
  %.not3753 = xor i1 %i.ehd, true
  %i.ehh = and i1 %i.ehg, %.not3753               ; 2 uses
  %i.ehi = shl nsw i32 %i.egz, 1
  %i.ehj = zext i32 %i.ehi to i64
  %i.ehk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehj
  %.neg98.i787 = sext i1 %i.ehh to i64
  %i.ehl = zext i1 %i.ehh to i64
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.ehk, i64 %i.ehl
  %i.ehn = load i16, ptr %i.ehm, align 1
  store i16 %i.ehn, ptr %i.ehf, align 1
  %i.eho = getelementptr inbounds i8, ptr %i.ehf, i64 %.neg98.i787 ; 10 uses
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.eho, i64 2
  %i.ehq = shl nsw i32 %i.eha, 1
  %i.ehr = zext i32 %i.ehq to i64
  %i.ehs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehr
  %i.eht = load i16, ptr %i.ehs, align 2
  store i16 %i.eht, ptr %i.ehp, align 1
  %.not.i788 = icmp eq i32 %i.egq, 0
  br i1 %.not.i788, label %bb.pf, label %bb.pc

bb.pc:                                            ; preds = %bb.pb
  %i.ehu = mul i32 %i.egs, 5243
  %i.ehv = lshr i32 %i.ehu, 19                    ; 2 uses
  %.neg103.i789 = mul i32 %i.ehv, 2147483548
  %i.ehw = add i32 %.neg103.i789, %i.egs
  %i.ehx = and i64 %i.egp, 4294967295
  %i.ehy = mul nuw nsw i64 %i.ehx, 109951163
  %i.ehz = lshr i64 %i.ehy, 40
  %i.eia = trunc nuw nsw i64 %i.ehz to i32        ; 3 uses
  %.neg104.i790 = mul i32 %i.eia, -10000
  %i.eib = add i32 %.neg104.i790, %i.egq          ; 3 uses
  %i.eic = mul nuw i32 %i.eia, 5243
  %i.eid = lshr i32 %i.eic, 19                    ; 3 uses
  %.neg105.i791 = mul nsw i32 %i.eid, -100
  %i.eie = add nsw i32 %.neg105.i791, %i.eia      ; 2 uses
  %i.eif = getelementptr inbounds nuw i8, ptr %i.eho, i64 4
  %i.eig = shl nuw nsw i32 %i.ehv, 1
  %i.eih = zext nneg i32 %i.eig to i64
  %i.eii = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eih
  %i.eij = load i16, ptr %i.eii, align 2
  store i16 %i.eij, ptr %i.eif, align 1
  %i.eik = getelementptr inbounds nuw i8, ptr %i.eho, i64 6
  %i.eil = shl i32 %i.ehw, 1
  %i.eim = zext i32 %i.eil to i64
  %i.ein = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eim
  %i.eio = load i16, ptr %i.ein, align 2
  store i16 %i.eio, ptr %i.eik, align 1
  %i.eip = getelementptr inbounds nuw i8, ptr %i.eho, i64 8
  %i.eiq = shl nuw nsw i32 %i.eid, 1
  %i.eir = zext nneg i32 %i.eiq to i64
  %i.eis = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eir
  %i.eit = load i16, ptr %i.eis, align 2
  store i16 %i.eit, ptr %i.eip, align 1
  %i.eiu = getelementptr inbounds nuw i8, ptr %i.eho, i64 10
  %i.eiv = shl nsw i32 %i.eie, 1
  %i.eiw = zext i32 %i.eiv to i64
  %i.eix = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eiw
  %i.eiy = load i16, ptr %i.eix, align 2
  store i16 %i.eiy, ptr %i.eiu, align 1
  %.not106.i792 = icmp eq i32 %i.eib, 0
  br i1 %.not106.i792, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.eiz = mul i32 %i.eib, 5243
  %i.eja = lshr i32 %i.eiz, 19                    ; 3 uses
  %.neg108.i793 = mul nsw i32 %i.eja, -100
  %i.ejb = add i32 %.neg108.i793, %i.eib          ; 2 uses
  %i.ejc = getelementptr inbounds nuw i8, ptr %i.eho, i64 12
  %i.ejd = shl nuw nsw i32 %i.eja, 1
  %i.eje = zext nneg i32 %i.ejd to i64
  %i.ejf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eje
  %i.ejg = load i16, ptr %i.ejf, align 2
  store i16 %i.ejg, ptr %i.ejc, align 1
  %i.ejh = getelementptr inbounds nuw i8, ptr %i.eho, i64 14
  %i.eji = shl nuw i32 %i.ejb, 1
  %i.ejj = zext i32 %i.eji to i64
  %i.ejk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejj
  %i.ejl = load i16, ptr %i.ejk, align 2
  store i16 %i.ejl, ptr %i.ejh, align 1
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pc, %bb.pd
  %.sink5261.a = phi i32 [ %i.eja, %bb.pd ], [ %i.eid, %bb.pc ]
  %.sink5257 = phi i32 [ %i.ejb, %bb.pd ], [ %i.eie, %bb.pc ] ; 2 uses
  %.sink5248 = phi i64 [ 16, %bb.pd ], [ 12, %bb.pc ]
  %i.ejm = zext nneg i32 %.sink5261.a to i64
  %i.ejn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejm
  %i.ejo = load i8, ptr %i.ejn, align 1, !tbaa !99
  %i.ejp = zext i8 %i.ejo to i64
  %i.ejq = zext i32 %.sink5257 to i64
  %i.ejr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejq
  %i.ejs = load i8, ptr %i.ejr, align 1, !tbaa !99
  %i.ejt = zext i8 %i.ejs to i64
  %.not107.i799 = icmp eq i32 %.sink5257, 0
  %i.eju = add nuw nsw i64 %i.ejp, 2
  %i.ejv = select i1 %.not107.i799, i64 %i.eju, i64 %i.ejt
  %i.ejw = sub nsw i64 %.sink5248, %i.ejv
  br label %._crit_edge

bb.pf:                                            ; preds = %bb.pb
  %.not99.i800 = icmp eq i32 %i.egs, 0
  br i1 %.not99.i800, label %bb.ph, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.ejx = mul i32 %i.egs, 5243
  %i.ejy = lshr i32 %i.ejx, 19                    ; 3 uses
  %.neg101.i801 = mul nsw i32 %i.ejy, -100
  %i.ejz = add i32 %.neg101.i801, %i.egs          ; 3 uses
  %i.eka = getelementptr inbounds nuw i8, ptr %i.eho, i64 4
  %i.ekb = shl nuw nsw i32 %i.ejy, 1
  %i.ekc = zext nneg i32 %i.ekb to i64
  %i.ekd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekc
  %i.eke = load i16, ptr %i.ekd, align 2
  store i16 %i.eke, ptr %i.eka, align 1
  %i.ekf = getelementptr inbounds nuw i8, ptr %i.eho, i64 6
  %i.ekg = shl nuw i32 %i.ejz, 1
  %i.ekh = zext i32 %i.ekg to i64
  %i.eki = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekh
  %i.ekj = load i16, ptr %i.eki, align 2
  store i16 %i.ekj, ptr %i.ekf, align 1
  %i.ekk = zext nneg i32 %i.ejy to i64
  %i.ekl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekk
  %i.ekm = load i8, ptr %i.ekl, align 1, !tbaa !99
  %i.ekn = zext i8 %i.ekm to i64
  %i.eko = zext i32 %i.ejz to i64
  %i.ekp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eko
  %i.ekq = load i8, ptr %i.ekp, align 1, !tbaa !99
  %i.ekr = zext i8 %i.ekq to i64
  %.not102.i802 = icmp eq i32 %i.ejz, 0
  %i.eks = add nuw nsw i64 %i.ekn, 2
  %i.ekt = select i1 %.not102.i802, i64 %i.eks, i64 %i.ekr
  %i.eku = sub nsw i64 8, %i.ekt
  br label %._crit_edge

bb.ph:                                            ; preds = %bb.pf
  %i.ekv = zext i32 %i.egz to i64
  %i.ekw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekv
  %i.ekx = load i8, ptr %i.ekw, align 1, !tbaa !99
  %i.eky = zext i8 %i.ekx to i64
  %i.ekz = zext i32 %i.eha to i64
  %i.ela = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekz
  %i.elb = load i8, ptr %i.ela, align 1, !tbaa !99
  %i.elc = zext i8 %i.elb to i64
  %.not100.i803 = icmp eq i32 %i.eha, 0
  %i.eld = select i1 %.not100.i803, i64 %i.eky, i64 0
  %i.ele = add nuw nsw i64 %i.eld, %i.elc
  %i.elf = sub nsw i64 4, %i.ele
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.pe, %bb.pg, %bb.ph
  %.sink5262.a = phi i64 [ %i.ejw, %bb.pe ], [ %i.eku, %bb.pg ], [ %i.elf, %bb.ph ]
  %.pn.i796 = and i64 %.sink5262.a, 4294967295
  %.0.i797 = getelementptr inbounds nuw i8, ptr %i.eho, i64 %.pn.i796 ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i1222.lcssa, i64 1
  %scevgep3695 = getelementptr i8, ptr %scevgep, i64 %.lobit.i630
  %i.elg = zext nneg i32 %i.ebj to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dpf, ptr align 1 %scevgep3695, i64 %i.elg, i1 false), !tbaa !99
  %i.elh = zext nneg i32 %i.ebj to i64
  %i.eli = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %i.elh ; 2 uses
  store i8 46, ptr %i.eli, align 1, !tbaa !99
  %i.elj = getelementptr inbounds nuw i8, ptr %i.eli, i64 2 ; 2 uses
  %i.elk = icmp ult ptr %i.elj, %.0.i797
  %spec.select1764 = select i1 %i.elk, ptr %.0.i797, ptr %i.elj
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit547.thread

bb.pi:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit696
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dpf, i64 1 ; 3 uses
  %i.ell = udiv i64 %.11606, 100000000            ; 2 uses
  %i.elm = trunc i64 %i.ell to i32                ; 2 uses
  %.neg.i805 = mul i64 %i.ell, 4194967296
  %i.eln = add i64 %.neg.i805, %.11606            ; 2 uses
  %i.elo = trunc i64 %i.eln to i32                ; 2 uses
  %i.elp = udiv i32 %i.elm, 10000                 ; 3 uses
  %.neg95.i806 = mul i32 %i.elp, -10000
  %i.elq = add i32 %.neg95.i806, %i.elm           ; 5 uses
  %i.elr = zext nneg i32 %i.elp to i64
  %i.els = mul nuw nsw i64 %i.elr, 167773
  %i.elt = lshr i64 %i.els, 24
  %i.elu = trunc nuw nsw i64 %i.elt to i32        ; 3 uses
  %i.elv = mul nuw nsw i32 %i.elu, 41
  %i.elw = lshr i32 %i.elv, 12                    ; 3 uses
  %.neg96.i807 = mul nsw i32 %i.elw, -100
  %i.elx = add nsw i32 %.neg96.i807, %i.elu       ; 3 uses
  %.neg97.i808 = mul nsw i32 %i.elu, -100
  %i.ely = add nsw i32 %.neg97.i808, %i.elp       ; 3 uses
  %i.elz = trunc nuw nsw i32 %i.elw to i8
  %i.ema = add nuw nsw i8 %i.elz, 48
  store i8 %i.ema, ptr %.ptr, align 1, !tbaa !99
  %.not1784 = icmp eq i32 %i.elw, 0               ; 2 uses
  %.add = select i1 %.not1784, i64 1, i64 2       ; 2 uses
  %.ptr1780 = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %.add
  %i.emb = icmp ult i32 %i.elx, 10
  %i.emc = and i1 %.not1784, %i.emb               ; 2 uses
  %i.emd = shl nsw i32 %i.elx, 1
  %i.eme = zext i32 %i.emd to i64
  %i.emf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eme
  %.neg98.i809 = sext i1 %i.emc to i64
  %i.emg = zext i1 %i.emc to i64
  %i.emh = getelementptr inbounds nuw i8, ptr %i.emf, i64 %i.emg
  %i.emi = load i16, ptr %i.emh, align 1
  store i16 %i.emi, ptr %.ptr1780, align 1
  %.add1776 = add nsw i64 %.add, %.neg98.i809     ; 2 uses
  %.ptr1781 = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %.add1776 ; 9 uses
  %i.emj = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 2
  %i.emk = shl nsw i32 %i.ely, 1
  %i.eml = zext i32 %i.emk to i64
  %i.emm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eml
  %i.emn = load i16, ptr %i.emm, align 2
  store i16 %i.emn, ptr %i.emj, align 1
  %.not.i810 = icmp eq i32 %i.elo, 0
  br i1 %.not.i810, label %bb.pm, label %bb.pj

bb.pj:                                            ; preds = %bb.pi
  %i.emo = mul i32 %i.elq, 5243
  %i.emp = lshr i32 %i.emo, 19                    ; 2 uses
  %.neg103.i811 = mul i32 %i.emp, 2147483548
  %i.emq = add i32 %.neg103.i811, %i.elq
  %i.emr = and i64 %i.eln, 4294967295
  %i.ems = mul nuw nsw i64 %i.emr, 109951163
  %i.emt = lshr i64 %i.ems, 40
  %i.emu = trunc nuw nsw i64 %i.emt to i32        ; 3 uses
  %.neg104.i812 = mul i32 %i.emu, -10000
  %i.emv = add i32 %.neg104.i812, %i.elo          ; 3 uses
  %i.emw = mul nuw i32 %i.emu, 5243
  %i.emx = lshr i32 %i.emw, 19                    ; 3 uses
  %.neg105.i813 = mul nsw i32 %i.emx, -100
  %i.emy = add nsw i32 %.neg105.i813, %i.emu      ; 3 uses
  %i.emz = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 4
  %i.ena = shl nuw nsw i32 %i.emp, 1
  %i.enb = zext nneg i32 %i.ena to i64
  %i.enc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enb
  %i.end = load i16, ptr %i.enc, align 2
  store i16 %i.end, ptr %i.emz, align 1
  %i.ene = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 6
  %i.enf = shl i32 %i.emq, 1
  %i.eng = zext i32 %i.enf to i64
  %i.enh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eng
  %i.eni = load i16, ptr %i.enh, align 2
  store i16 %i.eni, ptr %i.ene, align 1
  %i.enj = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 8
  %i.enk = shl nuw nsw i32 %i.emx, 1
  %i.enl = zext nneg i32 %i.enk to i64
  %i.enm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enl
  %i.enn = load i16, ptr %i.enm, align 2
  store i16 %i.enn, ptr %i.enj, align 1
  %i.eno = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 10
  %i.enp = shl nsw i32 %i.emy, 1
  %i.enq = zext i32 %i.enp to i64
  %i.enr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enq
  %i.ens = load i16, ptr %i.enr, align 2
  store i16 %i.ens, ptr %i.eno, align 1
  %.not106.i814 = icmp eq i32 %i.emv, 0
  br i1 %.not106.i814, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.ent = mul i32 %i.emv, 5243
  %i.enu = lshr i32 %i.ent, 19                    ; 3 uses
  %.neg108.i815 = mul nsw i32 %i.enu, -100
  %i.env = add i32 %.neg108.i815, %i.emv          ; 3 uses
  %i.enw = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 12
  %i.enx = shl nuw nsw i32 %i.enu, 1
  %i.eny = zext nneg i32 %i.enx to i64
  %i.enz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eny
  %i.eoa = load i16, ptr %i.enz, align 2
  store i16 %i.eoa, ptr %i.enw, align 1
  %i.eob = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 14
  %i.eoc = shl nuw i32 %i.env, 1
  %i.eod = zext i32 %i.eoc to i64
  %i.eoe = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eod
  %i.eof = load i16, ptr %i.eoe, align 2
  store i16 %i.eof, ptr %i.eob, align 1
  %i.eog = zext nneg i32 %i.enu to i64
  %i.eoh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eog
  %i.eoi = load i8, ptr %i.eoh, align 1, !tbaa !99
  %i.eoj = zext i8 %i.eoi to i64
  %i.eok = zext i32 %i.env to i64
  %i.eol = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eok
  %i.eom = load i8, ptr %i.eol, align 1, !tbaa !99
  %i.eon = zext i8 %i.eom to i64
  %.not109.i816 = icmp eq i32 %i.env, 0
  %i.eoo = add nuw nsw i64 %i.eoj, 2
  %i.eop = select i1 %.not109.i816, i64 %i.eoo, i64 %i.eon
  %i.eoq = sub nsw i64 16, %i.eop
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

bb.pl:                                            ; preds = %bb.pj
  %i.eor = zext nneg i32 %i.emx to i64
  %i.eos = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eor
  %i.eot = load i8, ptr %i.eos, align 1, !tbaa !99
  %i.eou = zext i8 %i.eot to i64
  %i.eov = zext i32 %i.emy to i64
  %i.eow = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eov
  %i.eox = load i8, ptr %i.eow, align 1, !tbaa !99
  %i.eoy = zext i8 %i.eox to i64
  %.not107.i821 = icmp eq i32 %i.emy, 0
  %i.eoz = add nuw nsw i64 %i.eou, 2
  %i.epa = select i1 %.not107.i821, i64 %i.eoz, i64 %i.eoy
  %i.epb = sub nsw i64 12, %i.epa
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

bb.pm:                                            ; preds = %bb.pi
  %.not99.i822 = icmp eq i32 %i.elq, 0
  br i1 %.not99.i822, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.epc = mul i32 %i.elq, 5243
  %i.epd = lshr i32 %i.epc, 19                    ; 3 uses
  %.neg101.i823 = mul nsw i32 %i.epd, -100
  %i.epe = add i32 %.neg101.i823, %i.elq          ; 3 uses
  %i.epf = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 4
  %i.epg = shl nuw nsw i32 %i.epd, 1
  %i.eph = zext nneg i32 %i.epg to i64
  %i.epi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eph
  %i.epj = load i16, ptr %i.epi, align 2
  store i16 %i.epj, ptr %i.epf, align 1
  %i.epk = getelementptr inbounds nuw i8, ptr %.ptr1781, i64 6
  %i.epl = shl nuw i32 %i.epe, 1
  %i.epm = zext i32 %i.epl to i64
  %i.epn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.epm
  %i.epo = load i16, ptr %i.epn, align 2
  store i16 %i.epo, ptr %i.epk, align 1
  %i.epp = zext nneg i32 %i.epd to i64
  %i.epq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.epp
  %i.epr = load i8, ptr %i.epq, align 1, !tbaa !99
  %i.eps = zext i8 %i.epr to i64
  %i.ept = zext i32 %i.epe to i64
  %i.epu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ept
  %i.epv = load i8, ptr %i.epu, align 1, !tbaa !99
  %i.epw = zext i8 %i.epv to i64
  %.not102.i824 = icmp eq i32 %i.epe, 0
  %i.epx = add nuw nsw i64 %i.eps, 2
  %i.epy = select i1 %.not102.i824, i64 %i.epx, i64 %i.epw
  %i.epz = sub nsw i64 8, %i.epy
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

bb.po:                                            ; preds = %bb.pm
  %i.eqa = zext i32 %i.elx to i64
  %i.eqb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqa
  %i.eqc = load i8, ptr %i.eqb, align 1, !tbaa !99
  %i.eqd = zext i8 %i.eqc to i64
  %i.eqe = zext i32 %i.ely to i64
  %i.eqf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqe
  %i.eqg = load i8, ptr %i.eqf, align 1, !tbaa !99
  %i.eqh = zext i8 %i.eqg to i64
  %.not100.i825 = icmp eq i32 %i.ely, 0
  %i.eqi = select i1 %.not100.i825, i64 %i.eqd, i64 0
  %i.eqj = add nuw nsw i64 %i.eqi, %i.eqh
  %i.eqk = sub nsw i64 4, %i.eqj
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit826: ; preds = %bb.pk, %bb.pl, %bb.pn, %bb.po
  %.pn.i818.pn.in = phi i64 [ %i.eqk, %bb.po ], [ %i.epz, %bb.pn ], [ %i.eoq, %bb.pk ], [ %i.epb, %bb.pl ]
  %.pn.i818.pn = and i64 %.pn.i818.pn.in, 4294967295
  %.1.i820.idx = add nuw nsw i64 %.pn.i818.pn, %.add1776 ; 2 uses
  %.1.i820.ptr = getelementptr inbounds nuw i8, ptr %i.dpf, i64 %.1.i820.idx
  %i.eql = icmp eq i64 %.1.i820.idx, 2
  %.neg130.i636 = sext i1 %i.eql to i64
end_hunk_0
begin_hunk_1_@_ZN13duckdb_yyjson21yyjson_val_write_optsEPKNS_10yyjson_valEjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.hpi = lshr i32 %i.hph, 19                    ; 2 uses
  %i.hpj = mul i32 %i.hpg, 5243
  %i.hpk = lshr i32 %i.hpj, 19                    ; 2 uses
  %.neg62.i1041 = mul nsw i32 %i.hpi, -100
  %i.hpl = add nsw i32 %.neg62.i1041, %i.hpf
  %.neg63.i1042 = mul nsw i32 %i.hpk, -100
  %i.hpm = add nsw i32 %.neg63.i1042, %i.hpg
  %i.hpn = icmp samesign ult i64 %i.hjm, 1000000000000000 ; 2 uses
  %i.hpo = shl nuw nsw i32 %i.hpi, 1
  %i.hpp = zext nneg i32 %i.hpo to i64
  %i.hpq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hpp
  %.neg64.i1043 = sext i1 %i.hpn to i64
  %i.hpr = zext i1 %i.hpn to i64
  %i.hps = getelementptr inbounds nuw i8, ptr %i.hpq, i64 %i.hpr
  %i.hpt = load i16, ptr %i.hps, align 1
  store i16 %i.hpt, ptr %i.hjd, align 1
  %i.hpu = getelementptr inbounds i8, ptr %i.hjd, i64 %.neg64.i1043 ; 4 uses
  %i.hpv = getelementptr inbounds nuw i8, ptr %i.hpu, i64 2
  %i.hpw = shl nsw i32 %i.hpl, 1
  %i.hpx = zext i32 %i.hpw to i64
  %i.hpy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hpx
  %i.hpz = load i16, ptr %i.hpy, align 2
  store i16 %i.hpz, ptr %i.hpv, align 1
  %i.hqa = getelementptr inbounds nuw i8, ptr %i.hpu, i64 4
  %i.hqb = shl nuw nsw i32 %i.hpk, 1
  %i.hqc = zext nneg i32 %i.hqb to i64
  %i.hqd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hqc
  %i.hqe = load i16, ptr %i.hqd, align 2
  store i16 %i.hqe, ptr %i.hqa, align 1
  %i.hqf = getelementptr inbounds nuw i8, ptr %i.hpu, i64 6
  %i.hqg = shl nsw i32 %i.hpm, 1
  %i.hqh = zext i32 %i.hqg to i64
  %i.hqi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hqh
  %i.hqj = load i16, ptr %i.hqi, align 2
  store i16 %i.hqj, ptr %i.hqf, align 1
  %i.hqk = getelementptr inbounds nuw i8, ptr %i.hpu, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1051

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1051: ; preds = %bb.yj, %bb.yl, %bb.yn, %bb.yo
  %.0.i1044 = phi ptr [ %i.hnk, %bb.yj ], [ %i.hoc, %bb.yl ], [ %i.hpc, %bb.yn ], [ %i.hqk, %bb.yo ] ; 5 uses
  %i.hql = and i64 %i.hmz, 4294967295
  %i.hqm = mul nuw nsw i64 %i.hql, 109951163
  %i.hqn = lshr i64 %i.hqm, 40
  %i.hqo = trunc nuw nsw i64 %i.hqn to i32        ; 3 uses
  %.neg.i1155 = mul i32 %i.hqo, -10000
  %i.hqp = add i32 %.neg.i1155, %i.hna            ; 2 uses
  %i.hqq = mul nuw i32 %i.hqo, 5243
  %i.hqr = lshr i32 %i.hqq, 19                    ; 2 uses
  %i.hqs = mul i32 %i.hqp, 5243
  %i.hqt = lshr i32 %i.hqs, 19                    ; 2 uses
  %.neg17.i1156 = mul nsw i32 %i.hqr, -100
  %i.hqu = add nsw i32 %.neg17.i1156, %i.hqo
  %.neg18.i1157 = mul i32 %i.hqt, 2147483548
  %i.hqv = add i32 %.neg18.i1157, %i.hqp
  %i.hqw = shl nuw nsw i32 %i.hqr, 1
  %i.hqx = zext nneg i32 %i.hqw to i64
  %i.hqy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hqx
  %i.hqz = load i16, ptr %i.hqy, align 2
  store i16 %i.hqz, ptr %.0.i1044, align 1
  %i.hra = getelementptr inbounds nuw i8, ptr %.0.i1044, i64 2
  %i.hrb = shl nsw i32 %i.hqu, 1
  %i.hrc = zext i32 %i.hrb to i64
  %i.hrd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hrc
  %i.hre = load i16, ptr %i.hrd, align 2
  store i16 %i.hre, ptr %i.hra, align 1
  %i.hrf = getelementptr inbounds nuw i8, ptr %.0.i1044, i64 4
  %i.hrg = shl nuw nsw i32 %i.hqt, 1
  %i.hrh = zext nneg i32 %i.hrg to i64
  %i.hri = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hrh
  %i.hrj = load i16, ptr %i.hri, align 2
  store i16 %i.hrj, ptr %i.hrf, align 1
  %i.hrk = getelementptr inbounds nuw i8, ptr %.0.i1044, i64 6
  %i.hrl = shl i32 %i.hqv, 1
  %i.hrm = zext i32 %i.hrl to i64
  %i.hrn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hrm
  %i.hro = load i16, ptr %i.hrn, align 2
  store i16 %i.hro, ptr %i.hrk, align 1
  %i.hrp = getelementptr inbounds nuw i8, ptr %.0.i1044, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit: ; preds = %bb.yh, %bb.yg, %bb.ye, %bb.yc, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1051
  %.0.i673 = phi ptr [ %i.hrp, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit1051 ], [ %i.hjx, %bb.yc ], [ %i.hkp, %bb.ye ], [ %i.hlp, %bb.yg ], [ %i.hmx, %bb.yh ] ; 2 uses
  store i16 12334, ptr %.0.i673, align 1
  %i.hrq = getelementptr inbounds nuw i8, ptr %.0.i673, i64 2
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.yp:                                            ; preds = %bb.xz, %bb.xy
  %i.hrr = icmp eq i64 %i.hit, 0
  %i.hrs = icmp ne i32 %i.hiw, 1
  %i.hrt = and i1 %i.hrr, %i.hrs                  ; 2 uses
  %i.hru = shl nuw nsw i64 %i.hjg, 2              ; 3 uses
  %i.hrv = add nsw i64 %i.hru, -2
  %i.hrw = zext i1 %i.hrt to i64
  %i.hrx = or disjoint i64 %i.hrv, %i.hrw
  %i.hry = or disjoint i64 %i.hru, 2
  %i.hrz = mul nuw nsw i32 %i.hiw, 315653
  %i.hsa = add nsw i32 %i.hrz, -339326975
  %.neg.i682 = select i1 %i.hrt, i32 -131237, i32 0
  %i.hsb = add nsw i32 %.neg.i682, %i.hsa
  %i.hsc = ashr i32 %i.hsb, 20                    ; 5 uses
  %i.hsd = mul nsw i32 %i.hsc, -217707
  %i.hse = ashr i32 %i.hsd, 16
  %i.hsf = add nsw i32 %i.hiw, -1074
  %i.hsg = add nsw i32 %i.hsf, %i.hse
  %.neg1794 = mul nsw i32 %i.hsc, -2
  %i.hsh = sext i32 %.neg1794 to i64
  %i.hsi = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.hsh ; 2 uses
  %i.hsj = getelementptr i8, ptr %i.hsi, i64 5488
  %i.hsk = load i64, ptr %i.hsj, align 16, !tbaa !105
  %i.hsl = getelementptr i8, ptr %i.hsi, i64 5496
  %i.hsm = load i64, ptr %i.hsl, align 8, !tbaa !105
  %i.hsn = add nsw i32 %i.hsc, -1
  %i.hso = icmp ult i32 %i.hsn, -56
  %i.hsp = zext i1 %i.hso to i64
  %i.hsq = add i64 %i.hsm, %i.hsp                 ; 3 uses
  %i.hsr = zext i32 %i.hsg to i64                 ; 3 uses
  %i.hss = shl i64 %i.hrx, %i.hsr                 ; 2 uses
  %i.hst = zext i64 %i.hss to i128
  %i.hsu = tail call i64 @llvm.umulh.i64(i64 %i.hss, i64 %i.hsq)
  %i.hsv = zext i64 %i.hsu to i128
  %i.hsw = zext i64 %i.hsk to i128                ; 3 uses
  %i.hsx = mul nuw i128 %i.hsw, %i.hst
  %i.hsy = add nuw i128 %i.hsx, %i.hsv            ; 2 uses
  %i.hsz = lshr i128 %i.hsy, 64
  %i.hta = trunc nuw i128 %i.hsz to i64
  %i.htb = and i128 %i.hsy, 18446744073709551614
  %i.htc = icmp ne i128 %i.htb, 0
  %i.htd = zext i1 %i.htc to i64
  %i.hte = or i64 %i.htd, %i.hta
  %i.htf = shl i64 %i.hru, %i.hsr                 ; 2 uses
  %i.htg = zext i64 %i.htf to i128
  %i.hth = tail call i64 @llvm.umulh.i64(i64 %i.htf, i64 %i.hsq)
  %i.hti = zext i64 %i.hth to i128
  %i.htj = mul nuw i128 %i.hsw, %i.htg
  %i.htk = add nuw i128 %i.htj, %i.hti            ; 2 uses
  %i.htl = lshr i128 %i.htk, 64
  %i.htm = trunc nuw i128 %i.htl to i64           ; 5 uses
  %i.htn = and i128 %i.htk, 18446744073709551614
  %i.hto = icmp ne i128 %i.htn, 0
  %i.htp = zext i1 %i.hto to i64
  %i.htq = or i64 %i.htp, %i.htm                  ; 2 uses
  %i.htr = shl i64 %i.hry, %i.hsr                 ; 2 uses
  %i.hts = zext i64 %i.htr to i128
  %i.htt = tail call i64 @llvm.umulh.i64(i64 %i.htr, i64 %i.hsq)
  %i.htu = zext i64 %i.htt to i128
  %i.htv = mul nuw i128 %i.hsw, %i.hts
  %i.htw = add nuw i128 %i.htv, %i.htu            ; 2 uses
  %i.htx = lshr i128 %i.htw, 64
  %i.hty = trunc nuw i128 %i.htx to i64
  %i.htz = and i128 %i.htw, 18446744073709551614
  %i.hua = icmp ne i128 %i.htz, 0
  %i.hub = zext i1 %i.hua to i64
  %i.huc = or i64 %i.hub, %i.hty
  %i.hud = and i64 %i.his, 1                      ; 2 uses
  %i.hue = add i64 %i.hte, %i.hud                 ; 2 uses
  %i.huf = sub i64 %i.huc, %i.hud                 ; 2 uses
  %i.hug = lshr i64 %i.htm, 2                     ; 2 uses
  %i.huh = icmp ugt i64 %i.htm, 39
  br i1 %i.huh, label %bb.yq, label %bb.ys

bb.yq:                                            ; preds = %bb.yp
  %i.hui = udiv i64 %i.htm, 40                    ; 2 uses
  %i.huj = mul nuw i64 %i.hui, 40                 ; 2 uses
  %i.huk = add i64 %i.huj, 40
  %i.hul = icmp uge i64 %i.huf, %i.huk            ; 2 uses
  %i.hum = icmp ugt i64 %i.hue, %i.huj
  %.not.i685 = xor i1 %i.hum, %i.hul
  br i1 %.not.i685, label %bb.ys, label %bb.yr

bb.yr:                                            ; preds = %bb.yq
  %i.hun = zext i1 %i.hul to i64
  %i.huo = add nuw nsw i64 %i.hui, %i.hun
  %i.hup = add nsw i32 %i.hsc, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686

bb.ys:                                            ; preds = %bb.yq, %bb.yp
  %i.huq = and i64 %i.htm, -4                     ; 3 uses
  %i.hur = add i64 %i.huq, 4
  %i.hus = icmp uge i64 %i.huf, %i.hur            ; 2 uses
  %i.hut = or disjoint i64 %i.huq, 2              ; 2 uses
  %i.huu = icmp ugt i64 %i.htq, %i.hut
  br i1 %i.huu, label %bb.yu, label %bb.yt

bb.yt:                                            ; preds = %bb.ys
  %i.huv = icmp eq i64 %i.htq, %i.hut
  %i.huw = trunc i64 %i.hug to i1
  %i.hux = and i1 %i.huv, %i.huw
  br label %bb.yu

bb.yu:                                            ; preds = %bb.yt, %bb.ys
  %i.huy = phi i1 [ true, %bb.ys ], [ %i.hux, %bb.yt ]
  %i.huz = icmp ugt i64 %i.hue, %i.huq
  %.not58.i683 = xor i1 %i.huz, %i.hus
  %i.hva = select i1 %.not58.i683, i1 %i.huy, i1 %i.hus
  %i.hvb = zext i1 %i.hva to i64
  %i.hvc = add nuw nsw i64 %i.hug, %i.hvb
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686: ; preds = %bb.yr, %bb.yu
  %.11603 = phi i64 [ %i.hvc, %bb.yu ], [ %i.huo, %bb.yr ] ; 8 uses
  %storemerge.i684 = phi i32 [ %i.hsc, %bb.yu ], [ %i.hup, %bb.yr ]
  %i.hvd = icmp samesign ult i64 %.11603, 10000000000000000
  %i.hve = select i1 %i.hvd, i32 16, i32 17
  %i.hvf = icmp samesign ult i64 %.11603, 1000000000000000
  %.neg129.i649 = sext i1 %i.hvf to i32
  %i.hvg = add nsw i32 %i.hve, %.neg129.i649
  %i.hvh = add nsw i32 %i.hvg, %storemerge.i684   ; 8 uses
  %i.hvi = add nsw i32 %i.hvh, 5
  %or.cond3.i650 = icmp ult i32 %i.hvi, 27
  br i1 %or.cond3.i650, label %bb.yv, label %bb.zk

bb.yv:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686
  %i.hvj = icmp slt i32 %i.hvh, 1
  br i1 %i.hvj, label %bb.yw, label %bb.zd

bb.yw:                                            ; preds = %bb.yv
  %i.hvk = sub nsw i32 2, %i.hvh
  %i.hvl = zext nneg i32 %i.hvk to i64
  %i.hvm = getelementptr inbounds nuw i8, ptr %i.hjd, i64 %i.hvl ; 2 uses
  %i.hvn = udiv i64 %.11603, 100000000            ; 2 uses
  %i.hvo = trunc i64 %i.hvn to i32                ; 2 uses
  %.neg.i707 = mul i64 %i.hvn, 4194967296
  %i.hvp = add i64 %.neg.i707, %.11603            ; 2 uses
  %i.hvq = trunc i64 %i.hvp to i32                ; 2 uses
  %i.hvr = udiv i32 %i.hvo, 10000                 ; 3 uses
  %.neg95.i = mul i32 %i.hvr, -10000
  %i.hvs = add i32 %.neg95.i, %i.hvo              ; 5 uses
  %i.hvt = zext nneg i32 %i.hvr to i64
  %i.hvu = mul nuw nsw i64 %i.hvt, 167773
  %i.hvv = lshr i64 %i.hvu, 24
  %i.hvw = trunc nuw nsw i64 %i.hvv to i32        ; 3 uses
  %i.hvx = mul nuw nsw i32 %i.hvw, 41
  %i.hvy = lshr i32 %i.hvx, 12                    ; 3 uses
  %.neg96.i = mul nsw i32 %i.hvy, -100
  %i.hvz = add nsw i32 %.neg96.i, %i.hvw          ; 3 uses
  %.neg97.i = mul nsw i32 %i.hvw, -100
  %i.hwa = add nsw i32 %.neg97.i, %i.hvr          ; 3 uses
  %i.hwb = trunc nuw nsw i32 %i.hvy to i8
  %i.hwc = add nuw nsw i8 %i.hwb, 48
  store i8 %i.hwc, ptr %i.hvm, align 1, !tbaa !99
  %i.hwd = icmp ne i32 %i.hvy, 0                  ; 2 uses
  %i.hwe = zext i1 %i.hwd to i64
  %i.hwf = getelementptr inbounds nuw i8, ptr %i.hvm, i64 %i.hwe ; 2 uses
  %i.hwg = icmp ult i32 %i.hvz, 10
  %.not3765 = xor i1 %i.hwd, true
  %i.hwh = and i1 %i.hwg, %.not3765               ; 2 uses
  %i.hwi = shl nsw i32 %i.hvz, 1
  %i.hwj = zext i32 %i.hwi to i64
  %i.hwk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hwj
  %.neg98.i = sext i1 %i.hwh to i64
  %i.hwl = zext i1 %i.hwh to i64
  %i.hwm = getelementptr inbounds nuw i8, ptr %i.hwk, i64 %i.hwl
  %i.hwn = load i16, ptr %i.hwm, align 1
  store i16 %i.hwn, ptr %i.hwf, align 1
  %i.hwo = getelementptr inbounds i8, ptr %i.hwf, i64 %.neg98.i ; 10 uses
  %i.hwp = getelementptr inbounds nuw i8, ptr %i.hwo, i64 2
  %i.hwq = shl nsw i32 %i.hwa, 1
  %i.hwr = zext i32 %i.hwq to i64
  %i.hws = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hwr
  %i.hwt = load i16, ptr %i.hws, align 2
  store i16 %i.hwt, ptr %i.hwp, align 1
  %.not.i708 = icmp eq i32 %i.hvq, 0
  br i1 %.not.i708, label %bb.za, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.hwu = mul i32 %i.hvs, 5243
  %i.hwv = lshr i32 %i.hwu, 19                    ; 2 uses
  %.neg103.i = mul i32 %i.hwv, 2147483548
  %i.hww = add i32 %.neg103.i, %i.hvs
  %i.hwx = and i64 %i.hvp, 4294967295
  %i.hwy = mul nuw nsw i64 %i.hwx, 109951163
  %i.hwz = lshr i64 %i.hwy, 40
  %i.hxa = trunc nuw nsw i64 %i.hwz to i32        ; 3 uses
  %.neg104.i = mul i32 %i.hxa, -10000
  %i.hxb = add i32 %.neg104.i, %i.hvq             ; 3 uses
  %i.hxc = mul nuw i32 %i.hxa, 5243
  %i.hxd = lshr i32 %i.hxc, 19                    ; 3 uses
  %.neg105.i = mul nsw i32 %i.hxd, -100
  %i.hxe = add nsw i32 %.neg105.i, %i.hxa         ; 2 uses
  %i.hxf = getelementptr inbounds nuw i8, ptr %i.hwo, i64 4
  %i.hxg = shl nuw nsw i32 %i.hwv, 1
  %i.hxh = zext nneg i32 %i.hxg to i64
  %i.hxi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxh
  %i.hxj = load i16, ptr %i.hxi, align 2
  store i16 %i.hxj, ptr %i.hxf, align 1
  %i.hxk = getelementptr inbounds nuw i8, ptr %i.hwo, i64 6
  %i.hxl = shl i32 %i.hww, 1
  %i.hxm = zext i32 %i.hxl to i64
  %i.hxn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxm
  %i.hxo = load i16, ptr %i.hxn, align 2
  store i16 %i.hxo, ptr %i.hxk, align 1
  %i.hxp = getelementptr inbounds nuw i8, ptr %i.hwo, i64 8
  %i.hxq = shl nuw nsw i32 %i.hxd, 1
  %i.hxr = zext nneg i32 %i.hxq to i64
  %i.hxs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxr
  %i.hxt = load i16, ptr %i.hxs, align 2
  store i16 %i.hxt, ptr %i.hxp, align 1
  %i.hxu = getelementptr inbounds nuw i8, ptr %i.hwo, i64 10
  %i.hxv = shl nsw i32 %i.hxe, 1
  %i.hxw = zext i32 %i.hxv to i64
  %i.hxx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxw
  %i.hxy = load i16, ptr %i.hxx, align 2
  store i16 %i.hxy, ptr %i.hxu, align 1
  %.not106.i709 = icmp eq i32 %i.hxb, 0
  br i1 %.not106.i709, label %bb.yz, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  %i.hxz = mul i32 %i.hxb, 5243
  %i.hya = lshr i32 %i.hxz, 19                    ; 3 uses
  %.neg108.i = mul nsw i32 %i.hya, -100
  %i.hyb = add i32 %.neg108.i, %i.hxb             ; 2 uses
  %i.hyc = getelementptr inbounds nuw i8, ptr %i.hwo, i64 12
  %i.hyd = shl nuw nsw i32 %i.hya, 1
  %i.hye = zext nneg i32 %i.hyd to i64
  %i.hyf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hye
  %i.hyg = load i16, ptr %i.hyf, align 2
  store i16 %i.hyg, ptr %i.hyc, align 1
  %i.hyh = getelementptr inbounds nuw i8, ptr %i.hwo, i64 14
  %i.hyi = shl nuw i32 %i.hyb, 1
  %i.hyj = zext i32 %i.hyi to i64
  %i.hyk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyj
  %i.hyl = load i16, ptr %i.hyk, align 2
  store i16 %i.hyl, ptr %i.hyh, align 1
  br label %bb.yz

bb.yz:                                            ; preds = %bb.yx, %bb.yy
  %.sink5280.a = phi i32 [ %i.hya, %bb.yy ], [ %i.hxd, %bb.yx ]
  %.sink5276 = phi i32 [ %i.hyb, %bb.yy ], [ %i.hxe, %bb.yx ] ; 2 uses
  %.sink5267 = phi i64 [ 16, %bb.yy ], [ 12, %bb.yx ]
  %i.hym = zext nneg i32 %.sink5280.a to i64
  %i.hyn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hym
  %i.hyo = load i8, ptr %i.hyn, align 1, !tbaa !99
  %i.hyp = zext i8 %i.hyo to i64
  %i.hyq = zext i32 %.sink5276 to i64
  %i.hyr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hyq
  %i.hys = load i8, ptr %i.hyr, align 1, !tbaa !99
  %i.hyt = zext i8 %i.hys to i64
  %.not107.i713 = icmp eq i32 %.sink5276, 0
  %i.hyu = add nuw nsw i64 %i.hyp, 2
  %i.hyv = select i1 %.not107.i713, i64 %i.hyu, i64 %i.hyt
  %i.hyw = sub nsw i64 %.sink5267, %i.hyv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

bb.za:                                            ; preds = %bb.yw
  %.not99.i714 = icmp eq i32 %i.hvs, 0
  br i1 %.not99.i714, label %bb.zc, label %bb.zb

bb.zb:                                            ; preds = %bb.za
  %i.hyx = mul i32 %i.hvs, 5243
  %i.hyy = lshr i32 %i.hyx, 19                    ; 3 uses
  %.neg101.i = mul nsw i32 %i.hyy, -100
  %i.hyz = add i32 %.neg101.i, %i.hvs             ; 3 uses
  %i.hza = getelementptr inbounds nuw i8, ptr %i.hwo, i64 4
  %i.hzb = shl nuw nsw i32 %i.hyy, 1
  %i.hzc = zext nneg i32 %i.hzb to i64
  %i.hzd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzc
  %i.hze = load i16, ptr %i.hzd, align 2
  store i16 %i.hze, ptr %i.hza, align 1
  %i.hzf = getelementptr inbounds nuw i8, ptr %i.hwo, i64 6
  %i.hzg = shl nuw i32 %i.hyz, 1
  %i.hzh = zext i32 %i.hzg to i64
  %i.hzi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzh
  %i.hzj = load i16, ptr %i.hzi, align 2
  store i16 %i.hzj, ptr %i.hzf, align 1
  %i.hzk = zext nneg i32 %i.hyy to i64
  %i.hzl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzk
  %i.hzm = load i8, ptr %i.hzl, align 1, !tbaa !99
  %i.hzn = zext i8 %i.hzm to i64
  %i.hzo = zext i32 %i.hyz to i64
  %i.hzp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzo
  %i.hzq = load i8, ptr %i.hzp, align 1, !tbaa !99
  %i.hzr = zext i8 %i.hzq to i64
  %.not102.i715 = icmp eq i32 %i.hyz, 0
  %i.hzs = add nuw nsw i64 %i.hzn, 2
  %i.hzt = select i1 %.not102.i715, i64 %i.hzs, i64 %i.hzr
  %i.hzu = sub nsw i64 8, %i.hzt
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

bb.zc:                                            ; preds = %bb.za
  %i.hzv = zext i32 %i.hvz to i64
  %i.hzw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzv
  %i.hzx = load i8, ptr %i.hzw, align 1, !tbaa !99
  %i.hzy = zext i8 %i.hzx to i64
  %i.hzz = zext i32 %i.hwa to i64
  %i.iaa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzz
  %i.iab = load i8, ptr %i.iaa, align 1, !tbaa !99
  %i.iac = zext i8 %i.iab to i64
  %.not100.i716 = icmp eq i32 %i.hwa, 0
  %i.iad = select i1 %.not100.i716, i64 %i.hzy, i64 0
  %i.iae = add nuw nsw i64 %i.iad, %i.iac
  %i.iaf = sub nsw i64 4, %i.iae
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit: ; preds = %bb.yz, %bb.zb, %bb.zc
  %.sink5281.a = phi i64 [ %i.hyw, %bb.yz ], [ %i.hzu, %bb.zb ], [ %i.iaf, %bb.zc ]
  %.pn.i710 = and i64 %.sink5281.a, 4294967295
  %.0.i711 = getelementptr inbounds nuw i8, ptr %i.hwo, i64 %.pn.i710 ; 2 uses
  store i8 48, ptr %i.hjd, align 1, !tbaa !99
  %i.iag = getelementptr inbounds nuw i8, ptr %i.hjd, i64 1
  store i8 46, ptr %i.iag, align 1, !tbaa !99
  %i.iah = icmp slt i32 %i.hvh, 0
  br i1 %i.iah, label %.lr.ph3042.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

.lr.ph3042.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit
  %i.iai = getelementptr i8, ptr %i.hjd, i64 2
  %narrow3958 = sub nsw i32 0, %i.hvh
  %i.iaj = zext nneg i32 %narrow3958 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.iai, i8 48, i64 %i.iaj, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zd:                                            ; preds = %bb.yv
  %i.iak = getelementptr inbounds nuw i8, ptr %i.hjd, i64 1 ; 2 uses
  %i.ial = udiv i64 %.11603, 100000000            ; 2 uses
  %i.iam = trunc i64 %i.ial to i32                ; 2 uses
  %.neg.i717 = mul i64 %i.ial, 4194967296
  %i.ian = add i64 %.neg.i717, %.11603            ; 2 uses
  %i.iao = trunc i64 %i.ian to i32                ; 2 uses
  %i.iap = udiv i32 %i.iam, 10000                 ; 3 uses
  %.neg95.i718 = mul i32 %i.iap, -10000
  %i.iaq = add i32 %.neg95.i718, %i.iam           ; 5 uses
  %i.iar = zext nneg i32 %i.iap to i64
  %i.ias = mul nuw nsw i64 %i.iar, 167773
  %i.iat = lshr i64 %i.ias, 24
  %i.iau = trunc nuw nsw i64 %i.iat to i32        ; 3 uses
  %i.iav = mul nuw nsw i32 %i.iau, 41
  %i.iaw = lshr i32 %i.iav, 12                    ; 3 uses
  %.neg96.i719 = mul nsw i32 %i.iaw, -100
  %i.iax = add nsw i32 %.neg96.i719, %i.iau       ; 3 uses
  %.neg97.i720 = mul nsw i32 %i.iau, -100
  %i.iay = add nsw i32 %.neg97.i720, %i.iap       ; 3 uses
  %i.iaz = trunc nuw nsw i32 %i.iaw to i8
  %i.iba = add nuw nsw i8 %i.iaz, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hjd, i8 48, i64 24, i1 false)
  store i8 %i.iba, ptr %i.iak, align 1, !tbaa !99
  %i.ibb = icmp ne i32 %i.iaw, 0                  ; 2 uses
  %i.ibc = zext i1 %i.ibb to i64
  %i.ibd = getelementptr inbounds nuw i8, ptr %i.iak, i64 %i.ibc ; 2 uses
  %i.ibe = icmp ult i32 %i.iax, 10
  %.not3764 = xor i1 %i.ibb, true
  %i.ibf = and i1 %i.ibe, %.not3764               ; 2 uses
  %i.ibg = shl nsw i32 %i.iax, 1
  %i.ibh = zext i32 %i.ibg to i64
  %i.ibi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ibh
  %.neg98.i721 = sext i1 %i.ibf to i64
  %i.ibj = zext i1 %i.ibf to i64
  %i.ibk = getelementptr inbounds nuw i8, ptr %i.ibi, i64 %i.ibj
  %i.ibl = load i16, ptr %i.ibk, align 1
  store i16 %i.ibl, ptr %i.ibd, align 1
  %i.ibm = getelementptr inbounds i8, ptr %i.ibd, i64 %.neg98.i721 ; 10 uses
  %i.ibn = getelementptr inbounds nuw i8, ptr %i.ibm, i64 2
  %i.ibo = shl nsw i32 %i.iay, 1
  %i.ibp = zext i32 %i.ibo to i64
  %i.ibq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ibp
  %i.ibr = load i16, ptr %i.ibq, align 2
  store i16 %i.ibr, ptr %i.ibn, align 1
  %.not.i722 = icmp eq i32 %i.iao, 0
  br i1 %.not.i722, label %bb.zh, label %bb.ze

bb.ze:                                            ; preds = %bb.zd
  %i.ibs = mul i32 %i.iaq, 5243
  %i.ibt = lshr i32 %i.ibs, 19                    ; 2 uses
  %.neg103.i723 = mul i32 %i.ibt, 2147483548
  %i.ibu = add i32 %.neg103.i723, %i.iaq
  %i.ibv = and i64 %i.ian, 4294967295
  %i.ibw = mul nuw nsw i64 %i.ibv, 109951163
  %i.ibx = lshr i64 %i.ibw, 40
  %i.iby = trunc nuw nsw i64 %i.ibx to i32        ; 3 uses
  %.neg104.i724 = mul i32 %i.iby, -10000
  %i.ibz = add i32 %.neg104.i724, %i.iao          ; 3 uses
  %i.ica = mul nuw i32 %i.iby, 5243
  %i.icb = lshr i32 %i.ica, 19                    ; 3 uses
  %.neg105.i725 = mul nsw i32 %i.icb, -100
  %i.icc = add nsw i32 %.neg105.i725, %i.iby      ; 2 uses
  %i.icd = getelementptr inbounds nuw i8, ptr %i.ibm, i64 4
  %i.ice = shl nuw nsw i32 %i.ibt, 1
  %i.icf = zext nneg i32 %i.ice to i64
  %i.icg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icf
  %i.ich = load i16, ptr %i.icg, align 2
  store i16 %i.ich, ptr %i.icd, align 1
  %i.ici = getelementptr inbounds nuw i8, ptr %i.ibm, i64 6
  %i.icj = shl i32 %i.ibu, 1
  %i.ick = zext i32 %i.icj to i64
  %i.icl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ick
  %i.icm = load i16, ptr %i.icl, align 2
  store i16 %i.icm, ptr %i.ici, align 1
  %i.icn = getelementptr inbounds nuw i8, ptr %i.ibm, i64 8
  %i.ico = shl nuw nsw i32 %i.icb, 1
  %i.icp = zext nneg i32 %i.ico to i64
  %i.icq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icp
  %i.icr = load i16, ptr %i.icq, align 2
  store i16 %i.icr, ptr %i.icn, align 1
  %i.ics = getelementptr inbounds nuw i8, ptr %i.ibm, i64 10
  %i.ict = shl nsw i32 %i.icc, 1
  %i.icu = zext i32 %i.ict to i64
  %i.icv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icu
  %i.icw = load i16, ptr %i.icv, align 2
  store i16 %i.icw, ptr %i.ics, align 1
  %.not106.i726 = icmp eq i32 %i.ibz, 0
  br i1 %.not106.i726, label %bb.zg, label %bb.zf

bb.zf:                                            ; preds = %bb.ze
  %i.icx = mul i32 %i.ibz, 5243
  %i.icy = lshr i32 %i.icx, 19                    ; 3 uses
  %.neg108.i727 = mul nsw i32 %i.icy, -100
  %i.icz = add i32 %.neg108.i727, %i.ibz          ; 2 uses
  %i.ida = getelementptr inbounds nuw i8, ptr %i.ibm, i64 12
  %i.idb = shl nuw nsw i32 %i.icy, 1
  %i.idc = zext nneg i32 %i.idb to i64
  %i.idd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idc
  %i.ide = load i16, ptr %i.idd, align 2
  store i16 %i.ide, ptr %i.ida, align 1
  %i.idf = getelementptr inbounds nuw i8, ptr %i.ibm, i64 14
  %i.idg = shl nuw i32 %i.icz, 1
  %i.idh = zext i32 %i.idg to i64
  %i.idi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idh
  %i.idj = load i16, ptr %i.idi, align 2
  store i16 %i.idj, ptr %i.idf, align 1
  br label %bb.zg

bb.zg:                                            ; preds = %bb.ze, %bb.zf
  %.sink5295.a = phi i32 [ %i.icy, %bb.zf ], [ %i.icb, %bb.ze ]
  %.sink5291 = phi i32 [ %i.icz, %bb.zf ], [ %i.icc, %bb.ze ] ; 2 uses
  %.sink5282 = phi i64 [ 16, %bb.zf ], [ 12, %bb.ze ]
  %i.idk = zext nneg i32 %.sink5295.a to i64
  %i.idl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.idk
  %i.idm = load i8, ptr %i.idl, align 1, !tbaa !99
  %i.idn = zext i8 %i.idm to i64
  %i.ido = zext i32 %.sink5291 to i64
  %i.idp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ido
  %i.idq = load i8, ptr %i.idp, align 1, !tbaa !99
  %i.idr = zext i8 %i.idq to i64
  %.not107.i733 = icmp eq i32 %.sink5291, 0
  %i.ids = add nuw nsw i64 %i.idn, 2
  %i.idt = select i1 %.not107.i733, i64 %i.ids, i64 %i.idr
  %i.idu = sub nsw i64 %.sink5282, %i.idt
  br label %._crit_edge3040

bb.zh:                                            ; preds = %bb.zd
  %.not99.i734 = icmp eq i32 %i.iaq, 0
  br i1 %.not99.i734, label %bb.zj, label %bb.zi

bb.zi:                                            ; preds = %bb.zh
  %i.idv = mul i32 %i.iaq, 5243
  %i.idw = lshr i32 %i.idv, 19                    ; 3 uses
  %.neg101.i735 = mul nsw i32 %i.idw, -100
  %i.idx = add i32 %.neg101.i735, %i.iaq          ; 3 uses
  %i.idy = getelementptr inbounds nuw i8, ptr %i.ibm, i64 4
  %i.idz = shl nuw nsw i32 %i.idw, 1
  %i.iea = zext nneg i32 %i.idz to i64
  %i.ieb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iea
  %i.iec = load i16, ptr %i.ieb, align 2
  store i16 %i.iec, ptr %i.idy, align 1
  %i.ied = getelementptr inbounds nuw i8, ptr %i.ibm, i64 6
  %i.iee = shl nuw i32 %i.idx, 1
  %i.ief = zext i32 %i.iee to i64
  %i.ieg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ief
  %i.ieh = load i16, ptr %i.ieg, align 2
  store i16 %i.ieh, ptr %i.ied, align 1
  %i.iei = zext nneg i32 %i.idw to i64
  %i.iej = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iei
  %i.iek = load i8, ptr %i.iej, align 1, !tbaa !99
  %i.iel = zext i8 %i.iek to i64
  %i.iem = zext i32 %i.idx to i64
  %i.ien = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iem
  %i.ieo = load i8, ptr %i.ien, align 1, !tbaa !99
  %i.iep = zext i8 %i.ieo to i64
  %.not102.i736 = icmp eq i32 %i.idx, 0
  %i.ieq = add nuw nsw i64 %i.iel, 2
  %i.ier = select i1 %.not102.i736, i64 %i.ieq, i64 %i.iep
  %i.ies = sub nsw i64 8, %i.ier
  br label %._crit_edge3040

bb.zj:                                            ; preds = %bb.zh
  %i.iet = zext i32 %i.iax to i64
  %i.ieu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iet
  %i.iev = load i8, ptr %i.ieu, align 1, !tbaa !99
  %i.iew = zext i8 %i.iev to i64
  %i.iex = zext i32 %i.iay to i64
  %i.iey = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iex
  %i.iez = load i8, ptr %i.iey, align 1, !tbaa !99
  %i.ifa = zext i8 %i.iez to i64
  %.not100.i737 = icmp eq i32 %i.iay, 0
  %i.ifb = select i1 %.not100.i737, i64 %i.iew, i64 0
  %i.ifc = add nuw nsw i64 %i.ifb, %i.ifa
  %i.ifd = sub nsw i64 4, %i.ifc
  br label %._crit_edge3040

._crit_edge3040:                                  ; preds = %bb.zg, %bb.zi, %bb.zj
  %.sink5296.a = phi i64 [ %i.idu, %bb.zg ], [ %i.ies, %bb.zi ], [ %i.ifd, %bb.zj ]
  %.pn.i730 = and i64 %.sink5296.a, 4294967295
  %.0.i731 = getelementptr inbounds nuw i8, ptr %i.ibm, i64 %.pn.i730 ; 2 uses
  %scevgep3705 = getelementptr i8, ptr %.3354.i, i64 1
  %scevgep3706 = getelementptr i8, ptr %scevgep3705, i64 %.lobit.i645
  %i.ife = zext nneg i32 %i.hvh to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hjd, ptr align 1 %scevgep3706, i64 %i.ife, i1 false), !tbaa !99
  %i.iff = zext nneg i32 %i.hvh to i64
  %i.ifg = getelementptr inbounds nuw i8, ptr %i.hjd, i64 %i.iff ; 2 uses
  store i8 46, ptr %i.ifg, align 1, !tbaa !99
  %i.ifh = getelementptr inbounds nuw i8, ptr %i.ifg, i64 2 ; 2 uses
  %i.ifi = icmp ult ptr %i.ifh, %.0.i731
  %spec.select1769 = select i1 %i.ifi, ptr %.0.i731, ptr %i.ifh
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.thread

bb.zk:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit686
  %.ptr1800 = getelementptr inbounds nuw i8, ptr %i.hjd, i64 1 ; 3 uses
  %i.ifj = udiv i64 %.11603, 100000000            ; 2 uses
  %i.ifk = trunc i64 %i.ifj to i32                ; 2 uses
  %.neg.i739 = mul i64 %i.ifj, 4194967296
  %i.ifl = add i64 %.neg.i739, %.11603            ; 2 uses
  %i.ifm = trunc i64 %i.ifl to i32                ; 2 uses
  %i.ifn = udiv i32 %i.ifk, 10000                 ; 3 uses
  %.neg95.i740 = mul i32 %i.ifn, -10000
  %i.ifo = add i32 %.neg95.i740, %i.ifk           ; 5 uses
  %i.ifp = zext nneg i32 %i.ifn to i64
  %i.ifq = mul nuw nsw i64 %i.ifp, 167773
  %i.ifr = lshr i64 %i.ifq, 24
  %i.ifs = trunc nuw nsw i64 %i.ifr to i32        ; 3 uses
  %i.ift = mul nuw nsw i32 %i.ifs, 41
  %i.ifu = lshr i32 %i.ift, 12                    ; 3 uses
  %.neg96.i741 = mul nsw i32 %i.ifu, -100
  %i.ifv = add nsw i32 %.neg96.i741, %i.ifs       ; 3 uses
  %.neg97.i742 = mul nsw i32 %i.ifs, -100
  %i.ifw = add nsw i32 %.neg97.i742, %i.ifn       ; 3 uses
  %i.ifx = trunc nuw nsw i32 %i.ifu to i8
  %i.ify = add nuw nsw i8 %i.ifx, 48
  store i8 %i.ify, ptr %.ptr1800, align 1, !tbaa !99
  %.not1805 = icmp eq i32 %i.ifu, 0               ; 2 uses
  %.add1795 = select i1 %.not1805, i64 1, i64 2   ; 2 uses
  %.ptr1801 = getelementptr inbounds nuw i8, ptr %i.hjd, i64 %.add1795
  %i.ifz = icmp ult i32 %i.ifv, 10
  %i.iga = and i1 %.not1805, %i.ifz               ; 2 uses
  %i.igb = shl nsw i32 %i.ifv, 1
  %i.igc = zext i32 %i.igb to i64
  %i.igd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.igc
  %.neg98.i743 = sext i1 %i.iga to i64
  %i.ige = zext i1 %i.iga to i64
  %i.igf = getelementptr inbounds nuw i8, ptr %i.igd, i64 %i.ige
  %i.igg = load i16, ptr %i.igf, align 1
  store i16 %i.igg, ptr %.ptr1801, align 1
  %.add1796 = add nsw i64 %.add1795, %.neg98.i743 ; 2 uses
  %.ptr1802 = getelementptr inbounds nuw i8, ptr %i.hjd, i64 %.add1796 ; 9 uses
  %i.igh = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 2
  %i.igi = shl nsw i32 %i.ifw, 1
  %i.igj = zext i32 %i.igi to i64
  %i.igk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.igj
  %i.igl = load i16, ptr %i.igk, align 2
  store i16 %i.igl, ptr %i.igh, align 1
  %.not.i744 = icmp eq i32 %i.ifm, 0
  br i1 %.not.i744, label %bb.zo, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.igm = mul i32 %i.ifo, 5243
  %i.ign = lshr i32 %i.igm, 19                    ; 2 uses
  %.neg103.i745 = mul i32 %i.ign, 2147483548
  %i.igo = add i32 %.neg103.i745, %i.ifo
  %i.igp = and i64 %i.ifl, 4294967295
  %i.igq = mul nuw nsw i64 %i.igp, 109951163
  %i.igr = lshr i64 %i.igq, 40
  %i.igs = trunc nuw nsw i64 %i.igr to i32        ; 3 uses
  %.neg104.i746 = mul i32 %i.igs, -10000
  %i.igt = add i32 %.neg104.i746, %i.ifm          ; 3 uses
  %i.igu = mul nuw i32 %i.igs, 5243
  %i.igv = lshr i32 %i.igu, 19                    ; 3 uses
  %.neg105.i747 = mul nsw i32 %i.igv, -100
  %i.igw = add nsw i32 %.neg105.i747, %i.igs      ; 3 uses
  %i.igx = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 4
  %i.igy = shl nuw nsw i32 %i.ign, 1
  %i.igz = zext nneg i32 %i.igy to i64
  %i.iha = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.igz
  %i.ihb = load i16, ptr %i.iha, align 2
  store i16 %i.ihb, ptr %i.igx, align 1
  %i.ihc = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 6
  %i.ihd = shl i32 %i.igo, 1
  %i.ihe = zext i32 %i.ihd to i64
  %i.ihf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihe
  %i.ihg = load i16, ptr %i.ihf, align 2
  store i16 %i.ihg, ptr %i.ihc, align 1
  %i.ihh = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 8
  %i.ihi = shl nuw nsw i32 %i.igv, 1
  %i.ihj = zext nneg i32 %i.ihi to i64
  %i.ihk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihj
  %i.ihl = load i16, ptr %i.ihk, align 2
  store i16 %i.ihl, ptr %i.ihh, align 1
  %i.ihm = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 10
  %i.ihn = shl nsw i32 %i.igw, 1
  %i.iho = zext i32 %i.ihn to i64
  %i.ihp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iho
  %i.ihq = load i16, ptr %i.ihp, align 2
  store i16 %i.ihq, ptr %i.ihm, align 1
  %.not106.i748 = icmp eq i32 %i.igt, 0
  br i1 %.not106.i748, label %bb.zn, label %bb.zm

bb.zm:                                            ; preds = %bb.zl
  %i.ihr = mul i32 %i.igt, 5243
  %i.ihs = lshr i32 %i.ihr, 19                    ; 3 uses
  %.neg108.i749 = mul nsw i32 %i.ihs, -100
  %i.iht = add i32 %.neg108.i749, %i.igt          ; 3 uses
  %i.ihu = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 12
  %i.ihv = shl nuw nsw i32 %i.ihs, 1
  %i.ihw = zext nneg i32 %i.ihv to i64
  %i.ihx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihw
  %i.ihy = load i16, ptr %i.ihx, align 2
  store i16 %i.ihy, ptr %i.ihu, align 1
  %i.ihz = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 14
  %i.iia = shl nuw i32 %i.iht, 1
  %i.iib = zext i32 %i.iia to i64
  %i.iic = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iib
  %i.iid = load i16, ptr %i.iic, align 2
  store i16 %i.iid, ptr %i.ihz, align 1
  %i.iie = zext nneg i32 %i.ihs to i64
  %i.iif = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iie
  %i.iig = load i8, ptr %i.iif, align 1, !tbaa !99
  %i.iih = zext i8 %i.iig to i64
  %i.iii = zext i32 %i.iht to i64
  %i.iij = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iii
  %i.iik = load i8, ptr %i.iij, align 1, !tbaa !99
  %i.iil = zext i8 %i.iik to i64
  %.not109.i750 = icmp eq i32 %i.iht, 0
  %i.iim = add nuw nsw i64 %i.iih, 2
  %i.iin = select i1 %.not109.i750, i64 %i.iim, i64 %i.iil
  %i.iio = sub nsw i64 16, %i.iin
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

bb.zn:                                            ; preds = %bb.zl
  %i.iip = zext nneg i32 %i.igv to i64
  %i.iiq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iip
  %i.iir = load i8, ptr %i.iiq, align 1, !tbaa !99
  %i.iis = zext i8 %i.iir to i64
  %i.iit = zext i32 %i.igw to i64
  %i.iiu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iit
  %i.iiv = load i8, ptr %i.iiu, align 1, !tbaa !99
  %i.iiw = zext i8 %i.iiv to i64
  %.not107.i755 = icmp eq i32 %i.igw, 0
  %i.iix = add nuw nsw i64 %i.iis, 2
  %i.iiy = select i1 %.not107.i755, i64 %i.iix, i64 %i.iiw
  %i.iiz = sub nsw i64 12, %i.iiy
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

bb.zo:                                            ; preds = %bb.zk
  %.not99.i756 = icmp eq i32 %i.ifo, 0
  br i1 %.not99.i756, label %bb.zq, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.ija = mul i32 %i.ifo, 5243
  %i.ijb = lshr i32 %i.ija, 19                    ; 3 uses
  %.neg101.i757 = mul nsw i32 %i.ijb, -100
  %i.ijc = add i32 %.neg101.i757, %i.ifo          ; 3 uses
  %i.ijd = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 4
  %i.ije = shl nuw nsw i32 %i.ijb, 1
  %i.ijf = zext nneg i32 %i.ije to i64
  %i.ijg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ijf
  %i.ijh = load i16, ptr %i.ijg, align 2
  store i16 %i.ijh, ptr %i.ijd, align 1
  %i.iji = getelementptr inbounds nuw i8, ptr %.ptr1802, i64 6
  %i.ijj = shl nuw i32 %i.ijc, 1
  %i.ijk = zext i32 %i.ijj to i64
  %i.ijl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ijk
  %i.ijm = load i16, ptr %i.ijl, align 2
  store i16 %i.ijm, ptr %i.iji, align 1
  %i.ijn = zext nneg i32 %i.ijb to i64
  %i.ijo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijn
  %i.ijp = load i8, ptr %i.ijo, align 1, !tbaa !99
  %i.ijq = zext i8 %i.ijp to i64
  %i.ijr = zext i32 %i.ijc to i64
  %i.ijs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijr
  %i.ijt = load i8, ptr %i.ijs, align 1, !tbaa !99
  %i.iju = zext i8 %i.ijt to i64
  %.not102.i758 = icmp eq i32 %i.ijc, 0
  %i.ijv = add nuw nsw i64 %i.ijq, 2
  %i.ijw = select i1 %.not102.i758, i64 %i.ijv, i64 %i.iju
  %i.ijx = sub nsw i64 8, %i.ijw
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

bb.zq:                                            ; preds = %bb.zo
  %i.ijy = zext i32 %i.ifv to i64
  %i.ijz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijy
  %i.ika = load i8, ptr %i.ijz, align 1, !tbaa !99
  %i.ikb = zext i8 %i.ika to i64
  %i.ikc = zext i32 %i.ifw to i64
  %i.ikd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ikc
  %i.ike = load i8, ptr %i.ikd, align 1, !tbaa !99
  %i.ikf = zext i8 %i.ike to i64
  %.not100.i759 = icmp eq i32 %i.ifw, 0
  %i.ikg = select i1 %.not100.i759, i64 %i.ikb, i64 0
  %i.ikh = add nuw nsw i64 %i.ikg, %i.ikf
  %i.iki = sub nsw i64 4, %i.ikh
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit760: ; preds = %bb.zm, %bb.zn, %bb.zp, %bb.zq
  %.pn.i752.pn.in = phi i64 [ %i.iki, %bb.zq ], [ %i.ijx, %bb.zp ], [ %i.iio, %bb.zm ], [ %i.iiz, %bb.zn ]
  %.pn.i752.pn = and i64 %.pn.i752.pn.in, 4294967295
  %.1.i754.idx = add nuw nsw i64 %.pn.i752.pn, %.add1796 ; 2 uses
  %.1.i754.ptr = getelementptr inbounds nuw i8, ptr %i.hjd, i64 %.1.i754.idx
  %i.ikj = icmp eq i64 %.1.i754.idx, 2
  %.neg130.i651 = sext i1 %i.ikj to i64
end_hunk_1
begin_hunk_2_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.dvp = lshr i32 %i.dvo, 19                    ; 2 uses
  %i.dvq = mul i32 %i.dvn, 5243
  %i.dvr = lshr i32 %i.dvq, 19                    ; 2 uses
  %.neg62.i777.i = mul nsw i32 %i.dvp, -100
  %i.dvs = add nsw i32 %.neg62.i777.i, %i.dvm
  %.neg63.i778.i = mul nsw i32 %i.dvr, -100
  %i.dvt = add nsw i32 %.neg63.i778.i, %i.dvn
  %i.dvu = icmp samesign ult i64 %i.dpt, 1000000000000000 ; 2 uses
  %i.dvv = shl nuw nsw i32 %i.dvp, 1
  %i.dvw = zext nneg i32 %i.dvv to i64
  %i.dvx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dvw
  %.neg64.i779.i = sext i1 %i.dvu to i64
  %i.dvy = zext i1 %i.dvu to i64
  %i.dvz = getelementptr inbounds nuw i8, ptr %i.dvx, i64 %i.dvy
  %i.dwa = load i16, ptr %i.dvz, align 1
  store i16 %i.dwa, ptr %i.dpk, align 1
  %i.dwb = getelementptr inbounds i8, ptr %i.dpk, i64 %.neg64.i779.i ; 4 uses
  %i.dwc = getelementptr inbounds nuw i8, ptr %i.dwb, i64 2
  %i.dwd = shl nsw i32 %i.dvs, 1
  %i.dwe = zext i32 %i.dwd to i64
  %i.dwf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dwe
  %i.dwg = load i16, ptr %i.dwf, align 2
  store i16 %i.dwg, ptr %i.dwc, align 1
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dwb, i64 4
  %i.dwi = shl nuw nsw i32 %i.dvr, 1
  %i.dwj = zext nneg i32 %i.dwi to i64
  %i.dwk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dwj
  %i.dwl = load i16, ptr %i.dwk, align 2
  store i16 %i.dwl, ptr %i.dwh, align 1
  %i.dwm = getelementptr inbounds nuw i8, ptr %i.dwb, i64 6
  %i.dwn = shl nsw i32 %i.dvt, 1
  %i.dwo = zext i32 %i.dwn to i64
  %i.dwp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dwo
  %i.dwq = load i16, ptr %i.dwp, align 2
  store i16 %i.dwq, ptr %i.dwm, align 1
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dwb, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit787.i

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit787.i: ; preds = %bb.oq, %bb.op, %bb.on, %bb.ol
  %.0.i780.i = phi ptr [ %i.dtr, %bb.ol ], [ %i.duj, %bb.on ], [ %i.dvj, %bb.op ], [ %i.dwr, %bb.oq ] ; 5 uses
  %i.dws = and i64 %i.dtg, 4294967295
  %i.dwt = mul nuw nsw i64 %i.dws, 109951163
  %i.dwu = lshr i64 %i.dwt, 40
  %i.dwv = trunc nuw nsw i64 %i.dwu to i32        ; 3 uses
  %.neg.i819.i = mul i32 %i.dwv, -10000
  %i.dww = add i32 %.neg.i819.i, %i.dth           ; 2 uses
  %i.dwx = mul nuw i32 %i.dwv, 5243
  %i.dwy = lshr i32 %i.dwx, 19                    ; 2 uses
  %i.dwz = mul i32 %i.dww, 5243
  %i.dxa = lshr i32 %i.dwz, 19                    ; 2 uses
  %.neg17.i820.i = mul nsw i32 %i.dwy, -100
  %i.dxb = add nsw i32 %.neg17.i820.i, %i.dwv
  %.neg18.i821.i = mul i32 %i.dxa, 2147483548
  %i.dxc = add i32 %.neg18.i821.i, %i.dww
  %i.dxd = shl nuw nsw i32 %i.dwy, 1
  %i.dxe = zext nneg i32 %i.dxd to i64
  %i.dxf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dxe
  %i.dxg = load i16, ptr %i.dxf, align 2
  store i16 %i.dxg, ptr %.0.i780.i, align 1
  %i.dxh = getelementptr inbounds nuw i8, ptr %.0.i780.i, i64 2
  %i.dxi = shl nsw i32 %i.dxb, 1
  %i.dxj = zext i32 %i.dxi to i64
  %i.dxk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dxj
  %i.dxl = load i16, ptr %i.dxk, align 2
  store i16 %i.dxl, ptr %i.dxh, align 1
  %i.dxm = getelementptr inbounds nuw i8, ptr %.0.i780.i, i64 4
  %i.dxn = shl nuw nsw i32 %i.dxa, 1
  %i.dxo = zext nneg i32 %i.dxn to i64
  %i.dxp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dxo
  %i.dxq = load i16, ptr %i.dxp, align 2
  store i16 %i.dxq, ptr %i.dxm, align 1
  %i.dxr = getelementptr inbounds nuw i8, ptr %.0.i780.i, i64 6
  %i.dxs = shl i32 %i.dxc, 1
  %i.dxt = zext i32 %i.dxs to i64
  %i.dxu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.dxt
  %i.dxv = load i16, ptr %i.dxu, align 2
  store i16 %i.dxv, ptr %i.dxr, align 1
  %i.dxw = getelementptr inbounds nuw i8, ptr %.0.i780.i, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i62

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i62: ; preds = %bb.oe, %bb.og, %bb.oi, %bb.oj, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit787.i
  %.0.i688.i = phi ptr [ %i.dxw, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit787.i ], [ %i.dqe, %bb.oe ], [ %i.dqw, %bb.og ], [ %i.drw, %bb.oi ], [ %i.dte, %bb.oj ] ; 2 uses
  store i16 12334, ptr %.0.i688.i, align 1
  %i.dxx = getelementptr inbounds nuw i8, ptr %.0.i688.i, i64 2
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.or:                                            ; preds = %bb.ob, %bb.oa
  %i.dxy = icmp eq i64 %i.dpa, 0
  %i.dxz = icmp ne i32 %i.dpd, 1
  %i.dya = and i1 %i.dxy, %i.dxz                  ; 2 uses
  %i.dyb = shl nuw nsw i64 %i.dpn, 2              ; 3 uses
  %i.dyc = add nsw i64 %i.dyb, -2
  %i.dyd = zext i1 %i.dya to i64
  %i.dye = or disjoint i64 %i.dyc, %i.dyd
  %i.dyf = or disjoint i64 %i.dyb, 2
  %i.dyg = mul nuw nsw i32 %i.dpd, 315653
  %i.dyh = add nsw i32 %i.dyg, -339326975
  %.neg.i691.i = select i1 %i.dya, i32 -131237, i32 0
  %i.dyi = add nsw i32 %.neg.i691.i, %i.dyh
  %i.dyj = ashr i32 %i.dyi, 20                    ; 5 uses
  %i.dyk = mul nsw i32 %i.dyj, -217707
  %i.dyl = ashr i32 %i.dyk, 16
  %i.dym = add nsw i32 %i.dpd, -1074
  %i.dyn = add nsw i32 %i.dym, %i.dyl
  %.neg = mul nsw i32 %i.dyj, -2
  %i.dyo = sext i32 %.neg to i64
  %i.dyp = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.dyo ; 2 uses
  %i.dyq = getelementptr i8, ptr %i.dyp, i64 5488
  %i.dyr = load i64, ptr %i.dyq, align 16, !tbaa !105
  %i.dys = getelementptr i8, ptr %i.dyp, i64 5496
  %i.dyt = load i64, ptr %i.dys, align 8, !tbaa !105
  %i.dyu = add nsw i32 %i.dyj, -1
  %i.dyv = icmp ult i32 %i.dyu, -56
  %i.dyw = zext i1 %i.dyv to i64
  %i.dyx = add i64 %i.dyt, %i.dyw                 ; 3 uses
  %i.dyy = zext i32 %i.dyn to i64                 ; 3 uses
  %i.dyz = shl i64 %i.dye, %i.dyy                 ; 2 uses
  %i.dza = zext i64 %i.dyz to i128
  %i.dzb = tail call i64 @llvm.umulh.i64(i64 %i.dyz, i64 %i.dyx)
  %i.dzc = zext i64 %i.dzb to i128
  %i.dzd = zext i64 %i.dyr to i128                ; 3 uses
  %i.dze = mul nuw i128 %i.dzd, %i.dza
  %i.dzf = add nuw i128 %i.dze, %i.dzc            ; 2 uses
  %i.dzg = lshr i128 %i.dzf, 64
  %i.dzh = trunc nuw i128 %i.dzg to i64
  %i.dzi = and i128 %i.dzf, 18446744073709551614
  %i.dzj = icmp ne i128 %i.dzi, 0
  %i.dzk = zext i1 %i.dzj to i64
  %i.dzl = or i64 %i.dzk, %i.dzh
  %i.dzm = shl i64 %i.dyb, %i.dyy                 ; 2 uses
  %i.dzn = zext i64 %i.dzm to i128
  %i.dzo = tail call i64 @llvm.umulh.i64(i64 %i.dzm, i64 %i.dyx)
  %i.dzp = zext i64 %i.dzo to i128
  %i.dzq = mul nuw i128 %i.dzd, %i.dzn
  %i.dzr = add nuw i128 %i.dzq, %i.dzp            ; 2 uses
  %i.dzs = lshr i128 %i.dzr, 64
  %i.dzt = trunc nuw i128 %i.dzs to i64           ; 5 uses
  %i.dzu = and i128 %i.dzr, 18446744073709551614
  %i.dzv = icmp ne i128 %i.dzu, 0
  %i.dzw = zext i1 %i.dzv to i64
  %i.dzx = or i64 %i.dzw, %i.dzt                  ; 2 uses
  %i.dzy = shl i64 %i.dyf, %i.dyy                 ; 2 uses
  %i.dzz = zext i64 %i.dzy to i128
  %i.eaa = tail call i64 @llvm.umulh.i64(i64 %i.dzy, i64 %i.dyx)
  %i.eab = zext i64 %i.eaa to i128
  %i.eac = mul nuw i128 %i.dzd, %i.dzz
  %i.ead = add nuw i128 %i.eac, %i.eab            ; 2 uses
  %i.eae = lshr i128 %i.ead, 64
  %i.eaf = trunc nuw i128 %i.eae to i64
  %i.eag = and i128 %i.ead, 18446744073709551614
  %i.eah = icmp ne i128 %i.eag, 0
  %i.eai = zext i1 %i.eah to i64
  %i.eaj = or i64 %i.eai, %i.eaf
  %i.eak = and i64 %i.doz, 1                      ; 2 uses
  %i.eal = add i64 %i.dzl, %i.eak                 ; 2 uses
  %i.eam = sub i64 %i.eaj, %i.eak                 ; 2 uses
  %i.ean = lshr i64 %i.dzt, 2                     ; 2 uses
  %i.eao = icmp ugt i64 %i.dzt, 39
  br i1 %i.eao, label %bb.os, label %bb.ou

bb.os:                                            ; preds = %bb.or
  %i.eap = udiv i64 %i.dzt, 40                    ; 2 uses
  %i.eaq = mul nuw i64 %i.eap, 40                 ; 2 uses
  %i.ear = add i64 %i.eaq, 40
  %i.eas = icmp uge i64 %i.eam, %i.ear            ; 2 uses
  %i.eat = icmp ugt i64 %i.eal, %i.eaq
  %.not.i694.i = xor i1 %i.eat, %i.eas
  br i1 %.not.i694.i, label %bb.ou, label %bb.ot

bb.ot:                                            ; preds = %bb.os
  %i.eau = zext i1 %i.eas to i64
  %i.eav = add nuw nsw i64 %i.eap, %i.eau
  %i.eaw = add nsw i32 %i.dyj, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i

bb.ou:                                            ; preds = %bb.os, %bb.or
  %i.eax = and i64 %i.dzt, -4                     ; 3 uses
  %i.eay = add i64 %i.eax, 4
  %i.eaz = icmp uge i64 %i.eam, %i.eay            ; 2 uses
  %i.eba = or disjoint i64 %i.eax, 2              ; 2 uses
  %i.ebb = icmp ugt i64 %i.dzx, %i.eba
  br i1 %i.ebb, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.ebc = icmp eq i64 %i.dzx, %i.eba
  %i.ebd = trunc i64 %i.ean to i1
  %i.ebe = and i1 %i.ebc, %i.ebd
  br label %bb.ow

bb.ow:                                            ; preds = %bb.ov, %bb.ou
  %i.ebf = phi i1 [ true, %bb.ou ], [ %i.ebe, %bb.ov ]
  %i.ebg = icmp ugt i64 %i.eal, %i.eax
  %.not58.i692.i = xor i1 %i.ebg, %i.eaz
  %i.ebh = select i1 %.not58.i692.i, i1 %i.ebf, i1 %i.eaz
  %i.ebi = zext i1 %i.ebh to i64
  %i.ebj = add nuw nsw i64 %i.ean, %i.ebi
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i: ; preds = %bb.ow, %bb.ot
  %.0782 = phi i64 [ %i.ebj, %bb.ow ], [ %i.eav, %bb.ot ] ; 8 uses
  %storemerge.i693.i = phi i32 [ %i.dyj, %bb.ow ], [ %i.eaw, %bb.ot ]
  %i.ebk = icmp samesign ult i64 %.0782, 10000000000000000
  %i.ebl = select i1 %i.ebk, i32 16, i32 17
  %i.ebm = icmp samesign ult i64 %.0782, 1000000000000000
  %.neg129.i.i35 = sext i1 %i.ebm to i32
  %i.ebn = add nsw i32 %i.ebl, %.neg129.i.i35
  %i.ebo = add nsw i32 %i.ebn, %storemerge.i693.i ; 8 uses
  %i.ebp = add nsw i32 %i.ebo, 5
  %or.cond3.i.i36 = icmp ult i32 %i.ebp, 27
  br i1 %or.cond3.i.i36, label %bb.ox, label %bb.pm

bb.ox:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i
  %i.ebq = icmp slt i32 %i.ebo, 1
  br i1 %i.ebq, label %bb.oy, label %bb.pf

bb.oy:                                            ; preds = %bb.ox
  %i.ebr = sub nsw i32 2, %i.ebo
  %i.ebs = zext nneg i32 %i.ebr to i64
  %i.ebt = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %i.ebs ; 2 uses
  %i.ebu = udiv i64 %.0782, 100000000             ; 2 uses
  %i.ebv = trunc i64 %i.ebu to i32                ; 2 uses
  %.neg.i696.i = mul i64 %i.ebu, 4194967296
  %i.ebw = add i64 %.neg.i696.i, %.0782           ; 2 uses
  %i.ebx = trunc i64 %i.ebw to i32                ; 2 uses
  %i.eby = udiv i32 %i.ebv, 10000                 ; 3 uses
  %.neg95.i.i43 = mul i32 %i.eby, -10000
  %i.ebz = add i32 %.neg95.i.i43, %i.ebv          ; 5 uses
  %i.eca = zext nneg i32 %i.eby to i64
  %i.ecb = mul nuw nsw i64 %i.eca, 167773
  %i.ecc = lshr i64 %i.ecb, 24
  %i.ecd = trunc nuw nsw i64 %i.ecc to i32        ; 3 uses
  %i.ece = mul nuw nsw i32 %i.ecd, 41
  %i.ecf = lshr i32 %i.ece, 12                    ; 3 uses
  %.neg96.i.i44 = mul nsw i32 %i.ecf, -100
  %i.ecg = add nsw i32 %.neg96.i.i44, %i.ecd      ; 3 uses
  %.neg97.i.i45 = mul nsw i32 %i.ecd, -100
  %i.ech = add nsw i32 %.neg97.i.i45, %i.eby      ; 3 uses
  %i.eci = trunc nuw nsw i32 %i.ecf to i8
  %i.ecj = add nuw nsw i8 %i.eci, 48
  store i8 %i.ecj, ptr %i.ebt, align 1, !tbaa !99
  %i.eck = icmp ne i32 %i.ecf, 0                  ; 2 uses
  %i.ecl = zext i1 %i.eck to i64
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.ebt, i64 %i.ecl ; 2 uses
  %i.ecn = icmp ult i32 %i.ecg, 10
  %.not2941 = xor i1 %i.eck, true
  %i.eco = and i1 %i.ecn, %.not2941               ; 2 uses
  %i.ecp = shl nsw i32 %i.ecg, 1
  %i.ecq = zext i32 %i.ecp to i64
  %i.ecr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ecq
  %.neg98.i.i46 = sext i1 %i.eco to i64
  %i.ecs = zext i1 %i.eco to i64
  %i.ect = getelementptr inbounds nuw i8, ptr %i.ecr, i64 %i.ecs
  %i.ecu = load i16, ptr %i.ect, align 1
  store i16 %i.ecu, ptr %i.ecm, align 1
  %i.ecv = getelementptr inbounds i8, ptr %i.ecm, i64 %.neg98.i.i46 ; 10 uses
  %i.ecw = getelementptr inbounds nuw i8, ptr %i.ecv, i64 2
  %i.ecx = shl nsw i32 %i.ech, 1
  %i.ecy = zext i32 %i.ecx to i64
  %i.ecz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ecy
  %i.eda = load i16, ptr %i.ecz, align 2
  store i16 %i.eda, ptr %i.ecw, align 1
  %.not.i697.i = icmp eq i32 %i.ebx, 0
  br i1 %.not.i697.i, label %bb.pc, label %bb.oz

bb.oz:                                            ; preds = %bb.oy
  %i.edb = mul i32 %i.ebz, 5243
  %i.edc = lshr i32 %i.edb, 19                    ; 2 uses
  %.neg103.i.i47 = mul i32 %i.edc, 2147483548
  %i.edd = add i32 %.neg103.i.i47, %i.ebz
  %i.ede = and i64 %i.ebw, 4294967295
  %i.edf = mul nuw nsw i64 %i.ede, 109951163
  %i.edg = lshr i64 %i.edf, 40
  %i.edh = trunc nuw nsw i64 %i.edg to i32        ; 3 uses
  %.neg104.i.i48 = mul i32 %i.edh, -10000
  %i.edi = add i32 %.neg104.i.i48, %i.ebx         ; 3 uses
  %i.edj = mul nuw i32 %i.edh, 5243
  %i.edk = lshr i32 %i.edj, 19                    ; 3 uses
  %.neg105.i.i49 = mul nsw i32 %i.edk, -100
  %i.edl = add nsw i32 %.neg105.i.i49, %i.edh     ; 2 uses
  %i.edm = getelementptr inbounds nuw i8, ptr %i.ecv, i64 4
  %i.edn = shl nuw nsw i32 %i.edc, 1
  %i.edo = zext nneg i32 %i.edn to i64
  %i.edp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edo
  %i.edq = load i16, ptr %i.edp, align 2
  store i16 %i.edq, ptr %i.edm, align 1
  %i.edr = getelementptr inbounds nuw i8, ptr %i.ecv, i64 6
  %i.eds = shl i32 %i.edd, 1
  %i.edt = zext i32 %i.eds to i64
  %i.edu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edt
  %i.edv = load i16, ptr %i.edu, align 2
  store i16 %i.edv, ptr %i.edr, align 1
  %i.edw = getelementptr inbounds nuw i8, ptr %i.ecv, i64 8
  %i.edx = shl nuw nsw i32 %i.edk, 1
  %i.edy = zext nneg i32 %i.edx to i64
  %i.edz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.edy
  %i.eea = load i16, ptr %i.edz, align 2
  store i16 %i.eea, ptr %i.edw, align 1
  %i.eeb = getelementptr inbounds nuw i8, ptr %i.ecv, i64 10
  %i.eec = shl nsw i32 %i.edl, 1
  %i.eed = zext i32 %i.eec to i64
  %i.eee = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eed
  %i.eef = load i16, ptr %i.eee, align 2
  store i16 %i.eef, ptr %i.eeb, align 1
  %.not106.i.i50 = icmp eq i32 %i.edi, 0
  br i1 %.not106.i.i50, label %bb.pb, label %bb.pa

bb.pa:                                            ; preds = %bb.oz
  %i.eeg = mul i32 %i.edi, 5243
  %i.eeh = lshr i32 %i.eeg, 19                    ; 3 uses
  %.neg108.i.i51 = mul nsw i32 %i.eeh, -100
  %i.eei = add i32 %.neg108.i.i51, %i.edi         ; 2 uses
  %i.eej = getelementptr inbounds nuw i8, ptr %i.ecv, i64 12
  %i.eek = shl nuw nsw i32 %i.eeh, 1
  %i.eel = zext nneg i32 %i.eek to i64
  %i.eem = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eel
  %i.een = load i16, ptr %i.eem, align 2
  store i16 %i.een, ptr %i.eej, align 1
  %i.eeo = getelementptr inbounds nuw i8, ptr %i.ecv, i64 14
  %i.eep = shl nuw i32 %i.eei, 1
  %i.eeq = zext i32 %i.eep to i64
  %i.eer = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eeq
  %i.ees = load i16, ptr %i.eer, align 2
  store i16 %i.ees, ptr %i.eeo, align 1
  br label %bb.pb

bb.pb:                                            ; preds = %bb.oz, %bb.pa
  %.sink4437 = phi i32 [ %i.eeh, %bb.pa ], [ %i.edk, %bb.oz ]
  %.sink4433 = phi i32 [ %i.eei, %bb.pa ], [ %i.edl, %bb.oz ] ; 2 uses
  %.sink4424 = phi i64 [ 16, %bb.pa ], [ 12, %bb.oz ]
  %i.eet = zext nneg i32 %.sink4437 to i64
  %i.eeu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eet
  %i.eev = load i8, ptr %i.eeu, align 1, !tbaa !99
  %i.eew = zext i8 %i.eev to i64
  %i.eex = zext i32 %.sink4433 to i64
  %i.eey = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eex
  %i.eez = load i8, ptr %i.eey, align 1, !tbaa !99
  %i.efa = zext i8 %i.eez to i64
  %.not107.i.i56 = icmp eq i32 %.sink4433, 0
  %i.efb = add nuw nsw i64 %i.eew, 2
  %i.efc = select i1 %.not107.i.i56, i64 %i.efb, i64 %i.efa
  %i.efd = sub nsw i64 %.sink4424, %i.efc
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

bb.pc:                                            ; preds = %bb.oy
  %.not99.i.i57 = icmp eq i32 %i.ebz, 0
  br i1 %.not99.i.i57, label %bb.pe, label %bb.pd

bb.pd:                                            ; preds = %bb.pc
  %i.efe = mul i32 %i.ebz, 5243
  %i.eff = lshr i32 %i.efe, 19                    ; 3 uses
  %.neg101.i.i58 = mul nsw i32 %i.eff, -100
  %i.efg = add i32 %.neg101.i.i58, %i.ebz         ; 3 uses
  %i.efh = getelementptr inbounds nuw i8, ptr %i.ecv, i64 4
  %i.efi = shl nuw nsw i32 %i.eff, 1
  %i.efj = zext nneg i32 %i.efi to i64
  %i.efk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efj
  %i.efl = load i16, ptr %i.efk, align 2
  store i16 %i.efl, ptr %i.efh, align 1
  %i.efm = getelementptr inbounds nuw i8, ptr %i.ecv, i64 6
  %i.efn = shl nuw i32 %i.efg, 1
  %i.efo = zext i32 %i.efn to i64
  %i.efp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.efo
  %i.efq = load i16, ptr %i.efp, align 2
  store i16 %i.efq, ptr %i.efm, align 1
  %i.efr = zext nneg i32 %i.eff to i64
  %i.efs = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efr
  %i.eft = load i8, ptr %i.efs, align 1, !tbaa !99
  %i.efu = zext i8 %i.eft to i64
  %i.efv = zext i32 %i.efg to i64
  %i.efw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.efv
  %i.efx = load i8, ptr %i.efw, align 1, !tbaa !99
  %i.efy = zext i8 %i.efx to i64
  %.not102.i.i59 = icmp eq i32 %i.efg, 0
  %i.efz = add nuw nsw i64 %i.efu, 2
  %i.ega = select i1 %.not102.i.i59, i64 %i.efz, i64 %i.efy
  %i.egb = sub nsw i64 8, %i.ega
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

bb.pe:                                            ; preds = %bb.pc
  %i.egc = zext i32 %i.ecg to i64
  %i.egd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egc
  %i.ege = load i8, ptr %i.egd, align 1, !tbaa !99
  %i.egf = zext i8 %i.ege to i64
  %i.egg = zext i32 %i.ech to i64
  %i.egh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.egg
  %i.egi = load i8, ptr %i.egh, align 1, !tbaa !99
  %i.egj = zext i8 %i.egi to i64
  %.not100.i.i60 = icmp eq i32 %i.ech, 0
  %i.egk = select i1 %.not100.i.i60, i64 %i.egf, i64 0
  %i.egl = add nuw nsw i64 %i.egk, %i.egj
  %i.egm = sub nsw i64 4, %i.egl
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54: ; preds = %bb.pe, %bb.pd, %bb.pb
  %.sink4439.a = phi i64 [ %i.egm, %bb.pe ], [ %i.egb, %bb.pd ], [ %i.efd, %bb.pb ]
  %i.egn = and i64 %.sink4439.a, 4294967295
  %i.ego = getelementptr inbounds nuw i8, ptr %i.ecv, i64 %i.egn ; 2 uses
  store i8 48, ptr %i.dpk, align 1, !tbaa !99
  %i.egp = getelementptr inbounds nuw i8, ptr %i.dpk, i64 1
  store i8 46, ptr %i.egp, align 1, !tbaa !99
  %i.egq = icmp slt i32 %i.ebo, 0
  br i1 %i.egq, label %.lr.ph2100.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

.lr.ph2100.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i54
  %i.egr = getelementptr i8, ptr %i.dpk, i64 2
  %narrow = sub nsw i32 0, %i.ebo
  %i.egs = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.egr, i8 48, i64 %i.egs, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pf:                                            ; preds = %bb.ox
  %i.egt = getelementptr inbounds nuw i8, ptr %i.dpk, i64 1 ; 2 uses
  %i.egu = udiv i64 %.0782, 100000000             ; 2 uses
  %i.egv = trunc i64 %i.egu to i32                ; 2 uses
  %.neg.i701.i = mul i64 %i.egu, 4194967296
  %i.egw = add i64 %.neg.i701.i, %.0782           ; 2 uses
  %i.egx = trunc i64 %i.egw to i32                ; 2 uses
  %i.egy = udiv i32 %i.egv, 10000                 ; 3 uses
  %.neg95.i702.i = mul i32 %i.egy, -10000
  %i.egz = add i32 %.neg95.i702.i, %i.egv         ; 5 uses
  %i.eha = zext nneg i32 %i.egy to i64
  %i.ehb = mul nuw nsw i64 %i.eha, 167773
  %i.ehc = lshr i64 %i.ehb, 24
  %i.ehd = trunc nuw nsw i64 %i.ehc to i32        ; 3 uses
  %i.ehe = mul nuw nsw i32 %i.ehd, 41
  %i.ehf = lshr i32 %i.ehe, 12                    ; 3 uses
  %.neg96.i703.i = mul nsw i32 %i.ehf, -100
  %i.ehg = add nsw i32 %.neg96.i703.i, %i.ehd     ; 3 uses
  %.neg97.i704.i = mul nsw i32 %i.ehd, -100
  %i.ehh = add nsw i32 %.neg97.i704.i, %i.egy     ; 3 uses
  %i.ehi = trunc nuw nsw i32 %i.ehf to i8
  %i.ehj = add nuw nsw i8 %i.ehi, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dpk, i8 48, i64 24, i1 false)
  store i8 %i.ehj, ptr %i.egt, align 1, !tbaa !99
  %i.ehk = icmp ne i32 %i.ehf, 0                  ; 2 uses
  %i.ehl = zext i1 %i.ehk to i64
  %i.ehm = getelementptr inbounds nuw i8, ptr %i.egt, i64 %i.ehl ; 2 uses
  %i.ehn = icmp ult i32 %i.ehg, 10
  %.not2940 = xor i1 %i.ehk, true
  %i.eho = and i1 %i.ehn, %.not2940               ; 2 uses
  %i.ehp = shl nsw i32 %i.ehg, 1
  %i.ehq = zext i32 %i.ehp to i64
  %i.ehr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehq
  %.neg98.i705.i = sext i1 %i.eho to i64
  %i.ehs = zext i1 %i.eho to i64
  %i.eht = getelementptr inbounds nuw i8, ptr %i.ehr, i64 %i.ehs
  %i.ehu = load i16, ptr %i.eht, align 1
  store i16 %i.ehu, ptr %i.ehm, align 1
  %i.ehv = getelementptr inbounds i8, ptr %i.ehm, i64 %.neg98.i705.i ; 10 uses
  %i.ehw = getelementptr inbounds nuw i8, ptr %i.ehv, i64 2
  %i.ehx = shl nsw i32 %i.ehh, 1
  %i.ehy = zext i32 %i.ehx to i64
  %i.ehz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ehy
  %i.eia = load i16, ptr %i.ehz, align 2
  store i16 %i.eia, ptr %i.ehw, align 1
  %.not.i706.i = icmp eq i32 %i.egx, 0
  br i1 %.not.i706.i, label %bb.pj, label %bb.pg

bb.pg:                                            ; preds = %bb.pf
  %i.eib = mul i32 %i.egz, 5243
  %i.eic = lshr i32 %i.eib, 19                    ; 2 uses
  %.neg103.i707.i = mul i32 %i.eic, 2147483548
  %i.eid = add i32 %.neg103.i707.i, %i.egz
  %i.eie = and i64 %i.egw, 4294967295
  %i.eif = mul nuw nsw i64 %i.eie, 109951163
  %i.eig = lshr i64 %i.eif, 40
  %i.eih = trunc nuw nsw i64 %i.eig to i32        ; 3 uses
  %.neg104.i708.i = mul i32 %i.eih, -10000
  %i.eii = add i32 %.neg104.i708.i, %i.egx        ; 3 uses
  %i.eij = mul nuw i32 %i.eih, 5243
  %i.eik = lshr i32 %i.eij, 19                    ; 3 uses
  %.neg105.i709.i = mul nsw i32 %i.eik, -100
  %i.eil = add nsw i32 %.neg105.i709.i, %i.eih    ; 2 uses
  %i.eim = getelementptr inbounds nuw i8, ptr %i.ehv, i64 4
  %i.ein = shl nuw nsw i32 %i.eic, 1
  %i.eio = zext nneg i32 %i.ein to i64
  %i.eip = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eio
  %i.eiq = load i16, ptr %i.eip, align 2
  store i16 %i.eiq, ptr %i.eim, align 1
  %i.eir = getelementptr inbounds nuw i8, ptr %i.ehv, i64 6
  %i.eis = shl i32 %i.eid, 1
  %i.eit = zext i32 %i.eis to i64
  %i.eiu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eit
  %i.eiv = load i16, ptr %i.eiu, align 2
  store i16 %i.eiv, ptr %i.eir, align 1
  %i.eiw = getelementptr inbounds nuw i8, ptr %i.ehv, i64 8
  %i.eix = shl nuw nsw i32 %i.eik, 1
  %i.eiy = zext nneg i32 %i.eix to i64
  %i.eiz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eiy
  %i.eja = load i16, ptr %i.eiz, align 2
  store i16 %i.eja, ptr %i.eiw, align 1
  %i.ejb = getelementptr inbounds nuw i8, ptr %i.ehv, i64 10
  %i.ejc = shl nsw i32 %i.eil, 1
  %i.ejd = zext i32 %i.ejc to i64
  %i.eje = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejd
  %i.ejf = load i16, ptr %i.eje, align 2
  store i16 %i.ejf, ptr %i.ejb, align 1
  %.not106.i710.i = icmp eq i32 %i.eii, 0
  br i1 %.not106.i710.i, label %bb.pi, label %bb.ph

bb.ph:                                            ; preds = %bb.pg
  %i.ejg = mul i32 %i.eii, 5243
  %i.ejh = lshr i32 %i.ejg, 19                    ; 3 uses
  %.neg108.i711.i = mul nsw i32 %i.ejh, -100
  %i.eji = add i32 %.neg108.i711.i, %i.eii        ; 2 uses
  %i.ejj = getelementptr inbounds nuw i8, ptr %i.ehv, i64 12
  %i.ejk = shl nuw nsw i32 %i.ejh, 1
  %i.ejl = zext nneg i32 %i.ejk to i64
  %i.ejm = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejl
  %i.ejn = load i16, ptr %i.ejm, align 2
  store i16 %i.ejn, ptr %i.ejj, align 1
  %i.ejo = getelementptr inbounds nuw i8, ptr %i.ehv, i64 14
  %i.ejp = shl nuw i32 %i.eji, 1
  %i.ejq = zext i32 %i.ejp to i64
  %i.ejr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ejq
  %i.ejs = load i16, ptr %i.ejr, align 2
  store i16 %i.ejs, ptr %i.ejo, align 1
  br label %bb.pi

bb.pi:                                            ; preds = %bb.pg, %bb.ph
  %.sink4453 = phi i32 [ %i.ejh, %bb.ph ], [ %i.eik, %bb.pg ]
  %.sink4449 = phi i32 [ %i.eji, %bb.ph ], [ %i.eil, %bb.pg ] ; 2 uses
  %.sink4440 = phi i64 [ 16, %bb.ph ], [ 12, %bb.pg ]
  %i.ejt = zext nneg i32 %.sink4453 to i64
  %i.eju = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejt
  %i.ejv = load i8, ptr %i.eju, align 1, !tbaa !99
  %i.ejw = zext i8 %i.ejv to i64
  %i.ejx = zext i32 %.sink4449 to i64
  %i.ejy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ejx
  %i.ejz = load i8, ptr %i.ejy, align 1, !tbaa !99
  %i.eka = zext i8 %i.ejz to i64
  %.not107.i717.i = icmp eq i32 %.sink4449, 0
  %i.ekb = add nuw nsw i64 %i.ejw, 2
  %i.ekc = select i1 %.not107.i717.i, i64 %i.ekb, i64 %i.eka
  %i.ekd = sub nsw i64 %.sink4440, %i.ekc
  br label %._crit_edge

bb.pj:                                            ; preds = %bb.pf
  %.not99.i718.i = icmp eq i32 %i.egz, 0
  br i1 %.not99.i718.i, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.eke = mul i32 %i.egz, 5243
  %i.ekf = lshr i32 %i.eke, 19                    ; 3 uses
  %.neg101.i719.i = mul nsw i32 %i.ekf, -100
  %i.ekg = add i32 %.neg101.i719.i, %i.egz        ; 3 uses
  %i.ekh = getelementptr inbounds nuw i8, ptr %i.ehv, i64 4
  %i.eki = shl nuw nsw i32 %i.ekf, 1
  %i.ekj = zext nneg i32 %i.eki to i64
  %i.ekk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ekj
  %i.ekl = load i16, ptr %i.ekk, align 2
  store i16 %i.ekl, ptr %i.ekh, align 1
  %i.ekm = getelementptr inbounds nuw i8, ptr %i.ehv, i64 6
  %i.ekn = shl nuw i32 %i.ekg, 1
  %i.eko = zext i32 %i.ekn to i64
  %i.ekp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eko
  %i.ekq = load i16, ptr %i.ekp, align 2
  store i16 %i.ekq, ptr %i.ekm, align 1
  %i.ekr = zext nneg i32 %i.ekf to i64
  %i.eks = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekr
  %i.ekt = load i8, ptr %i.eks, align 1, !tbaa !99
  %i.eku = zext i8 %i.ekt to i64
  %i.ekv = zext i32 %i.ekg to i64
  %i.ekw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ekv
  %i.ekx = load i8, ptr %i.ekw, align 1, !tbaa !99
  %i.eky = zext i8 %i.ekx to i64
  %.not102.i720.i = icmp eq i32 %i.ekg, 0
  %i.ekz = add nuw nsw i64 %i.eku, 2
  %i.ela = select i1 %.not102.i720.i, i64 %i.ekz, i64 %i.eky
  %i.elb = sub nsw i64 8, %i.ela
  br label %._crit_edge

bb.pl:                                            ; preds = %bb.pj
  %i.elc = zext i32 %i.ehg to i64
  %i.eld = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elc
  %i.ele = load i8, ptr %i.eld, align 1, !tbaa !99
  %i.elf = zext i8 %i.ele to i64
  %i.elg = zext i32 %i.ehh to i64
  %i.elh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.elg
  %i.eli = load i8, ptr %i.elh, align 1, !tbaa !99
  %i.elj = zext i8 %i.eli to i64
  %.not100.i721.i = icmp eq i32 %i.ehh, 0
  %i.elk = select i1 %.not100.i721.i, i64 %i.elf, i64 0
  %i.ell = add nuw nsw i64 %i.elk, %i.elj
  %i.elm = sub nsw i64 4, %i.ell
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.pl, %bb.pk, %bb.pi
  %.sink4455.a = phi i64 [ %i.elm, %bb.pl ], [ %i.elb, %bb.pk ], [ %i.ekd, %bb.pi ]
  %i.eln = and i64 %.sink4455.a, 4294967295
  %i.elo = getelementptr inbounds nuw i8, ptr %i.ehv, i64 %i.eln ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.i850.i.lcssa, i64 1
  %scevgep2878 = getelementptr i8, ptr %scevgep, i64 %.lobit.i679.i
  %i.elp = zext nneg i32 %i.ebo to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dpk, ptr align 1 %scevgep2878, i64 %i.elp, i1 false), !tbaa !99
  %i.elq = zext nneg i32 %i.ebo to i64
  %i.elr = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %i.elq ; 2 uses
  store i8 46, ptr %i.elr, align 1, !tbaa !99
  %i.els = getelementptr inbounds nuw i8, ptr %i.elr, i64 2 ; 2 uses
  %i.elt = icmp ult ptr %i.els, %i.elo
  %spec.select943 = select i1 %i.elt, ptr %i.elo, ptr %i.els
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i40.thread

bb.pm:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit695.i
  %.ptr = getelementptr inbounds nuw i8, ptr %i.dpk, i64 1 ; 3 uses
  %i.elu = udiv i64 %.0782, 100000000             ; 2 uses
  %i.elv = trunc i64 %i.elu to i32                ; 2 uses
  %.neg.i723.i = mul i64 %i.elu, 4194967296
  %i.elw = add i64 %.neg.i723.i, %.0782           ; 2 uses
  %i.elx = trunc i64 %i.elw to i32                ; 2 uses
  %i.ely = udiv i32 %i.elv, 10000                 ; 3 uses
  %.neg95.i724.i = mul i32 %i.ely, -10000
  %i.elz = add i32 %.neg95.i724.i, %i.elv         ; 5 uses
  %i.ema = zext nneg i32 %i.ely to i64
  %i.emb = mul nuw nsw i64 %i.ema, 167773
  %i.emc = lshr i64 %i.emb, 24
  %i.emd = trunc nuw nsw i64 %i.emc to i32        ; 3 uses
  %i.eme = mul nuw nsw i32 %i.emd, 41
  %i.emf = lshr i32 %i.eme, 12                    ; 3 uses
  %.neg96.i725.i = mul nsw i32 %i.emf, -100
  %i.emg = add nsw i32 %.neg96.i725.i, %i.emd     ; 3 uses
  %.neg97.i726.i = mul nsw i32 %i.emd, -100
  %i.emh = add nsw i32 %.neg97.i726.i, %i.ely     ; 3 uses
  %i.emi = trunc nuw nsw i32 %i.emf to i8
  %i.emj = add nuw nsw i8 %i.emi, 48
  store i8 %i.emj, ptr %.ptr, align 1, !tbaa !99
  %.not963 = icmp eq i32 %i.emf, 0                ; 2 uses
  %.add = select i1 %.not963, i64 1, i64 2        ; 2 uses
  %.ptr959 = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %.add
  %i.emk = icmp ult i32 %i.emg, 10
  %i.eml = and i1 %.not963, %i.emk                ; 2 uses
  %i.emm = shl nsw i32 %i.emg, 1
  %i.emn = zext i32 %i.emm to i64
  %i.emo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.emn
  %.neg98.i727.i = sext i1 %i.eml to i64
  %i.emp = zext i1 %i.eml to i64
  %i.emq = getelementptr inbounds nuw i8, ptr %i.emo, i64 %i.emp
  %i.emr = load i16, ptr %i.emq, align 1
  store i16 %i.emr, ptr %.ptr959, align 1
  %.add955 = add nsw i64 %.add, %.neg98.i727.i    ; 2 uses
  %.ptr960 = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %.add955 ; 9 uses
  %i.ems = getelementptr inbounds nuw i8, ptr %.ptr960, i64 2
  %i.emt = shl nsw i32 %i.emh, 1
  %i.emu = zext i32 %i.emt to i64
  %i.emv = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.emu
  %i.emw = load i16, ptr %i.emv, align 2
  store i16 %i.emw, ptr %i.ems, align 1
  %.not.i728.i = icmp eq i32 %i.elx, 0
  br i1 %.not.i728.i, label %bb.pq, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.emx = mul i32 %i.elz, 5243
  %i.emy = lshr i32 %i.emx, 19                    ; 2 uses
  %.neg103.i729.i = mul i32 %i.emy, 2147483548
  %i.emz = add i32 %.neg103.i729.i, %i.elz
  %i.ena = and i64 %i.elw, 4294967295
  %i.enb = mul nuw nsw i64 %i.ena, 109951163
  %i.enc = lshr i64 %i.enb, 40
  %i.end = trunc nuw nsw i64 %i.enc to i32        ; 3 uses
  %.neg104.i730.i = mul i32 %i.end, -10000
  %i.ene = add i32 %.neg104.i730.i, %i.elx        ; 3 uses
  %i.enf = mul nuw i32 %i.end, 5243
  %i.eng = lshr i32 %i.enf, 19                    ; 3 uses
  %.neg105.i731.i = mul nsw i32 %i.eng, -100
  %i.enh = add nsw i32 %.neg105.i731.i, %i.end    ; 3 uses
  %i.eni = getelementptr inbounds nuw i8, ptr %.ptr960, i64 4
  %i.enj = shl nuw nsw i32 %i.emy, 1
  %i.enk = zext nneg i32 %i.enj to i64
  %i.enl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enk
  %i.enm = load i16, ptr %i.enl, align 2
  store i16 %i.enm, ptr %i.eni, align 1
  %i.enn = getelementptr inbounds nuw i8, ptr %.ptr960, i64 6
  %i.eno = shl i32 %i.emz, 1
  %i.enp = zext i32 %i.eno to i64
  %i.enq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enp
  %i.enr = load i16, ptr %i.enq, align 2
  store i16 %i.enr, ptr %i.enn, align 1
  %i.ens = getelementptr inbounds nuw i8, ptr %.ptr960, i64 8
  %i.ent = shl nuw nsw i32 %i.eng, 1
  %i.enu = zext nneg i32 %i.ent to i64
  %i.env = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enu
  %i.enw = load i16, ptr %i.env, align 2
  store i16 %i.enw, ptr %i.ens, align 1
  %i.enx = getelementptr inbounds nuw i8, ptr %.ptr960, i64 10
  %i.eny = shl nsw i32 %i.enh, 1
  %i.enz = zext i32 %i.eny to i64
  %i.eoa = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.enz
  %i.eob = load i16, ptr %i.eoa, align 2
  store i16 %i.eob, ptr %i.enx, align 1
  %.not106.i732.i = icmp eq i32 %i.ene, 0
  br i1 %.not106.i732.i, label %bb.pp, label %bb.po

bb.po:                                            ; preds = %bb.pn
  %i.eoc = mul i32 %i.ene, 5243
  %i.eod = lshr i32 %i.eoc, 19                    ; 3 uses
  %.neg108.i733.i = mul nsw i32 %i.eod, -100
  %i.eoe = add i32 %.neg108.i733.i, %i.ene        ; 3 uses
  %i.eof = getelementptr inbounds nuw i8, ptr %.ptr960, i64 12
  %i.eog = shl nuw nsw i32 %i.eod, 1
  %i.eoh = zext nneg i32 %i.eog to i64
  %i.eoi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eoh
  %i.eoj = load i16, ptr %i.eoi, align 2
  store i16 %i.eoj, ptr %i.eof, align 1
  %i.eok = getelementptr inbounds nuw i8, ptr %.ptr960, i64 14
  %i.eol = shl nuw i32 %i.eoe, 1
  %i.eom = zext i32 %i.eol to i64
  %i.eon = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.eom
  %i.eoo = load i16, ptr %i.eon, align 2
  store i16 %i.eoo, ptr %i.eok, align 1
  %i.eop = zext nneg i32 %i.eod to i64
  %i.eoq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eop
  %i.eor = load i8, ptr %i.eoq, align 1, !tbaa !99
  %i.eos = zext i8 %i.eor to i64
  %i.eot = zext i32 %i.eoe to i64
  %i.eou = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eot
  %i.eov = load i8, ptr %i.eou, align 1, !tbaa !99
  %i.eow = zext i8 %i.eov to i64
  %.not109.i734.i = icmp eq i32 %i.eoe, 0
  %i.eox = add nuw nsw i64 %i.eos, 2
  %i.eoy = select i1 %.not109.i734.i, i64 %i.eox, i64 %i.eow
  %i.eoz = sub nsw i64 16, %i.eoy
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

bb.pp:                                            ; preds = %bb.pn
  %i.epa = zext nneg i32 %i.eng to i64
  %i.epb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.epa
  %i.epc = load i8, ptr %i.epb, align 1, !tbaa !99
  %i.epd = zext i8 %i.epc to i64
  %i.epe = zext i32 %i.enh to i64
  %i.epf = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.epe
  %i.epg = load i8, ptr %i.epf, align 1, !tbaa !99
  %i.eph = zext i8 %i.epg to i64
  %.not107.i739.i = icmp eq i32 %i.enh, 0
  %i.epi = add nuw nsw i64 %i.epd, 2
  %i.epj = select i1 %.not107.i739.i, i64 %i.epi, i64 %i.eph
  %i.epk = sub nsw i64 12, %i.epj
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

bb.pq:                                            ; preds = %bb.pm
  %.not99.i740.i = icmp eq i32 %i.elz, 0
  br i1 %.not99.i740.i, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.epl = mul i32 %i.elz, 5243
  %i.epm = lshr i32 %i.epl, 19                    ; 3 uses
  %.neg101.i741.i = mul nsw i32 %i.epm, -100
  %i.epn = add i32 %.neg101.i741.i, %i.elz        ; 3 uses
  %i.epo = getelementptr inbounds nuw i8, ptr %.ptr960, i64 4
  %i.epp = shl nuw nsw i32 %i.epm, 1
  %i.epq = zext nneg i32 %i.epp to i64
  %i.epr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.epq
  %i.eps = load i16, ptr %i.epr, align 2
  store i16 %i.eps, ptr %i.epo, align 1
  %i.ept = getelementptr inbounds nuw i8, ptr %.ptr960, i64 6
  %i.epu = shl nuw i32 %i.epn, 1
  %i.epv = zext i32 %i.epu to i64
  %i.epw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.epv
  %i.epx = load i16, ptr %i.epw, align 2
  store i16 %i.epx, ptr %i.ept, align 1
  %i.epy = zext nneg i32 %i.epm to i64
  %i.epz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.epy
  %i.eqa = load i8, ptr %i.epz, align 1, !tbaa !99
  %i.eqb = zext i8 %i.eqa to i64
  %i.eqc = zext i32 %i.epn to i64
  %i.eqd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqc
  %i.eqe = load i8, ptr %i.eqd, align 1, !tbaa !99
  %i.eqf = zext i8 %i.eqe to i64
  %.not102.i742.i = icmp eq i32 %i.epn, 0
  %i.eqg = add nuw nsw i64 %i.eqb, 2
  %i.eqh = select i1 %.not102.i742.i, i64 %i.eqg, i64 %i.eqf
  %i.eqi = sub nsw i64 8, %i.eqh
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

bb.ps:                                            ; preds = %bb.pq
  %i.eqj = zext i32 %i.emg to i64
  %i.eqk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqj
  %i.eql = load i8, ptr %i.eqk, align 1, !tbaa !99
  %i.eqm = zext i8 %i.eql to i64
  %i.eqn = zext i32 %i.emh to i64
  %i.eqo = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.eqn
  %i.eqp = load i8, ptr %i.eqo, align 1, !tbaa !99
  %i.eqq = zext i8 %i.eqp to i64
  %.not100.i743.i = icmp eq i32 %i.emh, 0
  %i.eqr = select i1 %.not100.i743.i, i64 %i.eqm, i64 0
  %i.eqs = add nuw nsw i64 %i.eqr, %i.eqq
  %i.eqt = sub nsw i64 4, %i.eqs
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit744.i: ; preds = %bb.po, %bb.pp, %bb.ps, %bb.pr
  %.pn.i736.i.pn.in = phi i64 [ %i.eqt, %bb.ps ], [ %i.eqi, %bb.pr ], [ %i.eoz, %bb.po ], [ %i.epk, %bb.pp ]
  %.pn.i736.i.pn = and i64 %.pn.i736.i.pn.in, 4294967295
  %.1.i738.i.idx = add nuw nsw i64 %.pn.i736.i.pn, %.add955 ; 2 uses
  %.1.i738.i.ptr = getelementptr inbounds nuw i8, ptr %i.dpk, i64 %.1.i738.i.idx
  %i.equ = icmp eq i64 %.1.i738.i.idx, 2
  %.neg130.i.i37 = sext i1 %i.equ to i64
end_hunk_2
begin_hunk_3_@_ZN13duckdb_yyjsonL26yyjson_mut_write_opts_implEPKNS_14yyjson_mut_valEmjPKNS_10yyjson_alcEPmPNS_16yyjson_write_errE:bb.a
  %i.hqb = lshr i32 %i.hqa, 19                    ; 2 uses
  %i.hqc = mul i32 %i.hpz, 5243
  %i.hqd = lshr i32 %i.hqc, 19                    ; 2 uses
  %.neg62.i637.i = mul nsw i32 %i.hqb, -100
  %i.hqe = add nsw i32 %.neg62.i637.i, %i.hpy
  %.neg63.i638.i = mul nsw i32 %i.hqd, -100
  %i.hqf = add nsw i32 %.neg63.i638.i, %i.hpz
  %i.hqg = icmp samesign ult i64 %i.hkf, 1000000000000000 ; 2 uses
  %i.hqh = shl nuw nsw i32 %i.hqb, 1
  %i.hqi = zext nneg i32 %i.hqh to i64
  %i.hqj = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hqi
  %.neg64.i639.i = sext i1 %i.hqg to i64
  %i.hqk = zext i1 %i.hqg to i64
  %i.hql = getelementptr inbounds nuw i8, ptr %i.hqj, i64 %i.hqk
  %i.hqm = load i16, ptr %i.hql, align 1
  store i16 %i.hqm, ptr %i.hjw, align 1
  %i.hqn = getelementptr inbounds i8, ptr %i.hjw, i64 %.neg64.i639.i ; 4 uses
  %i.hqo = getelementptr inbounds nuw i8, ptr %i.hqn, i64 2
  %i.hqp = shl nsw i32 %i.hqe, 1
  %i.hqq = zext i32 %i.hqp to i64
  %i.hqr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hqq
  %i.hqs = load i16, ptr %i.hqr, align 2
  store i16 %i.hqs, ptr %i.hqo, align 1
  %i.hqt = getelementptr inbounds nuw i8, ptr %i.hqn, i64 4
  %i.hqu = shl nuw nsw i32 %i.hqd, 1
  %i.hqv = zext nneg i32 %i.hqu to i64
  %i.hqw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hqv
  %i.hqx = load i16, ptr %i.hqw, align 2
  store i16 %i.hqx, ptr %i.hqt, align 1
  %i.hqy = getelementptr inbounds nuw i8, ptr %i.hqn, i64 6
  %i.hqz = shl nsw i32 %i.hqf, 1
  %i.hra = zext i32 %i.hqz to i64
  %i.hrb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hra
  %i.hrc = load i16, ptr %i.hrb, align 2
  store i16 %i.hrc, ptr %i.hqy, align 1
  %i.hrd = getelementptr inbounds nuw i8, ptr %i.hqn, i64 8
  br label %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit647.i

_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit647.i: ; preds = %bb.zg, %bb.zf, %bb.zd, %bb.zb
  %.0.i640.i = phi ptr [ %i.hod, %bb.zb ], [ %i.hov, %bb.zd ], [ %i.hpv, %bb.zf ], [ %i.hrd, %bb.zg ] ; 5 uses
  %i.hre = and i64 %i.hns, 4294967295
  %i.hrf = mul nuw nsw i64 %i.hre, 109951163
  %i.hrg = lshr i64 %i.hrf, 40
  %i.hrh = trunc nuw nsw i64 %i.hrg to i32        ; 3 uses
  %.neg.i679.i = mul i32 %i.hrh, -10000
  %i.hri = add i32 %.neg.i679.i, %i.hnt           ; 2 uses
  %i.hrj = mul nuw i32 %i.hrh, 5243
  %i.hrk = lshr i32 %i.hrj, 19                    ; 2 uses
  %i.hrl = mul i32 %i.hri, 5243
  %i.hrm = lshr i32 %i.hrl, 19                    ; 2 uses
  %.neg17.i680.i = mul nsw i32 %i.hrk, -100
  %i.hrn = add nsw i32 %.neg17.i680.i, %i.hrh
  %.neg18.i681.i = mul i32 %i.hrm, 2147483548
  %i.hro = add i32 %.neg18.i681.i, %i.hri
  %i.hrp = shl nuw nsw i32 %i.hrk, 1
  %i.hrq = zext nneg i32 %i.hrp to i64
  %i.hrr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hrq
  %i.hrs = load i16, ptr %i.hrr, align 2
  store i16 %i.hrs, ptr %.0.i640.i, align 1
  %i.hrt = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 2
  %i.hru = shl nsw i32 %i.hrn, 1
  %i.hrv = zext i32 %i.hru to i64
  %i.hrw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hrv
  %i.hrx = load i16, ptr %i.hrw, align 2
  store i16 %i.hrx, ptr %i.hrt, align 1
  %i.hry = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 4
  %i.hrz = shl nuw nsw i32 %i.hrm, 1
  %i.hsa = zext nneg i32 %i.hrz to i64
  %i.hsb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hsa
  %i.hsc = load i16, ptr %i.hsb, align 2
  store i16 %i.hsc, ptr %i.hry, align 1
  %i.hsd = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 6
  %i.hse = shl i32 %i.hro, 1
  %i.hsf = zext i32 %i.hse to i64
  %i.hsg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hsf
  %i.hsh = load i16, ptr %i.hsg, align 2
  store i16 %i.hsh, ptr %i.hsd, align 1
  %i.hsi = getelementptr inbounds nuw i8, ptr %.0.i640.i, i64 8
  br label %_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i237

_ZN13duckdb_yyjsonL21write_u64_len_1_to_16EmPh.exit.i237: ; preds = %bb.yu, %bb.yw, %bb.yy, %bb.yz, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit647.i
  %.0.i548.i = phi ptr [ %i.hsi, %_ZN13duckdb_yyjsonL17write_u32_len_1_8EjPh.exit647.i ], [ %i.hkq, %bb.yu ], [ %i.hli, %bb.yw ], [ %i.hmi, %bb.yy ], [ %i.hnq, %bb.yz ] ; 2 uses
  store i16 12334, ptr %.0.i548.i, align 1
  %i.hsj = getelementptr inbounds nuw i8, ptr %.0.i548.i, i64 2
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.zh:                                            ; preds = %bb.yr, %bb.yq
  %i.hsk = icmp eq i64 %i.hjm, 0
  %i.hsl = icmp ne i32 %i.hjp, 1
  %i.hsm = and i1 %i.hsk, %i.hsl                  ; 2 uses
  %i.hsn = shl nuw nsw i64 %i.hjz, 2              ; 3 uses
  %i.hso = add nsw i64 %i.hsn, -2
  %i.hsp = zext i1 %i.hsm to i64
  %i.hsq = or disjoint i64 %i.hso, %i.hsp
  %i.hsr = or disjoint i64 %i.hsn, 2
  %i.hss = mul nuw nsw i32 %i.hjp, 315653
  %i.hst = add nsw i32 %i.hss, -339326975
  %.neg.i551.i = select i1 %i.hsm, i32 -131237, i32 0
  %i.hsu = add nsw i32 %.neg.i551.i, %i.hst
  %i.hsv = ashr i32 %i.hsu, 20                    ; 5 uses
  %i.hsw = mul nsw i32 %i.hsv, -217707
  %i.hsx = ashr i32 %i.hsw, 16
  %i.hsy = add nsw i32 %i.hjp, -1074
  %i.hsz = add nsw i32 %i.hsy, %i.hsx
  %.neg973 = mul nsw i32 %i.hsv, -2
  %i.hta = sext i32 %.neg973 to i64
  %i.htb = getelementptr [8 x i8], ptr @_ZN13duckdb_yyjsonL15pow10_sig_tableE, i64 %i.hta ; 2 uses
  %i.htc = getelementptr i8, ptr %i.htb, i64 5488
  %i.htd = load i64, ptr %i.htc, align 16, !tbaa !105
  %i.hte = getelementptr i8, ptr %i.htb, i64 5496
  %i.htf = load i64, ptr %i.hte, align 8, !tbaa !105
  %i.htg = add nsw i32 %i.hsv, -1
  %i.hth = icmp ult i32 %i.htg, -56
  %i.hti = zext i1 %i.hth to i64
  %i.htj = add i64 %i.htf, %i.hti                 ; 3 uses
  %i.htk = zext i32 %i.hsz to i64                 ; 3 uses
  %i.htl = shl i64 %i.hsq, %i.htk                 ; 2 uses
  %i.htm = zext i64 %i.htl to i128
  %i.htn = tail call i64 @llvm.umulh.i64(i64 %i.htl, i64 %i.htj)
  %i.hto = zext i64 %i.htn to i128
  %i.htp = zext i64 %i.htd to i128                ; 3 uses
  %i.htq = mul nuw i128 %i.htp, %i.htm
  %i.htr = add nuw i128 %i.htq, %i.hto            ; 2 uses
  %i.hts = lshr i128 %i.htr, 64
  %i.htt = trunc nuw i128 %i.hts to i64
  %i.htu = and i128 %i.htr, 18446744073709551614
  %i.htv = icmp ne i128 %i.htu, 0
  %i.htw = zext i1 %i.htv to i64
  %i.htx = or i64 %i.htw, %i.htt
  %i.hty = shl i64 %i.hsn, %i.htk                 ; 2 uses
  %i.htz = zext i64 %i.hty to i128
  %i.hua = tail call i64 @llvm.umulh.i64(i64 %i.hty, i64 %i.htj)
  %i.hub = zext i64 %i.hua to i128
  %i.huc = mul nuw i128 %i.htp, %i.htz
  %i.hud = add nuw i128 %i.huc, %i.hub            ; 2 uses
  %i.hue = lshr i128 %i.hud, 64
  %i.huf = trunc nuw i128 %i.hue to i64           ; 5 uses
  %i.hug = and i128 %i.hud, 18446744073709551614
  %i.huh = icmp ne i128 %i.hug, 0
  %i.hui = zext i1 %i.huh to i64
  %i.huj = or i64 %i.hui, %i.huf                  ; 2 uses
  %i.huk = shl i64 %i.hsr, %i.htk                 ; 2 uses
  %i.hul = zext i64 %i.huk to i128
  %i.hum = tail call i64 @llvm.umulh.i64(i64 %i.huk, i64 %i.htj)
  %i.hun = zext i64 %i.hum to i128
  %i.huo = mul nuw i128 %i.htp, %i.hul
  %i.hup = add nuw i128 %i.huo, %i.hun            ; 2 uses
  %i.huq = lshr i128 %i.hup, 64
  %i.hur = trunc nuw i128 %i.huq to i64
  %i.hus = and i128 %i.hup, 18446744073709551614
  %i.hut = icmp ne i128 %i.hus, 0
  %i.huu = zext i1 %i.hut to i64
  %i.huv = or i64 %i.huu, %i.hur
  %i.huw = and i64 %i.hjl, 1                      ; 2 uses
  %i.hux = add i64 %i.htx, %i.huw                 ; 2 uses
  %i.huy = sub i64 %i.huv, %i.huw                 ; 2 uses
  %i.huz = lshr i64 %i.huf, 2                     ; 2 uses
  %i.hva = icmp ugt i64 %i.huf, 39
  br i1 %i.hva, label %bb.zi, label %bb.zk

bb.zi:                                            ; preds = %bb.zh
  %i.hvb = udiv i64 %i.huf, 40                    ; 2 uses
  %i.hvc = mul nuw i64 %i.hvb, 40                 ; 2 uses
  %i.hvd = add i64 %i.hvc, 40
  %i.hve = icmp uge i64 %i.huy, %i.hvd            ; 2 uses
  %i.hvf = icmp ugt i64 %i.hux, %i.hvc
  %.not.i554.i = xor i1 %i.hvf, %i.hve
  br i1 %.not.i554.i, label %bb.zk, label %bb.zj

bb.zj:                                            ; preds = %bb.zi
  %i.hvg = zext i1 %i.hve to i64
  %i.hvh = add nuw nsw i64 %i.hvb, %i.hvg
  %i.hvi = add nsw i32 %i.hsv, 1
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i

bb.zk:                                            ; preds = %bb.zi, %bb.zh
  %i.hvj = and i64 %i.huf, -4                     ; 3 uses
  %i.hvk = add i64 %i.hvj, 4
  %i.hvl = icmp uge i64 %i.huy, %i.hvk            ; 2 uses
  %i.hvm = or disjoint i64 %i.hvj, 2              ; 2 uses
  %i.hvn = icmp ugt i64 %i.huj, %i.hvm
  br i1 %i.hvn, label %bb.zm, label %bb.zl

bb.zl:                                            ; preds = %bb.zk
  %i.hvo = icmp eq i64 %i.huj, %i.hvm
  %i.hvp = trunc i64 %i.huz to i1
  %i.hvq = and i1 %i.hvo, %i.hvp
  br label %bb.zm

bb.zm:                                            ; preds = %bb.zl, %bb.zk
  %i.hvr = phi i1 [ true, %bb.zk ], [ %i.hvq, %bb.zl ]
  %i.hvs = icmp ugt i64 %i.hux, %i.hvj
  %.not58.i552.i = xor i1 %i.hvs, %i.hvl
  %i.hvt = select i1 %.not58.i552.i, i1 %i.hvr, i1 %i.hvl
  %i.hvu = zext i1 %i.hvt to i64
  %i.hvv = add nuw nsw i64 %i.huz, %i.hvu
  br label %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i

_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i: ; preds = %bb.zm, %bb.zj
  %.0772 = phi i64 [ %i.hvv, %bb.zm ], [ %i.hvh, %bb.zj ] ; 8 uses
  %storemerge.i553.i = phi i32 [ %i.hsv, %bb.zm ], [ %i.hvi, %bb.zj ]
  %i.hvw = icmp samesign ult i64 %.0772, 10000000000000000
  %i.hvx = select i1 %i.hvw, i32 16, i32 17
  %i.hvy = icmp samesign ult i64 %.0772, 1000000000000000
  %.neg129.i.i205 = sext i1 %i.hvy to i32
  %i.hvz = add nsw i32 %i.hvx, %.neg129.i.i205
  %i.hwa = add nsw i32 %i.hvz, %storemerge.i553.i ; 8 uses
  %i.hwb = add nsw i32 %i.hwa, 5
  %or.cond3.i.i206 = icmp ult i32 %i.hwb, 27
  br i1 %or.cond3.i.i206, label %bb.zn, label %bb.aac

bb.zn:                                            ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i
  %i.hwc = icmp slt i32 %i.hwa, 1
  br i1 %i.hwc, label %bb.zo, label %bb.zv

bb.zo:                                            ; preds = %bb.zn
  %i.hwd = sub nsw i32 2, %i.hwa
  %i.hwe = zext nneg i32 %i.hwd to i64
  %i.hwf = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %i.hwe ; 2 uses
  %i.hwg = udiv i64 %.0772, 100000000             ; 2 uses
  %i.hwh = trunc i64 %i.hwg to i32                ; 2 uses
  %.neg.i556.i = mul i64 %i.hwg, 4194967296
  %i.hwi = add i64 %.neg.i556.i, %.0772           ; 2 uses
  %i.hwj = trunc i64 %i.hwi to i32                ; 2 uses
  %i.hwk = udiv i32 %i.hwh, 10000                 ; 3 uses
  %.neg95.i.i218 = mul i32 %i.hwk, -10000
  %i.hwl = add i32 %.neg95.i.i218, %i.hwh         ; 5 uses
  %i.hwm = zext nneg i32 %i.hwk to i64
  %i.hwn = mul nuw nsw i64 %i.hwm, 167773
  %i.hwo = lshr i64 %i.hwn, 24
  %i.hwp = trunc nuw nsw i64 %i.hwo to i32        ; 3 uses
  %i.hwq = mul nuw nsw i32 %i.hwp, 41
  %i.hwr = lshr i32 %i.hwq, 12                    ; 3 uses
  %.neg96.i.i219 = mul nsw i32 %i.hwr, -100
  %i.hws = add nsw i32 %.neg96.i.i219, %i.hwp     ; 3 uses
  %.neg97.i.i220 = mul nsw i32 %i.hwp, -100
  %i.hwt = add nsw i32 %.neg97.i.i220, %i.hwk     ; 3 uses
  %i.hwu = trunc nuw nsw i32 %i.hwr to i8
  %i.hwv = add nuw nsw i8 %i.hwu, 48
  store i8 %i.hwv, ptr %i.hwf, align 1, !tbaa !99
  %i.hww = icmp ne i32 %i.hwr, 0                  ; 2 uses
  %i.hwx = zext i1 %i.hww to i64
  %i.hwy = getelementptr inbounds nuw i8, ptr %i.hwf, i64 %i.hwx ; 2 uses
  %i.hwz = icmp ult i32 %i.hws, 10
  %.not2952 = xor i1 %i.hww, true
  %i.hxa = and i1 %i.hwz, %.not2952               ; 2 uses
  %i.hxb = shl nsw i32 %i.hws, 1
  %i.hxc = zext i32 %i.hxb to i64
  %i.hxd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxc
  %.neg98.i.i221 = sext i1 %i.hxa to i64
  %i.hxe = zext i1 %i.hxa to i64
  %i.hxf = getelementptr inbounds nuw i8, ptr %i.hxd, i64 %i.hxe
  %i.hxg = load i16, ptr %i.hxf, align 1
  store i16 %i.hxg, ptr %i.hwy, align 1
  %i.hxh = getelementptr inbounds i8, ptr %i.hwy, i64 %.neg98.i.i221 ; 10 uses
  %i.hxi = getelementptr inbounds nuw i8, ptr %i.hxh, i64 2
  %i.hxj = shl nsw i32 %i.hwt, 1
  %i.hxk = zext i32 %i.hxj to i64
  %i.hxl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hxk
  %i.hxm = load i16, ptr %i.hxl, align 2
  store i16 %i.hxm, ptr %i.hxi, align 1
  %.not.i557.i = icmp eq i32 %i.hwj, 0
  br i1 %.not.i557.i, label %bb.zs, label %bb.zp

bb.zp:                                            ; preds = %bb.zo
  %i.hxn = mul i32 %i.hwl, 5243
  %i.hxo = lshr i32 %i.hxn, 19                    ; 2 uses
  %.neg103.i.i222 = mul i32 %i.hxo, 2147483548
  %i.hxp = add i32 %.neg103.i.i222, %i.hwl
  %i.hxq = and i64 %i.hwi, 4294967295
  %i.hxr = mul nuw nsw i64 %i.hxq, 109951163
  %i.hxs = lshr i64 %i.hxr, 40
  %i.hxt = trunc nuw nsw i64 %i.hxs to i32        ; 3 uses
  %.neg104.i.i223 = mul i32 %i.hxt, -10000
  %i.hxu = add i32 %.neg104.i.i223, %i.hwj        ; 3 uses
  %i.hxv = mul nuw i32 %i.hxt, 5243
  %i.hxw = lshr i32 %i.hxv, 19                    ; 3 uses
  %.neg105.i.i224 = mul nsw i32 %i.hxw, -100
  %i.hxx = add nsw i32 %.neg105.i.i224, %i.hxt    ; 2 uses
  %i.hxy = getelementptr inbounds nuw i8, ptr %i.hxh, i64 4
  %i.hxz = shl nuw nsw i32 %i.hxo, 1
  %i.hya = zext nneg i32 %i.hxz to i64
  %i.hyb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hya
  %i.hyc = load i16, ptr %i.hyb, align 2
  store i16 %i.hyc, ptr %i.hxy, align 1
  %i.hyd = getelementptr inbounds nuw i8, ptr %i.hxh, i64 6
  %i.hye = shl i32 %i.hxp, 1
  %i.hyf = zext i32 %i.hye to i64
  %i.hyg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyf
  %i.hyh = load i16, ptr %i.hyg, align 2
  store i16 %i.hyh, ptr %i.hyd, align 1
  %i.hyi = getelementptr inbounds nuw i8, ptr %i.hxh, i64 8
  %i.hyj = shl nuw nsw i32 %i.hxw, 1
  %i.hyk = zext nneg i32 %i.hyj to i64
  %i.hyl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyk
  %i.hym = load i16, ptr %i.hyl, align 2
  store i16 %i.hym, ptr %i.hyi, align 1
  %i.hyn = getelementptr inbounds nuw i8, ptr %i.hxh, i64 10
  %i.hyo = shl nsw i32 %i.hxx, 1
  %i.hyp = zext i32 %i.hyo to i64
  %i.hyq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyp
  %i.hyr = load i16, ptr %i.hyq, align 2
  store i16 %i.hyr, ptr %i.hyn, align 1
  %.not106.i.i225 = icmp eq i32 %i.hxu, 0
  br i1 %.not106.i.i225, label %bb.zr, label %bb.zq

bb.zq:                                            ; preds = %bb.zp
  %i.hys = mul i32 %i.hxu, 5243
  %i.hyt = lshr i32 %i.hys, 19                    ; 3 uses
  %.neg108.i.i226 = mul nsw i32 %i.hyt, -100
  %i.hyu = add i32 %.neg108.i.i226, %i.hxu        ; 2 uses
  %i.hyv = getelementptr inbounds nuw i8, ptr %i.hxh, i64 12
  %i.hyw = shl nuw nsw i32 %i.hyt, 1
  %i.hyx = zext nneg i32 %i.hyw to i64
  %i.hyy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hyx
  %i.hyz = load i16, ptr %i.hyy, align 2
  store i16 %i.hyz, ptr %i.hyv, align 1
  %i.hza = getelementptr inbounds nuw i8, ptr %i.hxh, i64 14
  %i.hzb = shl nuw i32 %i.hyu, 1
  %i.hzc = zext i32 %i.hzb to i64
  %i.hzd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzc
  %i.hze = load i16, ptr %i.hzd, align 2
  store i16 %i.hze, ptr %i.hza, align 1
  br label %bb.zr

bb.zr:                                            ; preds = %bb.zp, %bb.zq
  %.sink4473 = phi i32 [ %i.hyt, %bb.zq ], [ %i.hxw, %bb.zp ]
  %.sink4469 = phi i32 [ %i.hyu, %bb.zq ], [ %i.hxx, %bb.zp ] ; 2 uses
  %.sink4460 = phi i64 [ 16, %bb.zq ], [ 12, %bb.zp ]
  %i.hzf = zext nneg i32 %.sink4473 to i64
  %i.hzg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzf
  %i.hzh = load i8, ptr %i.hzg, align 1, !tbaa !99
  %i.hzi = zext i8 %i.hzh to i64
  %i.hzj = zext i32 %.sink4469 to i64
  %i.hzk = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.hzj
  %i.hzl = load i8, ptr %i.hzk, align 1, !tbaa !99
  %i.hzm = zext i8 %i.hzl to i64
  %.not107.i.i231 = icmp eq i32 %.sink4469, 0
  %i.hzn = add nuw nsw i64 %i.hzi, 2
  %i.hzo = select i1 %.not107.i.i231, i64 %i.hzn, i64 %i.hzm
  %i.hzp = sub nsw i64 %.sink4460, %i.hzo
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229

bb.zs:                                            ; preds = %bb.zo
  %.not99.i.i232 = icmp eq i32 %i.hwl, 0
  br i1 %.not99.i.i232, label %bb.zu, label %bb.zt

bb.zt:                                            ; preds = %bb.zs
  %i.hzq = mul i32 %i.hwl, 5243
  %i.hzr = lshr i32 %i.hzq, 19                    ; 3 uses
  %.neg101.i.i233 = mul nsw i32 %i.hzr, -100
  %i.hzs = add i32 %.neg101.i.i233, %i.hwl        ; 3 uses
  %i.hzt = getelementptr inbounds nuw i8, ptr %i.hxh, i64 4
  %i.hzu = shl nuw nsw i32 %i.hzr, 1
  %i.hzv = zext nneg i32 %i.hzu to i64
  %i.hzw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.hzv
  %i.hzx = load i16, ptr %i.hzw, align 2
  store i16 %i.hzx, ptr %i.hzt, align 1
  %i.hzy = getelementptr inbounds nuw i8, ptr %i.hxh, i64 6
  %i.hzz = shl nuw i32 %i.hzs, 1
  %i.iaa = zext i32 %i.hzz to i64
  %i.iab = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iaa
  %i.iac = load i16, ptr %i.iab, align 2
  store i16 %i.iac, ptr %i.hzy, align 1
  %i.iad = zext nneg i32 %i.hzr to i64
  %i.iae = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iad
  %i.iaf = load i8, ptr %i.iae, align 1, !tbaa !99
  %i.iag = zext i8 %i.iaf to i64
  %i.iah = zext i32 %i.hzs to i64
  %i.iai = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iah
  %i.iaj = load i8, ptr %i.iai, align 1, !tbaa !99
  %i.iak = zext i8 %i.iaj to i64
  %.not102.i.i234 = icmp eq i32 %i.hzs, 0
  %i.ial = add nuw nsw i64 %i.iag, 2
  %i.iam = select i1 %.not102.i.i234, i64 %i.ial, i64 %i.iak
  %i.ian = sub nsw i64 8, %i.iam
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229

bb.zu:                                            ; preds = %bb.zs
  %i.iao = zext i32 %i.hws to i64
  %i.iap = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iao
  %i.iaq = load i8, ptr %i.iap, align 1, !tbaa !99
  %i.iar = zext i8 %i.iaq to i64
  %i.ias = zext i32 %i.hwt to i64
  %i.iat = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ias
  %i.iau = load i8, ptr %i.iat, align 1, !tbaa !99
  %i.iav = zext i8 %i.iau to i64
  %.not100.i.i235 = icmp eq i32 %i.hwt, 0
  %i.iaw = select i1 %.not100.i.i235, i64 %i.iar, i64 0
  %i.iax = add nuw nsw i64 %i.iaw, %i.iav
  %i.iay = sub nsw i64 4, %i.iax
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229: ; preds = %bb.zu, %bb.zt, %bb.zr
  %.sink4475.a = phi i64 [ %i.iay, %bb.zu ], [ %i.ian, %bb.zt ], [ %i.hzp, %bb.zr ]
  %i.iaz = and i64 %.sink4475.a, 4294967295
  %i.iba = getelementptr inbounds nuw i8, ptr %i.hxh, i64 %i.iaz ; 2 uses
  store i8 48, ptr %i.hjw, align 1, !tbaa !99
  %i.ibb = getelementptr inbounds nuw i8, ptr %i.hjw, i64 1
  store i8 46, ptr %i.ibb, align 1, !tbaa !99
  %i.ibc = icmp slt i32 %i.hwa, 0
  br i1 %i.ibc, label %.lr.ph2223.preheader, label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

.lr.ph2223.preheader:                             ; preds = %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit.i229
  %i.ibd = getelementptr i8, ptr %i.hjw, i64 2
  %narrow3145 = sub nsw i32 0, %i.hwa
  %i.ibe = zext nneg i32 %narrow3145 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ibd, i8 48, i64 %i.ibe, i1 false), !tbaa !99
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.zv:                                            ; preds = %bb.zn
  %i.ibf = getelementptr inbounds nuw i8, ptr %i.hjw, i64 1 ; 2 uses
  %i.ibg = udiv i64 %.0772, 100000000             ; 2 uses
  %i.ibh = trunc i64 %i.ibg to i32                ; 2 uses
  %.neg.i561.i = mul i64 %i.ibg, 4194967296
  %i.ibi = add i64 %.neg.i561.i, %.0772           ; 2 uses
  %i.ibj = trunc i64 %i.ibi to i32                ; 2 uses
  %i.ibk = udiv i32 %i.ibh, 10000                 ; 3 uses
  %.neg95.i562.i = mul i32 %i.ibk, -10000
  %i.ibl = add i32 %.neg95.i562.i, %i.ibh         ; 5 uses
  %i.ibm = zext nneg i32 %i.ibk to i64
  %i.ibn = mul nuw nsw i64 %i.ibm, 167773
  %i.ibo = lshr i64 %i.ibn, 24
  %i.ibp = trunc nuw nsw i64 %i.ibo to i32        ; 3 uses
  %i.ibq = mul nuw nsw i32 %i.ibp, 41
  %i.ibr = lshr i32 %i.ibq, 12                    ; 3 uses
  %.neg96.i563.i = mul nsw i32 %i.ibr, -100
  %i.ibs = add nsw i32 %.neg96.i563.i, %i.ibp     ; 3 uses
  %.neg97.i564.i = mul nsw i32 %i.ibp, -100
  %i.ibt = add nsw i32 %.neg97.i564.i, %i.ibk     ; 3 uses
  %i.ibu = trunc nuw nsw i32 %i.ibr to i8
  %i.ibv = add nuw nsw i8 %i.ibu, 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.hjw, i8 48, i64 24, i1 false)
  store i8 %i.ibv, ptr %i.ibf, align 1, !tbaa !99
  %i.ibw = icmp ne i32 %i.ibr, 0                  ; 2 uses
  %i.ibx = zext i1 %i.ibw to i64
  %i.iby = getelementptr inbounds nuw i8, ptr %i.ibf, i64 %i.ibx ; 2 uses
  %i.ibz = icmp ult i32 %i.ibs, 10
  %.not2951 = xor i1 %i.ibw, true
  %i.ica = and i1 %i.ibz, %.not2951               ; 2 uses
  %i.icb = shl nsw i32 %i.ibs, 1
  %i.icc = zext i32 %i.icb to i64
  %i.icd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.icc
  %.neg98.i565.i = sext i1 %i.ica to i64
  %i.ice = zext i1 %i.ica to i64
  %i.icf = getelementptr inbounds nuw i8, ptr %i.icd, i64 %i.ice
  %i.icg = load i16, ptr %i.icf, align 1
  store i16 %i.icg, ptr %i.iby, align 1
  %i.ich = getelementptr inbounds i8, ptr %i.iby, i64 %.neg98.i565.i ; 10 uses
  %i.ici = getelementptr inbounds nuw i8, ptr %i.ich, i64 2
  %i.icj = shl nsw i32 %i.ibt, 1
  %i.ick = zext i32 %i.icj to i64
  %i.icl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ick
  %i.icm = load i16, ptr %i.icl, align 2
  store i16 %i.icm, ptr %i.ici, align 1
  %.not.i566.i217 = icmp eq i32 %i.ibj, 0
  br i1 %.not.i566.i217, label %bb.zz, label %bb.zw

bb.zw:                                            ; preds = %bb.zv
  %i.icn = mul i32 %i.ibl, 5243
  %i.ico = lshr i32 %i.icn, 19                    ; 2 uses
  %.neg103.i567.i = mul i32 %i.ico, 2147483548
  %i.icp = add i32 %.neg103.i567.i, %i.ibl
  %i.icq = and i64 %i.ibi, 4294967295
  %i.icr = mul nuw nsw i64 %i.icq, 109951163
  %i.ics = lshr i64 %i.icr, 40
  %i.ict = trunc nuw nsw i64 %i.ics to i32        ; 3 uses
  %.neg104.i568.i = mul i32 %i.ict, -10000
  %i.icu = add i32 %.neg104.i568.i, %i.ibj        ; 3 uses
  %i.icv = mul nuw i32 %i.ict, 5243
  %i.icw = lshr i32 %i.icv, 19                    ; 3 uses
  %.neg105.i569.i = mul nsw i32 %i.icw, -100
  %i.icx = add nsw i32 %.neg105.i569.i, %i.ict    ; 2 uses
  %i.icy = getelementptr inbounds nuw i8, ptr %i.ich, i64 4
  %i.icz = shl nuw nsw i32 %i.ico, 1
  %i.ida = zext nneg i32 %i.icz to i64
  %i.idb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ida
  %i.idc = load i16, ptr %i.idb, align 2
  store i16 %i.idc, ptr %i.icy, align 1
  %i.idd = getelementptr inbounds nuw i8, ptr %i.ich, i64 6
  %i.ide = shl i32 %i.icp, 1
  %i.idf = zext i32 %i.ide to i64
  %i.idg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idf
  %i.idh = load i16, ptr %i.idg, align 2
  store i16 %i.idh, ptr %i.idd, align 1
  %i.idi = getelementptr inbounds nuw i8, ptr %i.ich, i64 8
  %i.idj = shl nuw nsw i32 %i.icw, 1
  %i.idk = zext nneg i32 %i.idj to i64
  %i.idl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idk
  %i.idm = load i16, ptr %i.idl, align 2
  store i16 %i.idm, ptr %i.idi, align 1
  %i.idn = getelementptr inbounds nuw i8, ptr %i.ich, i64 10
  %i.ido = shl nsw i32 %i.icx, 1
  %i.idp = zext i32 %i.ido to i64
  %i.idq = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idp
  %i.idr = load i16, ptr %i.idq, align 2
  store i16 %i.idr, ptr %i.idn, align 1
  %.not106.i570.i = icmp eq i32 %i.icu, 0
  br i1 %.not106.i570.i, label %bb.zy, label %bb.zx

bb.zx:                                            ; preds = %bb.zw
  %i.ids = mul i32 %i.icu, 5243
  %i.idt = lshr i32 %i.ids, 19                    ; 3 uses
  %.neg108.i571.i = mul nsw i32 %i.idt, -100
  %i.idu = add i32 %.neg108.i571.i, %i.icu        ; 2 uses
  %i.idv = getelementptr inbounds nuw i8, ptr %i.ich, i64 12
  %i.idw = shl nuw nsw i32 %i.idt, 1
  %i.idx = zext nneg i32 %i.idw to i64
  %i.idy = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.idx
  %i.idz = load i16, ptr %i.idy, align 2
  store i16 %i.idz, ptr %i.idv, align 1
  %i.iea = getelementptr inbounds nuw i8, ptr %i.ich, i64 14
  %i.ieb = shl nuw i32 %i.idu, 1
  %i.iec = zext i32 %i.ieb to i64
  %i.ied = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iec
  %i.iee = load i16, ptr %i.ied, align 2
  store i16 %i.iee, ptr %i.iea, align 1
  br label %bb.zy

bb.zy:                                            ; preds = %bb.zw, %bb.zx
  %.sink4489 = phi i32 [ %i.idt, %bb.zx ], [ %i.icw, %bb.zw ]
  %.sink4485 = phi i32 [ %i.idu, %bb.zx ], [ %i.icx, %bb.zw ] ; 2 uses
  %.sink4476 = phi i64 [ 16, %bb.zx ], [ 12, %bb.zw ]
  %i.ief = zext nneg i32 %.sink4489 to i64
  %i.ieg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ief
  %i.ieh = load i8, ptr %i.ieg, align 1, !tbaa !99
  %i.iei = zext i8 %i.ieh to i64
  %i.iej = zext i32 %.sink4485 to i64
  %i.iek = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iej
  %i.iel = load i8, ptr %i.iek, align 1, !tbaa !99
  %i.iem = zext i8 %i.iel to i64
  %.not107.i577.i = icmp eq i32 %.sink4485, 0
  %i.ien = add nuw nsw i64 %i.iei, 2
  %i.ieo = select i1 %.not107.i577.i, i64 %i.ien, i64 %i.iem
  %i.iep = sub nsw i64 %.sink4476, %i.ieo
  br label %._crit_edge2221

bb.zz:                                            ; preds = %bb.zv
  %.not99.i578.i = icmp eq i32 %i.ibl, 0
  br i1 %.not99.i578.i, label %bb.aab, label %bb.aaa

bb.aaa:                                           ; preds = %bb.zz
  %i.ieq = mul i32 %i.ibl, 5243
  %i.ier = lshr i32 %i.ieq, 19                    ; 3 uses
  %.neg101.i579.i = mul nsw i32 %i.ier, -100
  %i.ies = add i32 %.neg101.i579.i, %i.ibl        ; 3 uses
  %i.iet = getelementptr inbounds nuw i8, ptr %i.ich, i64 4
  %i.ieu = shl nuw nsw i32 %i.ier, 1
  %i.iev = zext nneg i32 %i.ieu to i64
  %i.iew = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iev
  %i.iex = load i16, ptr %i.iew, align 2
  store i16 %i.iex, ptr %i.iet, align 1
  %i.iey = getelementptr inbounds nuw i8, ptr %i.ich, i64 6
  %i.iez = shl nuw i32 %i.ies, 1
  %i.ifa = zext i32 %i.iez to i64
  %i.ifb = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ifa
  %i.ifc = load i16, ptr %i.ifb, align 2
  store i16 %i.ifc, ptr %i.iey, align 1
  %i.ifd = zext nneg i32 %i.ier to i64
  %i.ife = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifd
  %i.iff = load i8, ptr %i.ife, align 1, !tbaa !99
  %i.ifg = zext i8 %i.iff to i64
  %i.ifh = zext i32 %i.ies to i64
  %i.ifi = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifh
  %i.ifj = load i8, ptr %i.ifi, align 1, !tbaa !99
  %i.ifk = zext i8 %i.ifj to i64
  %.not102.i580.i = icmp eq i32 %i.ies, 0
  %i.ifl = add nuw nsw i64 %i.ifg, 2
  %i.ifm = select i1 %.not102.i580.i, i64 %i.ifl, i64 %i.ifk
  %i.ifn = sub nsw i64 8, %i.ifm
  br label %._crit_edge2221

bb.aab:                                           ; preds = %bb.zz
  %i.ifo = zext i32 %i.ibs to i64
  %i.ifp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifo
  %i.ifq = load i8, ptr %i.ifp, align 1, !tbaa !99
  %i.ifr = zext i8 %i.ifq to i64
  %i.ifs = zext i32 %i.ibt to i64
  %i.ift = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ifs
  %i.ifu = load i8, ptr %i.ift, align 1, !tbaa !99
  %i.ifv = zext i8 %i.ifu to i64
  %.not100.i581.i = icmp eq i32 %i.ibt, 0
  %i.ifw = select i1 %.not100.i581.i, i64 %i.ifr, i64 0
  %i.ifx = add nuw nsw i64 %i.ifw, %i.ifv
  %i.ify = sub nsw i64 4, %i.ifx
  br label %._crit_edge2221

._crit_edge2221:                                  ; preds = %bb.aab, %bb.aaa, %bb.zy
  %.sink4491.a = phi i64 [ %i.ify, %bb.aab ], [ %i.ifn, %bb.aaa ], [ %i.iep, %bb.zy ]
  %i.ifz = and i64 %.sink4491.a, 4294967295
  %i.iga = getelementptr inbounds nuw i8, ptr %i.ich, i64 %i.ifz ; 2 uses
  %scevgep2888 = getelementptr i8, ptr %.3359.i, i64 1
  %scevgep2889 = getelementptr i8, ptr %scevgep2888, i64 %.lobit.i539.i
  %i.igb = zext nneg i32 %i.hwa to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hjw, ptr align 1 %scevgep2889, i64 %i.igb, i1 false), !tbaa !99
  %i.igc = zext nneg i32 %i.hwa to i64
  %i.igd = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %i.igc ; 2 uses
  store i8 46, ptr %i.igd, align 1, !tbaa !99
  %i.ige = getelementptr inbounds nuw i8, ptr %i.igd, i64 2 ; 2 uses
  %i.igf = icmp ult ptr %i.ige, %i.iga
  %spec.select948 = select i1 %i.igf, ptr %i.iga, ptr %i.ige
  br label %_ZN13duckdb_yyjsonL12write_numberEPhPNS_10yyjson_valEj.exit.i210.thread

bb.aac:                                           ; preds = %_ZN13duckdb_yyjsonL14f64_bin_to_decEmjmiPmPi.exit555.i
  %.ptr979 = getelementptr inbounds nuw i8, ptr %i.hjw, i64 1 ; 3 uses
  %i.igg = udiv i64 %.0772, 100000000             ; 2 uses
  %i.igh = trunc i64 %i.igg to i32                ; 2 uses
  %.neg.i583.i = mul i64 %i.igg, 4194967296
  %i.igi = add i64 %.neg.i583.i, %.0772           ; 2 uses
  %i.igj = trunc i64 %i.igi to i32                ; 2 uses
  %i.igk = udiv i32 %i.igh, 10000                 ; 3 uses
  %.neg95.i584.i = mul i32 %i.igk, -10000
  %i.igl = add i32 %.neg95.i584.i, %i.igh         ; 5 uses
  %i.igm = zext nneg i32 %i.igk to i64
  %i.ign = mul nuw nsw i64 %i.igm, 167773
  %i.igo = lshr i64 %i.ign, 24
  %i.igp = trunc nuw nsw i64 %i.igo to i32        ; 3 uses
  %i.igq = mul nuw nsw i32 %i.igp, 41
  %i.igr = lshr i32 %i.igq, 12                    ; 3 uses
  %.neg96.i585.i = mul nsw i32 %i.igr, -100
  %i.igs = add nsw i32 %.neg96.i585.i, %i.igp     ; 3 uses
  %.neg97.i586.i = mul nsw i32 %i.igp, -100
  %i.igt = add nsw i32 %.neg97.i586.i, %i.igk     ; 3 uses
  %i.igu = trunc nuw nsw i32 %i.igr to i8
  %i.igv = add nuw nsw i8 %i.igu, 48
  store i8 %i.igv, ptr %.ptr979, align 1, !tbaa !99
  %.not984 = icmp eq i32 %i.igr, 0                ; 2 uses
  %.add974 = select i1 %.not984, i64 1, i64 2     ; 2 uses
  %.ptr980 = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %.add974
  %i.igw = icmp ult i32 %i.igs, 10
  %i.igx = and i1 %.not984, %i.igw                ; 2 uses
  %i.igy = shl nsw i32 %i.igs, 1
  %i.igz = zext i32 %i.igy to i64
  %i.iha = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.igz
  %.neg98.i587.i = sext i1 %i.igx to i64
  %i.ihb = zext i1 %i.igx to i64
  %i.ihc = getelementptr inbounds nuw i8, ptr %i.iha, i64 %i.ihb
  %i.ihd = load i16, ptr %i.ihc, align 1
  store i16 %i.ihd, ptr %.ptr980, align 1
  %.add975 = add nsw i64 %.add974, %.neg98.i587.i ; 2 uses
  %.ptr981 = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %.add975 ; 9 uses
  %i.ihe = getelementptr inbounds nuw i8, ptr %.ptr981, i64 2
  %i.ihf = shl nsw i32 %i.igt, 1
  %i.ihg = zext i32 %i.ihf to i64
  %i.ihh = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihg
  %i.ihi = load i16, ptr %i.ihh, align 2
  store i16 %i.ihi, ptr %i.ihe, align 1
  %.not.i588.i = icmp eq i32 %i.igj, 0
  br i1 %.not.i588.i, label %bb.aag, label %bb.aad

bb.aad:                                           ; preds = %bb.aac
  %i.ihj = mul i32 %i.igl, 5243
  %i.ihk = lshr i32 %i.ihj, 19                    ; 2 uses
  %.neg103.i589.i = mul i32 %i.ihk, 2147483548
  %i.ihl = add i32 %.neg103.i589.i, %i.igl
  %i.ihm = and i64 %i.igi, 4294967295
  %i.ihn = mul nuw nsw i64 %i.ihm, 109951163
  %i.iho = lshr i64 %i.ihn, 40
  %i.ihp = trunc nuw nsw i64 %i.iho to i32        ; 3 uses
  %.neg104.i590.i = mul i32 %i.ihp, -10000
  %i.ihq = add i32 %.neg104.i590.i, %i.igj        ; 3 uses
  %i.ihr = mul nuw i32 %i.ihp, 5243
  %i.ihs = lshr i32 %i.ihr, 19                    ; 3 uses
  %.neg105.i591.i = mul nsw i32 %i.ihs, -100
  %i.iht = add nsw i32 %.neg105.i591.i, %i.ihp    ; 3 uses
  %i.ihu = getelementptr inbounds nuw i8, ptr %.ptr981, i64 4
  %i.ihv = shl nuw nsw i32 %i.ihk, 1
  %i.ihw = zext nneg i32 %i.ihv to i64
  %i.ihx = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ihw
  %i.ihy = load i16, ptr %i.ihx, align 2
  store i16 %i.ihy, ptr %i.ihu, align 1
  %i.ihz = getelementptr inbounds nuw i8, ptr %.ptr981, i64 6
  %i.iia = shl i32 %i.ihl, 1
  %i.iib = zext i32 %i.iia to i64
  %i.iic = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iib
  %i.iid = load i16, ptr %i.iic, align 2
  store i16 %i.iid, ptr %i.ihz, align 1
  %i.iie = getelementptr inbounds nuw i8, ptr %.ptr981, i64 8
  %i.iif = shl nuw nsw i32 %i.ihs, 1
  %i.iig = zext nneg i32 %i.iif to i64
  %i.iih = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iig
  %i.iii = load i16, ptr %i.iih, align 2
  store i16 %i.iii, ptr %i.iie, align 1
  %i.iij = getelementptr inbounds nuw i8, ptr %.ptr981, i64 10
  %i.iik = shl nsw i32 %i.iht, 1
  %i.iil = zext i32 %i.iik to i64
  %i.iim = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iil
  %i.iin = load i16, ptr %i.iim, align 2
  store i16 %i.iin, ptr %i.iij, align 1
  %.not106.i592.i = icmp eq i32 %i.ihq, 0
  br i1 %.not106.i592.i, label %bb.aaf, label %bb.aae

bb.aae:                                           ; preds = %bb.aad
  %i.iio = mul i32 %i.ihq, 5243
  %i.iip = lshr i32 %i.iio, 19                    ; 3 uses
  %.neg108.i593.i = mul nsw i32 %i.iip, -100
  %i.iiq = add i32 %.neg108.i593.i, %i.ihq        ; 3 uses
  %i.iir = getelementptr inbounds nuw i8, ptr %.ptr981, i64 12
  %i.iis = shl nuw nsw i32 %i.iip, 1
  %i.iit = zext nneg i32 %i.iis to i64
  %i.iiu = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iit
  %i.iiv = load i16, ptr %i.iiu, align 2
  store i16 %i.iiv, ptr %i.iir, align 1
  %i.iiw = getelementptr inbounds nuw i8, ptr %.ptr981, i64 14
  %i.iix = shl nuw i32 %i.iiq, 1
  %i.iiy = zext i32 %i.iix to i64
  %i.iiz = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.iiy
  %i.ija = load i16, ptr %i.iiz, align 2
  store i16 %i.ija, ptr %i.iiw, align 1
  %i.ijb = zext nneg i32 %i.iip to i64
  %i.ijc = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijb
  %i.ijd = load i8, ptr %i.ijc, align 1, !tbaa !99
  %i.ije = zext i8 %i.ijd to i64
  %i.ijf = zext i32 %i.iiq to i64
  %i.ijg = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijf
  %i.ijh = load i8, ptr %i.ijg, align 1, !tbaa !99
  %i.iji = zext i8 %i.ijh to i64
  %.not109.i594.i = icmp eq i32 %i.iiq, 0
  %i.ijj = add nuw nsw i64 %i.ije, 2
  %i.ijk = select i1 %.not109.i594.i, i64 %i.ijj, i64 %i.iji
  %i.ijl = sub nsw i64 16, %i.ijk
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

bb.aaf:                                           ; preds = %bb.aad
  %i.ijm = zext nneg i32 %i.ihs to i64
  %i.ijn = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijm
  %i.ijo = load i8, ptr %i.ijn, align 1, !tbaa !99
  %i.ijp = zext i8 %i.ijo to i64
  %i.ijq = zext i32 %i.iht to i64
  %i.ijr = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ijq
  %i.ijs = load i8, ptr %i.ijr, align 1, !tbaa !99
  %i.ijt = zext i8 %i.ijs to i64
  %.not107.i599.i = icmp eq i32 %i.iht, 0
  %i.iju = add nuw nsw i64 %i.ijp, 2
  %i.ijv = select i1 %.not107.i599.i, i64 %i.iju, i64 %i.ijt
  %i.ijw = sub nsw i64 12, %i.ijv
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

bb.aag:                                           ; preds = %bb.aac
  %.not99.i600.i = icmp eq i32 %i.igl, 0
  br i1 %.not99.i600.i, label %bb.aai, label %bb.aah

bb.aah:                                           ; preds = %bb.aag
  %i.ijx = mul i32 %i.igl, 5243
  %i.ijy = lshr i32 %i.ijx, 19                    ; 3 uses
  %.neg101.i601.i = mul nsw i32 %i.ijy, -100
  %i.ijz = add i32 %.neg101.i601.i, %i.igl        ; 3 uses
  %i.ika = getelementptr inbounds nuw i8, ptr %.ptr981, i64 4
  %i.ikb = shl nuw nsw i32 %i.ijy, 1
  %i.ikc = zext nneg i32 %i.ikb to i64
  %i.ikd = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ikc
  %i.ike = load i16, ptr %i.ikd, align 2
  store i16 %i.ike, ptr %i.ika, align 1
  %i.ikf = getelementptr inbounds nuw i8, ptr %.ptr981, i64 6
  %i.ikg = shl nuw i32 %i.ijz, 1
  %i.ikh = zext i32 %i.ikg to i64
  %i.iki = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL11digit_tableE, i64 %i.ikh
  %i.ikj = load i16, ptr %i.iki, align 2
  store i16 %i.ikj, ptr %i.ikf, align 1
  %i.ikk = zext nneg i32 %i.ijy to i64
  %i.ikl = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ikk
  %i.ikm = load i8, ptr %i.ikl, align 1, !tbaa !99
  %i.ikn = zext i8 %i.ikm to i64
  %i.iko = zext i32 %i.ijz to i64
  %i.ikp = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.iko
  %i.ikq = load i8, ptr %i.ikp, align 1, !tbaa !99
  %i.ikr = zext i8 %i.ikq to i64
  %.not102.i602.i = icmp eq i32 %i.ijz, 0
  %i.iks = add nuw nsw i64 %i.ikn, 2
  %i.ikt = select i1 %.not102.i602.i, i64 %i.iks, i64 %i.ikr
  %i.iku = sub nsw i64 8, %i.ikt
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

bb.aai:                                           ; preds = %bb.aag
  %i.ikv = zext i32 %i.igs to i64
  %i.ikw = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ikv
  %i.ikx = load i8, ptr %i.ikw, align 1, !tbaa !99
  %i.iky = zext i8 %i.ikx to i64
  %i.ikz = zext i32 %i.igt to i64
  %i.ila = getelementptr inbounds nuw i8, ptr @_ZN13duckdb_yyjsonL23dec_trailing_zero_tableE, i64 %i.ikz
  %i.ilb = load i8, ptr %i.ila, align 1, !tbaa !99
  %i.ilc = zext i8 %i.ilb to i64
  %.not100.i603.i = icmp eq i32 %i.igt, 0
  %i.ild = select i1 %.not100.i603.i, i64 %i.iky, i64 0
  %i.ile = add nuw nsw i64 %i.ild, %i.ilc
  %i.ilf = sub nsw i64 4, %i.ile
  br label %_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i

_ZN13duckdb_yyjsonL27write_u64_len_15_to_17_trimEPhm.exit604.i: ; preds = %bb.aae, %bb.aaf, %bb.aai, %bb.aah
  %.pn.i596.i.pn.in = phi i64 [ %i.ilf, %bb.aai ], [ %i.iku, %bb.aah ], [ %i.ijl, %bb.aae ], [ %i.ijw, %bb.aaf ]
  %.pn.i596.i.pn = and i64 %.pn.i596.i.pn.in, 4294967295
  %.1.i598.i.idx = add nuw nsw i64 %.pn.i596.i.pn, %.add975 ; 2 uses
  %.1.i598.i.ptr = getelementptr inbounds nuw i8, ptr %i.hjw, i64 %.1.i598.i.idx
  %i.ilg = icmp eq i64 %.1.i598.i.idx, 2
  %.neg130.i.i207 = sext i1 %i.ilg to i64
end_hunk_3
