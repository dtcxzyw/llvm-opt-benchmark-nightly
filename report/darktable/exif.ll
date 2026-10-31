Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/exif?download=true
inline.NumInlined: 3577
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZL22_exif_decode_exif_dataP10dt_image_tRN5Exiv28ExifDataE:bb.a
bb.wp:                                            ; preds = %.peel.begin
  %i.dlo = load i32, ptr %i.cv, align 4, !tbaa !1834
  %i.dlp = icmp ne i32 %i.dlo, 0
  br label %bb.wq

bb.wq:                                            ; preds = %bb.wp, %.peel.begin
  %i.dlq = phi i1 [ %i.dlp, %bb.wp ], [ true, %.peel.begin ]
  %i.dlr = load i32, ptr %i.cw, align 4, !tbaa !2840 ; 2 uses
  switch i32 %i.dlr, label %bb.wx [
    i32 25, label %bb.wu
    i32 0, label %bb.wr
  ]

bb.wr:                                            ; preds = %bb.wq
  br i1 %i.dlq, label %bb.ws, label %bb.wz

bb.ws:                                            ; preds = %bb.wr
  %i.dls = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dlt = and i32 %i.dls, 262144
  %.not1447.peel = icmp eq i32 %i.dlt, 0
  br i1 %.not1447.peel, label %bb.wz, label %bb.wt

bb.wt:                                            ; preds = %bb.ws
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.467, i32 noundef 1)
          to label %bb.wz unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wu:                                            ; preds = %bb.wq
  br i1 %.01001, label %.thread2902.peel, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  %i.dlu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dlv = and i32 %i.dlu, 262144
  %.not1445.peel = icmp eq i32 %i.dlv, 0
  br i1 %.not1445.peel, label %.thread2902.peel, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.465, ptr noundef nonnull %i.dln)
          to label %.thread2902.peel unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread2902.peel:                                 ; preds = %bb.ww, %bb.wv, %bb.wu
  %.11003.peel = phi i32 [ 0, %bb.wu ], [ 1, %bb.ww ], [ 1, %bb.wv ]
  store i32 21, ptr %i.cw, align 4, !tbaa !2840
  br label %bb.wx

bb.wx:                                            ; preds = %.thread2902.peel, %bb.wq
  %.210042906.peel = phi i32 [ %.11003.peel, %.thread2902.peel ], [ 0, %bb.wq ] ; 2 uses
  %i.dlw = phi i32 [ 21, %.thread2902.peel ], [ %i.dlr, %bb.wq ] ; 3 uses
  %i.dlx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dly = and i32 %i.dlx, 262144
  %.not1448.peel = icmp eq i32 %i.dly, 0
  br i1 %.not1448.peel, label %bb.wz, label %bb.wy

bb.wy:                                            ; preds = %bb.wx
  %i.dlz = zext i32 %i.dlw to i64
  %i.dma = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dlz
  %i.dmb = getelementptr inbounds nuw i8, ptr %i.dma, i64 4
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.466, i32 noundef 1, ptr noundef nonnull %i.dmb)
          to label %bb.wz unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.wz:                                            ; preds = %bb.wy, %bb.wx, %bb.wt, %bb.ws, %bb.wr
  %i.dmc = phi i32 [ 0, %bb.wr ], [ 0, %bb.wt ], [ 0, %bb.ws ], [ %i.dlw, %bb.wx ], [ %i.dlw, %bb.wy ] ; 2 uses
  %.210042905.peel = phi i32 [ 0, %bb.wr ], [ 0, %bb.wt ], [ 0, %bb.ws ], [ %.210042906.peel, %bb.wx ], [ %.210042906.peel, %bb.wy ] ; 5 uses
  br i1 %.not1443.peel, label %_ZL18_print_matrix_dataPKciPf.exit.peel, label %bb.xa

bb.xa:                                            ; preds = %bb.wz
  %i.dmd = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dme = and i32 %i.dmd, 262144
  %.not.i.peel = icmp eq i32 %i.dme, 0
  br i1 %.not.i.peel, label %_ZL18_print_matrix_dataPKciPf.exit.peel, label %bb.xb

bb.xb:                                            ; preds = %bb.xa
  %i.dmf = fpext reassoc nsz arcp contract afn float %i.cwk to double
  %i.dmg = fpext reassoc nsz arcp contract afn float %i.cwj to double
  %i.dmh = fpext reassoc nsz arcp contract afn float %i.cwi to double
  %i.dmi = fpext reassoc nsz arcp contract afn float %i.cwh to double
  %i.dmj = fpext reassoc nsz arcp contract afn float %i.cwg to double
  %i.dmk = fpext reassoc nsz arcp contract afn float %i.cwf to double
  %i.dml = fpext reassoc nsz arcp contract afn float %i.cwe to double
  %i.dmm = fpext reassoc nsz arcp contract afn float %i.cwd to double
  %i.dmn = fpext reassoc nsz arcp contract afn float %i.cwc to double
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.468, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, double noundef %i.dmf, double noundef %i.dmg, double noundef %i.dmh, double noundef %i.dmi, double noundef %i.dmj, double noundef %i.dmk, double noundef %i.dml, double noundef %i.dmm, double noundef %i.dmn)
          to label %_ZL18_print_matrix_dataPKciPf.exit.peel unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit.peel:          ; preds = %bb.xb, %bb.xa, %bb.wz
  %.not1450.peel = icmp eq i32 %.sroa.0.1, 0
  br i1 %.not1450.peel, label %_ZL18_print_matrix_dataPKciPf.exit2475.peel, label %bb.xc

bb.xc:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit.peel
  %i.dmo = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dmp = and i32 %i.dmo, 262144
  %.not.i2473.peel = icmp eq i32 %i.dmp, 0
  br i1 %.not.i2473.peel, label %_ZL18_print_matrix_dataPKciPf.exit2475.peel, label %bb.xd

bb.xd:                                            ; preds = %bb.xc
  %i.dmq = fpext reassoc nsz arcp contract afn float %i.cxc to double
  %i.dmr = fpext reassoc nsz arcp contract afn float %i.cxb to double
  %i.dms = fpext reassoc nsz arcp contract afn float %i.cxa to double
  %i.dmt = fpext reassoc nsz arcp contract afn float %i.cwz to double
  %i.dmu = fpext reassoc nsz arcp contract afn float %i.cwy to double
  %i.dmv = fpext reassoc nsz arcp contract afn float %i.cwx to double
  %i.dmw = fpext reassoc nsz arcp contract afn float %i.cww to double
  %i.dmx = fpext reassoc nsz arcp contract afn float %i.cwv to double
  %i.dmy = fpext reassoc nsz arcp contract afn float %i.cwu to double
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.469, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, double noundef %i.dmq, double noundef %i.dmr, double noundef %i.dms, double noundef %i.dmt, double noundef %i.dmu, double noundef %i.dmv, double noundef %i.dmw, double noundef %i.dmx, double noundef %i.dmy)
          to label %_ZL18_print_matrix_dataPKciPf.exit2475.peel unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit2475.peel:      ; preds = %bb.xd, %bb.xc, %_ZL18_print_matrix_dataPKciPf.exit.peel
  %i.dmz = load i32, ptr %i.cv, align 4, !tbaa !1834
  %.not1451.peel = icmp eq i32 %i.dmz, 0
  br i1 %.not1451.peel, label %.peel.next, label %bb.xe

bb.xe:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit2475.peel
  %i.dna = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dnb = and i32 %i.dna, 262144
  %.not.i2476.peel = icmp eq i32 %i.dnb, 0
  br i1 %.not.i2476.peel, label %.peel.next, label %bb.xf

bb.xf:                                            ; preds = %bb.xe
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.470, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, double noundef %i.cwt, double noundef %i.cws, double noundef %i.cwr, double noundef %i.cwq, double noundef %i.cwp, double noundef %i.cwo, double noundef %i.cwn, double noundef %i.cwm, double noundef %i.cwl)
          to label %.peel.next unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.peel.next:                                       ; preds = %bb.xf, %bb.xe, %_ZL18_print_matrix_dataPKciPf.exit2475.peel
  %.not1444 = icmp eq i32 %.sroa.7.1, 0
  %or.cond3670 = and i1 %.not1443, %.not1444
  br i1 %or.cond3670, label %bb.xg, label %bb.xh

bb.xg:                                            ; preds = %.peel.next
  %i.dnc = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.dnd = load i32, ptr %i.dnc, align 4, !tbaa !1834
  %i.dne = icmp ne i32 %i.dnd, 0
  br label %bb.xh

bb.xh:                                            ; preds = %bb.xg, %.peel.next
  %i.dnf = phi i1 [ %i.dne, %bb.xg ], [ true, %.peel.next ]
  %i.dng = getelementptr inbounds nuw i8, ptr %i.cw, i64 4 ; 2 uses
  %i.dnh = load i32, ptr %i.dng, align 4, !tbaa !2840 ; 2 uses
  switch i32 %i.dnh, label %bb.xl [
    i32 25, label %bb.xi
    i32 0, label %bb.xn
  ]

bb.xi:                                            ; preds = %bb.xh
  br i1 %.01001, label %.thread2902, label %bb.xj

bb.xj:                                            ; preds = %bb.xi
  %i.dni = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dnj = and i32 %i.dni, 262144
  %.not1445 = icmp eq i32 %i.dnj, 0
  br i1 %.not1445, label %.thread2902, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.465, ptr noundef nonnull %i.dln)
          to label %.thread2902 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread2902:                                      ; preds = %bb.xi, %bb.xk, %bb.xj
  %.11003 = phi i32 [ %.210042905.peel, %bb.xi ], [ 1, %bb.xk ], [ 1, %bb.xj ]
  store i32 21, ptr %i.dng, align 4, !tbaa !2840
  br label %bb.xl

bb.xl:                                            ; preds = %bb.xh, %.thread2902
  %.210042906 = phi i32 [ %.11003, %.thread2902 ], [ %.210042905.peel, %bb.xh ] ; 2 uses
  %i.dnk = phi i32 [ 21, %.thread2902 ], [ %i.dnh, %bb.xh ]
  %i.dnl = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dnm = and i32 %i.dnl, 262144
  %.not1448 = icmp eq i32 %i.dnm, 0
  br i1 %.not1448, label %bb.xq, label %bb.xm

bb.xm:                                            ; preds = %bb.xl
  %i.dnn = zext i32 %i.dnk to i64
  %i.dno = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dnn
  %i.dnp = getelementptr inbounds nuw i8, ptr %i.dno, i64 4
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.466, i32 noundef 2, ptr noundef nonnull %i.dnp)
          to label %bb.xq unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.xn:                                            ; preds = %bb.xh
  br i1 %i.dnf, label %bb.xo, label %bb.xq

bb.xo:                                            ; preds = %bb.xn
  %i.dnq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dnr = and i32 %i.dnq, 262144
  %.not1447 = icmp eq i32 %i.dnr, 0
  br i1 %.not1447, label %bb.xq, label %bb.xp

