inline.NumInlined: 2195
inline.NumDeleted: 126
begin_hunk_0_@Test_EvalFrame:bb.a
  %i.bkl = and i16 %i.bkk, 1
  %i.bkm = ptrtoint ptr %i.bkg to i64
  %i.bkn = zext nneg i16 %i.bkl to i64
  %i.bko = or i64 %i.bkn, %i.bkm
  %i.bkp = getelementptr [8 x i8], ptr %.4.val10253, i64 %i.bju
  store i64 %i.bko, ptr %i.bkp, align 8, !tbaa !34
  %i.bkq = getelementptr [8 x i8], ptr %.4.val10253, i64 %i.bjr ; 2 uses
  store ptr %i.bkq, ptr %i.bkf, align 8, !tbaa !65
  %i.bkr = load atomic i64, ptr %i.lrd monotonic, align 8
  %i.bks = and i64 %i.bkr, 255
  %.not.i10671 = icmp eq i64 %i.bks, 0
  br i1 %.not.i10671, label %check_periodics.exit10673.thread, label %check_periodics.exit10673

check_periodics.exit10673:                        ; preds = %bb.mx
  %i.bkt = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10252 = load ptr, ptr %i.bkf, align 8, !tbaa !65 ; 2 uses
  %.not9579 = icmp eq i32 %i.bkt, 0
  br i1 %.not9579, label %check_periodics.exit10673.thread, label %.loopexit.loopexit

check_periodics.exit10673.thread:                 ; preds = %bb.mx, %check_periodics.exit10673
  %.4.val1025211464 = phi ptr [ %.4.val10252, %check_periodics.exit10673 ], [ %i.bkq, %bb.mx ]
  %i.bku = load i16, ptr %i.bjm, align 2, !tbaa !66 ; 2 uses
  %.sroa.23347.0.extract.shift = lshr i16 %i.bku, 8
  %.sroa.23347.0.extract.trunc = zext nneg i16 %.sroa.23347.0.extract.shift to i32
  %i.bkv = and i16 %i.bku, 255
  %i.bkw = zext nneg i16 %i.bkv to i64
  br label %.backedge.backedge

bb.my:                                            ; preds = %.backedge
  %i.bkx = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bkx, align 8, !tbaa !47
  %i.bky = getelementptr i8, ptr %.32, i64 8      ; 8 uses
  %i.bkz = sub i32 0, %.09034
  %i.bla = sext i32 %i.bkz to i64                 ; 2 uses
  %i.blb = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.bla
  %i.blc = xor i32 %.09034, -1
  %i.bld = sext i32 %i.blc to i64                 ; 2 uses
  %i.ble = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.bld
  %.sroa.03343.0.copyload = load i64, ptr %i.ble, align 8, !tbaa !34
  %i.blf = sub i32 -2, %.09034
  %i.blg = sext i32 %i.blf to i64                 ; 2 uses
  %i.blh = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.blg
  %.sroa.03344.0.copyload = load i64, ptr %i.blh, align 8, !tbaa !34 ; 4 uses
  %i.bli = and i64 %.sroa.03344.0.copyload, -2
  %i.blj = inttoptr i64 %i.bli to ptr             ; 3 uses
  %i.blk = icmp ne i64 %.sroa.03343.0.copyload, 1 ; 2 uses
  %i.bll = zext i1 %i.blk to i32
  %.09092 = add i32 %.09034, %i.bll
  %.09091.idx = select i1 %i.blk, i64 -8, i64 0
  %.09091 = getelementptr i8, ptr %i.blb, i64 %.09091.idx ; 2 uses
  %.not9574 = icmp eq i32 %.09092, 1
  br i1 %.not9574, label %bb.mz, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.mz:                                            ; preds = %bb.my
  %i.blm = getelementptr i8, ptr %i.blj, i64 8
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !58
  %i.blo = icmp eq ptr %i.bln, @PyCFunction_Type
  br i1 %i.blo, label %bb.na, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.na:                                            ; preds = %bb.mz
  %i.blp = getelementptr i8, ptr %i.blj, i64 16
  %.val10434 = load ptr, ptr %i.blp, align 8, !tbaa !194 ; 2 uses
  %i.blq = getelementptr i8, ptr %.val10434, i64 16
  %.val10434.val = load i32, ptr %i.blq, align 8, !tbaa !196
  %.not9575 = icmp eq i32 %.val10434.val, 8
  br i1 %.not9575, label %bb.nb, label %_PyThreadState_HasStackSpace.exit10638.thread

bb.nb:                                            ; preds = %bb.na
  %.val10439 = load i64, ptr %i.s, align 8, !tbaa !10
  %.not11597 = icmp ult i64 %.val10439, %i.u
  br i1 %.not11597, label %PyCFunction_GET_SELF.exit, label %_PyThreadState_HasStackSpace.exit10638.thread

PyCFunction_GET_SELF.exit:                        ; preds = %bb.nb
  %i.blr = getelementptr i8, ptr %.val10434, i64 8
  %.val10440.val = load ptr, ptr %i.blr, align 8, !tbaa !198
  %.sroa.03325.0.copyload = load i64, ptr %.09091, align 8, !tbaa !34
  %i.bls = getelementptr i8, ptr %.4, i64 64      ; 7 uses
  store ptr %.4.val1003611541, ptr %i.bls, align 8, !tbaa !65
  %i.blt = getelementptr i8, ptr %i.blj, i64 24
  %i.blu = load ptr, ptr %i.blt, align 8, !tbaa !199
  %i.blv = and i64 %.sroa.03325.0.copyload, -2
  %i.blw = inttoptr i64 %i.blv to ptr
  %i.blx = call ptr %.val10440.val(ptr noundef %i.blu, ptr noundef %i.blw) #8 ; 3 uses
  %.4.val10251 = load ptr, ptr %i.bls, align 8, !tbaa !65 ; 4 uses
  %i.bly = icmp eq ptr %i.blx, null
  br i1 %i.bly, label %.loopexit.loopexit, label %bb.nc

bb.nc:                                            ; preds = %PyCFunction_GET_SELF.exit
  %.sroa.03336.0.copyload = load i64, ptr %.09091, align 8, !tbaa !34 ; 2 uses
  %i.blz = getelementptr i8, ptr %i.blx, i64 6
  %i.bma = load i16, ptr %i.blz, align 2, !tbaa !34
  %i.bmb = and i16 %i.bma, 1
  %i.bmc = ptrtoint ptr %i.blx to i64
  %i.bmd = zext nneg i16 %i.bmb to i64
  %i.bme = or i64 %i.bmd, %i.bmc
  %i.bmf = getelementptr [8 x i8], ptr %.4.val10251, i64 %i.blg
  store i64 %i.bme, ptr %i.bmf, align 8, !tbaa !34
  %i.bmg = getelementptr [8 x i8], ptr %.4.val10251, i64 %i.bld
  store i64 %.sroa.03344.0.copyload, ptr %i.bmg, align 8, !tbaa !34
  %i.bmh = getelementptr [8 x i8], ptr %.4.val10251, i64 %i.bla
  store ptr %i.bmh, ptr %i.bls, align 8, !tbaa !65
  %i.bmi = and i64 %.sroa.03336.0.copyload, 1
  %.not.not.i10676 = icmp eq i64 %i.bmi, 0
  br i1 %.not.not.i10676, label %bb.nd, label %PyStackRef_XCLOSE.exit10677

bb.nd:                                            ; preds = %bb.nc
  %i.bmj = inttoptr i64 %.sroa.03336.0.copyload to ptr ; 3 uses
  %i.bmk = load i32, ptr %i.bmj, align 8, !tbaa !34
  %i.bml = add i32 %i.bmk, -1                     ; 2 uses
  store i32 %i.bml, ptr %i.bmj, align 8, !tbaa !34
  %i.bmm = icmp eq i32 %i.bml, 0
  br i1 %i.bmm, label %bb.ne, label %PyStackRef_XCLOSE.exit10677

bb.ne:                                            ; preds = %bb.nd
  call void @_Py_Dealloc(ptr noundef nonnull %i.bmj) #8
  br label %PyStackRef_XCLOSE.exit10677

PyStackRef_XCLOSE.exit10677:                      ; preds = %bb.nc, %bb.nd, %bb.ne
  %.4.val10250 = load ptr, ptr %i.bls, align 8, !tbaa !65
  %i.bmn = getelementptr i8, ptr %.4.val10250, i64 -8
  store ptr %i.bmn, ptr %i.bls, align 8, !tbaa !65
  %i.bmo = and i64 %.sroa.03344.0.copyload, 1
  %.not.not.i10678 = icmp eq i64 %i.bmo, 0
  br i1 %.not.not.i10678, label %bb.nf, label %PyStackRef_XCLOSE.exit10679

bb.nf:                                            ; preds = %PyStackRef_XCLOSE.exit10677
  %i.bmp = inttoptr i64 %.sroa.03344.0.copyload to ptr ; 3 uses
  %i.bmq = load i32, ptr %i.bmp, align 8, !tbaa !34
  %i.bmr = add i32 %i.bmq, -1                     ; 2 uses
  store i32 %i.bmr, ptr %i.bmp, align 8, !tbaa !34
  %i.bms = icmp eq i32 %i.bmr, 0
  br i1 %i.bms, label %bb.ng, label %PyStackRef_XCLOSE.exit10679

bb.ng:                                            ; preds = %bb.nf
  call void @_Py_Dealloc(ptr noundef nonnull %i.bmp) #8
  br label %PyStackRef_XCLOSE.exit10679

PyStackRef_XCLOSE.exit10679:                      ; preds = %PyStackRef_XCLOSE.exit10677, %bb.nf, %bb.ng
  %i.bmt = load atomic i64, ptr %i.lrd monotonic, align 8
  %i.bmu = and i64 %i.bmt, 255
  %.not.i10680 = icmp eq i64 %i.bmu, 0
  br i1 %.not.i10680, label %check_periodics.exit10682.thread, label %check_periodics.exit10682

check_periodics.exit10682.thread:                 ; preds = %PyStackRef_XCLOSE.exit10679
  %.4.val1024811466 = load ptr, ptr %i.bls, align 8, !tbaa !65
  br label %bb.nh

