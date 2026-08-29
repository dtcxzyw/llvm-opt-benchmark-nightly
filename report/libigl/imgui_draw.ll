Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_draw?download=true
inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_Z22ImFontAtlasBuildFinishP11ImFontAtlas:bb.a
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.cum, i64 428
  store i32 0, ptr %i.cvp, align 4, !tbaa !138
  %i.cvq = load i32, ptr %i.g, align 8, !tbaa !235
  %i.cvr = sext i32 %i.cvq to i64
  %i.cvs = getelementptr inbounds [4 x i8], ptr %i.cum, i64 %i.cvr ; 31 uses
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvs, i64 16
  store <4 x i32> zeroinitializer, ptr %i.cvs, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cvt, align 4, !tbaa !138
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvs, i64 32
  %i.cvv = getelementptr inbounds nuw i8, ptr %i.cvs, i64 48
  store <4 x i32> zeroinitializer, ptr %i.cvu, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cvv, align 4, !tbaa !138
  %i.cvw = getelementptr inbounds nuw i8, ptr %i.cvs, i64 64
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cvs, i64 80
  store <4 x i32> zeroinitializer, ptr %i.cvw, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cvx, align 4, !tbaa !138
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvs, i64 96
  %i.cvz = getelementptr inbounds nuw i8, ptr %i.cvs, i64 112
  store <4 x i32> zeroinitializer, ptr %i.cvy, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cvz, align 4, !tbaa !138
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cvs, i64 128
  %i.cwb = getelementptr inbounds nuw i8, ptr %i.cvs, i64 144
  store <4 x i32> zeroinitializer, ptr %i.cwa, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwb, align 4, !tbaa !138
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cvs, i64 160
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cvs, i64 176
  store <4 x i32> zeroinitializer, ptr %i.cwc, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwd, align 4, !tbaa !138
  %i.cwe = getelementptr inbounds nuw i8, ptr %i.cvs, i64 192
  %i.cwf = getelementptr inbounds nuw i8, ptr %i.cvs, i64 208
  store <4 x i32> zeroinitializer, ptr %i.cwe, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwf, align 4, !tbaa !138
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cvs, i64 224
  %i.cwh = getelementptr inbounds nuw i8, ptr %i.cvs, i64 240
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %i.cwg, align 4, !tbaa !138
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.cwh, align 4, !tbaa !138
  %i.cwi = getelementptr inbounds nuw i8, ptr %i.cvs, i64 256
  %i.cwj = getelementptr inbounds nuw i8, ptr %i.cvs, i64 272
  store <4 x i32> zeroinitializer, ptr %i.cwi, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwj, align 4, !tbaa !138
  %i.cwk = getelementptr inbounds nuw i8, ptr %i.cvs, i64 288
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cvs, i64 304
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.cwk, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwl, align 4, !tbaa !138
  %i.cwm = getelementptr inbounds nuw i8, ptr %i.cvs, i64 320
  %i.cwn = getelementptr inbounds nuw i8, ptr %i.cvs, i64 336
  store <4 x i32> zeroinitializer, ptr %i.cwm, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwn, align 4, !tbaa !138
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cvs, i64 352
  %i.cwp = getelementptr inbounds nuw i8, ptr %i.cvs, i64 368
  store <4 x i32> zeroinitializer, ptr %i.cwo, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwp, align 4, !tbaa !138
  %i.cwq = getelementptr inbounds nuw i8, ptr %i.cvs, i64 384
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cvs, i64 400
  store <4 x i32> zeroinitializer, ptr %i.cwq, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwr, align 4, !tbaa !138
  %i.cws = getelementptr inbounds nuw i8, ptr %i.cvs, i64 416
  store i32 0, ptr %i.cws, align 4, !tbaa !138
  %i.cwt = getelementptr inbounds nuw i8, ptr %i.cvs, i64 420
  store i32 0, ptr %i.cwt, align 4, !tbaa !138
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cvs, i64 424
  store i32 0, ptr %i.cwu, align 4, !tbaa !138
  %i.cwv = getelementptr inbounds nuw i8, ptr %i.cvs, i64 428
  store i32 0, ptr %i.cwv, align 4, !tbaa !138
  %i.cww = load i32, ptr %i.g, align 8, !tbaa !235
  %i.cwx = sext i32 %i.cww to i64
  %i.cwy = getelementptr inbounds [4 x i8], ptr %i.cvs, i64 %i.cwx ; 30 uses
  %i.cwz = getelementptr inbounds nuw i8, ptr %i.cwy, i64 16
  store <4 x i32> zeroinitializer, ptr %i.cwy, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cwz, align 4, !tbaa !138
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cwy, i64 32
  %i.cxb = getelementptr inbounds nuw i8, ptr %i.cwy, i64 48
  store <4 x i32> zeroinitializer, ptr %i.cxa, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxb, align 4, !tbaa !138
  %i.cxc = getelementptr inbounds nuw i8, ptr %i.cwy, i64 64
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cwy, i64 80
  store <4 x i32> zeroinitializer, ptr %i.cxc, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxd, align 4, !tbaa !138
  %i.cxe = getelementptr inbounds nuw i8, ptr %i.cwy, i64 96
  %i.cxf = getelementptr inbounds nuw i8, ptr %i.cwy, i64 112
  store <4 x i32> zeroinitializer, ptr %i.cxe, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxf, align 4, !tbaa !138
  %i.cxg = getelementptr inbounds nuw i8, ptr %i.cwy, i64 128
  %i.cxh = getelementptr inbounds nuw i8, ptr %i.cwy, i64 144
  store <4 x i32> zeroinitializer, ptr %i.cxg, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxh, align 4, !tbaa !138
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cwy, i64 160
  %i.cxj = getelementptr inbounds nuw i8, ptr %i.cwy, i64 176
  store <4 x i32> zeroinitializer, ptr %i.cxi, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxj, align 4, !tbaa !138
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.cwy, i64 192
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.cwy, i64 208
  store <4 x i32> zeroinitializer, ptr %i.cxk, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxl, align 4, !tbaa !138
  %i.cxm = getelementptr inbounds nuw i8, ptr %i.cwy, i64 224
  %i.cxn = getelementptr inbounds nuw i8, ptr %i.cwy, i64 240
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -1>, ptr %i.cxm, align 4, !tbaa !138
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr %i.cxn, align 4, !tbaa !138
  %i.cxo = getelementptr inbounds nuw i8, ptr %i.cwy, i64 256
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cwy, i64 272
  store <4 x i32> zeroinitializer, ptr %i.cxo, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxp, align 4, !tbaa !138
  %i.cxq = getelementptr inbounds nuw i8, ptr %i.cwy, i64 288
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cwy, i64 304
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr %i.cxq, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxr, align 4, !tbaa !138
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.cwy, i64 320
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.cwy, i64 336
  store <4 x i32> zeroinitializer, ptr %i.cxs, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxt, align 4, !tbaa !138
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.cwy, i64 352
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cwy, i64 368
  store <4 x i32> zeroinitializer, ptr %i.cxu, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxv, align 4, !tbaa !138
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.cwy, i64 384
  %i.cxx = getelementptr inbounds nuw i8, ptr %i.cwy, i64 400
  store <4 x i32> zeroinitializer, ptr %i.cxw, align 4, !tbaa !138
  store <4 x i32> zeroinitializer, ptr %i.cxx, align 4, !tbaa !138
  %i.cxy = getelementptr inbounds nuw i8, ptr %i.cwy, i64 416
  store i32 0, ptr %i.cxy, align 4, !tbaa !138
  %i.cxz = getelementptr inbounds nuw i8, ptr %i.cwy, i64 420
  store i32 0, ptr %i.cxz, align 4, !tbaa !138
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cwy, i64 424
  store i32 0, ptr %i.cya, align 4, !tbaa !138
  %i.cyb = getelementptr inbounds nuw i8, ptr %i.cwy, i64 428
  store i32 0, ptr %i.cyb, align 4, !tbaa !138
  br label %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit

bb.c:                                             ; preds = %bb.a
  %i.cyc = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  %i.cyd = load i16, ptr %i.cyc, align 2, !tbaa !533
  %i.cye = zext i16 %i.cyd to i32
  %i.cyf = mul nsw i32 %i.h, %i.cye
  %i.cyg = add nsw i32 %i.cyf, %i.m               ; 4 uses
  %i.cyh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.cyi = load ptr, ptr %i.cyh, align 8, !tbaa !204 ; 2 uses
  %.not48.i = icmp eq ptr %i.cyi, null
  br i1 %.not48.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cyj = add nsw i32 %i.cyg, %i.h
  %i.cyk = sext i32 %i.cyj to i64                 ; 2 uses
  %i.cyl = getelementptr i8, ptr %i.cyi, i64 %i.cyk
  %i.cym = getelementptr i8, ptr %i.cyl, i64 1
  store i8 -1, ptr %i.cym, align 1, !tbaa !22
  %i.cyn = load ptr, ptr %i.cyh, align 8, !tbaa !204
  %i.cyo = getelementptr inbounds i8, ptr %i.cyn, i64 %i.cyk
  store i8 -1, ptr %i.cyo, align 1, !tbaa !22
  %i.cyp = load ptr, ptr %i.cyh, align 8, !tbaa !204
  %i.cyq = sext i32 %i.cyg to i64                 ; 2 uses
  %i.cyr = getelementptr i8, ptr %i.cyp, i64 %i.cyq
  %i.cys = getelementptr i8, ptr %i.cyr, i64 1
  store i8 -1, ptr %i.cys, align 1, !tbaa !22
  %i.cyt = load ptr, ptr %i.cyh, align 8, !tbaa !204
  %i.cyu = getelementptr inbounds i8, ptr %i.cyt, i64 %i.cyq
  store i8 -1, ptr %i.cyu, align 1, !tbaa !22
  br label %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit

bb.e:                                             ; preds = %bb.c
  %i.cyv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cyw = load ptr, ptr %i.cyv, align 8, !tbaa !205 ; 2 uses
  %i.cyx = add nsw i32 %i.cyg, %i.h
  %i.cyy = sext i32 %i.cyx to i64
  %i.cyz = getelementptr [4 x i8], ptr %i.cyw, i64 %i.cyy ; 2 uses
  %i.cza = getelementptr i8, ptr %i.cyz, i64 4
  store i32 -1, ptr %i.cza, align 4, !tbaa !138
  store i32 -1, ptr %i.cyz, align 4, !tbaa !138
  %i.czb = sext i32 %i.cyg to i64
  %i.czc = getelementptr [4 x i8], ptr %i.cyw, i64 %i.czb ; 2 uses
  %i.czd = getelementptr i8, ptr %i.czc, i64 4
  store i32 -1, ptr %i.czd, align 4, !tbaa !138
  store i32 -1, ptr %i.czc, align 4, !tbaa !138
  br label %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit

_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit: ; preds = %iter.check, %.preheader.i60.i, %bb.d, %bb.e
  %i.cze = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.czf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.czg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.czh = load <2 x i16>, ptr %i.k, align 4, !tbaa !93
  %i.czi = uitofp <2 x i16> %i.czh to <2 x float>
  %i.czj = fadd nnan <2 x float> %i.czi, splat (float 5.000000e-01)
  %i.czk = load <2 x float>, ptr %i.cze, align 8, !tbaa !9
  %i.czl = fmul <2 x float> %i.czk, %i.czj
  store <2 x float> %i.czl, ptr %i.czg, align 8
  %i.czm = load i32, ptr %0, align 8, !tbaa !285
  %i.czn = and i32 %i.czm, 4
  %.not.i28 = icmp eq i32 %i.czn, 0
  br i1 %.not.i28, label %.peel.begin.i, label %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit

.peel.begin.i:                                    ; preds = %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit
  %i.czo = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.czp = load i32, ptr %i.czo, align 8, !tbaa !199
  %i.czq = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.czr = sext i32 %i.czp to i64
  %i.czs = getelementptr inbounds [32 x i8], ptr %i.czq, i64 %i.czr ; 4 uses
  %i.czt = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.czu = getelementptr inbounds nuw i8, ptr %i.czs, i64 4 ; 4 uses
  %i.czv = getelementptr inbounds nuw i8, ptr %i.czs, i64 6 ; 4 uses
  %i.czw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.czx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.czy = load i16, ptr %i.czs, align 8, !tbaa !534 ; 5 uses
  %i.czz = zext i16 %i.czy to i32                 ; 2 uses
  %i.daa = lshr i32 %i.czz, 1                     ; 6 uses
  %i.dab = sub nsw i32 %i.czz, %i.daa             ; 2 uses
  %i.dac = load ptr, ptr %i.czt, align 8, !tbaa !204 ; 2 uses
  %.not82.peel.i = icmp eq ptr %i.dac, null
  br i1 %.not82.peel.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.peel.begin.i
  %i.dad = load i16, ptr %i.czu, align 4, !tbaa !531
  %i.dae = zext i16 %i.dad to i32
  %i.daf = load i16, ptr %i.czv, align 2, !tbaa !533
  %i.dag = zext i16 %i.daf to i32
  %i.dah = load i32, ptr %i.g, align 8, !tbaa !235
  %i.dai = mul i32 %i.dah, %i.dag
  %i.daj = add i32 %i.dai, %i.dae
  %i.dak = zext i32 %i.daj to i64
  %i.dal = getelementptr i8, ptr %i.dac, i64 %i.dak ; 2 uses
  %.not115.peel.i = icmp eq i32 %i.daa, 0
  br i1 %.not115.peel.i, label %.preheader98.peel.i, label %.lr.ph.preheader.peel.i