bb.xp:                                            ; preds = %bb.xo
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.467, i32 noundef 2)
          to label %bb.xq unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.xq:                                            ; preds = %bb.xn, %bb.xp, %bb.xo, %bb.xl, %bb.xm
  %.210042905 = phi i32 [ %.210042905.peel, %bb.xn ], [ %.210042905.peel, %bb.xp ], [ %.210042905.peel, %bb.xo ], [ %.210042906, %bb.xl ], [ %.210042906, %bb.xm ] ; 5 uses
  br i1 %.not1443, label %_ZL18_print_matrix_dataPKciPf.exit, label %bb.xr

bb.xr:                                            ; preds = %bb.xq
  %i.dns = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dnt = and i32 %i.dns, 262144
  %.not.i = icmp eq i32 %i.dnt, 0
  br i1 %.not.i, label %_ZL18_print_matrix_dataPKciPf.exit, label %bb.xs

bb.xs:                                            ; preds = %bb.xr
  %i.dnu = getelementptr inbounds nuw i8, ptr %i.ct, i64 36
  %i.dnv = load <8 x float>, ptr %i.dnu, align 4, !tbaa !1746
  %i.dnw = fpext reassoc nsz arcp contract afn <8 x float> %i.dnv to <8 x double> ; 8 uses
  %i.dnx = getelementptr inbounds nuw i8, ptr %i.ct, i64 68
  %i.dny = load float, ptr %i.dnx, align 4, !tbaa !1746
  %i.dnz = fpext reassoc nsz arcp contract afn float %i.dny to double
  %i.doa = extractelement <8 x double> %i.dnw, i64 0
  %i.dob = extractelement <8 x double> %i.dnw, i64 1
  %i.doc = extractelement <8 x double> %i.dnw, i64 2
  %i.dod = extractelement <8 x double> %i.dnw, i64 3
  %i.doe = extractelement <8 x double> %i.dnw, i64 4
  %i.dof = extractelement <8 x double> %i.dnw, i64 5
  %i.dog = extractelement <8 x double> %i.dnw, i64 6
  %i.doh = extractelement <8 x double> %i.dnw, i64 7
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.468, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.501, ptr noundef nonnull @.str.7, double noundef %i.doa, double noundef %i.dob, double noundef %i.doc, double noundef %i.dod, double noundef %i.doe, double noundef %i.dof, double noundef %i.dog, double noundef %i.doh, double noundef %i.dnz)
          to label %_ZL18_print_matrix_dataPKciPf.exit unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit:               ; preds = %bb.xr, %bb.xs, %bb.xq
  %.not1450 = icmp eq i32 %.sroa.7.1, 0
  br i1 %.not1450, label %_ZL18_print_matrix_dataPKciPf.exit2475, label %bb.xt

bb.xt:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit
  %i.doi = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.doj = and i32 %i.doi, 262144
  %.not.i2473 = icmp eq i32 %i.doj, 0
  br i1 %.not.i2473, label %_ZL18_print_matrix_dataPKciPf.exit2475, label %bb.xu

bb.xu:                                            ; preds = %bb.xt
  %i.dok = getelementptr inbounds nuw i8, ptr %i.cu, i64 36
  %i.dol = load <8 x float>, ptr %i.dok, align 4, !tbaa !1746
  %i.dom = fpext reassoc nsz arcp contract afn <8 x float> %i.dol to <8 x double> ; 8 uses
  %i.don = getelementptr inbounds nuw i8, ptr %i.cu, i64 68
  %i.doo = load float, ptr %i.don, align 4, !tbaa !1746
  %i.dop = fpext reassoc nsz arcp contract afn float %i.doo to double
  %i.doq = extractelement <8 x double> %i.dom, i64 0
  %i.dor = extractelement <8 x double> %i.dom, i64 1
  %i.dos = extractelement <8 x double> %i.dom, i64 2
  %i.dot = extractelement <8 x double> %i.dom, i64 3
  %i.dou = extractelement <8 x double> %i.dom, i64 4
  %i.dov = extractelement <8 x double> %i.dom, i64 5
  %i.dow = extractelement <8 x double> %i.dom, i64 6
  %i.dox = extractelement <8 x double> %i.dom, i64 7
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.469, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.501, ptr noundef nonnull @.str.7, double noundef %i.doq, double noundef %i.dor, double noundef %i.dos, double noundef %i.dot, double noundef %i.dou, double noundef %i.dov, double noundef %i.dow, double noundef %i.dox, double noundef %i.dop)
          to label %_ZL18_print_matrix_dataPKciPf.exit2475 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit2475:           ; preds = %bb.xt, %bb.xu, %_ZL18_print_matrix_dataPKciPf.exit
  %i.doy = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.doz = load i32, ptr %i.doy, align 4, !tbaa !1834
  %.not1451 = icmp eq i32 %i.doz, 0
  br i1 %.not1451, label %_ZL18_print_matrix_dataPKciPf.exit2478, label %bb.xv

bb.xv:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit2475
  %i.dpa = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dpb = and i32 %i.dpa, 262144
  %.not.i2476 = icmp eq i32 %i.dpb, 0
  br i1 %.not.i2476, label %_ZL18_print_matrix_dataPKciPf.exit2478, label %bb.xw

bb.xw:                                            ; preds = %bb.xv
  %.sroa.12.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 4
  %.sroa.12.4..sroa.12.36. = load <8 x float>, ptr %.sroa.12.4..sroa_idx, align 4, !tbaa !1746
  %i.dpc = fpext reassoc nsz arcp contract afn <8 x float> %.sroa.12.4..sroa.12.36. to <8 x double> ; 8 uses
  %.sroa.12.36..sroa_idx3657 = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 36
  %.sroa.12.36..sroa.12.68. = load float, ptr %.sroa.12.36..sroa_idx3657, align 4, !tbaa !1746
  %i.dpd = fpext reassoc nsz arcp contract afn float %.sroa.12.36..sroa.12.68. to double
  %i.dpe = extractelement <8 x double> %i.dpc, i64 0
  %i.dpf = extractelement <8 x double> %i.dpc, i64 1
  %i.dpg = extractelement <8 x double> %i.dpc, i64 2
  %i.dph = extractelement <8 x double> %i.dpc, i64 3
  %i.dpi = extractelement <8 x double> %i.dpc, i64 4
  %i.dpj = extractelement <8 x double> %i.dpc, i64 5
  %i.dpk = extractelement <8 x double> %i.dpc, i64 6
  %i.dpl = extractelement <8 x double> %i.dpc, i64 7
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.501, ptr noundef nonnull @.str.7, double noundef %i.dpe, double noundef %i.dpf, double noundef %i.dpg, double noundef %i.dph, double noundef %i.dpi, double noundef %i.dpj, double noundef %i.dpk, double noundef %i.dpl, double noundef %i.dpd)
          to label %_ZL18_print_matrix_dataPKciPf.exit2478 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit2478:           ; preds = %bb.xv, %bb.xw, %_ZL18_print_matrix_dataPKciPf.exit2475
  %.not1444.1 = icmp eq i32 %.sroa.10.1, 0
  %or.cond3671 = and i1 %.not1443.1, %.not1444.1
  br i1 %or.cond3671, label %bb.xx, label %bb.xy

bb.xx:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit2478
  %i.dpm = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dpn = load i32, ptr %i.dpm, align 4, !tbaa !1834
  %i.dpo = icmp ne i32 %i.dpn, 0
  br label %bb.xy

bb.xy:                                            ; preds = %bb.xx, %_ZL18_print_matrix_dataPKciPf.exit2478
  %i.dpp = phi i1 [ %i.dpo, %bb.xx ], [ true, %_ZL18_print_matrix_dataPKciPf.exit2478 ]
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  %i.dpr = load i32, ptr %i.dpq, align 4, !tbaa !2840 ; 2 uses
  switch i32 %i.dpr, label %bb.yf [
    i32 25, label %bb.yc
    i32 0, label %bb.xz
  ]

bb.xz:                                            ; preds = %bb.xy
  br i1 %i.dpp, label %bb.ya, label %bb.yh

bb.ya:                                            ; preds = %bb.xz
  %i.dps = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dpt = and i32 %i.dps, 262144
  %.not1447.1 = icmp eq i32 %i.dpt, 0
  br i1 %.not1447.1, label %bb.yh, label %bb.yb

bb.yb:                                            ; preds = %bb.ya
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.467, i32 noundef 3)
          to label %bb.yh unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yc:                                            ; preds = %bb.xy
  br i1 %.01001, label %.thread2902.1, label %bb.yd

bb.yd:                                            ; preds = %bb.yc
  %i.dpu = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dpv = and i32 %i.dpu, 262144
  %.not1445.1 = icmp eq i32 %i.dpv, 0
  br i1 %.not1445.1, label %.thread2902.1, label %bb.ye

bb.ye:                                            ; preds = %bb.yd
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.465, ptr noundef nonnull %i.dln)
          to label %.thread2902.1 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread2902.1:                                    ; preds = %bb.ye, %bb.yd, %bb.yc
  %.11003.1 = phi i32 [ %.210042905, %bb.yc ], [ 1, %bb.ye ], [ 1, %bb.yd ]
  store i32 21, ptr %i.dpq, align 4, !tbaa !2840
  br label %bb.yf

bb.yf:                                            ; preds = %.thread2902.1, %bb.xy
  %.210042906.1 = phi i32 [ %.11003.1, %.thread2902.1 ], [ %.210042905, %bb.xy ] ; 2 uses
  %i.dpw = phi i32 [ 21, %.thread2902.1 ], [ %i.dpr, %bb.xy ]
  %i.dpx = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dpy = and i32 %i.dpx, 262144
  %.not1448.1 = icmp eq i32 %i.dpy, 0
  br i1 %.not1448.1, label %bb.yh, label %bb.yg

bb.yg:                                            ; preds = %bb.yf
  %i.dpz = zext i32 %i.dpw to i64
  %i.dqa = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dpz
  %i.dqb = getelementptr inbounds nuw i8, ptr %i.dqa, i64 4
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.466, i32 noundef 3, ptr noundef nonnull %i.dqb)
          to label %bb.yh unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yh:                                            ; preds = %bb.yg, %bb.yf, %bb.yb, %bb.ya, %bb.xz
  %.210042905.1 = phi i32 [ %.210042905, %bb.xz ], [ %.210042905, %bb.yb ], [ %.210042905, %bb.ya ], [ %.210042906.1, %bb.yf ], [ %.210042906.1, %bb.yg ]
  br i1 %.not1443.1, label %_ZL18_print_matrix_dataPKciPf.exit.1, label %bb.yi

bb.yi:                                            ; preds = %bb.yh
  %i.dqc = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dqd = and i32 %i.dqc, 262144
  %.not.i.1 = icmp eq i32 %i.dqd, 0
  br i1 %.not.i.1, label %_ZL18_print_matrix_dataPKciPf.exit.1, label %bb.yj