check_periodics.exit10682:                        ; preds = %PyStackRef_XCLOSE.exit10679
  %i.bmv = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10248 = load ptr, ptr %i.bls, align 8, !tbaa !65 ; 2 uses
  %.not9577 = icmp eq i32 %i.bmv, 0
  br i1 %.not9577, label %bb.nh, label %.loopexit.loopexit

bb.nh:                                            ; preds = %check_periodics.exit10682.thread, %check_periodics.exit10682
  %.4.val1024811468 = phi ptr [ %.4.val1024811466, %check_periodics.exit10682.thread ], [ %.4.val10248, %check_periodics.exit10682 ]
  %i.bmw = load i16, ptr %i.bky, align 2, !tbaa !66 ; 2 uses
  %.sroa.23320.0.extract.shift = lshr i16 %i.bmw, 8
  %.sroa.23320.0.extract.trunc = zext nneg i16 %.sroa.23320.0.extract.shift to i32
  %i.bmx = and i16 %i.bmw, 255
  %i.bmy = zext nneg i16 %i.bmx to i64
  br label %.backedge.backedge

bb.ni:                                            ; preds = %.backedge
  %i.bmz = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bmz, align 8, !tbaa !47
  %i.bna = getelementptr i8, ptr %.32, i64 4      ; 7 uses
  %i.bnb = getelementptr i8, ptr %.4.val1003611541, i64 -32
  %.sroa.03315.0.copyload = load i64, ptr %i.bnb, align 8, !tbaa !34 ; 3 uses
  %i.bnc = and i64 %.sroa.03315.0.copyload, -2
  %i.bnd = inttoptr i64 %i.bnc to ptr             ; 4 uses
  %i.bne = getelementptr i8, ptr %i.bnd, i64 8
  %.val9884 = load ptr, ptr %i.bne, align 8, !tbaa !58
  %i.bnf = icmp eq ptr %.val9884, @PyFunction_Type
  br i1 %i.bnf, label %bb.nj, label %bb.nk

bb.nj:                                            ; preds = %bb.ni
  %i.bng = getelementptr i8, ptr %i.bnd, i64 136
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !182
  %i.bni = icmp eq ptr %i.bnh, @_PyFunction_Vectorcall
  br i1 %i.bni, label %bb.ot, label %bb.nk

bb.nk:                                            ; preds = %bb.nj, %bb.ni
  %i.bnj = getelementptr i8, ptr %.4.val1003611541, i64 -16
  %.sroa.03309.0.copyload = load i64, ptr %i.bnj, align 8, !tbaa !34 ; 4 uses
  %i.bnk = and i64 %.sroa.03309.0.copyload, -2
  %i.bnl = inttoptr i64 %i.bnk to ptr             ; 4 uses
  %i.bnm = getelementptr i8, ptr %i.bnl, i64 8
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !58
  %i.bno = icmp eq ptr %i.bnn, @PyTuple_Type
  br i1 %i.bno, label %bb.nq, label %bb.nl

bb.nl:                                            ; preds = %bb.nk
  %i.bnp = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1003611541, ptr %i.bnp, align 8, !tbaa !65
  %i.bnq = call i32 @_Py_Check_ArgsIterable(ptr noundef %0, ptr noundef nonnull %i.bnd, ptr noundef nonnull %i.bnl) #8
  %.4.val10247 = load ptr, ptr %i.bnp, align 8, !tbaa !65
  %i.bnr = icmp slt i32 %i.bnq, 0
  br i1 %i.bnr, label %.loopexit.loopexit, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %i.bns = call ptr @PySequence_Tuple(ptr noundef nonnull %i.bnl) #8 ; 4 uses
  %.4.val10246 = load ptr, ptr %i.bnp, align 8, !tbaa !65 ; 3 uses
  %i.bnt = icmp eq ptr %i.bns, null
  br i1 %i.bnt, label %.loopexit.loopexit, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bnu = getelementptr i8, ptr %i.bns, i64 6
  %i.bnv = load i16, ptr %i.bnu, align 2, !tbaa !34
  %i.bnw = and i16 %i.bnv, 1
  %i.bnx = ptrtoint ptr %i.bns to i64
  %i.bny = zext nneg i16 %i.bnw to i64
  %i.bnz = or i64 %i.bny, %i.bnx                  ; 2 uses
  %i.boa = getelementptr i8, ptr %.4.val10246, i64 -16
  store i64 %i.bnz, ptr %i.boa, align 8, !tbaa !34
  store ptr %.4.val10246, ptr %i.bnp, align 8, !tbaa !65
  %i.bob = and i64 %.sroa.03309.0.copyload, 1
  %.not.not.i10683 = icmp eq i64 %i.bob, 0
  br i1 %.not.not.i10683, label %bb.no, label %PyStackRef_CLOSE.exit10684

bb.no:                                            ; preds = %bb.nn
  %i.boc = inttoptr i64 %.sroa.03309.0.copyload to ptr ; 3 uses
  %i.bod = load i32, ptr %i.boc, align 8, !tbaa !34
  %i.boe = add i32 %i.bod, -1                     ; 2 uses
  store i32 %i.boe, ptr %i.boc, align 8, !tbaa !34
  %i.bof = icmp eq i32 %i.boe, 0
  br i1 %i.bof, label %bb.np, label %PyStackRef_CLOSE.exit10684

bb.np:                                            ; preds = %bb.no
  call void @_Py_Dealloc(ptr noundef nonnull %i.boc) #8
  br label %PyStackRef_CLOSE.exit10684

PyStackRef_CLOSE.exit10684:                       ; preds = %bb.nn, %bb.no, %bb.np
  %.4.val10245 = load ptr, ptr %i.bnp, align 8, !tbaa !65
  br label %bb.nq

bb.nq:                                            ; preds = %PyStackRef_CLOSE.exit10684, %bb.nk
  %.pre-phi13240 = phi ptr [ %i.bns, %PyStackRef_CLOSE.exit10684 ], [ %i.bnl, %bb.nk ]
  %.sroa.03309.0 = phi i64 [ %i.bnz, %PyStackRef_CLOSE.exit10684 ], [ %.sroa.03309.0.copyload, %bb.nk ] ; 3 uses
  %.89048 = phi ptr [ %.4.val10245, %PyStackRef_CLOSE.exit10684 ], [ %.4.val1003611541, %bb.nk ] ; 3 uses
  %i.bog = getelementptr i8, ptr %.89048, i64 -8
  %.sroa.03303.0.copyload = load i64, ptr %i.bog, align 8, !tbaa !34 ; 3 uses
  %i.boh = and i64 %.sroa.03303.0.copyload, -2
  %i.boi = inttoptr i64 %i.boh to ptr
  %i.boj = getelementptr i8, ptr %.89048, i64 -16
  store i64 %.sroa.03309.0, ptr %i.boj, align 8, !tbaa !34
  %i.bok = getelementptr i8, ptr %.4, i64 64      ; 10 uses
  store ptr %.89048, ptr %i.bok, align 8, !tbaa !65
  %i.bol = call ptr @PyObject_Call(ptr noundef nonnull %i.bnd, ptr noundef %.pre-phi13240, ptr noundef %i.boi) #8 ; 3 uses
  %.4.val10244 = load ptr, ptr %i.bok, align 8, !tbaa !65
  %i.bom = getelementptr i8, ptr %.4.val10244, i64 -8
  store ptr %i.bom, ptr %i.bok, align 8, !tbaa !65
  %i.bon = and i64 %.sroa.03303.0.copyload, 1
  %.not.not.i10685 = icmp eq i64 %i.bon, 0
  br i1 %.not.not.i10685, label %bb.nr, label %PyStackRef_XCLOSE.exit10686

bb.nr:                                            ; preds = %bb.nq
  %i.boo = inttoptr i64 %.sroa.03303.0.copyload to ptr ; 3 uses
  %i.bop = load i32, ptr %i.boo, align 8, !tbaa !34
  %i.boq = add i32 %i.bop, -1                     ; 2 uses
  store i32 %i.boq, ptr %i.boo, align 8, !tbaa !34
  %i.bor = icmp eq i32 %i.boq, 0
  br i1 %i.bor, label %bb.ns, label %PyStackRef_XCLOSE.exit10686

bb.ns:                                            ; preds = %bb.nr
  call void @_Py_Dealloc(ptr noundef nonnull %i.boo) #8
  br label %PyStackRef_XCLOSE.exit10686

PyStackRef_XCLOSE.exit10686:                      ; preds = %bb.nq, %bb.nr, %bb.ns
  %.4.val10243 = load ptr, ptr %i.bok, align 8, !tbaa !65
  %i.bos = getelementptr i8, ptr %.4.val10243, i64 -8
  store ptr %i.bos, ptr %i.bok, align 8, !tbaa !65
  %i.bot = and i64 %.sroa.03309.0, 1
  %.not.not.i10687 = icmp eq i64 %i.bot, 0
  br i1 %.not.not.i10687, label %bb.nt, label %PyStackRef_CLOSE.exit10688

bb.nt:                                            ; preds = %PyStackRef_XCLOSE.exit10686
  %i.bou = inttoptr i64 %.sroa.03309.0 to ptr     ; 3 uses
  %i.bov = load i32, ptr %i.bou, align 8, !tbaa !34
  %i.bow = add i32 %i.bov, -1                     ; 2 uses
  store i32 %i.bow, ptr %i.bou, align 8, !tbaa !34
  %i.box = icmp eq i32 %i.bow, 0
  br i1 %i.box, label %bb.nu, label %PyStackRef_CLOSE.exit10688

bb.nu:                                            ; preds = %bb.nt
  call void @_Py_Dealloc(ptr noundef nonnull %i.bou) #8
  br label %PyStackRef_CLOSE.exit10688