.lr.ph.preheader.peel.i:                          ; preds = %bb.f
  %1 = lshr i16 %i.czy, 1
  %i.dam = zext nneg i16 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dal, i8 0, i64 %i.dam, i1 false), !tbaa !22
  br label %.preheader98.peel.i

.preheader98.peel.i:                              ; preds = %.lr.ph.preheader.peel.i, %bb.f
  %.not117.peel.i = icmp eq i16 %i.czy, 0
  br i1 %.not117.peel.i, label %.peel.next.i, label %.lr.ph106.peel.i

.lr.ph106.peel.i:                                 ; preds = %.preheader98.peel.i
  %i.dan = zext nneg i32 %i.daa to i64
  %i.dao = getelementptr inbounds nuw i8, ptr %i.dal, i64 %i.dan
  %i.dap = tail call i32 @llvm.umax.i32(i32 %i.dab, i32 1)
  %umax.peel.i = zext i32 %i.dap to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dao, i8 0, i64 %umax.peel.i, i1 false), !tbaa !22
  br label %.peel.next.i

bb.g:                                             ; preds = %.peel.begin.i
  %i.daq = load ptr, ptr %i.czx, align 8, !tbaa !205
  %i.dar = load i16, ptr %i.czu, align 4, !tbaa !531
  %i.das = zext i16 %i.dar to i32
  %i.dat = load i16, ptr %i.czv, align 2, !tbaa !533
  %i.dau = zext i16 %i.dat to i32
  %i.dav = load i32, ptr %i.g, align 8, !tbaa !235
  %i.daw = mul i32 %i.dav, %i.dau
  %i.dax = add i32 %i.daw, %i.das
  %i.day = zext i32 %i.dax to i64
  %i.daz = getelementptr [4 x i8], ptr %i.daq, i64 %i.day ; 2 uses
  %.not118.peel.i = icmp eq i32 %i.daa, 0
  br i1 %.not118.peel.i, label %.preheader.peel.i, label %.lr.ph108.preheader.peel.i

.lr.ph108.preheader.peel.i:                       ; preds = %bb.g
  %2 = lshr i16 %i.czy, 1
  %i.dba = zext nneg i16 %2 to i64
  %i.dbb = shl nuw nsw i64 %i.dba, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.daz, i8 0, i64 %i.dbb, i1 false), !tbaa !138
  br label %.preheader.peel.i

.preheader.peel.i:                                ; preds = %.lr.ph108.preheader.peel.i, %bb.g
  %.not120.peel.i = icmp eq i16 %i.czy, 0
  br i1 %.not120.peel.i, label %.peel.next.i, label %.lr.ph112.peel.i