bb.yj:                                            ; preds = %bb.yi
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.dqf = load <8 x float>, ptr %i.dqe, align 8, !tbaa !1746
  %i.dqg = fpext reassoc nsz arcp contract afn <8 x float> %i.dqf to <8 x double> ; 8 uses
  %i.dqh = fpext reassoc nsz arcp contract afn float %i.dld to double
  %i.dqi = extractelement <8 x double> %i.dqg, i64 0
  %i.dqj = extractelement <8 x double> %i.dqg, i64 1
  %i.dqk = extractelement <8 x double> %i.dqg, i64 2
  %i.dql = extractelement <8 x double> %i.dqg, i64 3
  %i.dqm = extractelement <8 x double> %i.dqg, i64 4
  %i.dqn = extractelement <8 x double> %i.dqg, i64 5
  %i.dqo = extractelement <8 x double> %i.dqg, i64 6
  %i.dqp = extractelement <8 x double> %i.dqg, i64 7
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.468, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.502, double noundef %i.dqi, double noundef %i.dqj, double noundef %i.dqk, double noundef %i.dql, double noundef %i.dqm, double noundef %i.dqn, double noundef %i.dqo, double noundef %i.dqp, double noundef %i.dqh)
          to label %_ZL18_print_matrix_dataPKciPf.exit.1 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit.1:             ; preds = %bb.yj, %bb.yi, %bb.yh
  %.not1450.1 = icmp eq i32 %.sroa.10.1, 0
  br i1 %.not1450.1, label %_ZL18_print_matrix_dataPKciPf.exit2475.1, label %bb.yk

bb.yk:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit.1
  %i.dqq = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dqr = and i32 %i.dqq, 262144
  %.not.i2473.1 = icmp eq i32 %i.dqr, 0
  br i1 %.not.i2473.1, label %_ZL18_print_matrix_dataPKciPf.exit2475.1, label %bb.yl

bb.yl:                                            ; preds = %bb.yk
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.dqt = load <8 x float>, ptr %i.dqs, align 8, !tbaa !1746
  %i.dqu = fpext reassoc nsz arcp contract afn <8 x float> %i.dqt to <8 x double> ; 8 uses
  %i.dqv = fpext reassoc nsz arcp contract afn float %i.dle to double
  %i.dqw = extractelement <8 x double> %i.dqu, i64 0
  %i.dqx = extractelement <8 x double> %i.dqu, i64 1
  %i.dqy = extractelement <8 x double> %i.dqu, i64 2
  %i.dqz = extractelement <8 x double> %i.dqu, i64 3
  %i.dra = extractelement <8 x double> %i.dqu, i64 4
  %i.drb = extractelement <8 x double> %i.dqu, i64 5
  %i.drc = extractelement <8 x double> %i.dqu, i64 6
  %i.drd = extractelement <8 x double> %i.dqu, i64 7
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.469, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.502, double noundef %i.dqw, double noundef %i.dqx, double noundef %i.dqy, double noundef %i.dqz, double noundef %i.dra, double noundef %i.drb, double noundef %i.drc, double noundef %i.drd, double noundef %i.dqv)
          to label %_ZL18_print_matrix_dataPKciPf.exit2475.1 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit2475.1:         ; preds = %bb.yl, %bb.yk, %_ZL18_print_matrix_dataPKciPf.exit.1
  %i.dre = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.drf = load i32, ptr %i.dre, align 4, !tbaa !1834
  %.not1451.1 = icmp eq i32 %i.drf, 0
  br i1 %.not1451.1, label %_ZL18_print_matrix_dataPKciPf.exit2478.1, label %bb.ym

bb.ym:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit2475.1
  %i.drg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.drh = and i32 %i.drg, 262144
  %.not.i2476.1 = icmp eq i32 %i.drh, 0
  br i1 %.not.i2476.1, label %_ZL18_print_matrix_dataPKciPf.exit2478.1, label %bb.yn

bb.yn:                                            ; preds = %bb.ym
  %.sroa.12.40..sroa_idx3659 = getelementptr inbounds nuw i8, ptr %.sroa.12, i64 40
  %.sroa.12.40..sroa.12.72. = load <8 x float>, ptr %.sroa.12.40..sroa_idx3659, align 8, !tbaa !1746
  %i.dri = fpext reassoc nsz arcp contract afn <8 x float> %.sroa.12.40..sroa.12.72. to <8 x double> ; 8 uses
  %i.drj = extractelement <8 x double> %i.dri, i64 0
  %i.drk = extractelement <8 x double> %i.dri, i64 1
  %i.drl = extractelement <8 x double> %i.dri, i64 2
  %i.drm = extractelement <8 x double> %i.dri, i64 3
  %i.drn = extractelement <8 x double> %i.dri, i64 4
  %i.dro = extractelement <8 x double> %i.dri, i64 5
  %i.drp = extractelement <8 x double> %i.dri, i64 6
  %i.drq = extractelement <8 x double> %i.dri, i64 7
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.470, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.502, double noundef %i.drj, double noundef %i.drk, double noundef %i.drl, double noundef %i.drm, double noundef %i.drn, double noundef %i.dro, double noundef %i.drp, double noundef %i.drq, double noundef %.sroa.36.0)
          to label %_ZL18_print_matrix_dataPKciPf.exit2478.1 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL18_print_matrix_dataPKciPf.exit2478.1:         ; preds = %bb.yn, %bb.ym, %_ZL18_print_matrix_dataPKciPf.exit2475.1
  %.not1441 = icmp ne i32 %i.dmc, 0               ; 2 uses
  br i1 %.not1441, label %bb.yo, label %bb.yp

bb.yo:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit2478.1
  %i.drr = zext i32 %i.dmc to i64                 ; 2 uses
  %i.drs = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.drr
  %i.drt = load i32, ptr %i.drs, align 4, !tbaa !2842 ; 3 uses
  %i.dru = call i32 @llvm.smin.i32(i32 %i.drt, i32 100000)
  %i.drv = add nsw i32 %i.drt, -6500
  %i.drw = call i32 @llvm.abs.i32(i32 %i.drv, i1 true) ; 2 uses
  %i.drx = lshr i64 481, %i.drr
  %i.dry = trunc i64 %i.drx to i1
  %.not1442 = icmp samesign ugt i32 %i.drw, 6500
  %or.cond1545 = select i1 %i.dry, i1 true, i1 %.not1442 ; 3 uses
  %.1788 = sext i1 %or.cond1545 to i32
  %.1785 = select i1 %or.cond1545, i32 0, i32 %i.drt
  %.1779 = select i1 %or.cond1545, i32 6500, i32 %i.drw
  br label %bb.yp

bb.yp:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit2478.1, %bb.yo
  %.2789 = phi i32 [ %.1788, %bb.yo ], [ -1, %_ZL18_print_matrix_dataPKciPf.exit2478.1 ] ; 2 uses
  %.2786 = phi i32 [ %.1785, %bb.yo ], [ 0, %_ZL18_print_matrix_dataPKciPf.exit2478.1 ] ; 3 uses
  %.1783 = phi i32 [ 1, %bb.yo ], [ 0, %_ZL18_print_matrix_dataPKciPf.exit2478.1 ] ; 2 uses
  %.1781 = phi i32 [ %i.dru, %bb.yo ], [ 100000, %_ZL18_print_matrix_dataPKciPf.exit2478.1 ] ; 2 uses
  %.2 = phi i32 [ %.1779, %bb.yo ], [ 6500, %_ZL18_print_matrix_dataPKciPf.exit2478.1 ] ; 3 uses
  %i.drz = load i32, ptr %.lcssa.sroa.gep3100, align 4, !tbaa !2840 ; 2 uses
  %.not1441.1 = icmp ne i32 %i.drz, 0             ; 2 uses
  br i1 %.not1441.1, label %bb.yq, label %bb.yr

bb.yq:                                            ; preds = %bb.yp
  %i.dsa = zext i32 %i.drz to i64
  %i.dsb = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dsa
  %i.dsc = load i32, ptr %i.dsb, align 4, !tbaa !2842 ; 4 uses
  %i.dsd = call i32 @llvm.smin.i32(i32 %.1781, i32 %i.dsc)
  %i.dse = add nsw i32 %i.dsc, -6500
  %i.dsf = call i32 @llvm.abs.i32(i32 %i.dse, i1 true) ; 2 uses
  %i.dsg = icmp sle i32 %i.dsc, %.2786
  %.not1442.1 = icmp samesign ugt i32 %i.dsf, %.2
  %or.cond1545.1 = select i1 %i.dsg, i1 true, i1 %.not1442.1 ; 3 uses
  %.1788.1 = select i1 %or.cond1545.1, i32 %.2789, i32 1
  %.1785.1 = select i1 %or.cond1545.1, i32 %.2786, i32 %i.dsc
  %.1779.1 = select i1 %or.cond1545.1, i32 %.2, i32 %i.dsf
  %i.dsh = add nuw nsw i32 %.1783, 1
  br label %bb.yr

bb.yr:                                            ; preds = %bb.yq, %bb.yp
  %.2789.1 = phi i32 [ %.1788.1, %bb.yq ], [ %.2789, %bb.yp ] ; 2 uses
  %.2786.1 = phi i32 [ %.1785.1, %bb.yq ], [ %.2786, %bb.yp ] ; 3 uses
  %.1783.1 = phi i32 [ %i.dsh, %bb.yq ], [ %.1783, %bb.yp ] ; 2 uses
  %.1781.1 = phi i32 [ %i.dsd, %bb.yq ], [ %.1781, %bb.yp ] ; 2 uses
  %.2.1 = phi i32 [ %.1779.1, %bb.yq ], [ %.2, %bb.yp ]
  %i.dsi = load i32, ptr %.lcssa.sroa.gep3101, align 4, !tbaa !2840 ; 2 uses
  %.not1441.2 = icmp ne i32 %i.dsi, 0             ; 2 uses
  br i1 %.not1441.2, label %bb.ys, label %bb.yt

bb.ys:                                            ; preds = %bb.yr
  %i.dsj = zext i32 %i.dsi to i64
  %i.dsk = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dsj
  %i.dsl = load i32, ptr %i.dsk, align 4, !tbaa !2842 ; 4 uses
  %i.dsm = call i32 @llvm.smin.i32(i32 %.1781.1, i32 %i.dsl)
  %i.dsn = add nsw i32 %i.dsl, -6500
  %i.dso = call i32 @llvm.abs.i32(i32 %i.dsn, i1 true)
  %i.dsp = icmp sle i32 %i.dsl, %.2786.1
  %.not1442.2 = icmp samesign ugt i32 %i.dso, %.2.1
  %or.cond1545.2 = select i1 %i.dsp, i1 true, i1 %.not1442.2 ; 2 uses
  %.1788.2 = select i1 %or.cond1545.2, i32 %.2789.1, i32 2
  %.1785.2 = select i1 %or.cond1545.2, i32 %.2786.1, i32 %i.dsl
  %i.dsq = add nuw nsw i32 %.1783.1, 1
  br label %bb.yt