PyStackRef_CLOSE.exit10688:                       ; preds = %PyStackRef_XCLOSE.exit10686, %bb.nt, %bb.nu
  %.4.val10242 = load ptr, ptr %i.bok, align 8, !tbaa !65
  %i.boy = getelementptr i8, ptr %.4.val10242, i64 -16
  store ptr %i.boy, ptr %i.bok, align 8, !tbaa !65
  %i.boz = and i64 %.sroa.03315.0.copyload, 1
  %.not.not.i10689 = icmp eq i64 %i.boz, 0
  br i1 %.not.not.i10689, label %bb.nv, label %PyStackRef_CLOSE.exit10690

bb.nv:                                            ; preds = %PyStackRef_CLOSE.exit10688
  %i.bpa = inttoptr i64 %.sroa.03315.0.copyload to ptr ; 3 uses
  %i.bpb = load i32, ptr %i.bpa, align 8, !tbaa !34
  %i.bpc = add i32 %i.bpb, -1                     ; 2 uses
  store i32 %i.bpc, ptr %i.bpa, align 8, !tbaa !34
  %i.bpd = icmp eq i32 %i.bpc, 0
  br i1 %i.bpd, label %bb.nw, label %PyStackRef_CLOSE.exit10690

bb.nw:                                            ; preds = %bb.nv
  call void @_Py_Dealloc(ptr noundef nonnull %i.bpa) #8
  br label %PyStackRef_CLOSE.exit10690

PyStackRef_CLOSE.exit10690:                       ; preds = %PyStackRef_CLOSE.exit10688, %bb.nv, %bb.nw
  %.4.val10241 = load ptr, ptr %i.bok, align 8, !tbaa !65 ; 3 uses
  %i.bpe = icmp eq ptr %i.bol, null
  br i1 %i.bpe, label %.loopexit.loopexit, label %bb.nx

bb.nx:                                            ; preds = %PyStackRef_CLOSE.exit10690
  %i.bpf = getelementptr i8, ptr %i.bol, i64 6
  %i.bpg = load i16, ptr %i.bpf, align 2, !tbaa !34
  %i.bph = and i16 %i.bpg, 1
  %i.bpi = ptrtoint ptr %i.bol to i64
  %i.bpj = zext nneg i16 %i.bph to i64
  %i.bpk = or i64 %i.bpj, %i.bpi
  store i64 %i.bpk, ptr %.4.val10241, align 8, !tbaa !34
  %i.bpl = getelementptr i8, ptr %.4.val10241, i64 8 ; 2 uses
  store ptr %i.bpl, ptr %i.bok, align 8, !tbaa !65
  %i.bpm = load atomic i64, ptr %i.lrd monotonic, align 8
  %i.bpn = and i64 %i.bpm, 255
  %.not.i10691 = icmp eq i64 %i.bpn, 0
  br i1 %.not.i10691, label %check_periodics.exit10693.thread, label %check_periodics.exit10693

check_periodics.exit10693:                        ; preds = %bb.nx
  %i.bpo = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10240 = load ptr, ptr %i.bok, align 8, !tbaa !65 ; 2 uses
  %.not9573 = icmp eq i32 %i.bpo, 0
  br i1 %.not9573, label %check_periodics.exit10693.thread, label %.loopexit.loopexit

check_periodics.exit10693.thread:                 ; preds = %bb.nx, %check_periodics.exit10693
  %.4.val1024011472 = phi ptr [ %.4.val10240, %check_periodics.exit10693 ], [ %i.bpl, %bb.nx ]
  %i.bpp = load i16, ptr %i.bna, align 2, !tbaa !66 ; 2 uses
  %.sroa.23284.0.extract.shift = lshr i16 %i.bpp, 8
  %.sroa.23284.0.extract.trunc = zext nneg i16 %.sroa.23284.0.extract.shift to i32
  %i.bpq = and i16 %i.bpp, 255
  %i.bpr = zext nneg i16 %i.bpq to i64
  br label %.backedge.backedge

bb.ny:                                            ; preds = %.backedge
  %i.bps = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.bps, align 8, !tbaa !47
  %i.bpt = getelementptr i8, ptr %.32, i64 4      ; 6 uses
  %i.bpu = load ptr, ptr %i.lre, align 8, !tbaa !46
  %i.bpv = getelementptr i8, ptr %i.bpu, i64 8568
  %i.bpw = load ptr, ptr %i.bpv, align 8, !tbaa !79
  %.not9569 = icmp eq ptr %i.bpw, null
  br i1 %.not9569, label %bb.nz, label %bb.ot

bb.nz:                                            ; preds = %bb.ny
  %i.bpx = getelementptr i8, ptr %.4.val1003611541, i64 -16
  %.sroa.03276.0.copyload = load i64, ptr %i.bpx, align 8, !tbaa !34 ; 4 uses
  %i.bpy = getelementptr i8, ptr %.4.val1003611541, i64 -32
  %.sroa.03280.0.copyload = load i64, ptr %i.bpy, align 8, !tbaa !34 ; 3 uses
  %i.bpz = and i64 %.sroa.03276.0.copyload, -2
  %i.bqa = inttoptr i64 %i.bpz to ptr             ; 3 uses
  %i.bqb = getelementptr i8, ptr %i.bqa, i64 8
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !58
  %i.bqd = icmp eq ptr %i.bqc, @PyTuple_Type
  br i1 %i.bqd, label %._crit_edge13241, label %bb.oa

._crit_edge13241:                                 ; preds = %bb.nz
  %.pre13252 = and i64 %.sroa.03280.0.copyload, -2
  %.pre13254 = inttoptr i64 %.pre13252 to ptr
  br label %bb.of

bb.oa:                                            ; preds = %bb.nz
  %i.bqe = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1003611541, ptr %i.bqe, align 8, !tbaa !65
  %i.bqf = and i64 %.sroa.03280.0.copyload, -2
  %i.bqg = inttoptr i64 %i.bqf to ptr             ; 2 uses
  %i.bqh = call i32 @_Py_Check_ArgsIterable(ptr noundef nonnull %0, ptr noundef %i.bqg, ptr noundef nonnull %i.bqa) #8
  %.4.val10239 = load ptr, ptr %i.bqe, align 8, !tbaa !65
  %i.bqi = icmp slt i32 %i.bqh, 0
  br i1 %i.bqi, label %.loopexit.loopexit, label %bb.ob

bb.ob:                                            ; preds = %bb.oa
  %i.bqj = call ptr @PySequence_Tuple(ptr noundef nonnull %i.bqa) #8 ; 3 uses
  %.4.val10238 = load ptr, ptr %i.bqe, align 8, !tbaa !65 ; 3 uses
  %i.bqk = icmp eq ptr %i.bqj, null
  br i1 %i.bqk, label %.loopexit.loopexit, label %bb.oc

bb.oc:                                            ; preds = %bb.ob
  %i.bql = getelementptr i8, ptr %i.bqj, i64 6
  %i.bqm = load i16, ptr %i.bql, align 2, !tbaa !34
  %i.bqn = and i16 %i.bqm, 1
  %i.bqo = ptrtoint ptr %i.bqj to i64
  %i.bqp = zext nneg i16 %i.bqn to i64
  %i.bqq = or i64 %i.bqp, %i.bqo                  ; 2 uses
  %i.bqr = getelementptr i8, ptr %.4.val10238, i64 -16
  store i64 %i.bqq, ptr %i.bqr, align 8, !tbaa !34
  store ptr %.4.val10238, ptr %i.bqe, align 8, !tbaa !65
  %i.bqs = and i64 %.sroa.03276.0.copyload, 1
  %.not.not.i10694 = icmp eq i64 %i.bqs, 0
  br i1 %.not.not.i10694, label %bb.od, label %PyStackRef_CLOSE.exit10695

bb.od:                                            ; preds = %bb.oc
  %i.bqt = inttoptr i64 %.sroa.03276.0.copyload to ptr ; 3 uses
  %i.bqu = load i32, ptr %i.bqt, align 8, !tbaa !34
  %i.bqv = add i32 %i.bqu, -1                     ; 2 uses
  store i32 %i.bqv, ptr %i.bqt, align 8, !tbaa !34
  %i.bqw = icmp eq i32 %i.bqv, 0
  br i1 %i.bqw, label %bb.oe, label %PyStackRef_CLOSE.exit10695

bb.oe:                                            ; preds = %bb.od
  call void @_Py_Dealloc(ptr noundef nonnull %i.bqt) #8
  br label %PyStackRef_CLOSE.exit10695

PyStackRef_CLOSE.exit10695:                       ; preds = %bb.oc, %bb.od, %bb.oe
  %.4.val10237 = load ptr, ptr %i.bqe, align 8, !tbaa !65
  br label %bb.of

bb.of:                                            ; preds = %._crit_edge13241, %PyStackRef_CLOSE.exit10695
  %.pre-phi13255 = phi ptr [ %.pre13254, %._crit_edge13241 ], [ %i.bqg, %PyStackRef_CLOSE.exit10695 ] ; 4 uses
  %.sroa.03276.0 = phi i64 [ %.sroa.03276.0.copyload, %._crit_edge13241 ], [ %i.bqq, %PyStackRef_CLOSE.exit10695 ] ; 3 uses
  %.99049 = phi ptr [ %.4.val1003611541, %._crit_edge13241 ], [ %.4.val10237, %PyStackRef_CLOSE.exit10695 ] ; 4 uses
  %i.bqx = getelementptr i8, ptr %.pre-phi13255, i64 8
  %.val9883 = load ptr, ptr %i.bqx, align 8, !tbaa !58
  %.not9570 = icmp eq ptr %.val9883, @PyFunction_Type
  br i1 %.not9570, label %bb.og, label %bb.ot

bb.og:                                            ; preds = %bb.of
  %i.bqy = getelementptr i8, ptr %.pre-phi13255, i64 136
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !182
  %.not9571 = icmp eq ptr %i.bqz, @_PyFunction_Vectorcall
  br i1 %.not9571, label %bb.oh, label %bb.ot

bb.oh:                                            ; preds = %bb.og
  %i.bra = getelementptr i8, ptr %.99049, i64 -8
  %.sroa.03270.0.copyload = load i64, ptr %i.bra, align 8, !tbaa !34 ; 4 uses
  %i.brb = and i64 %.sroa.03276.0, 1
  %.not.not.i10696 = icmp eq i64 %i.brb, 0
  br i1 %.not.not.i10696, label %bb.oi, label %bb.oj