.lr.ph112.peel.i:                                 ; preds = %.preheader.peel.i
  %i.dbc = zext nneg i32 %i.daa to i64
  %i.dbd = getelementptr inbounds nuw [4 x i8], ptr %i.daz, i64 %i.dbc
  %i.dbe = tail call i32 @llvm.umax.i32(i32 %i.dab, i32 1)
  %umax127.peel.i = zext i32 %i.dbe to i64
  %i.dbf = shl nuw nsw i64 %umax127.peel.i, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dbd, i8 0, i64 %i.dbf, i1 false), !tbaa !138
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph112.peel.i, %.preheader.peel.i, %.lr.ph106.peel.i, %.preheader98.peel.i
  %i.dbg = load i16, ptr %i.czu, align 4, !tbaa !531 ; 2 uses
  %i.dbh = zext i16 %i.dbg to i32
  %i.dbi = add nuw nsw i32 %i.daa, %i.dbh         ; 2 uses
  %i.dbj = add nsw i32 %i.dbi, -1
  %i.dbk = uitofp i32 %i.dbj to float
  %i.dbl = load i16, ptr %i.czv, align 2, !tbaa !533 ; 3 uses
  %i.dbm = zext i16 %i.dbl to i32
  %i.dbn = uitofp i16 %i.dbl to float
  %.val88.peel.i = load float, ptr %i.cze, align 8, !tbaa !91 ; 2 uses
  %.val89.peel.i = load float, ptr %i.czf, align 4, !tbaa !92 ; 2 uses
  %i.dbo = fmul float %.val88.peel.i, %i.dbk
  %i.dbp = fmul float %.val89.peel.i, %i.dbn
  %i.dbq = add nuw nsw i32 %i.dbi, 1
  %i.dbr = uitofp nneg i32 %i.dbq to float
  %i.dbs = add nuw nsw i32 %i.dbm, 1
  %i.dbt = uitofp nneg i32 %i.dbs to float
  %i.dbu = fmul float %.val88.peel.i, %i.dbr
  %i.dbv = fmul float %.val89.peel.i, %i.dbt
  %i.dbw = fadd float %i.dbp, %i.dbv
  %i.dbx = fmul float %i.dbw, 5.000000e-01        ; 2 uses
  store float %i.dbo, ptr %i.czw, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.dbx, ptr %.sroa.4.0..sroa_idx.peel.i, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %i.dbu, ptr %.sroa.5.0..sroa_idx.peel.i, align 8, !tbaa !9
  %.sroa.6.0..sroa_idx.peel.i = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %i.dbx, ptr %.sroa.6.0..sroa_idx.peel.i, align 4, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.i, %.peel.next.i
  %i.dby = phi i16 [ %i.dbl, %.peel.next.i ], [ %i.ddp, %.loopexit.i ] ; 2 uses
  %i.dbz = phi i16 [ %i.dbg, %.peel.next.i ], [ %i.ddk, %.loopexit.i ] ; 2 uses
  %indvar.i = phi i64 [ 1, %.peel.next.i ], [ %indvar.next.i, %.loopexit.i ] ; 7 uses
  %i.dca = shl nuw nsw i64 %indvar.i, 2
  %i.dcb = load i16, ptr %i.czs, align 8, !tbaa !534
  %i.dcc = zext i16 %i.dcb to i32                 ; 4 uses
  %i.dcd = trunc nuw nsw i64 %indvar.i to i32     ; 5 uses
  %i.dce = sub i32 %i.dcc, %i.dcd
  %i.dcf = lshr i32 %i.dce, 1                     ; 6 uses
  %i.dcg = add i32 %i.dcf, %i.dcd                 ; 3 uses
  %i.dch = sub i32 %i.dcc, %i.dcg                 ; 2 uses
  %i.dci = load ptr, ptr %i.czt, align 8, !tbaa !204 ; 2 uses
  %.not82.i = icmp eq ptr %i.dci, null
  br i1 %.not82.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dcj = zext i16 %i.dbz to i32
  %i.dck = zext i16 %i.dby to i32
  %i.dcl = add i32 %i.dcd, %i.dck
  %i.dcm = load i32, ptr %i.g, align 8, !tbaa !235
  %i.dcn = mul i32 %i.dcm, %i.dcl
  %i.dco = add i32 %i.dcn, %i.dcj
  %i.dcp = zext i32 %i.dco to i64
  %i.dcq = getelementptr i8, ptr %i.dci, i64 %i.dcp ; 2 uses
  %.not115.i = icmp eq i32 %i.dcf, 0
  br i1 %.not115.i, label %.preheader98.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.dcr = zext nneg i32 %i.dcf to i64            ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dcq, i8 0, i64 %i.dcr, i1 false), !tbaa !22
  br label %.preheader98.i

.preheader98.i:                                   ; preds = %bb.i, %.lr.ph.preheader.i
  %.pre-phi43 = phi i64 [ %i.dcr, %.lr.ph.preheader.i ], [ 0, %bb.i ]
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.dcq, i64 %.pre-phi43 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.dcs, i8 -1, i64 %indvar.i, i1 false), !tbaa !22
  %.not117.i = icmp eq i32 %i.dcg, %i.dcc
  br i1 %.not117.i, label %.loopexit.i, label %.lr.ph106.i