bb.yt:                                            ; preds = %bb.ys, %bb.yr
  %.2789.2 = phi i32 [ %.1788.2, %bb.ys ], [ %.2789.1, %bb.yr ] ; 2 uses
  %.2786.2 = phi i32 [ %.1785.2, %bb.ys ], [ %.2786.1, %bb.yr ]
  %.1783.2 = phi i32 [ %i.dsq, %bb.ys ], [ %.1783.1, %bb.yr ]
  %.1781.2 = phi i32 [ %i.dsm, %bb.ys ], [ %.1781.1, %bb.yr ]
  %i.dsr = icmp samesign ult i32 %.1783.2, 2
  %i.dss = icmp slt i32 %.2786.2, 6501
  %or.cond1546.not2955 = select i1 %i.dsr, i1 true, i1 %i.dss
  %i.dst = add i32 %.1781.2, -6500
  %i.dsu = icmp ult i32 %i.dst, -6499
  %.not2952 = select i1 %or.cond1546.not2955, i1 true, i1 %i.dsu ; 2 uses
  %or.cond48 = select i1 %.not2952, i1 true, i1 %.01001
  br i1 %or.cond48, label %bb.yw, label %bb.yu

bb.yu:                                            ; preds = %bb.yt
  %i.dsv = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dsw = and i32 %i.dsv, 262144
  %.not1381 = icmp eq i32 %i.dsw, 0
  br i1 %.not1381, label %bb.yw, label %bb.yv

bb.yv:                                            ; preds = %bb.yu
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.471, ptr noundef nonnull %i.dln)
          to label %bb.yw unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.yw:                                            ; preds = %bb.yu, %bb.yv, %bb.yt
  %.31005 = phi i32 [ %.210042905.1, %bb.yt ], [ 1, %bb.yv ], [ 1, %bb.yu ] ; 2 uses
  %i.dsx = icmp eq i32 %.2789.2, -1
  br i1 %i.dsx, label %.preheader2956.preheader, label %bb.yz

.preheader2956.preheader:                         ; preds = %bb.yw
  %brmerge = or i1 %.not1441, %.not1443.peel
  br i1 %brmerge, label %.preheader2956.1, label %bb.yx

bb.yx:                                            ; preds = %.preheader2956.2, %.preheader2956.1, %.preheader2956.preheader
  %.07763037.lcssa.wide = phi i32 [ 0, %.preheader2956.preheader ], [ 1, %.preheader2956.1 ], [ 2, %.preheader2956.2 ]
  %.lcssa.sroa.phi = phi ptr [ %i.cw, %.preheader2956.preheader ], [ %.lcssa.sroa.gep3100, %.preheader2956.1 ], [ %.lcssa.sroa.gep3101, %.preheader2956.2 ]
  %i.dsy = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dsz = and i32 %i.dsy, 262144
  %.not1383 = icmp eq i32 %i.dsz, 0
  br i1 %.not1383, label %.thread2907, label %bb.yy

bb.yy:                                            ; preds = %bb.yx
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.472)
          to label %.thread2907 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread2907:                                      ; preds = %bb.yx, %bb.yy
  store i32 21, ptr %.lcssa.sroa.phi, align 4, !tbaa !2840
  br label %bb.yz

.preheader2956.1:                                 ; preds = %.preheader2956.preheader
  %or.cond3615 = or i1 %.not1441.1, %.not1443
  br i1 %or.cond3615, label %.preheader2956.2, label %bb.yx

.preheader2956.2:                                 ; preds = %.preheader2956.1
  %or.cond3617 = or i1 %.not1441.2, %.not1443.1
  br i1 %or.cond3617, label %_ZL18_print_matrix_dataPKciPf.exit2481, label %bb.yx

bb.yz:                                            ; preds = %bb.yw, %.thread2907
  %.42910 = phi i32 [ %.07763037.lcssa.wide, %.thread2907 ], [ %.2789.2, %bb.yw ]
  %i.dta = zext nneg i32 %.42910 to i64           ; 4 uses
  %i.dtb = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.dta
  %i.dtc = load i32, ptr %i.dtb, align 4, !tbaa !2840
  %i.dtd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.dta
  %i.dte = load i32, ptr %i.dtd, align 4, !tbaa !1834
  %i.dtf = icmp eq i32 %i.dte, 0                  ; 2 uses
  %or.cond52 = select i1 %i.dtf, i1 true, i1 %.01001
  %spec.select1548 = select i1 %or.cond52, i32 %.31005, i32 1 ; 2 uses
  %i.dtg = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dth = and i32 %i.dtg, 262144
  %.not1384 = icmp eq i32 %i.dth, 0
  %.pre3115 = zext i32 %i.dtc to i64              ; 2 uses
  br i1 %.not1384, label %._crit_edge3114, label %bb.za