end_hunk_0
begin_hunk_1_@Test_EvalFrame:bb.a
  %i.fgh = and i64 %.sroa.02034.0.copyload, 1
  %.not.not.i10964 = icmp eq i64 %i.fgh, 0
  br i1 %.not.not.i10964, label %bb.ahx, label %PyStackRef_CLOSE.exit10965

bb.ahx:                                           ; preds = %_PyStackRef_FromPyObjectNew.exit10963
  %i.fgi = inttoptr i64 %.sroa.02034.0.copyload to ptr ; 3 uses
  %i.fgj = load i32, ptr %i.fgi, align 8, !tbaa !34
  %i.fgk = add i32 %i.fgj, -1                     ; 2 uses
  store i32 %i.fgk, ptr %i.fgi, align 8, !tbaa !34
  %i.fgl = icmp eq i32 %i.fgk, 0
  br i1 %i.fgl, label %bb.ahy, label %PyStackRef_CLOSE.exit10965

bb.ahy:                                           ; preds = %bb.ahx
  call void @_Py_Dealloc(ptr noundef nonnull %i.fgi) #8
  br label %PyStackRef_CLOSE.exit10965

PyStackRef_CLOSE.exit10965:                       ; preds = %_PyStackRef_FromPyObjectNew.exit10963, %bb.ahx, %bb.ahy
  %.4.val10098 = load ptr, ptr %i.fgg, align 8, !tbaa !65
  br label %PyStackRef_TYPE.exit10957.thread

PyStackRef_TYPE.exit10957.thread:                 ; preds = %bb.ahr, %PyStackRef_CLOSE.exit10965, %PyStackRef_TYPE.exit10957
  %.sroa.02029.0 = phi i64 [ %.sroa.0.0.i10959, %PyStackRef_CLOSE.exit10965 ], [ %.sroa.02029.0.copyload, %PyStackRef_TYPE.exit10957 ], [ %.sroa.02029.0.copyload, %bb.ahr ] ; 3 uses
  %.sroa.02034.0 = phi i64 [ %.sroa.0.0.i10962, %PyStackRef_CLOSE.exit10965 ], [ %.sroa.02034.0.copyload, %PyStackRef_TYPE.exit10957 ], [ %.sroa.02034.0.copyload, %bb.ahr ] ; 2 uses
  %.229062 = phi ptr [ %.4.val10098, %PyStackRef_CLOSE.exit10965 ], [ %.4.val1003611541, %PyStackRef_TYPE.exit10957 ], [ %.4.val1003611541, %bb.ahr ] ; 4 uses
  %i.fgm = sub i32 0, %.09034
  %i.fgn = sext i32 %i.fgm to i64                 ; 2 uses
  %i.fgo = getelementptr [8 x i8], ptr %.229062, i64 %i.fgn
  %.not9430 = icmp eq i64 %.sroa.02029.0, 1
  %i.fgp = and i64 %.sroa.02034.0, -2
  %i.fgq = inttoptr i64 %i.fgp to ptr
  br i1 %.not9430, label %bb.aia, label %bb.ahz

bb.ahz:                                           ; preds = %PyStackRef_TYPE.exit10957.thread
  %i.fgr = and i64 %.sroa.02029.0, -2
  %i.fgs = inttoptr i64 %i.fgr to ptr
  br label %bb.aic

bb.aia:                                           ; preds = %PyStackRef_TYPE.exit10957.thread
  %.not9431 = icmp eq i32 %.09034, 0
  br i1 %.not9431, label %bb.aic, label %bb.aib

bb.aib:                                           ; preds = %bb.aia
  %i.fgt = load i64, ptr %i.fgo, align 8
  %i.fgu = and i64 %i.fgt, -2
  %i.fgv = inttoptr i64 %i.fgu to ptr
  br label %bb.aic

bb.aic:                                           ; preds = %bb.aia, %bb.aib, %bb.ahz
  %.09122 = phi ptr [ %i.fgs, %bb.ahz ], [ %i.fgv, %bb.aib ], [ @_PyInstrumentation_MISSING, %bb.aia ]
  %i.fgw = getelementptr [8 x i8], ptr %.229062, i64 %i.ffj
  store i64 %.sroa.02034.0, ptr %i.fgw, align 8, !tbaa !34
  %i.fgx = getelementptr [8 x i8], ptr %.229062, i64 %i.ffg
  store i64 %.sroa.02029.0, ptr %i.fgx, align 8, !tbaa !34
  %i.fgy = getelementptr i8, ptr %.4, i64 64      ; 8 uses
  store ptr %.229062, ptr %i.fgy, align 8, !tbaa !65
  %i.fgz = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %i.fgq, ptr noundef %.09122) #8
  %.4.val10097 = load ptr, ptr %i.fgy, align 8, !tbaa !65 ; 5 uses
  %.not9432 = icmp eq i32 %i.fgz, 0
  br i1 %.not9432, label %bb.aid, label %.loopexit.loopexit

bb.aid:                                           ; preds = %bb.aic
  %i.fha = getelementptr [8 x i8], ptr %.4.val10097, i64 %i.fgn
  %i.fhb = getelementptr [8 x i8], ptr %.4.val10097, i64 %i.ffg
  %.sroa.02029.0.copyload2031 = load i64, ptr %i.fhb, align 8, !tbaa !34
  %i.fhc = getelementptr [8 x i8], ptr %.4.val10097, i64 %i.ffj
  %.sroa.02034.0.copyload2037 = load i64, ptr %i.fhc, align 8, !tbaa !34 ; 3 uses
  %i.fhd = and i64 %.sroa.02034.0.copyload2037, -2
  %i.fhe = inttoptr i64 %i.fhd to ptr             ; 4 uses
  %i.fhf = icmp ne i64 %.sroa.02029.0.copyload2031, 1 ; 2 uses
  %.09124.idx = select i1 %i.fhf, i64 -8, i64 0
  %.09124 = getelementptr i8, ptr %i.fha, i64 %.09124.idx ; 2 uses
  %i.fhg = zext i1 %i.fhf to i32
  %.09123 = add i32 %.09034, %i.fhg               ; 2 uses
  %i.fhh = getelementptr i8, ptr %i.fhe, i64 8
  %.val9863 = load ptr, ptr %i.fhh, align 8, !tbaa !58
  %i.fhi = icmp eq ptr %.val9863, @PyFunction_Type
  br i1 %i.fhi, label %bb.aie, label %bb.aik

bb.aie:                                           ; preds = %bb.aid
  %i.fhj = load ptr, ptr %i.lre, align 8, !tbaa !46
  %i.fhk = getelementptr i8, ptr %i.fhj, i64 8568
  %i.fhl = load ptr, ptr %i.fhk, align 8, !tbaa !79
  %.not9433 = icmp eq ptr %i.fhl, null
  br i1 %.not9433, label %bb.aif, label %bb.aik

bb.aif:                                           ; preds = %bb.aie
  %i.fhm = getelementptr i8, ptr %i.fhe, i64 136
  %i.fhn = load ptr, ptr %i.fhm, align 8, !tbaa !182
  %i.fho = icmp eq ptr %i.fhn, @_PyFunction_Vectorcall
  br i1 %i.fho, label %bb.aig, label %bb.aik

bb.aig:                                           ; preds = %bb.aif
  %i.fhp = getelementptr i8, ptr %i.fhe, i64 48
  %.val10356 = load ptr, ptr %i.fhp, align 8, !tbaa !159
  %i.fhq = getelementptr i8, ptr %.val10356, i64 48
  %i.fhr = load i32, ptr %i.fhq, align 8, !tbaa !48
  %i.fhs = and i32 %i.fhr, 1
  %.not9434 = icmp eq i32 %i.fhs, 0
  br i1 %.not9434, label %bb.aih, label %_Py_NewRef.exit10966

bb.aih:                                           ; preds = %bb.aig
  %i.fht = getelementptr i8, ptr %i.fhe, i64 16
  %.val10391 = load ptr, ptr %i.fht, align 8, !tbaa !183 ; 4 uses
  %i.fhu = load i32, ptr %.val10391, align 8, !tbaa !34 ; 2 uses
  %i.fhv = icmp ugt i32 %i.fhu, -1073741825
  br i1 %i.fhv, label %_Py_NewRef.exit10966, label %bb.aii

bb.aii:                                           ; preds = %bb.aih
  %i.fhw = add nuw i32 %i.fhu, 1
  store i32 %i.fhw, ptr %.val10391, align 8, !tbaa !34
  br label %_Py_NewRef.exit10966

_Py_NewRef.exit10966:                             ; preds = %bb.aii, %bb.aih, %bb.aig
  %i.fhx = phi ptr [ null, %bb.aig ], [ %.val10391, %bb.aih ], [ %.val10391, %bb.aii ]
  store ptr %.4.val10097, ptr %i.fgy, align 8, !tbaa !65
  %i.fhy = sext i32 %.09123 to i64
  %i.fhz = call ptr @_PyEvalFramePushAndInit(ptr noundef nonnull %0, i64 %.sroa.02034.0.copyload2037, ptr noundef %i.fhx, ptr noundef %.09124, i64 noundef %i.fhy, ptr noundef null, ptr noundef nonnull %.4) #8 ; 2 uses
  %.4.val10096 = load ptr, ptr %i.fgy, align 8, !tbaa !65
  %i.fia = getelementptr [8 x i8], ptr %.4.val10096, i64 %i.ffj ; 2 uses
  %i.fib = icmp eq ptr %i.fhz, null
  br i1 %i.fib, label %.loopexit, label %bb.aij

bb.aij:                                           ; preds = %_Py_NewRef.exit10966
  %i.fic = getelementptr i8, ptr %.4, i64 72
  store i16 4, ptr %i.fic, align 8, !tbaa !165
  store ptr %i.fia, ptr %i.fgy, align 8, !tbaa !65
  br label %.sink.split