.lr.ph106.i:                                      ; preds = %.preheader98.i
  %i.dct = getelementptr inbounds nuw i8, ptr %i.dcs, i64 %indvar.i
  %i.dcu = zext i32 %i.dch to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.dct, i8 0, i64 %i.dcu, i1 false), !tbaa !22
  br label %.loopexit.i

bb.j:                                             ; preds = %bb.h
  %i.dcv = load ptr, ptr %i.czx, align 8, !tbaa !205
  %i.dcw = zext i16 %i.dbz to i32
  %i.dcx = zext i16 %i.dby to i32
  %i.dcy = add i32 %i.dcd, %i.dcx
  %i.dcz = load i32, ptr %i.g, align 8, !tbaa !235
  %i.dda = mul i32 %i.dcz, %i.dcy
  %i.ddb = add i32 %i.dda, %i.dcw
  %i.ddc = zext i32 %i.ddb to i64
  %i.ddd = getelementptr [4 x i8], ptr %i.dcv, i64 %i.ddc ; 2 uses
  %.not118.i = icmp eq i32 %i.dcf, 0
  br i1 %.not118.i, label %.preheader.i, label %.lr.ph108.preheader.i

.lr.ph108.preheader.i:                            ; preds = %bb.j
  %i.dde = zext nneg i32 %i.dcf to i64            ; 2 uses
  %i.ddf = shl nuw nsw i64 %i.dde, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ddd, i8 0, i64 %i.ddf, i1 false), !tbaa !138
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.j, %.lr.ph108.preheader.i
  %.pre-phi = phi i64 [ %i.dde, %.lr.ph108.preheader.i ], [ 0, %bb.j ]
  %i.ddg = getelementptr inbounds nuw [4 x i8], ptr %i.ddd, i64 %.pre-phi ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ddg, i8 -1, i64 %i.dca, i1 false), !tbaa !138
  %.not120.i = icmp eq i32 %i.dcg, %i.dcc
  br i1 %.not120.i, label %.loopexit.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.preheader.i
  %i.ddh = getelementptr inbounds nuw [4 x i8], ptr %i.ddg, i64 %indvar.i
  %i.ddi = zext i32 %i.dch to i64
  %i.ddj = shl nuw nsw i64 %i.ddi, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ddh, i8 0, i64 %i.ddj, i1 false), !tbaa !138
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph112.i, %.preheader.i, %.lr.ph106.i, %.preheader98.i
  %i.ddk = load i16, ptr %i.czu, align 4, !tbaa !531 ; 2 uses
  %i.ddl = zext i16 %i.ddk to i32
  %i.ddm = add nuw i32 %i.dcf, %i.ddl             ; 2 uses
  %i.ddn = add i32 %i.ddm, -1
  %i.ddo = uitofp i32 %i.ddn to float
  %i.ddp = load i16, ptr %i.czv, align 2, !tbaa !533 ; 2 uses
  %i.ddq = zext i16 %i.ddp to i32
  %i.ddr = add nuw nsw i32 %i.ddq, %i.dcd         ; 2 uses
  %i.dds = uitofp nneg i32 %i.ddr to float
  %.val88.i = load float, ptr %i.cze, align 8, !tbaa !91 ; 2 uses
  %.val89.i = load float, ptr %i.czf, align 4, !tbaa !92 ; 2 uses
  %i.ddt = fmul float %.val88.i, %i.ddo
  %i.ddu = fmul float %.val89.i, %i.dds
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1   ; 3 uses
  %i.ddv = trunc nuw nsw i64 %indvar.next.i to i32
  %i.ddw = add nuw i32 %i.ddm, %i.ddv
  %i.ddx = uitofp i32 %i.ddw to float
  %i.ddy = add nuw nsw i32 %i.ddr, 1
  %i.ddz = uitofp nneg i32 %i.ddy to float
  %i.dea = fmul float %.val88.i, %i.ddx
  %i.deb = fmul float %.val89.i, %i.ddz
  %i.dec = fadd float %i.ddu, %i.deb
  %i.ded = fmul float %i.dec, 5.000000e-01        ; 2 uses
  %i.dee = getelementptr inbounds nuw [16 x i8], ptr %i.czw, i64 %indvar.i ; 4 uses
  store float %i.ddt, ptr %i.dee, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dee, i64 4
  store float %i.ded, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !9
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dee, i64 8
  store float %i.dea, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !9
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dee, i64 12
  store float %i.ded, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !9
  %exitcond.not.i = icmp eq i64 %indvar.next.i, 64
  br i1 %exitcond.not.i, label %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit, label %bb.h, !llvm.loop !535