bb.za:                                            ; preds = %bb.yz
  %i.dti = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %.pre3115
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dti, i64 4
  %i.dtk = select i1 %.not2952, ptr @.str.7, ptr @.str.474
  %i.dtl = select i1 %i.dtf, ptr @.str.7, ptr @.str.475
  %i.dtm = load i32, ptr %i.cw, align 4, !tbaa !2840
  %i.dtn = zext i32 %i.dtm to i64
  %i.dto = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dtn ; 2 uses
  %i.dtp = getelementptr inbounds nuw i8, ptr %i.dto, i64 4
  %i.dtq = load i32, ptr %i.dto, align 4, !tbaa !2842
  %i.dtr = load i32, ptr %.lcssa.sroa.gep3100, align 4, !tbaa !2840
  %i.dts = zext i32 %i.dtr to i64
  %i.dtt = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dts ; 2 uses
  %i.dtu = getelementptr inbounds nuw i8, ptr %i.dtt, i64 4
  %i.dtv = load i32, ptr %i.dtt, align 4, !tbaa !2842
  %i.dtw = load i32, ptr %.lcssa.sroa.gep3101, align 4, !tbaa !2840
  %i.dtx = zext i32 %i.dtw to i64
  %i.dty = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %i.dtx ; 2 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %i.dty, i64 4
  %i.dua = load i32, ptr %i.dty, align 4, !tbaa !2842
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.473, ptr noundef nonnull %i.dtj, ptr noundef nonnull %i.dtk, ptr noundef nonnull %i.dtl, ptr noundef nonnull %i.dtp, i32 noundef %i.dtq, ptr noundef nonnull %i.dtu, i32 noundef %i.dtv, ptr noundef nonnull %i.dtz, i32 noundef %i.dua)
          to label %._crit_edge3114 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge3114:                                  ; preds = %bb.yz, %bb.za
  %i.dub = getelementptr inbounds nuw [36 x i8], ptr %i.cu, i64 %i.dta ; 4 uses
  %i.duc = getelementptr inbounds nuw i8, ptr %i.dub, i64 12
  %i.dud = getelementptr inbounds nuw i8, ptr %i.dub, i64 24 ; 2 uses
  %i.due = getelementptr inbounds nuw i8, ptr %i.dub, i64 32
  %i.duf = getelementptr inbounds nuw [36 x i8], ptr %i.ct, i64 %i.dta ; 6 uses
  %i.dug = getelementptr inbounds nuw i8, ptr %i.duf, i64 12
  %i.duh = getelementptr inbounds nuw i8, ptr %i.duf, i64 24
  %i.dui = getelementptr inbounds nuw i8, ptr %i.duf, i64 8
  %i.duj = getelementptr inbounds nuw i8, ptr %i.duf, i64 20
  %i.duk = getelementptr inbounds nuw i8, ptr %i.duf, i64 32
  %i.dul = getelementptr inbounds nuw [76 x i8], ptr @_ZL15illuminant_data, i64 %.pre3115 ; 4 uses
  %i.dum = getelementptr inbounds nuw i8, ptr %i.dul, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !2843)
  call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  %i.dun = getelementptr inbounds nuw i8, ptr %i.dul, i64 48
  %i.duo = getelementptr inbounds nuw i8, ptr %i.dul, i64 64
  %i.dup = getelementptr inbounds nuw i8, ptr %i.dul, i64 72
  %i.duq = load float, ptr %i.dup, align 4, !tbaa !1746, !alias.scope !2844 ; 2 uses
  %i.dur = load float, ptr %i.due, align 4, !tbaa !1746, !alias.scope !2845
  %i.dus = load <3 x float>, ptr %i.dud, align 4, !tbaa !1746, !alias.scope !2845
  %i.dut = load <2 x float>, ptr %i.dud, align 4, !tbaa !1746, !alias.scope !2845
  %i.duu = fmul reassoc nsz arcp contract afn <2 x float> %i.dut, zeroinitializer
  %i.duv = shufflevector <2 x float> %i.duu, <2 x float> poison, <5 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1>
  %i.duw = load <3 x float>, ptr %i.dub, align 4, !tbaa !1746, !alias.scope !2845 ; 5 uses
  %i.dux = load <3 x float>, ptr %i.duc, align 4, !tbaa !1746, !alias.scope !2845 ; 5 uses
  %i.duy = fmul reassoc nsz arcp contract afn float %i.dur, 0.000000e+00
  %i.duz = shufflevector <3 x float> %i.duw, <3 x float> %i.dux, <5 x i32> <i32 0, i32 3, i32 0, i32 4, i32 1>
  %i.dva = fmul reassoc nsz arcp contract afn <5 x float> %i.duz, zeroinitializer
  %i.dvb = shufflevector <3 x float> %i.dux, <3 x float> %i.duw, <5 x i32> <i32 0, i32 3, i32 0, i32 4, i32 1>
  %i.dvc = insertelement <5 x float> poison, float %.sroa.0.0, i64 0
  %i.dvd = insertelement <5 x float> %i.dvc, float %.sroa.21.0, i64 1 ; 2 uses
  %i.dve = shufflevector <5 x float> %i.dvd, <5 x float> poison, <5 x i32> <i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dvf = fmul reassoc nsz arcp contract afn <5 x float> %i.dvb, %i.dve
  %i.dvg = fadd reassoc nsz arcp contract afn <5 x float> %i.dvf, %i.dva
  %i.dvh = fadd reassoc nsz arcp contract afn <5 x float> %i.dvg, %i.duv ; 4 uses
  %i.dvi = shufflevector <3 x float> %i.duw, <3 x float> %i.dux, <2 x i32> <i32 2, i32 5>
  %i.dvj = shufflevector <3 x float> %i.duw, <3 x float> %i.dux, <2 x i32> <i32 5, i32 2>
  %i.dvk = fmul reassoc nsz arcp contract afn <2 x float> %i.dvj, zeroinitializer
  %i.dvl = shufflevector <5 x float> %i.dvd, <5 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dvm = fmul reassoc nsz arcp contract afn <2 x float> %i.dvl, %i.dvi
  %i.dvn = fadd reassoc nsz arcp contract afn <2 x float> %i.dvk, %i.dvm
  %i.dvo = insertelement <2 x float> poison, float %i.duy, i64 0
  %i.dvp = shufflevector <2 x float> %i.dvn, <2 x float> poison, <5 x i32> <i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.dvq = shufflevector <2 x float> %i.dvo, <2 x float> poison, <5 x i32> zeroinitializer
  %i.dvr = fadd reassoc nsz arcp contract afn <5 x float> %i.dvp, %i.dvq ; 2 uses
  %i.dvs = fadd reassoc nsz arcp contract afn <3 x float> %i.dux, %i.duw
  %i.dvt = fmul reassoc nsz arcp contract afn <3 x float> %i.dvs, zeroinitializer
  %i.dvu = insertelement <3 x float> poison, float %.sroa.39.0, i64 0
  %i.dvv = shufflevector <3 x float> %i.dvu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dvw = fmul reassoc nsz arcp contract afn <3 x float> %i.dvv, %i.dus
  %i.dvx = fadd reassoc nsz arcp contract afn <3 x float> %i.dvt, %i.dvw ; 3 uses
  %i.dvy = load float, ptr %i.dui, align 4, !tbaa !1746, !alias.scope !2846
  %i.dvz = load <5 x float>, ptr %i.duf, align 4, !tbaa !1746, !alias.scope !2846 ; 3 uses
  %i.dwa = extractelement <5 x float> %i.dvh, i64 1
  %i.dwb = fmul reassoc nsz arcp contract afn float %i.dvy, %i.dwa
  %i.dwc = load float, ptr %i.duj, align 4, !tbaa !1746, !alias.scope !2846
  %i.dwd = load <3 x float>, ptr %i.dug, align 4, !tbaa !1746, !alias.scope !2846 ; 2 uses
  %i.dwe = extractelement <5 x float> %i.dvh, i64 3
  %i.dwf = fmul reassoc nsz arcp contract afn float %i.dwc, %i.dwe
  %i.dwg = fadd reassoc nsz arcp contract afn float %i.dwf, %i.dwb
  %i.dwh = load float, ptr %i.duk, align 4, !tbaa !1746, !alias.scope !2846
  %i.dwi = load <3 x float>, ptr %i.duh, align 4, !tbaa !1746, !alias.scope !2846 ; 2 uses
  %i.dwj = shufflevector <3 x float> %i.dwi, <3 x float> poison, <5 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dwk = extractelement <5 x float> %i.dvr, i64 1
  %i.dwl = fmul reassoc nsz arcp contract afn float %i.dwh, %i.dwk
  %i.dwm = fadd reassoc nsz arcp contract afn float %i.dwg, %i.dwl ; 2 uses
  %i.dwn = fmul reassoc nsz arcp contract afn <5 x float> %i.dvz, %i.dvh
  %i.dwo = shufflevector <3 x float> %i.dwd, <3 x float> poison, <5 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison>
  %i.dwp = shufflevector <5 x float> %i.dvz, <5 x float> %i.dwo, <5 x i32> <i32 3, i32 4, i32 7, i32 0, i32 1>
  %i.dwq = shufflevector <5 x float> %i.dvh, <5 x float> poison, <5 x i32> <i32 4, i32 3, i32 4, i32 1, i32 0>
  %i.dwr = fmul reassoc nsz arcp contract afn <5 x float> %i.dwp, %i.dwq
  %i.dws = fadd reassoc nsz arcp contract afn <5 x float> %i.dwn, %i.dwr
  %i.dwt = fmul reassoc nsz arcp contract afn <5 x float> %i.dwj, %i.dvr
  %i.dwu = fadd reassoc nsz arcp contract afn <5 x float> %i.dws, %i.dwt ; 3 uses
  %i.dwv = shufflevector <5 x float> %i.dwu, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 3, i32 4>
  %i.dww = shufflevector <3 x float> %i.dvx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.dwx = shufflevector <5 x float> %i.dvz, <5 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.dwy = fmul reassoc nsz arcp contract afn <3 x float> %i.dww, %i.dwx
  %i.dwz = shufflevector <3 x float> %i.dvx, <3 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dxa = fmul reassoc nsz arcp contract afn <3 x float> %i.dwd, %i.dwz
  %i.dxb = fadd reassoc nsz arcp contract afn <3 x float> %i.dxa, %i.dwy
  %i.dxc = shufflevector <3 x float> %i.dvx, <3 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.dxd = fmul reassoc nsz arcp contract afn <3 x float> %i.dwi, %i.dxc
  %i.dxe = fadd reassoc nsz arcp contract afn <3 x float> %i.dxb, %i.dxd ; 2 uses
  %i.dxf = shufflevector <3 x float> %i.dxe, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %i.dxg = call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.dum, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x float> poison), !tbaa !1746, !alias.scope !2844 ; 2 uses
  %i.dxh = call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.dun, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !1746, !alias.scope !2844
  %i.dxi = load <2 x float>, ptr %i.duo, align 4, !tbaa !1746, !alias.scope !2844 ; 4 uses
  %i.dxj = shufflevector <2 x float> %i.dxi, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison>
  %i.dxk = shufflevector <5 x float> %i.dxg, <5 x float> %i.dxj, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 4, i32 3, i32 6, i32 5>
  %i.dxl = shufflevector <5 x float> %i.dwu, <5 x float> poison, <5 x i32> <i32 3, i32 4, i32 poison, i32 0, i32 1>
  %i.dxm = insertelement <5 x float> %i.dxl, float %i.dwm, i64 2
  %i.dxn = shufflevector <5 x float> %i.dxm, <5 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 3, i32 4>
  %i.dxo = fmul reassoc nsz arcp contract afn <8 x float> %i.dxk, %i.dxn
  %i.dxp = shufflevector <5 x float> %i.dxg, <5 x float> poison, <6 x i32> <i32 1, i32 0, i32 4, i32 3, i32 poison, i32 poison>
  %i.dxq = shufflevector <2 x float> %i.dxi, <2 x float> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dxr = shufflevector <6 x float> %i.dxp, <6 x float> %i.dxq, <8 x i32> <i32 0, i32 1, i32 0, i32 2, i32 3, i32 2, i32 6, i32 7>
  %i.dxs = fmul reassoc nsz arcp contract afn <8 x float> %i.dxr, %i.dwv
  %i.dxt = fadd reassoc nsz arcp contract afn <8 x float> %i.dxs, %i.dxo
  %i.dxu = insertelement <8 x float> poison, float %i.duq, i64 2
  %i.dxv = shufflevector <4 x float> %i.dxh, <4 x float> poison, <8 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dxw = shufflevector <8 x float> %i.dxv, <8 x float> %i.dxu, <8 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 10, i32 10>
  %i.dxx = fmul reassoc nsz arcp contract afn <8 x float> %i.dxw, %i.dxf
  %i.dxy = fadd reassoc nsz arcp contract afn <8 x float> %i.dxt, %i.dxx ; 2 uses
  store <8 x float> %i.dxy, ptr %i.cjm, align 16, !tbaa !1746, !alias.scope !2843
  %i.dxz = extractelement <2 x float> %i.dxi, i64 0
  %i.dya = fmul reassoc nsz arcp contract afn float %i.dxz, %i.dwm
  %i.dyb = extractelement <5 x float> %i.dwu, i64 2
  %i.dyc = extractelement <2 x float> %i.dxi, i64 1
  %i.dyd = fmul reassoc nsz arcp contract afn float %i.dyc, %i.dyb
  %i.dye = fadd reassoc nsz arcp contract afn float %i.dyd, %i.dya
  %i.dyf = extractelement <3 x float> %i.dxe, i64 2
  %i.dyg = fmul reassoc nsz arcp contract afn float %i.duq, %i.dyf
  %i.dyh = fadd reassoc nsz arcp contract afn float %i.dye, %i.dyg ; 2 uses
  %i.dyi = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store float %i.dyh, ptr %i.dyi, align 16, !tbaa !1746, !alias.scope !2843
  %i.dyj = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.dyk = and i32 %i.dyj, 262144
  %.not.i2479 = icmp eq i32 %i.dyk, 0
  br i1 %.not.i2479, label %_ZL18_print_matrix_dataPKciPf.exit2481, label %bb.zb

bb.zb:                                            ; preds = %._crit_edge3114
  %i.dyl = fpext reassoc nsz arcp contract afn <8 x float> %i.dxy to <8 x double> ; 8 uses
  %i.dym = fpext reassoc nsz arcp contract afn float %i.dyh to double
  %i.dyn = extractelement <8 x double> %i.dyl, i64 0
  %i.dyo = extractelement <8 x double> %i.dyl, i64 1
  %i.dyp = extractelement <8 x double> %i.dyl, i64 2
  %i.dyq = extractelement <8 x double> %i.dyl, i64 3
  %i.dyr = extractelement <8 x double> %i.dyl, i64 4
  %i.dys = extractelement <8 x double> %i.dyl, i64 5
  %i.dyt = extractelement <8 x double> %i.dyl, i64 6
  %i.dyu = extractelement <8 x double> %i.dyl, i64 7
  invoke void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.500, ptr noundef nonnull @.str.476, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, double noundef %i.dyn, double noundef %i.dyo, double noundef %i.dyp, double noundef %i.dyq, double noundef %i.dyr, double noundef %i.dys, double noundef %i.dyt, double noundef %i.dyu, double noundef %i.dym)
          to label %_ZL18_print_matrix_dataPKciPf.exit2481 unwind label %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.xk, %bb.xm, %bb.xp, %bb.xs, %bb.xu, %bb.xw, %bb.yb, %bb.ye, %bb.yg, %bb.yj, %bb.yl, %bb.yn, %.preheader2995.preheader, %.preheader2995.1, %.preheader2995.2, %.preheader2995.3, %.preheader2995.4, %.preheader2995.5, %.preheader2995.6, %.preheader2995.7, %.preheader2995.8, %.preheader2991.preheader, %.preheader2991.1, %.preheader2991.2, %.preheader2991.3, %.preheader2991.4, %.preheader2991.5, %.preheader2991.6, %.preheader2991.7, %.preheader2991.8, %.preheader2979, %bb.tn, %bb.to, %bb.tp, %bb.tq, %bb.tr, %bb.ts, %bb.tt, %bb.tu, %.preheader2975, %bb.ue, %bb.uf, %bb.ug, %bb.uh, %bb.ui, %bb.uj, %bb.uk, %bb.ul, %.preheader2963, %bb.wc, %bb.wd, %bb.we, %bb.wf, %bb.wg, %bb.wh, %bb.wi, %bb.wj, %bb.xf, %bb.xd, %bb.xb, %bb.wy, %bb.ww, %bb.wt, %bb.vs, %bb.vr, %bb.vq, %bb.vp, %bb.vo, %bb.vn, %bb.vm, %bb.vl, %.preheader2967, %bb.vc, %bb.vb, %bb.va, %bb.uz, %bb.uy, %bb.ux, %bb.uw, %bb.uv, %.preheader2971, %bb.te, %bb.td, %bb.tc, %bb.tb, %bb.ta, %bb.sz, %bb.sy, %bb.sx, %.preheader2983, %.preheader2987.8, %.preheader2987.7, %.preheader2987.6, %.preheader2987.5, %.preheader2987.4, %.preheader2987.3, %.preheader2987.2, %.preheader2987.1, %.preheader2987.preheader, %bb.za, %bb.wo, %bb.wl, %bb.yv, %bb.yy, %bb.ty, %bb.th, %bb.sr, %bb.rz, %.noexc.i2373, %.noexc.i2363, %.critedge28, %bb.qn, %bb.qo, %bb.qp, %bb.qv, %bb.qx, %bb.rc, %bb.re, %bb.rj, %bb.rl, %bb.ql, %bb.rr, %bb.si, %bb.up, %bb.vf, %bb.vw, %bb.zb
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361