bb.aik:                                           ; preds = %bb.aif, %bb.aie, %bb.aid
  %i.fid = call ptr @_Py_VectorCallInstrumentation_StackRefSteal(i64 %.sroa.02034.0.copyload2037, ptr noundef %.09124, i32 noundef %.09123, i64 1, i1 noundef zeroext true, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %0) #8 ; 3 uses
  %.4.val10095 = load ptr, ptr %i.fgy, align 8, !tbaa !65 ; 3 uses
  %i.fie = icmp eq ptr %i.fid, null
  br i1 %i.fie, label %bb.ail, label %bb.aim

bb.ail:                                           ; preds = %bb.aik
  %i.fif = getelementptr [8 x i8], ptr %.4.val10095, i64 %i.ffj
  br label %.loopexit

bb.aim:                                           ; preds = %bb.aik
  %i.fig = getelementptr i8, ptr %i.fid, i64 6
  %i.fih = load i16, ptr %i.fig, align 2, !tbaa !34
  %i.fii = and i16 %i.fih, 1
  %i.fij = ptrtoint ptr %i.fid to i64
  %i.fik = zext nneg i16 %i.fii to i64
  %i.fil = or i64 %i.fik, %i.fij
  %i.fim = getelementptr [8 x i8], ptr %.4.val10095, i64 %i.ffj
  store i64 %i.fil, ptr %i.fim, align 8, !tbaa !34
  %i.fin = getelementptr [8 x i8], ptr %.4.val10095, i64 %i.ffg ; 2 uses
  store ptr %i.fin, ptr %i.fgy, align 8, !tbaa !65
  %i.fio = load atomic i64, ptr %i.lrd monotonic, align 8
  %i.fip = and i64 %i.fio, 255
  %.not.i10967 = icmp eq i64 %i.fip, 0
  br i1 %.not.i10967, label %check_periodics.exit10969.thread, label %check_periodics.exit10969

check_periodics.exit10969:                        ; preds = %bb.aim
  %i.fiq = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10094 = load ptr, ptr %i.fgy, align 8, !tbaa !65 ; 2 uses
  %.not9435 = icmp eq i32 %i.fiq, 0
  br i1 %.not9435, label %check_periodics.exit10969.thread, label %.loopexit.loopexit

check_periodics.exit10969.thread:                 ; preds = %bb.aim, %check_periodics.exit10969
  %.4.val1009411522 = phi ptr [ %.4.val10094, %check_periodics.exit10969 ], [ %i.fin, %bb.aim ]
  %i.fir = load i16, ptr %i.ffe, align 2, !tbaa !66 ; 2 uses
  %.sroa.21991.0.extract.shift = lshr i16 %i.fir, 8
  %.sroa.21991.0.extract.trunc = zext nneg i16 %.sroa.21991.0.extract.shift to i32
  %i.fis = and i16 %i.fir, 255
  %i.fit = zext nneg i16 %i.fis to i64
  br label %.backedge.backedge

bb.ain:                                           ; preds = %.backedge
  %i.fiu = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fiu, align 8, !tbaa !47
  %i.fiv = getelementptr i8, ptr %.32, i64 4      ; 7 uses
  %i.fiw = getelementptr i8, ptr %.4.val1003611541, i64 -16
  %.sroa.01981.0.copyload = load i64, ptr %i.fiw, align 8, !tbaa !34 ; 4 uses
  %i.fix = getelementptr i8, ptr %.4.val1003611541, i64 -32
  %.sroa.01985.0.copyload = load i64, ptr %i.fix, align 8, !tbaa !34 ; 4 uses
  %i.fiy = and i64 %.sroa.01981.0.copyload, -2
  %i.fiz = inttoptr i64 %i.fiy to ptr             ; 4 uses
  %i.fja = getelementptr i8, ptr %i.fiz, i64 8
  %i.fjb = load ptr, ptr %i.fja, align 8, !tbaa !58
  %i.fjc = icmp eq ptr %i.fjb, @PyTuple_Type
  br i1 %i.fjc, label %._crit_edge13242, label %bb.aio

._crit_edge13242:                                 ; preds = %bb.ain
  %.pre13248 = and i64 %.sroa.01985.0.copyload, -2
  %.pre13250 = inttoptr i64 %.pre13248 to ptr
  br label %bb.ait

bb.aio:                                           ; preds = %bb.ain
  %i.fjd = getelementptr i8, ptr %.4, i64 64      ; 5 uses
  store ptr %.4.val1003611541, ptr %i.fjd, align 8, !tbaa !65
  %i.fje = and i64 %.sroa.01985.0.copyload, -2
  %i.fjf = inttoptr i64 %i.fje to ptr             ; 2 uses
  %i.fjg = call i32 @_Py_Check_ArgsIterable(ptr noundef %0, ptr noundef %i.fjf, ptr noundef nonnull %i.fiz) #8
  %.4.val10093 = load ptr, ptr %i.fjd, align 8, !tbaa !65
  %i.fjh = icmp slt i32 %i.fjg, 0
  br i1 %i.fjh, label %.loopexit.loopexit, label %bb.aip

bb.aip:                                           ; preds = %bb.aio
  %i.fji = call ptr @PySequence_Tuple(ptr noundef nonnull %i.fiz) #8 ; 4 uses
  %.4.val10092 = load ptr, ptr %i.fjd, align 8, !tbaa !65 ; 3 uses
  %i.fjj = icmp eq ptr %i.fji, null
  br i1 %i.fjj, label %.loopexit.loopexit, label %bb.aiq

bb.aiq:                                           ; preds = %bb.aip
  %i.fjk = getelementptr i8, ptr %i.fji, i64 6
  %i.fjl = load i16, ptr %i.fjk, align 2, !tbaa !34
  %i.fjm = and i16 %i.fjl, 1
  %i.fjn = ptrtoint ptr %i.fji to i64
  %i.fjo = zext nneg i16 %i.fjm to i64
  %i.fjp = or i64 %i.fjo, %i.fjn                  ; 2 uses
  %i.fjq = getelementptr i8, ptr %.4.val10092, i64 -16
  store i64 %i.fjp, ptr %i.fjq, align 8, !tbaa !34
  store ptr %.4.val10092, ptr %i.fjd, align 8, !tbaa !65
  %i.fjr = and i64 %.sroa.01981.0.copyload, 1
  %.not.not.i10970 = icmp eq i64 %i.fjr, 0
  br i1 %.not.not.i10970, label %bb.air, label %PyStackRef_CLOSE.exit10971

bb.air:                                           ; preds = %bb.aiq
  %i.fjs = inttoptr i64 %.sroa.01981.0.copyload to ptr ; 3 uses
  %i.fjt = load i32, ptr %i.fjs, align 8, !tbaa !34
  %i.fju = add i32 %i.fjt, -1                     ; 2 uses
  store i32 %i.fju, ptr %i.fjs, align 8, !tbaa !34
  %i.fjv = icmp eq i32 %i.fju, 0
  br i1 %i.fjv, label %bb.ais, label %PyStackRef_CLOSE.exit10971

bb.ais:                                           ; preds = %bb.air
  call void @_Py_Dealloc(ptr noundef nonnull %i.fjs) #8
  br label %PyStackRef_CLOSE.exit10971

PyStackRef_CLOSE.exit10971:                       ; preds = %bb.aiq, %bb.air, %bb.ais
  %.4.val10091 = load ptr, ptr %i.fjd, align 8, !tbaa !65
  br label %bb.ait

bb.ait:                                           ; preds = %._crit_edge13242, %PyStackRef_CLOSE.exit10971
  %.pre-phi13251 = phi ptr [ %.pre13250, %._crit_edge13242 ], [ %i.fjf, %PyStackRef_CLOSE.exit10971 ] ; 5 uses
  %.pre-phi13236 = phi ptr [ %i.fiz, %._crit_edge13242 ], [ %i.fji, %PyStackRef_CLOSE.exit10971 ] ; 3 uses
  %.sroa.01981.0 = phi i64 [ %.sroa.01981.0.copyload, %._crit_edge13242 ], [ %i.fjp, %PyStackRef_CLOSE.exit10971 ] ; 3 uses
  %.239063 = phi ptr [ %.4.val1003611541, %._crit_edge13242 ], [ %.4.val10091, %PyStackRef_CLOSE.exit10971 ] ; 3 uses
  %i.fjw = getelementptr i8, ptr %.239063, i64 -8
  %.sroa.01966.0.copyload = load i64, ptr %i.fjw, align 8, !tbaa !34 ; 3 uses
  %i.fjx = and i64 %.sroa.01966.0.copyload, -2
  %i.fjy = inttoptr i64 %i.fjx to ptr
  %i.fjz = getelementptr i8, ptr %.pre-phi13236, i64 16
  %.val10382 = load i64, ptr %i.fjz, align 8, !tbaa !170
  %i.fka = icmp sgt i64 %.val10382, 0
  br i1 %i.fka, label %bb.aiu, label %bb.aiv

bb.aiu:                                           ; preds = %bb.ait
  %i.fkb = getelementptr i8, ptr %.pre-phi13236, i64 32
  %i.fkc = load ptr, ptr %i.fkb, align 8, !tbaa !78
  br label %bb.aiv

bb.aiv:                                           ; preds = %bb.ait, %bb.aiu
  %i.fkd = phi ptr [ %i.fkc, %bb.aiu ], [ @_PyInstrumentation_MISSING, %bb.ait ] ; 3 uses
  %i.fke = getelementptr i8, ptr %.239063, i64 -16
  store i64 %.sroa.01981.0, ptr %i.fke, align 8, !tbaa !34
  %i.fkf = getelementptr i8, ptr %.4, i64 64      ; 11 uses
  store ptr %.239063, ptr %i.fkf, align 8, !tbaa !65
  %i.fkg = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef %.pre-phi13251, ptr noundef %i.fkd) #8
  %.4.val10090 = load ptr, ptr %i.fkf, align 8, !tbaa !65
  %.not9626 = icmp eq i32 %i.fkg, 0
  br i1 %.not9626, label %bb.aiw, label %.loopexit.loopexit