_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit: ; preds = %.loopexit.i, %_ZL36ImFontAtlasBuildRenderDefaultTexDataP11ImFontAtlas.exit
  %i.def = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.deg = load i32, ptr %i.def, align 8, !tbaa !536 ; 2 uses
  %i.deh = icmp sgt i32 %i.deg, 0
  br i1 %i.deh, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.m, %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit
  %i.dei = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dej = load i32, ptr %i.dei, align 8, !tbaa !213 ; 2 uses
  %i.dek = icmp sgt i32 %i.dej, 0
  br i1 %i.dek, label %.lr.ph34, label %._crit_edge

.lr.ph34:                                         ; preds = %.preheader
  %i.del = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.n

.lr.ph:                                           ; preds = %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit, %bb.m
  %i.dem = phi i32 [ %i.dfx, %bb.m ], [ %i.deg, %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %_ZL34ImFontAtlasBuildRenderLinesTexDataP11ImFontAtlas.exit ] ; 2 uses
  %i.den = load ptr, ptr %i.c, align 8, !tbaa !202
  %i.deo = getelementptr inbounds nuw [32 x i8], ptr %i.den, i64 %indvars.iv ; 5 uses
  %i.dep = getelementptr inbounds nuw i8, ptr %i.deo, i64 24
  %i.deq = load ptr, ptr %i.dep, align 8, !tbaa !537 ; 2 uses
  %i.der = icmp eq ptr %i.deq, null
  br i1 %i.der, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.des = getelementptr inbounds nuw i8, ptr %i.deo, i64 8
  %i.det = load i32, ptr %i.des, align 8, !tbaa !538 ; 2 uses
  %i.deu = icmp eq i32 %i.det, 0
  br i1 %i.deu, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dev = trunc i32 %i.det to i16
  %i.dew = getelementptr inbounds nuw i8, ptr %i.deo, i64 16
  %i.dex = load <4 x i16>, ptr %i.deo, align 8, !tbaa !93 ; 3 uses
  %i.dey = uitofp <4 x i16> %i.dex to <4 x float> ; 2 uses
  %i.dez = load <2 x float>, ptr %i.cze, align 8, !tbaa !9
  %i.dfa = shufflevector <2 x float> %i.dez, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dfb = shufflevector <4 x i16> %i.dex, <4 x i16> poison, <2 x i32> <i32 2, i32 3>
  %i.dfc = zext <2 x i16> %i.dfb to <2 x i32>
  %i.dfd = shufflevector <4 x i16> %i.dex, <4 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.dfe = zext <2 x i16> %i.dfd to <2 x i32>
  %i.dff = add nuw nsw <2 x i32> %i.dfe, %i.dfc
  %i.dfg = shufflevector <2 x i32> %i.dff, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dfh = uitofp <4 x i32> %i.dfg to <4 x float>
  %i.dfi = shufflevector <4 x float> %i.dey, <4 x float> %i.dfh, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.dfj = fmul <4 x float> %i.dfa, %i.dfi        ; 4 uses
  %i.dfk = load <2 x float>, ptr %i.dew, align 8, !tbaa !9 ; 3 uses
  %i.dfl = shufflevector <4 x float> %i.dey, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dfm = fadd <2 x float> %i.dfk, %i.dfl        ; 2 uses
  %i.dfn = getelementptr inbounds nuw i8, ptr %i.deo, i64 12
  %i.dfo = load float, ptr %i.dfn, align 4, !tbaa !539
  %i.dfp = extractelement <4 x float> %i.dfj, i64 0
  %i.dfq = extractelement <4 x float> %i.dfj, i64 1
  %i.dfr = extractelement <4 x float> %i.dfj, i64 2
  %i.dfs = extractelement <4 x float> %i.dfj, i64 3
  %i.dft = extractelement <2 x float> %i.dfm, i64 0
  %i.dfu = extractelement <2 x float> %i.dfm, i64 1
  %i.dfv = extractelement <2 x float> %i.dfk, i64 0
  %i.dfw = extractelement <2 x float> %i.dfk, i64 1
  tail call void @_ZN6ImFont8AddGlyphEPK12ImFontConfigtfffffffff(ptr noundef nonnull align 8 dereferenceable(110) %i.deq, ptr noundef null, i16 noundef zeroext %i.dev, float noundef %i.dfv, float noundef %i.dfw, float noundef %i.dft, float noundef %i.dfu, float noundef %i.dfp, float noundef %i.dfq, float noundef %i.dfr, float noundef %i.dfs, float noundef %i.dfo)
  %.pre = load i32, ptr %i.def, align 8, !tbaa !536
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.k, %bb.l
  %i.dfx = phi i32 [ %i.dem, %.lr.ph ], [ %i.dem, %bb.k ], [ %.pre, %bb.l ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dfy = sext i32 %i.dfx to i64
  %i.dfz = icmp slt i64 %indvars.iv.next, %i.dfy
  br i1 %i.dfz, label %.lr.ph, label %.preheader, !llvm.loop !540

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.dga = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 1, ptr %i.dga, align 1, !tbaa !211
  ret void

bb.n:                                             ; preds = %.lr.ph34, %bb.p
  %i.dgb = phi i32 [ %i.dej, %.lr.ph34 ], [ %i.dgi, %bb.p ]
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38, %bb.p ] ; 2 uses
  %i.dgc = load ptr, ptr %i.del, align 8, !tbaa !203
  %i.dgd = getelementptr inbounds nuw [8 x i8], ptr %i.dgc, i64 %indvars.iv37
  %i.dge = load ptr, ptr %i.dgd, align 8, !tbaa !209 ; 2 uses
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dge, i64 88
  %i.dgg = load i8, ptr %i.dgf, align 8, !tbaa !249, !range !216, !noundef !217
  %i.dgh = trunc nuw i8 %i.dgg to i1
  br i1 %i.dgh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN6ImFont16BuildLookupTableEv(ptr noundef nonnull align 8 dereferenceable(110) %i.dge)
  %.pre40 = load i32, ptr %i.dei, align 8, !tbaa !213
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.dgi = phi i32 [ %i.dgb, %bb.n ], [ %.pre40, %bb.o ] ; 2 uses
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.dgj = sext i32 %i.dgi to i64
  %i.dgk = icmp slt i64 %indvars.iv.next38, %i.dgj
  br i1 %i.dgk, label %bb.n, label %._crit_edge, !llvm.loop !541
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6ImFont8AddGlyphEPK12ImFontConfigtfffffffff(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(110) initializes((88, 89)) %0, ptr nofree noundef readonly captures(address_is_null) %1, i16 noundef zeroext %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11) local_unnamed_addr #8 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.b = load float, ptr %i.a, align 8, !tbaa !493 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.d = load float, ptr %i.c, align 4, !tbaa !187 ; 2 uses
  %i.e = fcmp olt float %11, %i.b
  %i.f = fcmp ogt float %11, %i.d
  %i.g = select i1 %i.f, float %i.d, float %11
  %i.h = select i1 %i.e, float %i.b, float %i.g   ; 4 uses
  %i.i = fcmp une float %i.h, %11
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !226, !range !216
  %i.l = trunc nuw i8 %i.k to i1                  ; 2 uses
  br i1 %i.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.m = fsub float %i.h, %11
  %i.n = fmul float %i.m, 5.000000e-01            ; 2 uses
  %i.o = fptosi float %i.n to i32
  %i.p = sitofp i32 %i.o to float
  %i.q = select i1 %i.l, float %i.p, float %i.n   ; 2 uses
  %i.r = fadd float %3, %i.q
  %i.s = fadd float %5, %i.q
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %.052 = phi float [ %i.s, %bb.c ], [ %5, %bb.b ]
  %.0 = phi float [ %i.r, %bb.c ], [ %3, %bb.b ]
  %i.t = fadd float %i.h, 5.000000e-01
  %i.u = fptosi float %i.t to i32
  %i.v = sitofp i32 %i.u to float
  %.054 = select i1 %i.l, float %i.v, float %i.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.x = load float, ptr %i.w, align 4, !tbaa !494
  %i.y = fadd float %i.x, %.054
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.155 = phi float [ %i.y, %._crit_edge ], [ %11, %bb.a ]
  %.153 = phi float [ %.052, %._crit_edge ], [ %5, %bb.a ] ; 2 uses
  %.1 = phi float [ %.0, %._crit_edge ], [ %3, %bb.a ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !495 ; 2 uses
  %i.ab = add nsw i32 %i.aa, 1                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !481 ; 4 uses
  %.not59 = icmp slt i32 %i.aa, %i.ad
end_hunk_0