_ZL18_print_matrix_dataPKciPf.exit2481:           ; preds = %.preheader2956.2, %bb.zb, %._crit_edge3114
  %.51007 = phi i32 [ %spec.select1548, %bb.zb ], [ %spec.select1548, %._crit_edge3114 ], [ %.31005, %.preheader2956.2 ]
  %.not1388 = icmp eq i32 %.51007, 0
  br i1 %.not1388, label %bb.zg, label %bb.zc

bb.zc:                                            ; preds = %_ZL18_print_matrix_dataPKciPf.exit2481
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx) #35
  store i32 0, ptr %i.cx, align 4, !tbaa !1834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.cy, ptr noundef nonnull align 1 dereferenceable(27) @.str.477, i64 27, i1 false)
  %i.dyv = invoke i32 @dt_tag_new(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.cx)
          to label %bb.zd unwind label %bb.zf     ; 0 uses

bb.zd:                                            ; preds = %bb.zc
  %i.dyw = load i32, ptr %i.cx, align 4, !tbaa !1834
  %i.dyx = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.dyy = load i32, ptr %i.dyx, align 16, !tbaa !1754
  %i.dyz = invoke i32 @dt_tag_attach(i32 noundef %i.dyw, i32 noundef %i.dyy, i32 noundef 0, i32 noundef 0)
          to label %bb.ze unwind label %bb.zf     ; 0 uses

bb.ze:                                            ; preds = %bb.zd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx) #35
  br label %bb.zg

bb.zf:                                            ; preds = %bb.zd, %bb.zc
  %i.dza = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361

bb.zg:                                            ; preds = %bb.ze, %_ZL18_print_matrix_dataPKciPf.exit2481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct) #35
  br label %bb.zh

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2361: ; preds = %bb.ro, %bb.rh, %bb.ra, %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2395, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2411, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2401, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2455, %bb.zf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2471, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2461, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2431, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2425, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2379, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2369, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2359, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351
  %.pn1468.pn = phi { ptr, i32 } [ %i.coh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2379 ], [ %.pn1354.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2401 ], [ %i.cnc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2369 ], [ %i.clx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2359 ], [ %.pn1342.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2351 ], [ %.pn1375.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2471 ], [ %.pn1369.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2455 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp2959.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn1360.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2425 ], [ %i.clx, %bb.ra ], [ %.pn1372.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2461 ], [ %i.cnc, %bb.rh ], [ %i.dza, %bb.zf ], [ %.pn1351.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2395 ], [ %.pn1357.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2411 ], [ %.pn1363.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2431 ], [ %.pn1366.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2441 ], [ %i.coh, %bb.ro ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222

bb.zh:                                            ; preds = %bb.zg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2322
  %i.dzb = invoke i32 @dt_image_is_hdr(ptr noundef nonnull %0)
          to label %.noexc.i2483 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc.i2483:                                     ; preds = %bb.zh
  %i.dzc = getelementptr inbounds nuw i8, ptr %117, i64 16 ; 6 uses
  store ptr %i.dzc, ptr %117, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #35
  store i64 21, ptr %i.n, align 8, !tbaa !106
  %i.dzd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %117, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc2484 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2484:                                       ; preds = %.noexc.i2483
  store ptr %i.dzd, ptr %117, align 8, !tbaa !108
  %i.dze = load i64, ptr %i.n, align 8, !tbaa !106 ; 3 uses
  store i64 %i.dze, ptr %i.dzc, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.dzd, ptr noundef nonnull align 1 dereferenceable(21) @.str.140, i64 21, i1 false)
  %i.dzf = getelementptr inbounds nuw i8, ptr %117, i64 8
  store i64 %i.dze, ptr %i.dzf, align 8, !tbaa !110
  %i.dzg = load ptr, ptr %117, align 8, !tbaa !108
  %i.dzh = getelementptr inbounds nuw i8, ptr %i.dzg, i64 %i.dze
  store i8 0, ptr %i.dzh, align 1, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #35
  %i.dzi = invoke fastcc noundef zeroext i1 @_ZL19_exif_read_exif_tagRN5Exiv28ExifDataEPSt20_List_const_iteratorINS_9ExifdatumEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef align 8 %117)
          to label %bb.zi unwind label %bb.zm

bb.zi:                                            ; preds = %.noexc2484
  %i.dzj = load ptr, ptr %117, align 8, !tbaa !108 ; 2 uses
  %i.dzk = icmp eq ptr %i.dzj, %i.dzc
  br i1 %i.dzk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2488, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2486

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2486: ; preds = %bb.zi
  %i.dzl = load i64, ptr %i.dzc, align 8, !tbaa !109
  %i.dzm = add i64 %i.dzl, 1
  call void @_ZdlPvm(ptr noundef %i.dzj, i64 noundef %i.dzm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2488

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2488: ; preds = %bb.zi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2486
  br i1 %i.dzi, label %.noexc.i2490, label %bb.aau

.noexc.i2490:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2488
  %i.dzn = getelementptr inbounds nuw i8, ptr %118, i64 16 ; 6 uses
  store ptr %i.dzn, ptr %118, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #35
  store i64 27, ptr %i.m, align 8, !tbaa !106
  %i.dzo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %118, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0)
          to label %.noexc2491 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2491:                                       ; preds = %.noexc.i2490
  store ptr %i.dzo, ptr %118, align 8, !tbaa !108
  %i.dzp = load i64, ptr %i.m, align 8, !tbaa !106 ; 3 uses
  store i64 %i.dzp, ptr %i.dzn, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.dzo, ptr noundef nonnull align 1 dereferenceable(27) @.str.478, i64 27, i1 false)
  %i.dzq = getelementptr inbounds nuw i8, ptr %118, i64 8
  store i64 %i.dzp, ptr %i.dzq, align 8, !tbaa !110
  %i.dzr = load ptr, ptr %118, align 8, !tbaa !108
  %i.dzs = getelementptr inbounds nuw i8, ptr %i.dzr, i64 %i.dzp
  store i8 0, ptr %i.dzs, align 1, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #35
  %i.dzt = invoke fastcc noundef zeroext i1 @_ZL19_exif_read_exif_tagRN5Exiv28ExifDataEPSt20_List_const_iteratorINS_9ExifdatumEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef %2, ptr noundef align 8 %118)
          to label %bb.zj unwind label %bb.zn

bb.zj:                                            ; preds = %.noexc2491
  %i.dzu = load ptr, ptr %118, align 8, !tbaa !108 ; 2 uses
  %i.dzv = icmp eq ptr %i.dzu, %i.dzn
  br i1 %i.dzv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493: ; preds = %bb.zj
  %i.dzw = load i64, ptr %i.dzn, align 8, !tbaa !109
  %i.dzx = add i64 %i.dzw, 1
  call void @_ZdlPvm(ptr noundef %i.dzu, i64 noundef %i.dzx) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495: ; preds = %bb.zj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2493
  br i1 %i.dzt, label %bb.zk, label %.noexc.i2503

bb.zk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495
  %i.dzy = load ptr, ptr %2, align 8, !tbaa !1735
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dzy, i64 16 ; 2 uses
  %i.eaa = load ptr, ptr %i.dzz, align 8, !tbaa !118
  %i.eab = getelementptr inbounds nuw i8, ptr %i.eaa, i64 152
  %i.eac = load ptr, ptr %i.eab, align 8
  %i.ead = invoke noundef i64 %i.eac(ptr noundef nonnull align 8 dereferenceable(24) %i.dzz, i64 noundef 0)
          to label %bb.zl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !1753

bb.zl:                                            ; preds = %bb.zk
  %i.eae = trunc i64 %i.ead to i32
  br label %.noexc.i2513

bb.zm:                                            ; preds = %.noexc2484
  %i.eaf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE        ; 2 uses
  %i.eag = load ptr, ptr %117, align 8, !tbaa !108 ; 2 uses
  %i.eah = icmp eq ptr %i.eag, %i.dzc
  br i1 %i.eah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2496: ; preds = %bb.zm
  %i.eai = load i64, ptr %i.dzc, align 8, !tbaa !109
  %i.eaj = add i64 %i.eai, 1
  call void @_ZdlPvm(ptr noundef %i.eag, i64 noundef %i.eaj) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222

bb.zn:                                            ; preds = %.noexc2491
  %i.eak = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE        ; 2 uses
  %i.eal = load ptr, ptr %118, align 8, !tbaa !108 ; 2 uses
  %i.eam = icmp eq ptr %i.eal, %i.dzn
  br i1 %i.eam, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2499: ; preds = %bb.zn
  %i.ean = load i64, ptr %i.dzn, align 8, !tbaa !109
  %i.eao = add i64 %i.ean, 1
  call void @_ZdlPvm(ptr noundef %i.eal, i64 noundef %i.eao) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2222

.noexc.i2503:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2495
  %i.eap = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 6 uses
  store ptr %i.eap, ptr %119, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #35
  store i64 23, ptr %i.l, align 8, !tbaa !106
  %i.eaq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %119, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0)
          to label %.noexc2504 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc2504:                                       ; preds = %.noexc.i2503
  store ptr %i.eaq, ptr %119, align 8, !tbaa !108
  %i.ear = load i64, ptr %i.l, align 8, !tbaa !106 ; 3 uses
  store i64 %i.ear, ptr %i.eap, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.eaq, ptr noundef nonnull align 1 dereferenceable(23) @.str.479, i64 23, i1 false)
  %i.eas = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i64 %i.ear, ptr %i.eas, align 8, !tbaa !110
end_hunk_0
begin_hunk_1_@_ZL18_remove_known_keysRN5Exiv27XmpDataE:bb.a
  %i.ap = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2992)) #35 ; 0 uses
  %i.aq = tail call ptr @dt_metadata_get_list()   ; 2 uses
  %.not11 = icmp eq ptr %i.aq, null
  br i1 %.not11, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.ar = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @darktable, i64 2992)) #35 ; 0 uses
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0912 = phi ptr [ %i.aw, %.lr.ph ], [ %i.aq, %bb.a ] ; 2 uses
  %i.as = load ptr, ptr %.0912, align 8, !tbaa !1756
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1759
  tail call fastcc void @_ZL13_deleteXmpTagRN5Exiv27XmpDataEPKc(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %.0912, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1768 ; 2 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2959
}