bb.aiw:                                           ; preds = %bb.aiv
  %i.fkh = call ptr @PyObject_Call(ptr noundef %.pre-phi13251, ptr noundef nonnull %.pre-phi13236, ptr noundef %i.fjy) #8 ; 8 uses
  %i.fki = getelementptr i8, ptr %.pre-phi13251, i64 8
  %i.fkj = load ptr, ptr %i.fki, align 8, !tbaa !58 ; 2 uses
  %i.fkk = icmp eq ptr %i.fkj, @PyFunction_Type
  %i.fkl = icmp eq ptr %i.fkj, @PyMethod_Type
  %or.cond9744 = or i1 %i.fkk, %i.fkl
  br i1 %or.cond9744, label %bb.ajf, label %bb.aix

bb.aix:                                           ; preds = %bb.aiw
  %i.fkm = icmp eq ptr %i.fkh, null
  br i1 %i.fkm, label %bb.aiy, label %bb.aiz

bb.aiy:                                           ; preds = %bb.aix
  call void @_Py_call_instrumentation_exc2(ptr noundef %0, i32 noundef 17, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef nonnull %.pre-phi13251, ptr noundef %i.fkd) #8
  br label %bb.ajf

bb.aiz:                                           ; preds = %bb.aix
  %i.fkn = call i32 @_Py_call_instrumentation_2args(ptr noundef %0, i32 noundef 16, ptr noundef nonnull %.4, ptr noundef %.32, ptr noundef nonnull %.pre-phi13251, ptr noundef %i.fkd) #8
  %i.fko = icmp slt i32 %i.fkn, 0
  br i1 %i.fko, label %bb.aja, label %bb.ajf

bb.aja:                                           ; preds = %bb.aiz
  %i.fkp = load i32, ptr %i.fkh, align 8, !tbaa !34 ; 2 uses
  %.not9627 = icmp sgt i32 %i.fkp, -1
  br i1 %.not9627, label %bb.ajb, label %bb.ajf

bb.ajb:                                           ; preds = %bb.aja
  %i.fkq = add nsw i32 %i.fkp, -1                 ; 2 uses
  store i32 %i.fkq, ptr %i.fkh, align 8, !tbaa !34
  %i.fkr = icmp eq i32 %i.fkq, 0
  br i1 %i.fkr, label %bb.ajc, label %bb.ajf

bb.ajc:                                           ; preds = %bb.ajb
  %i.fks = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not9628 = icmp eq ptr %i.fks, null
  br i1 %.not9628, label %bb.aje, label %bb.ajd

bb.ajd:                                           ; preds = %bb.ajc
  %i.fkt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.fku = call i32 %i.fks(ptr noundef nonnull %i.fkh, i32 noundef 1, ptr noundef %i.fkt) #8 ; 0 uses
  br label %bb.aje

bb.aje:                                           ; preds = %bb.ajc, %bb.ajd
  %i.fkv = getelementptr i8, ptr %i.fkh, i64 8
  %.val9862 = load ptr, ptr %i.fkv, align 8, !tbaa !58
  %i.fkw = getelementptr i8, ptr %.val9862, i64 48
  %i.fkx = load ptr, ptr %i.fkw, align 8, !tbaa !59
  call void %i.fkx(ptr noundef nonnull %i.fkh) #8
  br label %bb.ajf

bb.ajf:                                           ; preds = %bb.aja, %bb.aje, %bb.ajb, %bb.aiw, %bb.aiz, %bb.aiy
  %.19172 = phi ptr [ %i.fkh, %bb.aiw ], [ %i.fkh, %bb.aiz ], [ null, %bb.aiy ], [ null, %bb.ajb ], [ null, %bb.aje ], [ null, %bb.aja ] ; 3 uses
  %.249064 = load ptr, ptr %i.fkf, align 8, !tbaa !65
  %i.fky = getelementptr i8, ptr %.249064, i64 -8
  store ptr %i.fky, ptr %i.fkf, align 8, !tbaa !65
  %i.fkz = and i64 %.sroa.01966.0.copyload, 1
  %.not.not.i10972 = icmp eq i64 %i.fkz, 0
  br i1 %.not.not.i10972, label %bb.ajg, label %PyStackRef_XCLOSE.exit10973

bb.ajg:                                           ; preds = %bb.ajf
  %i.fla = inttoptr i64 %.sroa.01966.0.copyload to ptr ; 3 uses
  %i.flb = load i32, ptr %i.fla, align 8, !tbaa !34
  %i.flc = add i32 %i.flb, -1                     ; 2 uses
  store i32 %i.flc, ptr %i.fla, align 8, !tbaa !34
  %i.fld = icmp eq i32 %i.flc, 0
  br i1 %i.fld, label %bb.ajh, label %PyStackRef_XCLOSE.exit10973

bb.ajh:                                           ; preds = %bb.ajg
  call void @_Py_Dealloc(ptr noundef nonnull %i.fla) #8
  br label %PyStackRef_XCLOSE.exit10973

PyStackRef_XCLOSE.exit10973:                      ; preds = %bb.ajf, %bb.ajg, %bb.ajh
  %.4.val10085 = load ptr, ptr %i.fkf, align 8, !tbaa !65
  %i.fle = getelementptr i8, ptr %.4.val10085, i64 -8
  store ptr %i.fle, ptr %i.fkf, align 8, !tbaa !65
  %i.flf = and i64 %.sroa.01981.0, 1
  %.not.not.i10974 = icmp eq i64 %i.flf, 0
  br i1 %.not.not.i10974, label %bb.aji, label %PyStackRef_CLOSE.exit10975

bb.aji:                                           ; preds = %PyStackRef_XCLOSE.exit10973
  %i.flg = inttoptr i64 %.sroa.01981.0 to ptr     ; 3 uses
  %i.flh = load i32, ptr %i.flg, align 8, !tbaa !34
  %i.fli = add i32 %i.flh, -1                     ; 2 uses
  store i32 %i.fli, ptr %i.flg, align 8, !tbaa !34
  %i.flj = icmp eq i32 %i.fli, 0
  br i1 %i.flj, label %bb.ajj, label %PyStackRef_CLOSE.exit10975

bb.ajj:                                           ; preds = %bb.aji
  call void @_Py_Dealloc(ptr noundef nonnull %i.flg) #8
  br label %PyStackRef_CLOSE.exit10975

PyStackRef_CLOSE.exit10975:                       ; preds = %PyStackRef_XCLOSE.exit10973, %bb.aji, %bb.ajj
  %.4.val10084 = load ptr, ptr %i.fkf, align 8, !tbaa !65
  %i.flk = getelementptr i8, ptr %.4.val10084, i64 -16
  store ptr %i.flk, ptr %i.fkf, align 8, !tbaa !65
  %i.fll = and i64 %.sroa.01985.0.copyload, 1
  %.not.not.i10976 = icmp eq i64 %i.fll, 0
  br i1 %.not.not.i10976, label %bb.ajk, label %PyStackRef_CLOSE.exit10977

bb.ajk:                                           ; preds = %PyStackRef_CLOSE.exit10975
  %i.flm = inttoptr i64 %.sroa.01985.0.copyload to ptr ; 3 uses
  %i.fln = load i32, ptr %i.flm, align 8, !tbaa !34
  %i.flo = add i32 %i.fln, -1                     ; 2 uses
  store i32 %i.flo, ptr %i.flm, align 8, !tbaa !34
  %i.flp = icmp eq i32 %i.flo, 0
  br i1 %i.flp, label %bb.ajl, label %PyStackRef_CLOSE.exit10977

bb.ajl:                                           ; preds = %bb.ajk
  call void @_Py_Dealloc(ptr noundef nonnull %i.flm) #8
  br label %PyStackRef_CLOSE.exit10977

PyStackRef_CLOSE.exit10977:                       ; preds = %PyStackRef_CLOSE.exit10975, %bb.ajk, %bb.ajl
  %.4.val10083 = load ptr, ptr %i.fkf, align 8, !tbaa !65 ; 3 uses
  %i.flq = icmp eq ptr %.19172, null
  br i1 %i.flq, label %.loopexit.loopexit, label %bb.ajm

bb.ajm:                                           ; preds = %PyStackRef_CLOSE.exit10977
  %i.flr = getelementptr i8, ptr %.19172, i64 6
  %i.fls = load i16, ptr %i.flr, align 2, !tbaa !34
  %i.flt = and i16 %i.fls, 1
  %i.flu = ptrtoint ptr %.19172 to i64
  %i.flv = zext nneg i16 %i.flt to i64
  %i.flw = or i64 %i.flv, %i.flu
  store i64 %i.flw, ptr %.4.val10083, align 8, !tbaa !34
  %i.flx = getelementptr i8, ptr %.4.val10083, i64 8 ; 2 uses
  store ptr %i.flx, ptr %i.fkf, align 8, !tbaa !65
  %i.fly = load atomic i64, ptr %i.lrd monotonic, align 8
  %i.flz = and i64 %i.fly, 255
  %.not.i10978 = icmp eq i64 %i.flz, 0
  br i1 %.not.i10978, label %check_periodics.exit10980.thread, label %check_periodics.exit10980

check_periodics.exit10980:                        ; preds = %bb.ajm
  %i.fma = call i32 @_Py_HandlePending(ptr noundef nonnull %0) #8
  %.4.val10082 = load ptr, ptr %i.fkf, align 8, !tbaa !65 ; 2 uses
  %.not9629 = icmp eq i32 %i.fma, 0
  br i1 %.not9629, label %check_periodics.exit10980.thread, label %.loopexit.loopexit

check_periodics.exit10980.thread:                 ; preds = %bb.ajm, %check_periodics.exit10980
  %.4.val1008211526 = phi ptr [ %.4.val10082, %check_periodics.exit10980 ], [ %i.flx, %bb.ajm ]
  %i.fmb = load i16, ptr %i.fiv, align 2, !tbaa !66 ; 2 uses
  %.sroa.21910.0.extract.shift = lshr i16 %i.fmb, 8
  %.sroa.21910.0.extract.trunc = zext nneg i16 %.sroa.21910.0.extract.shift to i32
  %i.fmc = and i16 %i.fmb, 255
  %i.fmd = zext nneg i16 %i.fmc to i64
  br label %.backedge.backedge