; Function Attrs: nounwind
declare void @_ZN5Exiv27DataBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #12

declare void @dt_image_path_append_version(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @_ZN5Exiv27XmpData5beginEv(ptr noundef nonnull align 8 dereferenceable(57)) local_unnamed_addr #2

declare noundef i32 @_ZN5Exiv27XmpData3addERKNS_8XmpdatumE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Exiv27XmpDataD2Ev(ptr noundef nonnull align 8 dead_on_return(57) dereferenceable(57) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !109
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !2710   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2711 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.j = load ptr, ptr %.05.i.i.i, align 8, !tbaa !118
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %.05.i.i.i) #35, !call_target !2715, !inline_history !2960
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.i
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !86

_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !2710
  br label %_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.m = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5Exiv28XmpdatumESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2716
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #37
  br label %_ZNSt6vectorIN5Exiv28XmpdatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5Exiv28XmpdatumESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN5Exiv28XmpdatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL19_exif_xmp_read_dataRN5Exiv27XmpDataEiPKc(ptr noundef nonnull align 8 dereferenceable(57) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %16 = alloca %struct._color_harmony_t, align 4  ; 7 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.q = alloca i64, align 8                      ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca ptr, align 8                      ; 15 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.v = alloca i64, align 8                      ; 5 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.x = alloca i64, align 8                      ; 5 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  %31 = alloca %struct.timeval, align 16          ; 4 uses
  %i.aa = alloca i32, align 4                     ; 7 uses
  %i.ab = alloca i32, align 4                     ; 8 uses
  %i.ac = alloca ptr, align 8                     ; 9 uses
  %i.ad = alloca ptr, align 8                     ; 10 uses
  %i.ae = alloca ptr, align 8                     ; 19 uses
  %i.af = alloca i32, align 4                     ; 6 uses
  %i.ag = alloca [24 x i8], align 16              ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %33 = alloca %"class.Exiv2::XmpKey", align 8    ; 7 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.ah = alloca i32, align 4                     ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.std::auto_ptr.35", align 8 ; 4 uses
  %38 = alloca %"class.std::auto_ptr.35", align 8 ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %40 = alloca %"class.Exiv2::XmpKey", align 8    ; 7 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %43 = alloca %"class.Exiv2::XmpKey", align 8    ; 7 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.ai = alloca i32, align 4                     ; 5 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.aj = alloca i32, align 4                     ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %51 = alloca %struct.dt_history_hash_values_t, align 8 ; 11 uses
  %i.ak = alloca ptr, align 8                     ; 6 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.al = alloca ptr, align 8                     ; 6 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.am = alloca ptr, align 8                     ; 6 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.an = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %_ZL18dt_get_debug_wtimev.exit.thread, label %_ZL18dt_get_debug_wtimev.exit

_ZL18dt_get_debug_wtimev.exit.thread:             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #35
  store i32 5, ptr %i.aa, align 4, !tbaa !1834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #35
  store i32 0, ptr %i.ab, align 4, !tbaa !1834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #35
  store ptr null, ptr %i.ac, align 8, !tbaa !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #35
  store ptr null, ptr %i.ad, align 8, !tbaa !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #35
  br label %bb.c

_ZL18dt_get_debug_wtimev.exit:                    ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #35
  %i.ao = call i32 @gettimeofday(ptr noundef nonnull %31, ptr noundef null) #35 ; 0 uses
  %i.ap = load <2 x i64>, ptr %31, align 16, !tbaa !106
  %i.aq = add nsw <2 x i64> %i.ap, <i64 -1290608000, i64 0>
  %i.ar = sitofp reassoc nsz arcp contract afn <2 x i64> %i.aq to <2 x double> ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1
  %i.at = fmul reassoc nnan nsz arcp contract afn double %i.as, f0x3EB0C6F7A0B5ED8D
  %i.au = extractelement <2 x double> %i.ar, i64 0
  %i.av = fadd reassoc nsz arcp contract afn double %i.at, %i.au ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #35
  %.pre = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !170
  %i.aw = and i32 %.pre, 256
  %i.ax = icmp eq i32 %i.aw, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #35
  store i32 5, ptr %i.aa, align 4, !tbaa !1834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #35
  store i32 0, ptr %i.ab, align 4, !tbaa !1834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #35
  store ptr null, ptr %i.ac, align 8, !tbaa !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #35
  store ptr null, ptr %i.ad, align 8, !tbaa !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #35
  br i1 %i.ax, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL18dt_get_debug_wtimev.exit
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.282, i32 noundef 5113, ptr noundef nonnull @__FUNCTION__._ZL19_exif_xmp_read_dataRN5Exiv27XmpDataEiPKc, ptr noundef nonnull @.str.587)
  br label %bb.c

bb.c:                                             ; preds = %_ZL18dt_get_debug_wtimev.exit.thread, %bb.b, %_ZL18dt_get_debug_wtimev.exit
  %i.ay = phi double [ 0.000000e+00, %_ZL18dt_get_debug_wtimev.exit.thread ], [ %i.av, %bb.b ], [ %i.av, %_ZL18dt_get_debug_wtimev.exit ]
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !2671
  %i.ba = tail call ptr @dt_database_get(ptr noundef %i.az)
  %i.bb = call i32 @sqlite3_prepare_v2(ptr noundef %i.ba, ptr noundef nonnull @.str.587, i32 noundef -1, ptr noundef nonnull %i.ae, ptr noundef null)
  %.not103 = icmp eq i32 %i.bb, 0
  br i1 %.not103, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !2673
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !2671
  %i.be = call ptr @dt_database_get(ptr noundef %i.bd)
  %i.bf = call ptr @sqlite3_errmsg(ptr noundef %i.be)
  %i.bg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bc, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.282, i32 noundef 5113, ptr noundef nonnull @__FUNCTION__._ZL19_exif_xmp_read_dataRN5Exiv27XmpDataEiPKc, ptr noundef nonnull @.str.587, ptr noundef %i.bf) #43 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bh = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.bi = call i32 @sqlite3_bind_int(ptr noundef %i.bh, i32 noundef 1, i32 noundef %1)
  %.not104 = icmp eq i32 %i.bi, 0
  br i1 %.not104, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !2673
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 136), align 8, !tbaa !2671
  %i.bl = call ptr @dt_database_get(ptr noundef %i.bk)
  %i.bm = call ptr @sqlite3_errmsg(ptr noundef %i.bl)
  %i.bn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bj, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.282, i32 noundef 5115, ptr noundef nonnull @__FUNCTION__._ZL19_exif_xmp_read_dataRN5Exiv27XmpDataEiPKc, ptr noundef %i.bm) #43 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.bp = call i32 @sqlite3_step(ptr noundef %i.bo)
  %i.bq = icmp eq i32 %i.bp, 100
  br i1 %i.bq, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.bs = call ptr @sqlite3_column_text(ptr noundef %i.br, i32 noundef 0)
  store ptr %i.bs, ptr %i.ac, align 8, !tbaa !1843
  %i.bt = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.bu = call i32 @sqlite3_column_int(ptr noundef %i.bt, i32 noundef 1)
  %i.bv = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.bw = call i32 @sqlite3_column_int(ptr noundef %i.bv, i32 noundef 2)
  store i32 %i.bw, ptr %i.ab, align 4, !tbaa !1834
  %i.bx = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.by = call i32 @sqlite3_column_type(ptr noundef %i.bx, i32 noundef 3)
  %i.bz = icmp eq i32 %i.by, 2
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.cb = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.ca, i32 noundef 3)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0100 = phi nsz double [ %i.cb, %bb.i ], [ +qnan, %bb.h ]
  %i.cc = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.cd = call i32 @sqlite3_column_type(ptr noundef %i.cc, i32 noundef 4)
  %i.ce = icmp eq i32 %i.cd, 2
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cf = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.cg = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.cf, i32 noundef 4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.098 = phi nsz double [ %i.cg, %bb.k ], [ +qnan, %bb.j ]
  %i.ch = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.ci = call i32 @sqlite3_column_type(ptr noundef %i.ch, i32 noundef 5)
  %i.cj = icmp eq i32 %i.ci, 2
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.cl = call reassoc nsz arcp contract afn double @sqlite3_column_double(ptr noundef %i.ck, i32 noundef 5)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.096 = phi nsz double [ %i.cl, %bb.m ], [ +qnan, %bb.l ]
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.cn = call i32 @sqlite3_column_int(ptr noundef %i.cm, i32 noundef 6)
  %i.co = load ptr, ptr %i.ae, align 8, !tbaa !2675
  %i.cp = call i64 @sqlite3_column_int64(ptr noundef %i.co, i32 noundef 7)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  %.0102 = phi i32 [ %i.cn, %bb.n ], [ -1, %bb.g ] ; 2 uses
  %.1101 = phi nsz double [ %.0100, %bb.n ], [ +qnan, %bb.g ]
  %.199 = phi nsz double [ %.098, %bb.n ], [ +qnan, %bb.g ]
  %.197 = phi nsz double [ %.096, %bb.n ], [ +qnan, %bb.g ]
  %.095 = phi i64 [ %i.cp, %bb.n ], [ 0, %bb.g ]
  %.064 = phi i32 [ %i.bu, %bb.n ], [ 1, %bb.g ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #35
  %i.cq = call i32 @dt_ioppr_get_iop_order_version(i32 noundef %1)
  store i32 %i.cq, ptr %i.af, align 4, !tbaa !2718
  %i.cr = call ptr @dt_ioppr_get_iop_order_list(i32 noundef %1, i32 noundef 1) ; 3 uses
  %i.cs = load i32, ptr %i.af, align 4, !tbaa !2718
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = call i32 @dt_ioppr_has_multiple_instances(ptr noundef %i.cr)
  %.not105 = icmp eq i32 %i.cu, 0
  br i1 %.not105, label %.noexc.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cv = call ptr @dt_ioppr_serialize_text_iop_order_list(ptr noundef %i.cr)
  store ptr %i.cv, ptr %i.ad, align 8, !tbaa !1843
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.q, %bb.p
  call void @g_list_free_full(ptr noundef %i.cr, ptr noundef nonnull @free)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #35
  %i.cw = call i32 @dt_datetime_gtimespan_to_exif(ptr noundef nonnull %i.ag, i64 noundef 24, i64 noundef %.095) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #35
  %i.cx = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 6 uses
  store ptr %i.cx, ptr %32, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #35
  store i64 25, ptr %i.z, align 8, !tbaa !106
  %i.cy = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef 0)
          to label %.noexc unwind label %bb.x     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.cy, ptr %32, align 8, !tbaa !108
  %i.cz = load i64, ptr %i.z, align 8, !tbaa !106 ; 3 uses
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(25) %i.cy, ptr noundef nonnull align 1 dereferenceable(25) @.str.531, i64 25, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !110
  %i.db = load ptr, ptr %32, align 8, !tbaa !108
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 0, ptr %i.dc, align 1, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #35
  %i.dd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Exiv27XmpDataixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.r unwind label %bb.y       ; 2 uses

bb.r:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #35
  invoke void @_ZN5Exiv28toStringIA24_cEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %30, ptr noundef nonnull align 1 dereferenceable(24) %i.ag)
          to label %.noexc161 unwind label %bb.y

.noexc161:                                        ; preds = %bb.r
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !118
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = invoke noundef i32 %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %30)
          to label %bb.s unwind label %bb.t, !call_target !2721 ; 0 uses

bb.s:                                             ; preds = %.noexc161
  %i.di = load ptr, ptr %30, align 8, !tbaa !108  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.s
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !109
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.t:                                             ; preds = %.noexc161
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %30, align 8, !tbaa !108  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.t
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !109
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
end_hunk_1
begin_hunk_2_@_ZL13_deleteXmpTagRN5Exiv27XmpDataEPKc:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.039.0 = phi ptr [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.039.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ] ; 6 uses
  %i.u = invoke ptr @_ZN5Exiv27XmpData3endEv(ptr noundef nonnull align 8 dereferenceable(57) %0)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %.not41 = icmp eq ptr %.sroa.039.0, %i.u
  br i1 %.not41, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.v = load ptr, ptr %.sroa.039.0, align 8, !tbaa !118
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.039.0)
          to label %bb.l unwind label %bb.r, !call_target !2753

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.z = load i64, ptr %i.s, align 8, !tbaa !110
  %i.aa = invoke i32 @g_str_has_prefix(ptr noundef %i.y, ptr noundef nonnull %1)
          to label %bb.s unwind label %bb.w

bb.m:                                             ; preds = %.noexc.i, %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.n:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %bb.p

bb.o:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  call void @_ZN5Exiv26XmpKeyD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %i.ac, %bb.n ] ; 2 uses
  %i.ae = load ptr, ptr %3, align 8, !tbaa !108   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.b
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.p
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !109
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.ab, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %bb.x

bb.q:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %bb.x

bb.r:                                             ; preds = %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

bb.s:                                             ; preds = %bb.l
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !109
  switch i8 %i.al, label %bb.v [
    i8 91, label %bb.u
    i8 0, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.am = invoke ptr @_ZN5Exiv27XmpData5eraseEN9__gnu_cxx17__normal_iteratorIPNS_8XmpdatumESt6vectorIS3_SaIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nonnull %.sroa.039.0)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.s, %bb.t
  %.sroa.039.1 = phi ptr [ %.sroa.039.0, %bb.s ], [ %.sroa.039.0, %bb.t ], [ %i.am, %bb.u ]
  %i.an = phi i1 [ false, %bb.s ], [ false, %bb.t ], [ true, %bb.u ]
  %i.ao = load ptr, ptr %4, align 8, !tbaa !108   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.t
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.v
  %i.aq = load i64, ptr %i.t, align 8, !tbaa !109
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br i1 %i.an, label %bb.i, label %.loopexit

bb.w:                                             ; preds = %bb.l, %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN5Exiv28AnyErrorE        ; 2 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !108   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.t
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.w
  %i.av = load i64, ptr %i.t, align 8, !tbaa !109
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35, %bb.r
  %.pn24.pn = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35 ], [ %i.as, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.pn24.pn.pn = phi { ptr, i32 } [ %.pn24.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %i.ai, %bb.q ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ] ; 3 uses
  %.419 = extractvalue { ptr, i32 } %.pn24.pn.pn, 1
  %i.ax = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5Exiv28AnyErrorE) #35
  %i.ay = icmp eq i32 %.419, %i.ax
  br i1 %i.ay, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %.4 = extractvalue { ptr, i32 } %.pn24.pn.pn, 0
  %i.az = call ptr @__cxa_begin_catch(ptr %.4) #35 ; 0 uses
  call void @__cxa_end_catch()
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.y
  ret void

bb.z:                                             ; preds = %bb.x
  resume { ptr, i32 } %.pn24.pn.pn
}

declare ptr @_ZN5Exiv27XmpData5eraseEN9__gnu_cxx17__normal_iteratorIPNS_8XmpdatumESt6vectorIS3_SaIS3_EEEE(ptr noundef nonnull align 8 dereferenceable(57), ptr) local_unnamed_addr #2

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @sqlite3_column_double(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dt_ioppr_get_iop_order_version(i32 noundef) local_unnamed_addr #2

declare ptr @dt_ioppr_get_iop_order_list(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dt_ioppr_has_multiple_instances(ptr noundef) local_unnamed_addr #2

declare ptr @dt_ioppr_serialize_text_iop_order_list(ptr noundef) local_unnamed_addr #2

declare i32 @dt_datetime_gtimespan_to_exif(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @dt_image_get_xmp_rating_from_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20_set_xmp_exif_geotagRN5Exiv27XmpDataEddd(ptr noundef nonnull align 8 dereferenceable(57) %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call fastcc void @_ZL16_remove_xmp_keysRN5Exiv27XmpDataEPPKcj(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull @_ZZL23_remove_xmp_exif_geotagRN5Exiv27XmpDataEE4keys, i32 noundef 5)
  %or.cond = fcmp uno double %1, %2
  br i1 %or.cond, label %bb.q, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = fcmp reassoc nsz arcp contract afn olt double %1, 0.000000e+00
  %spec.select = select i1 %i.i, i32 87, i32 69
  %i.j = fcmp reassoc nsz arcp contract afn olt double %2, 0.000000e+00
  %.041 = select i1 %i.j, i32 83, i32 78
  %i.k = insertelement <2 x double> poison, double %1, i64 0
  %i.l = insertelement <2 x double> %i.k, double %2, i64 1
  %i.m = tail call reassoc nsz arcp contract afn <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l) ; 2 uses
  %i.n = tail call reassoc nsz arcp contract afn <2 x double> @llvm.floor.v2f64(<2 x double> %i.m)
  %i.o = fptosi <2 x double> %i.n to <2 x i32>    ; 3 uses
  %i.p = uitofp nsz nneg <2 x i32> %i.o to <2 x double>
  %i.q = fsub reassoc nsz arcp contract afn <2 x double> %i.m, %i.p
  %i.r = fmul reassoc nsz arcp contract afn <2 x double> %i.q, splat (double 6.000000e+01) ; 2 uses
  %i.s = tail call noalias dereferenceable_or_null(39) ptr @g_malloc(i64 noundef 39) #39 ; 5 uses
  %i.t = extractelement <2 x double> %i.r, i64 0
  %i.u = tail call ptr @g_ascii_formatd(ptr noundef %i.s, i32 noundef 39, ptr noundef nonnull @.str.593, double noundef %i.t) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #35
  %i.v = extractelement <2 x i32> %i.o, i64 0
  %i.w = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.594, i32 noundef %i.v, ptr noundef %i.s, i32 noundef %spec.select)
  store ptr %i.w, ptr %i.f, align 8, !tbaa !1843
  %i.x = extractelement <2 x double> %i.r, i64 1
  %i.y = tail call ptr @g_ascii_formatd(ptr noundef %i.s, i32 noundef 39, ptr noundef nonnull @.str.593, double noundef %i.x) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #35
  %i.z = extractelement <2 x i32> %i.o, i64 1
  %i.aa = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.594, i32 noundef %i.z, ptr noundef %i.s, i32 noundef %.041)
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.ab, ptr %7, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #35
  store i64 21, ptr %i.e, align 8, !tbaa !106
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ac, ptr %7, align 8, !tbaa !108
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !106 ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ac, ptr noundef nonnull align 1 dereferenceable(21) @.str.596, i64 21, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !110
  %i.af = load ptr, ptr %7, align 8, !tbaa !108
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #35
  %i.ah = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Exiv27XmpDataixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.b unwind label %bb.k

bb.b:                                             ; preds = %.noexc
  %i.ai = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Exiv28XmpdatumaSEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull @.str.595)
          to label %bb.c unwind label %bb.k       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.aj = load ptr, ptr %7, align 8, !tbaa !108   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.ab
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.al = load i64, ptr %i.ab, align 8, !tbaa !109
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.an, ptr %8, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #35
  store i64 21, ptr %i.d, align 8, !tbaa !106
  %i.ao = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc56 unwind label %bb.l   ; 2 uses

.noexc56:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.ao, ptr %8, align 8, !tbaa !108
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !106 ; 3 uses
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.ao, ptr noundef nonnull align 1 dereferenceable(21) @.str.527, i64 21, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !110
  %i.ar = load ptr, ptr %8, align 8, !tbaa !108
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap
  store i8 0, ptr %i.as, align 1, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #35
  %i.at = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Exiv27XmpDataixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.d unwind label %bb.m       ; 2 uses

bb.d:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  invoke void @_ZN5Exiv28toStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc58 unwind label %bb.m

.noexc58:                                         ; preds = %bb.d
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !118
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.e unwind label %bb.f, !call_target !2721 ; 0 uses

bb.e:                                             ; preds = %.noexc58
  %i.ay = load ptr, ptr %6, align 8, !tbaa !108   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !109
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.f:                                             ; preds = %.noexc58
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %6, align 8, !tbaa !108   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.f
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !109
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %i.bj = load ptr, ptr %8, align 8, !tbaa !108   ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.an
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.bl = load i64, ptr %i.an, align 8, !tbaa !109
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.bn, ptr %9, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #35
  store i64 20, ptr %i.c, align 8, !tbaa !106
  %i.bo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc64 unwind label %bb.n   ; 2 uses

.noexc64:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61
  store ptr %i.bo, ptr %9, align 8, !tbaa !108
  %i.bp = load i64, ptr %i.c, align 8, !tbaa !106 ; 3 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.bo, ptr noundef nonnull align 1 dereferenceable(20) @.str.526, i64 20, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !110
  %i.br = load ptr, ptr %9, align 8, !tbaa !108
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  store i8 0, ptr %i.bs, align 1, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #35
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5Exiv27XmpDataixERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.o       ; 2 uses

bb.g:                                             ; preds = %.noexc64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  invoke void @_ZN5Exiv28toStringIPcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc71 unwind label %bb.o

.noexc71:                                         ; preds = %bb.g
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !118
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef i32 %i.bw(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.i, !call_target !2721 ; 0 uses

bb.h:                                             ; preds = %.noexc71
  %i.by = load ptr, ptr %5, align 8, !tbaa !108   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69: ; preds = %bb.h
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !109
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #37
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70

bb.i:                                             ; preds = %.noexc71
  %i.cd = landingpad { ptr, i32 }
          cleanup
  %i.ce = load ptr, ptr %5, align 8, !tbaa !108   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cg = icmp eq ptr %i.ce, %i.cf
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i66: ; preds = %bb.i
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !109
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ci) #37
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i67: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %.body72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i70: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %i.cj = load ptr, ptr %9, align 8, !tbaa !108   ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.bn
end_hunk_2