bb.ajn:                                           ; preds = %.backedge
  %i.fme = getelementptr i8, ptr %.4, i64 56
  store ptr %.32, ptr %i.fme, align 8, !tbaa !47
  %i.fmf = getelementptr i8, ptr %.32, i64 8      ; 5 uses
  %i.fmg = sub i32 -2, %.09034
  %i.fmh = sext i32 %i.fmg to i64                 ; 3 uses
  %i.fmi = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.fmh ; 2 uses
  %.sroa.01892.0.copyload = load i64, ptr %i.fmi, align 8, !tbaa !34 ; 3 uses
  %i.fmj = sub i32 -3, %.09034
  %i.fmk = sext i32 %i.fmj to i64                 ; 5 uses
  %i.fml = getelementptr [8 x i8], ptr %.4.val1003611541, i64 %i.fmk ; 2 uses
  %.sroa.01898.0.copyload = load i64, ptr %i.fml, align 8, !tbaa !34 ; 6 uses
  %i.fmm = and i64 %.sroa.01898.0.copyload, 3
  %i.fmn = icmp eq i64 %i.fmm, 3
  br i1 %i.fmn, label %PyStackRef_TYPE.exit10983.thread, label %PyStackRef_TYPE.exit10983

PyStackRef_TYPE.exit10983:                        ; preds = %bb.ajn
  %i.fmo = and i64 %.sroa.01898.0.copyload, -2
  %i.fmp = inttoptr i64 %i.fmo to ptr             ; 3 uses
  %i.fmq = getelementptr i8, ptr %i.fmp, i64 8
  %.val.i10981 = load ptr, ptr %i.fmq, align 8, !tbaa !58
  %i.fmr = icmp eq ptr %.val.i10981, @PyMethod_Type
  %i.fms = icmp eq i64 %.sroa.01892.0.copyload, 1
  %or.cond9 = select i1 %i.fmr, i1 %i.fms, i1 false
  br i1 %or.cond9, label %bb.ajo, label %PyStackRef_TYPE.exit10983.thread

end_hunk_1
begin_hunk_2_@monitor_stop_iteration:bb.a
  %i.a = and i64 %.val, -2
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr i8, ptr %i.b, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !237  ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 21
  br label %no_tools_for_local_event.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val7.i = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr i8, ptr %.val7.i, i64 223466
  br label %no_tools_for_local_event.exit

no_tools_for_local_event.exit:                    ; preds = %bb.b, %bb.c
  %.0.in.in.i = phi ptr [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  %.0.in.i = load i8, ptr %.0.in.in.i, align 1, !tbaa !34
  %.0.i = icmp eq i8 %.0.in.i, 0
  br i1 %.0.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %no_tools_for_local_event.exit
  %i.h = load ptr, ptr @PyExc_StopIteration, align 8, !tbaa !78
  tail call void @PyErr_SetObject(ptr noundef %i.h, ptr noundef %3) #8
  %.val.i = load i64, ptr %1, align 8
  %i.i = and i64 %.val.i, -2
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 48
  %i.l = load i32, ptr %i.k, align 8, !tbaa !48
  %i.m = and i32 %i.l, 33554432
  %.not.i9 = icmp eq i32 %i.m, 0
  br i1 %.not.i9, label %bb.e, label %do_monitor_exc.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @PyErr_GetRaisedException() #8 ; 7 uses
  %i.o = tail call i32 @_Py_call_instrumentation_arg(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.n) #8 ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @PyErr_SetRaisedException(ptr noundef %i.n) #8
  br label %do_monitor_exc.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %.not21.i = icmp sgt i32 %i.q, -1
  br i1 %.not21.i, label %bb.h, label %do_monitor_exc.exit

bb.h:                                             ; preds = %bb.g
  %i.r = add nsw i32 %i.q, -1                     ; 2 uses
  store i32 %i.r, ptr %i.n, align 8, !tbaa !34
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %do_monitor_exc.exit

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !54 ; 2 uses
  %.not22.i = icmp eq ptr %i.t, null
  br i1 %.not22.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !56
  %i.v = tail call i32 %i.t(ptr noundef nonnull %i.n, i32 noundef 1, ptr noundef %i.u) #8, !inline_history !287 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.w = getelementptr i8, ptr %i.n, i64 8
  %.val23.i = load ptr, ptr %i.w, align 8, !tbaa !58
  %i.x = getelementptr i8, ptr %.val23.i, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !59
  tail call void %i.y(ptr noundef nonnull %i.n) #8, !inline_history !287
  br label %do_monitor_exc.exit

do_monitor_exc.exit:                              ; preds = %bb.g, %bb.h, %bb.k
  %i.z = icmp slt i32 %i.o, 0
  br i1 %i.z, label %bb.l, label %do_monitor_exc.exit.thread

do_monitor_exc.exit.thread:                       ; preds = %bb.f, %bb.d, %do_monitor_exc.exit
  tail call void @PyErr_SetRaisedException(ptr noundef null) #8
  br label %bb.l

bb.l:                                             ; preds = %do_monitor_exc.exit.thread, %do_monitor_exc.exit, %no_tools_for_local_event.exit
  %.1 = phi i32 [ 0, %no_tools_for_local_event.exit ], [ 0, %do_monitor_exc.exit.thread ], [ %i.o, %do_monitor_exc.exit ]
  ret i32 %.1
}

declare i32 @_Py_call_instrumentation_instruction(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_Py_call_instrumentation_line(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_Vectorcall(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_Py_call_instrumentation(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_Py_call_instrumentation_arg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyList_Extend(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PySequence_Check(ptr noundef) local_unnamed_addr #1

declare void @_PyErr_Clear(ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_LoadAttr(i64, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_Py_LoadAttr_StackRefSteal(ptr noundef, i64, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_PyObject_GetAttrStackRef(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyMapping_GetOptionalItem2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyDict_LoadGlobal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyImport_LoadLazyImportTstate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_LoadGlobal(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyEval_LoadGlobalStackRef(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyEval_LoadName(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyDict_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyObject_LookupSpecialMethod(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyEval_SpecialMethodCanSuggest(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Py_Specialize_LoadSuperAttr(i64, i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @_PySuper_Lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #1

declare ptr @PyCell_New(ptr noundef) local_unnamed_addr #1

declare ptr @PyFunction_New(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_PyFunction_SetVersion(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyDict_SetItem_Take2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyEval_MatchClass(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyEval_MatchKeys(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_Py_MakeCoro(ptr noundef) local_unnamed_addr #1

declare void @_PyThreadState_PopFrame(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_Send(i64, ptr noundef) local_unnamed_addr #1

declare i32 @PyIter_Check(ptr noundef) local_unnamed_addr #1

declare void @_PyEval_MonitorRaise(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyGen_FetchStopIterationValue(ptr noundef) local_unnamed_addr #1

declare ptr @PyDict_New() local_unnamed_addr #1

declare i32 @PyObject_SetItem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PySet_Update(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_StoreAttr(i64, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyObject_SetAttr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @_PyBuildSlice_ConsumeRefs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_StoreSubscr(i64, i64, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_ToBool(i64, ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Invert(ptr noundef) local_unnamed_addr #1

declare ptr @PyNumber_Negative(ptr noundef) local_unnamed_addr #1

declare i32 @_PyEval_UnpackIterableStackRef(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Py_Specialize_UnpackSequence(i64, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @PyException_GetTraceback(ptr noundef) local_unnamed_addr #1

declare i32 @PyUnstable_InterpreterFrame_GetLine(ptr noundef) local_unnamed_addr #1

declare i32 @PyTraceBack_Here(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @get_exception_handler(ptr %.40.val, i32 noundef %0, ptr noundef nonnull writeonly captures(none) %1, ptr noundef nonnull writeonly captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %.40.val, i64 32   ; 5 uses
  %i.b = getelementptr i8, ptr %.40.val, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 %.val    ; 2 uses
  %i.d = icmp sgt i64 %.val, 40
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 8, !tbaa !34    ; 2 uses
  %i.f = and i8 %i.e, 63
  %i.g = zext nneg i8 %i.f to i32                 ; 2 uses
  %i.h = and i8 %i.e, 64
  %.not8.i = icmp eq i8 %i.h, 0
  br i1 %.not8.i, label %parse_varint.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.010.i = phi i32 [ %i.n, %.lr.ph.i ], [ %i.g, %bb.b ]
  %.079.i = phi ptr [ %i.i, %.lr.ph.i ], [ %i.a, %bb.b ]
  %i.i = getelementptr i8, ptr %.079.i, i64 1     ; 2 uses
  %i.j = shl i32 %.010.i, 6
  %i.k = load i8, ptr %i.i, align 1, !tbaa !34    ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = zext nneg i8 %i.l to i32
  %i.n = or disjoint i32 %i.j, %i.m               ; 2 uses
  %i.o = and i8 %i.k, 64
  %.not.i = icmp eq i8 %i.o, 0
  br i1 %.not.i, label %parse_varint.exit, label %.lr.ph.i, !llvm.loop !288

parse_varint.exit:                                ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i32 [ %i.g, %bb.b ], [ %i.n, %.lr.ph.i ]
  %.not = icmp sgt i32 %.0.lcssa.i, %0
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %parse_varint.exit, %parse_varint.exit53
  %.037 = phi ptr [ %.037., %parse_varint.exit53 ], [ %i.a, %parse_varint.exit ] ; 3 uses
  %.035 = phi ptr [ %..035, %parse_varint.exit53 ], [ %i.c, %parse_varint.exit ] ; 2 uses
  %i.p = ptrtoint ptr %.035 to i64
  %i.q = ptrtoint ptr %.037 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr i64 %i.r, 1
  %i.t = getelementptr i8, ptr %.037, i64 %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %.0.i = phi ptr [ %i.t, %.preheader ], [ %i.w, %bb.c ] ; 5 uses
  %i.u = load i8, ptr %.0.i, align 1, !tbaa !34   ; 3 uses
  %i.v = icmp sgt i8 %i.u, -1
  %i.w = getelementptr i8, ptr %.0.i, i64 -1
  br i1 %i.v, label %bb.c, label %scan_back_to_entry_start.exit, !llvm.loop !289

scan_back_to_entry_start.exit:                    ; preds = %bb.c
  %i.x = and i8 %i.u, 63
  %i.y = zext nneg i8 %i.x to i32                 ; 2 uses
  %i.z = and i8 %i.u, 64
  %.not8.i46 = icmp eq i8 %i.z, 0
  br i1 %.not8.i46, label %parse_varint.exit53, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %scan_back_to_entry_start.exit, %.lr.ph.i47
  %.010.i48 = phi i32 [ %i.af, %.lr.ph.i47 ], [ %i.y, %scan_back_to_entry_start.exit ]
  %.079.i49 = phi ptr [ %i.aa, %.lr.ph.i47 ], [ %.0.i, %scan_back_to_entry_start.exit ]
  %i.aa = getelementptr i8, ptr %.079.i49, i64 1  ; 2 uses
  %i.ab = shl i32 %.010.i48, 6
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !34  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ab, %i.ae            ; 2 uses
  %i.ag = and i8 %i.ac, 64
  %.not.i50 = icmp eq i8 %i.ag, 0
  br i1 %.not.i50, label %parse_varint.exit53, label %.lr.ph.i47, !llvm.loop !288

parse_varint.exit53:                              ; preds = %.lr.ph.i47, %scan_back_to_entry_start.exit
  %.0.lcssa.i52 = phi i32 [ %i.y, %scan_back_to_entry_start.exit ], [ %i.af, %.lr.ph.i47 ]
  %i.ah = icmp sgt i32 %.0.lcssa.i52, %0          ; 2 uses
  %.037. = select i1 %i.ah, ptr %.037, ptr %.0.i  ; 3 uses
  %..035 = select i1 %i.ah, ptr %.0.i, ptr %.035  ; 3 uses
  %i.ai = ptrtoint ptr %..035 to i64
  %i.aj = ptrtoint ptr %.037. to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp sgt i64 %i.ak, 40
  br i1 %i.al, label %.preheader, label %.loopexit, !llvm.loop !290

.loopexit:                                        ; preds = %parse_varint.exit53, %bb.a
  %.340 = phi ptr [ %i.a, %bb.a ], [ %.037., %parse_varint.exit53 ] ; 2 uses
  %.3 = phi ptr [ %i.c, %bb.a ], [ %..035, %parse_varint.exit53 ] ; 5 uses
  %i.am = icmp ult ptr %.340, %.3
  br i1 %i.am, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.loopexit
  %i.an = ptrtoint ptr %.3 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %skip_to_next_entry.exit
  %.024 = phi ptr [ %.340, %.lr.ph ], [ %.1, %skip_to_next_entry.exit ] ; 3 uses
  %i.ao = load i8, ptr %.024, align 1, !tbaa !34  ; 2 uses
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i32               ; 2 uses
  %i.ar = and i8 %i.ao, 64
  %.not8.i54 = icmp eq i8 %i.ar, 0
  br i1 %.not8.i54, label %parse_varint.exit61, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.d, %.lr.ph.i55
  %.010.i56 = phi i32 [ %i.ax, %.lr.ph.i55 ], [ %i.aq, %bb.d ]
  %.079.i57 = phi ptr [ %i.as, %.lr.ph.i55 ], [ %.024, %bb.d ]
  %i.as = getelementptr i8, ptr %.079.i57, i64 1  ; 3 uses
  %i.at = shl i32 %.010.i56, 6
  %i.au = load i8, ptr %i.as, align 1, !tbaa !34  ; 2 uses
  %i.av = and i8 %i.au, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.at, %i.aw            ; 2 uses
  %i.ay = and i8 %i.au, 64
  %.not.i58 = icmp eq i8 %i.ay, 0
  br i1 %.not.i58, label %parse_varint.exit61, label %.lr.ph.i55, !llvm.loop !288

parse_varint.exit61:                              ; preds = %.lr.ph.i55, %bb.d
  %.07.lcssa.i59 = phi ptr [ %.024, %bb.d ], [ %i.as, %.lr.ph.i55 ] ; 2 uses
  %.0.lcssa.i60 = phi i32 [ %i.aq, %bb.d ], [ %i.ax, %.lr.ph.i55 ] ; 2 uses
  %i.az = icmp sgt i32 %.0.lcssa.i60, %0
  br i1 %i.az, label %.thread, label %bb.e

bb.e:                                             ; preds = %parse_varint.exit61
  %i.ba = getelementptr i8, ptr %.07.lcssa.i59, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !34  ; 2 uses
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i32               ; 2 uses
  %i.be = and i8 %i.bb, 64
  %.not8.i62 = icmp eq i8 %i.be, 0
  br i1 %.not8.i62, label %parse_varint.exit69, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %bb.e, %.lr.ph.i63
  %.010.i64 = phi i32 [ %i.bk, %.lr.ph.i63 ], [ %i.bd, %bb.e ]
  %.079.i65 = phi ptr [ %i.bf, %.lr.ph.i63 ], [ %i.ba, %bb.e ] ; 2 uses
  %i.bf = getelementptr i8, ptr %.079.i65, i64 1  ; 2 uses
  %i.bg = shl i32 %.010.i64, 6
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !34  ; 2 uses
  %i.bi = and i8 %i.bh, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bg, %i.bj            ; 2 uses
  %i.bl = and i8 %i.bh, 64
  %.not.i66 = icmp eq i8 %i.bl, 0
  br i1 %.not.i66, label %parse_varint.exit69, label %.lr.ph.i63, !llvm.loop !288

parse_varint.exit69:                              ; preds = %.lr.ph.i63, %bb.e
  %i.bm = phi ptr [ %.07.lcssa.i59, %bb.e ], [ %.079.i65, %.lr.ph.i63 ]
  %.0.lcssa.i68 = phi i32 [ %i.bd, %bb.e ], [ %i.bk, %.lr.ph.i63 ]
  %i.bn = getelementptr i8, ptr %i.bm, i64 2      ; 8 uses
  %i.bo = add i32 %.0.lcssa.i68, %.0.lcssa.i60
  %i.bp = icmp sgt i32 %i.bo, %0
  br i1 %i.bp, label %bb.f, label %bb.g

bb.f:                                             ; preds = %parse_varint.exit69
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !34  ; 2 uses
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i32               ; 2 uses
  %i.bt = and i8 %i.bq, 64
  %.not8.i70 = icmp eq i8 %i.bt, 0
  br i1 %.not8.i70, label %parse_varint.exit77, label %.lr.ph.i71

.lr.ph.i71:                                       ; preds = %bb.f, %.lr.ph.i71
  %.010.i72 = phi i32 [ %i.bz, %.lr.ph.i71 ], [ %i.bs, %bb.f ]
  %.079.i73 = phi ptr [ %i.bu, %.lr.ph.i71 ], [ %i.bn, %bb.f ]
  %i.bu = getelementptr i8, ptr %.079.i73, i64 1  ; 3 uses
  %i.bv = shl i32 %.010.i72, 6
  %i.bw = load i8, ptr %i.bu, align 1, !tbaa !34  ; 2 uses
  %i.bx = and i8 %i.bw, 63
  %i.by = zext nneg i8 %i.bx to i32
  %i.bz = or disjoint i32 %i.bv, %i.by            ; 2 uses
  %i.ca = and i8 %i.bw, 64
  %.not.i74 = icmp eq i8 %i.ca, 0
  br i1 %.not.i74, label %parse_varint.exit77, label %.lr.ph.i71, !llvm.loop !288

parse_varint.exit77:                              ; preds = %.lr.ph.i71, %bb.f
  %.07.lcssa.i75 = phi ptr [ %i.bn, %bb.f ], [ %i.bu, %.lr.ph.i71 ]
  %.0.lcssa.i76 = phi i32 [ %i.bs, %bb.f ], [ %i.bz, %.lr.ph.i71 ]
  store i32 %.0.lcssa.i76, ptr %2, align 4, !tbaa !6
  %i.cb = getelementptr i8, ptr %.07.lcssa.i75, i64 1 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !34  ; 2 uses
  %i.cd = and i8 %i.cc, 63
  %i.ce = zext nneg i8 %i.cd to i32               ; 2 uses
  %i.cf = and i8 %i.cc, 64
  %.not8.i78 = icmp eq i8 %i.cf, 0
  br i1 %.not8.i78, label %skip_to_next_entry.exit.thread, label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %parse_varint.exit77, %.lr.ph.i79
  %.010.i80 = phi i32 [ %i.cl, %.lr.ph.i79 ], [ %i.ce, %parse_varint.exit77 ]
  %.079.i81 = phi ptr [ %i.cg, %.lr.ph.i79 ], [ %i.cb, %parse_varint.exit77 ]
  %i.cg = getelementptr i8, ptr %.079.i81, i64 1  ; 2 uses
  %i.ch = shl i32 %.010.i80, 6
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !34  ; 2 uses
  %i.cj = and i8 %i.ci, 63
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = or disjoint i32 %i.ch, %i.ck            ; 2 uses
  %i.cm = and i8 %i.ci, 64
  %.not.i82 = icmp eq i8 %i.cm, 0
  br i1 %.not.i82, label %skip_to_next_entry.exit.thread, label %.lr.ph.i79, !llvm.loop !288

skip_to_next_entry.exit.thread:                   ; preds = %.lr.ph.i79, %parse_varint.exit77
  %.0.lcssa.i84 = phi i32 [ %i.ce, %parse_varint.exit77 ], [ %i.cl, %.lr.ph.i79 ] ; 2 uses
  %i.cn = ashr i32 %.0.lcssa.i84, 1
  store i32 %i.cn, ptr %1, align 4, !tbaa !6
  %i.co = and i32 %.0.lcssa.i84, 1
  store i32 %i.co, ptr %3, align 4, !tbaa !6
  br label %.thread

bb.g:                                             ; preds = %parse_varint.exit69
  %i.cp = icmp ult ptr %i.bn, %.3
  br i1 %i.cp, label %.lr.ph.preheader.i, label %skip_to_next_entry.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.cq = ptrtoint ptr %i.bn to i64
end_hunk_2
